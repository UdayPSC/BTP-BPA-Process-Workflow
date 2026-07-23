var oGetOrderDetailsSrv = {
  "srvURL": "",
  "resp": {},
  "req": {}
};

var nOrderId = $.context.orderInfo.orderID;
oGetOrderDetailsSrv.srvURL = "/Northwind/Northwind.svc/Orders("+ nOrderId +")?$expand=Order_Details/Product&$format=json";

$.context.getOrderDetailsSrv = oGetOrderDetailsSrv;