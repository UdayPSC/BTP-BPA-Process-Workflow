{
	"contents": {
		"698f64c9-0c02-4073-a3b6-61560a030586": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.prh.orderreviewwf",
			"subject": "OrderReviewWF",
			"name": "OrderReviewWF",
			"documentation": "Workflow to validate customer orders and verify product availability before further processing",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Order Review Workflow Start"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Order Review Workflow Start"
				}
			},
			"activities": {
				"9f5ffa59-3ddf-4a88-b446-9d7f8d179268": {
					"name": "Order Review Form"
				},
				"088df701-1faa-4487-a16c-656c709c957c": {
					"name": "Decision Check"
				},
				"c06ddb17-9134-4f2b-8840-f57d12d606df": {
					"name": "Decision Check Flag"
				},
				"95190e6f-6ab5-47cc-93dc-2ad34dd97a15": {
					"name": "Payload Build"
				},
				"6e2b6680-60ee-44e4-8284-38c2a1aa4c2d": {
					"name": "Order and Product Details"
				},
				"bcda436e-1b1d-4d67-a2e1-111a4845a556": {
					"name": "Parallel Task"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"59bb6025-1252-4d3a-87d6-544ddc196967": {
					"name": "SequenceFlow2"
				},
				"d145a919-6213-462d-9fca-8e740de096e3": {
					"name": "SequenceFlow9"
				},
				"dd87c452-b9e3-4c6c-8fcc-89dde05b44b8": {
					"name": "Proceed"
				},
				"f6c646f2-ba89-4ea2-bdec-8e24494dea60": {
					"name": "Stop"
				},
				"b588d434-297b-4913-9a62-45669552d9b2": {
					"name": "SequenceFlow13"
				},
				"7eb1dfc1-8e6d-4d6f-81e0-78d474efdd00": {
					"name": "SequenceFlow14"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Order Review Workflow Start"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Order Review Workflow Start"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "9f5ffa59-3ddf-4a88-b446-9d7f8d179268"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"b6f0dd00-728c-4f2b-b10b-54af6c3c605d": {},
				"93525218-338a-4801-951f-4833fdeb6ec1": {},
				"3e7de462-a580-4046-8af1-f7fa273556ef": {},
				"a773e6a2-95b3-4c65-af4c-72c8eca86c17": {},
				"ef6a6096-ff26-4e99-a83d-c26eab439b27": {},
				"8c874bc6-1c99-4ec8-8327-b0e81e0cb07a": {},
				"1be8e371-8aea-42e7-8f39-2266c4e8cf9e": {},
				"8ca77b01-84ba-40b0-a639-ea0b77c65335": {},
				"90e02501-96b0-44a6-a2c9-9353bcf5f58b": {},
				"d3cd12c6-0284-4432-b506-da0bc6acb278": {},
				"ed4804ff-70a2-4957-94c8-261d895b3730": {},
				"906fb7d0-dc47-4d51-be7f-75fcd421dd92": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 14.5,
			"y": -204,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 15,
			"y": 264,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "30.25,-188 30.25,-94.75378874876469",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "b6f0dd00-728c-4f2b-b10b-54af6c3c605d",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 18,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 2,
			"scripttask": 3,
			"exclusivegateway": 2,
			"parallelgateway": 1
		},
		"9f5ffa59-3ddf-4a88-b446-9d7f8d179268": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Order Review Form for order id: ${context.orderInfo.orderID}",
			"description": "Review the order.",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "udaypratap@amityonline.com",
			"formReference": "/forms/OrderReviewWF/OrderReviewForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "orderreviewform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Order Review Form"
		},
		"b6f0dd00-728c-4f2b-b10b-54af6c3c605d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -20,
			"y": -124.75378874876469,
			"width": 100,
			"height": 60,
			"object": "9f5ffa59-3ddf-4a88-b446-9d7f8d179268"
		},
		"59bb6025-1252-4d3a-87d6-544ddc196967": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "9f5ffa59-3ddf-4a88-b446-9d7f8d179268",
			"targetRef": "088df701-1faa-4487-a16c-656c709c957c"
		},
		"93525218-338a-4801-951f-4833fdeb6ec1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.875,-94.75378874876469 29.875,14.873105625617654",
			"sourceSymbol": "b6f0dd00-728c-4f2b-b10b-54af6c3c605d",
			"targetSymbol": "3e7de462-a580-4046-8af1-f7fa273556ef",
			"object": "59bb6025-1252-4d3a-87d6-544ddc196967"
		},
		"088df701-1faa-4487-a16c-656c709c957c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/DecisionCheck.js",
			"id": "scripttask1",
			"name": "Decision Check"
		},
		"3e7de462-a580-4046-8af1-f7fa273556ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -20.25,
			"y": -15.126894374382346,
			"width": 100,
			"height": 60,
			"object": "088df701-1faa-4487-a16c-656c709c957c"
		},
		"d145a919-6213-462d-9fca-8e740de096e3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "088df701-1faa-4487-a16c-656c709c957c",
			"targetRef": "c06ddb17-9134-4f2b-8840-f57d12d606df"
		},
		"a773e6a2-95b3-4c65-af4c-72c8eca86c17": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "32.9375,14.873105625617654 32.9375,98.68655281280883",
			"sourceSymbol": "3e7de462-a580-4046-8af1-f7fa273556ef",
			"targetSymbol": "ef6a6096-ff26-4e99-a83d-c26eab439b27",
			"object": "d145a919-6213-462d-9fca-8e740de096e3"
		},
		"c06ddb17-9134-4f2b-8840-f57d12d606df": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Decision Check Flag",
			"default": "f6c646f2-ba89-4ea2-bdec-8e24494dea60"
		},
		"ef6a6096-ff26-4e99-a83d-c26eab439b27": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 15.125,
			"y": 77.68655281280883,
			"object": "c06ddb17-9134-4f2b-8840-f57d12d606df"
		},
		"95190e6f-6ab5-47cc-93dc-2ad34dd97a15": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/PayloadBuilder.js",
			"id": "scripttask3",
			"name": "Payload Build"
		},
		"8c874bc6-1c99-4ec8-8327-b0e81e0cb07a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 107.125,
			"y": 68.68655281280883,
			"width": 100,
			"height": 60,
			"object": "95190e6f-6ab5-47cc-93dc-2ad34dd97a15"
		},
		"dd87c452-b9e3-4c6c-8fcc-89dde05b44b8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.reviewDecision.userDecision== \"proceed\"}",
			"id": "sequenceflow11",
			"name": "Proceed",
			"sourceRef": "c06ddb17-9134-4f2b-8840-f57d12d606df",
			"targetRef": "95190e6f-6ab5-47cc-93dc-2ad34dd97a15"
		},
		"1be8e371-8aea-42e7-8f39-2266c4e8cf9e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "36.125,98.68655281280883 157.125,98.68655281280883",
			"sourceSymbol": "ef6a6096-ff26-4e99-a83d-c26eab439b27",
			"targetSymbol": "8c874bc6-1c99-4ec8-8327-b0e81e0cb07a",
			"object": "dd87c452-b9e3-4c6c-8fcc-89dde05b44b8"
		},
		"f6c646f2-ba89-4ea2-bdec-8e24494dea60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "Stop",
			"sourceRef": "c06ddb17-9134-4f2b-8840-f57d12d606df",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"8ca77b01-84ba-40b0-a639-ea0b77c65335": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "36.125,98.68655281280883 36.125,271",
			"sourceSymbol": "ef6a6096-ff26-4e99-a83d-c26eab439b27",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "f6c646f2-ba89-4ea2-bdec-8e24494dea60"
		},
		"b588d434-297b-4913-9a62-45669552d9b2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "95190e6f-6ab5-47cc-93dc-2ad34dd97a15",
			"targetRef": "6e2b6680-60ee-44e4-8284-38c2a1aa4c2d"
		},
		"90e02501-96b0-44a6-a2c9-9353bcf5f58b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "160.5625,98.68655281280883 160.5625,184",
			"sourceSymbol": "8c874bc6-1c99-4ec8-8327-b0e81e0cb07a",
			"targetSymbol": "d3cd12c6-0284-4432-b506-da0bc6acb278",
			"object": "b588d434-297b-4913-9a62-45669552d9b2"
		},
		"6e2b6680-60ee-44e4-8284-38c2a1aa4c2d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Northwind",
			"destinationSource": "consumer",
			"path": "${context.getOrderDetailsSrv.srvURL}",
			"httpMethod": "GET",
			"responseVariable": "${context.getOrderDetailsSrv.resp}",
			"id": "servicetask2",
			"name": "Order and Product Details"
		},
		"d3cd12c6-0284-4432-b506-da0bc6acb278": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 120.125,
			"y": 154,
			"width": 100,
			"height": 60,
			"object": "6e2b6680-60ee-44e4-8284-38c2a1aa4c2d"
		},
		"7eb1dfc1-8e6d-4d6f-81e0-78d474efdd00": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "6e2b6680-60ee-44e4-8284-38c2a1aa4c2d",
			"targetRef": "bcda436e-1b1d-4d67-a2e1-111a4845a556"
		},
		"ed4804ff-70a2-4957-94c8-261d895b3730": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "170.125,184 170.125,228.875 157.3125,228.875 157.3125,264.25",
			"sourceSymbol": "d3cd12c6-0284-4432-b506-da0bc6acb278",
			"targetSymbol": "906fb7d0-dc47-4d51-be7f-75fcd421dd92",
			"object": "7eb1dfc1-8e6d-4d6f-81e0-78d474efdd00"
		},
		"bcda436e-1b1d-4d67-a2e1-111a4845a556": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "Parallel Task"
		},
		"906fb7d0-dc47-4d51-be7f-75fcd421dd92": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 136.3125,
			"y": 243.25,
			"object": "bcda436e-1b1d-4d67-a2e1-111a4845a556"
		}
	}
}