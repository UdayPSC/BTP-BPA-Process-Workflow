$.context.kpi.stage = "Product Availability Check Completed";

var orders = $.context.getOrderDetailsSrv.resp.Order_Details;
var count = 0;

for (order of orders){
	if (order.Availability = "available"){
		count = count +1;
	}
};
$.context.kpi.stage.availableProdCount = count;
