var oKPI = {
	"workflowId": "",
	"stage": "Initiation",
	"orderId": 0,
	"productsCount": 0,
	"customerId": "",
	"availableProdCount": 0
}

oKPI.workflowId = $.info.workflowInstanceId;
oKPI.orderId = $.context.orderInfo.orderID;
oKPI.customerId = $.context.orderInfo.customerID;

$.context.kpi = oKPI;