var products = $.context.getOrderDetailsSrv.resp.Order_Details;

var count = 0;

for (product of products){
	if(product.Product.ProductID){
		count = count + 1;
	}
}

