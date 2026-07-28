$.context.kpi.stage = "Product Availability Check Start";

var length = $.context.getOrderDetailsSrv.resp.Order_Details.length;
$.context.kpi.productsCount = length;