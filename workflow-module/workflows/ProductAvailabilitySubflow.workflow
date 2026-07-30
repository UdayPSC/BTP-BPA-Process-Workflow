{
	"contents": {
		"8104fb8f-7994-4eac-bfaa-3abe9ec7f775": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.prh.productavailabilitysubflow",
			"subject": "ProductAvailabilitySubflow",
			"customAttributes": [{
				"id": "orderID",
				"label": "Order ID",
				"type": "string",
				"value": "${context.OrderID}"
			}],
			"name": "ProductAvailabilitySubflow",
			"documentation": "ProductAvailabilitySubflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "ProductAvailabilitySubflow Start"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "ProductAvailabilitySubflow End"
				}
			},
			"activities": {
				"2b63fb51-8d4d-4464-af2f-d36348edd298": {
					"name": "Availabilty Check Form"
				},
				"8e790040-f178-4dda-9bb6-448b5a4abafa": {
					"name": "Decision Check"
				},
				"d02f5c49-b751-4c28-b187-a5f4e9e43f47": {
					"name": "CheckUserID"
				},
				"0446313d-72ce-4411-be29-523e8f22e08a": {
					"name": "Build Payload"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"c2947481-b768-47a5-9e16-823af7d6fc25": {
					"name": "SequenceFlow2"
				},
				"3248b70c-9f9c-4c92-9ead-b28c5a6f6451": {
					"name": "SequenceFlow3"
				},
				"ee6447be-4c5c-4f97-a9bc-4aa70b660374": {
					"name": "SequenceFlow4"
				},
				"4a8271d4-b2bc-4dd8-955f-9bf4237ccc20": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "ProductAvailabilitySubflow Start"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "ProductAvailabilitySubflow End"
		},
		"2b63fb51-8d4d-4464-af2f-d36348edd298": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Availabilty Check for Product ${context.ProductDetails.ProductName}",
			"description": "Please verify the availability of the product given below.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.GetBusinessDecision.resp.Result[0].OrderWFOutput.UserID}",
			"formReference": "/forms/ProductAvailabilitySubflow/ProductAvailabilityForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "productavailabilityform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"customAttributes": [{
				"id": "orderID",
				"label": "Order ID",
				"type": "string",
				"value": "${context.OrderID}"
			}],
			"id": "usertask1",
			"name": "Availabilty Check Form"
		},
		"8e790040-f178-4dda-9bb6-448b5a4abafa": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ProductAvailabilitySubflow/DecisionCheck.js",
			"id": "scripttask1",
			"name": "Decision Check"
		},
		"d02f5c49-b751-4c28-b187-a5f4e9e43f47": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Decisions",
			"destinationSource": "consumer",
			"path": "${context.GetBusinessDecision.srvURL}",
			"httpMethod": "POST",
			"requestVariable": "${context.GetBusinessDecision.req}",
			"responseVariable": "${context.GetBusinessDecision.resp}",
			"id": "servicetask1",
			"name": "CheckUserID"
		},
		"0446313d-72ce-4411-be29-523e8f22e08a": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ProductAvailabilitySubflow/payloadBuild.js",
			"id": "scripttask2",
			"name": "Build Payload"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "0446313d-72ce-4411-be29-523e8f22e08a"
		},
		"c2947481-b768-47a5-9e16-823af7d6fc25": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "2b63fb51-8d4d-4464-af2f-d36348edd298",
			"targetRef": "8e790040-f178-4dda-9bb6-448b5a4abafa"
		},
		"3248b70c-9f9c-4c92-9ead-b28c5a6f6451": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "8e790040-f178-4dda-9bb6-448b5a4abafa",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ee6447be-4c5c-4f97-a9bc-4aa70b660374": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "d02f5c49-b751-4c28-b187-a5f4e9e43f47",
			"targetRef": "2b63fb51-8d4d-4464-af2f-d36348edd298"
		},
		"4a8271d4-b2bc-4dd8-955f-9bf4237ccc20": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "0446313d-72ce-4411-be29-523e8f22e08a",
			"targetRef": "d02f5c49-b751-4c28-b187-a5f4e9e43f47"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"8542a326-3df2-4e7e-8504-22c5b3cb8dd7": {},
				"ec6772c2-c063-477f-8a2b-a5354e243862": {},
				"fbdb2cc4-f358-4696-a937-bacd3b9c531a": {},
				"d8aac4df-3913-4465-9a2e-93b7ddbf9b53": {},
				"9e9d163d-ab68-43c1-a934-f4c5e5dba922": {},
				"c608cbca-a9c8-40a1-b373-2833abe63b45": {},
				"07dc7353-b004-4c31-b143-f0c66e27b50b": {},
				"3f2b29bf-8f8b-4f20-a08a-f3824da88456": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 11.5,
			"y": -277,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 12,
			"y": 157,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28.25,-261 28.25,-177",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "07dc7353-b004-4c31-b143-f0c66e27b50b",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"8542a326-3df2-4e7e-8504-22c5b3cb8dd7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -21.5,
			"y": -32.7651654539997,
			"width": 100,
			"height": 60,
			"object": "2b63fb51-8d4d-4464-af2f-d36348edd298"
		},
		"ec6772c2-c063-477f-8a2b-a5354e243862": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28.75,-2.7651654539996997 28.75,86.86741727300014",
			"sourceSymbol": "8542a326-3df2-4e7e-8504-22c5b3cb8dd7",
			"targetSymbol": "fbdb2cc4-f358-4696-a937-bacd3b9c531a",
			"object": "c2947481-b768-47a5-9e16-823af7d6fc25"
		},
		"fbdb2cc4-f358-4696-a937-bacd3b9c531a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -21,
			"y": 56.86741727300015,
			"width": 100,
			"height": 60,
			"object": "8e790040-f178-4dda-9bb6-448b5a4abafa"
		},
		"d8aac4df-3913-4465-9a2e-93b7ddbf9b53": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.25,86.86741727300014 29.25,174.5",
			"sourceSymbol": "fbdb2cc4-f358-4696-a937-bacd3b9c531a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3248b70c-9f9c-4c92-9ead-b28c5a6f6451"
		},
		"9e9d163d-ab68-43c1-a934-f4c5e5dba922": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -21,
			"y": -124,
			"width": 100,
			"height": 60,
			"object": "d02f5c49-b751-4c28-b187-a5f4e9e43f47"
		},
		"c608cbca-a9c8-40a1-b373-2833abe63b45": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28.75,-94 28.75,-2.7651654539996997",
			"sourceSymbol": "9e9d163d-ab68-43c1-a934-f4c5e5dba922",
			"targetSymbol": "8542a326-3df2-4e7e-8504-22c5b3cb8dd7",
			"object": "ee6447be-4c5c-4f97-a9bc-4aa70b660374"
		},
		"07dc7353-b004-4c31-b143-f0c66e27b50b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -21,
			"y": -207,
			"width": 100,
			"height": 60,
			"object": "0446313d-72ce-4411-be29-523e8f22e08a"
		},
		"3f2b29bf-8f8b-4f20-a08a-f3824da88456": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29,-177 29,-94",
			"sourceSymbol": "07dc7353-b004-4c31-b143-f0c66e27b50b",
			"targetSymbol": "9e9d163d-ab68-43c1-a934-f4c5e5dba922",
			"object": "4a8271d4-b2bc-4dd8-955f-9bf4237ccc20"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 1,
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 2
		}
	}
}