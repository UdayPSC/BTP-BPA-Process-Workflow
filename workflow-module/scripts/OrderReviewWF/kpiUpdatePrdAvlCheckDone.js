$.context.kpi.stage = "Product Availability Check Completed";

var orders = $.context.getOrderDetailsSrv.resp.Order_Details;
var count = 0;

for (var i = 0; i < orders.length; i++) {
    if (orders[i].Availability === "available") {
        count = count + 1;
    }
}

$.context.kpi.availableProdCount = count;
