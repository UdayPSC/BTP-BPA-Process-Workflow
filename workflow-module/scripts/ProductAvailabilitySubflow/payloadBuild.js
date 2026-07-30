
var oGetBusinessDecision = {
	"srvURL": "",
	"resp": {},
	"req": {}
};

oGetBusinessDecision.srvURL = "/public/rule/runtime/rest/v2/rule-services";
var checkVal = $.context.ProductDetails.Discontinued;
oGetBusinessDecision.req = {
	"RuleServiceId": "7e2ebd1864839a5962bd14f1b29b761e",
	"Vocabulary": [
		{
			"OrderWFInput": {
				"Discontinued": checkVal
			}
		}
	]
};

$.context.GetBusinessDecision = oGetBusinessDecision;
