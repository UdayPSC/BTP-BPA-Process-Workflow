var oGetBusinessDecision = {
	"srvURL": "",
	"resp": {},
	"req": {}
};

oGetBusinessDecision.srvURL = "/public/rule/runtime/rest/v2/rule-services";

var checkVal = $.context.ProductDetails.Discontinued;
var unitsInStock = $.context.ProductDetails.UnitsInStock;
var orderedQuantity = $.context.Quantity;
var reorderLevel = $.context.ProductDetails.ReorderLevel;
var unitsOnOrder = $.context.ProductDetails.UnitsOnOrder;

oGetBusinessDecision.req = {
	"RuleServiceId": "7e2ebd1864839a5962bd14f1b29b761e",
	"Vocabulary": [
		{
			"OrderWFInput": {
				"Discontinued": checkVal,
				"UnitsInStock": unitsInStock,
				"OrderedQuantity": orderedQuantity,
				"ReorderLevel": reorderLevel,
				"UnitsOnOrder": unitsOnOrder
			}
		}
	]
};

$.context.GetBusinessDecision = oGetBusinessDecision;