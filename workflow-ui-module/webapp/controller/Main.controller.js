sap.ui.define(
  ["sap/ui/core/mvc/Controller", "sap/ui/model/json/JSONModel"],
  /**
   * @param {typeof sap.ui.core.mvc.Controller} Controller
   */
  function (Controller, JSONModel) {
    "use strict";

    return Controller.extend(
      "com.prh.workflowuimodule.controller.Main",
      {
       onInit: function () {
          // Local UI state model (separate from the OData "" model bound to Northwind)
          this.getView().setModel(
            new JSONModel({
              orderSelected: false,
              apiResponse: "",
            }),
            "app"
          );
        },

        onOrderSelect: function (oEvent) {
          var oAppModel = this.getView().getModel("app");
          var oSelectedItem = oEvent.getParameter("listItem");

          if (!oSelectedItem) {
            oAppModel.setProperty("/orderSelected", false);
            this._selectedOrder = null;
            return;
          }

          var oContext = oSelectedItem.getBindingContext();
          var oOrderData = oContext.getObject();

          this._selectedOrder = oOrderData;
          oAppModel.setProperty("/orderSelected", true);
        },

        startWorkflowInstance: function () {
          var oAppModel = this.getView().getModel("app");
          var definitionId = "com.prh.orderreviewwf";

          if (!this._selectedOrder) {
            oAppModel.setProperty(
              "/apiResponse",
              "No order selected. Please select an order first."
            );
            return;
          }

          var oOrder = this._selectedOrder;

          // Build the workflow context from the selected order
          var context = {
            orderInfo: {
              orderID: oOrder.OrderID,
              customerID: oOrder.CustomerID,
              orderDate: oOrder.OrderDate,
              shipName: oOrder.ShipName,
              shipCountry: oOrder.ShipCountry,
              freight: oOrder.Freight,
            },
          };

          var data = {
            definitionId: definitionId,
            context: context,
          };

          $.ajax({
            url: this._getWorkflowRuntimeBaseURL() + "/workflow-instances",
            method: "POST",
            async: false,
            contentType: "application/json",
            headers: {
              "X-CSRF-Token": this._fetchToken(),
            },
            data: JSON.stringify(data),
            success: function (result, xhr, data) {
              oAppModel.setProperty(
                "/apiResponse",
                JSON.stringify(result, null, 4)
              );
            },
            error: function (request, status, error) {
              var response = JSON.parse(request.responseText);
              oAppModel.setProperty(
                "/apiResponse",
                JSON.stringify(response, null, 4)
              );
            },
          });
        },

        _fetchToken: function () {
          var fetchedToken;

          jQuery.ajax({
            url: this._getWorkflowRuntimeBaseURL() + "/xsrf-token",
            method: "GET",
            async: false,
            headers: {
              "X-CSRF-Token": "Fetch",
            },
            success(result, xhr, data) {
              fetchedToken = data.getResponseHeader("X-CSRF-Token");
            },
          });
          return fetchedToken;
        },

        _getWorkflowRuntimeBaseURL: function () {
          var appId = this.getOwnerComponent().getManifestEntry("/sap.app/id");
          var appPath = appId.replaceAll(".", "/");
          var appModulePath = jQuery.sap.getModulePath(appPath);

          return appModulePath + "/bpmworkflowruntime/v1";
        },
      }
    );
  }
);
