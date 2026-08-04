{
	"contents": {
		"698f64c9-0c02-4073-a3b6-61560a030586": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.prh.orderreviewwf",
			"subject": "OrderReviewWF",
			"customAttributes": [{
				"id": "productsCount",
				"label": "Products Count",
				"type": "string",
				"value": "${context.kpi.productsCount}"
			}, {
				"id": "workflowId",
				"label": "Workflow ID",
				"type": "string",
				"value": "${context.kpi.workflowId}"
			}, {
				"id": "stage",
				"label": "Stage",
				"type": "string",
				"value": "${context.kpi.stage}"
			}, {
				"id": "kpiOrderId",
				"label": "Order ID",
				"type": "string",
				"value": "${context.kpi.orderId}"
			}, {
				"id": "availableProdCount",
				"label": "Available Prod Count",
				"type": "string",
				"value": "${context.kpi.availableProdCount}"
			}, {
				"id": "customerId",
				"label": "Customer ID",
				"type": "string",
				"value": "${context.kpi.customerId}"
			}],
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
				"aa5c5493-4c66-460e-a419-8f39b1491214": {
					"name": "Parallel Availability Check"
				},
				"f455e1e3-419f-465f-99ea-91c7abdc0d5d": {
					"name": "Summary"
				},
				"4faff0c7-80d0-4267-b4ce-94f85ed60ac0": {
					"name": "KPI Update Initiation"
				},
				"181cdaac-5ff1-4647-84d9-1a12e14bd035": {
					"name": "KPI Update Stop"
				},
				"7d2ababa-247b-4f93-bc59-9a39206a0321": {
					"name": "KPI Update Prd Avl Check"
				},
				"c02e6871-11ce-4d0a-80fe-84e863b9f69e": {
					"name": "KPI Update Prd Avl Check Done"
				},
				"763c1627-4306-47b7-8f2c-403b6c35842d": {
					"name": "KPI Update Succeed"
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
				"a864c2a6-6411-4b00-ab78-d355fb7a4704": {
					"name": "SequenceFlow21"
				},
				"06626dba-4dcd-407d-b7f1-2b750097c973": {
					"name": "SequenceFlow22"
				},
				"b07c3c37-822f-4514-b34f-2a0d112f46c1": {
					"name": "SequenceFlow23"
				},
				"3a693ab0-e271-43fc-bc3c-039c8f9473b3": {
					"name": "SequenceFlow24"
				},
				"b73a1eb6-55fd-4332-96d8-6f5005d1d0d0": {
					"name": "SequenceFlow26"
				},
				"ae61ae6a-4cde-4ed0-8ec4-78d386bde6c4": {
					"name": "SequenceFlow27"
				},
				"f50c6633-4b5b-435e-a64b-e92fcc5daa01": {
					"name": "SequenceFlow28"
				},
				"185029be-30f5-4350-96b8-789a90872c43": {
					"name": "SequenceFlow29"
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
			"customAttributes": [{
				"id": "orderID",
				"label": "Order ID",
				"type": "string",
				"value": "${context.orderInfo.orderID}"
			}],
			"id": "usertask1",
			"name": "Order Review Form"
		},
		"088df701-1faa-4487-a16c-656c709c957c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/DecisionCheck.js",
			"id": "scripttask1",
			"name": "Decision Check"
		},
		"c06ddb17-9134-4f2b-8840-f57d12d606df": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Decision Check Flag",
			"default": "f6c646f2-ba89-4ea2-bdec-8e24494dea60"
		},
		"95190e6f-6ab5-47cc-93dc-2ad34dd97a15": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/PayloadBuilder.js",
			"id": "scripttask3",
			"name": "Payload Build"
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
		"aa5c5493-4c66-460e-a419-8f39b1491214": {
			"classDefinition": "com.sap.bpm.wfs.ReferencedSubflow",
			"workflowReference": "/workflows/ProductAvailabilitySubflow.workflow",
			"definitionId": "com.prh.productavailabilitysubflow",
			"multiInstanceLoopCharacteristics": {
				"type": "parallel",
				"collection": "${context.getOrderDetailsSrv.resp.Order_Details}"
			},
			"inParameters": [{
				"sourceExpression": "${context.getOrderDetailsSrv.resp.Order_Details[loop.counter].Quantity}",
				"targetVariable": "${context.Quantity}"
			}, {
				"sourceExpression": "${context.getOrderDetailsSrv.resp.Order_Details[loop.counter].OrderID}",
				"targetVariable": "${context.OrderID}"
			}, {
				"sourceExpression": "${context.getOrderDetailsSrv.resp.Order_Details[loop.counter].Product}",
				"targetVariable": "${context.ProductDetails}"
			}],
			"outParameters": [{
				"sourceExpression": "${context.userDecision}",
				"targetVariable": "${context.getOrderDetailsSrv.resp.Order_Details[loop.counter].Availability}"
			}],
			"id": "referencedsubflow2",
			"name": "Parallel Availability Check"
		},
		"f455e1e3-419f-465f-99ea-91c7abdc0d5d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Summary for Order ID: ${context.orderInfo.orderID}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "udaypratap@amityonline.com",
			"formReference": "/forms/OrderReviewWF/SummaryForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "summaryform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"customAttributes": [{
				"id": "orderID",
				"label": "Order ID",
				"type": "string",
				"value": "${context.orderInfo.orderID}"
			}],
			"id": "usertask4",
			"name": "Summary"
		},
		"4faff0c7-80d0-4267-b4ce-94f85ed60ac0": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/kpiUpdatedInitiation.js",
			"id": "scripttask5",
			"name": "KPI Update Initiation"
		},
		"181cdaac-5ff1-4647-84d9-1a12e14bd035": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/kpiUpdateStop.js",
			"id": "scripttask7",
			"name": "KPI Update Stop"
		},
		"7d2ababa-247b-4f93-bc59-9a39206a0321": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/kpiUpdatePrdAvlCheck.js",
			"id": "scripttask8",
			"name": "KPI Update Prd Avl Check"
		},
		"c02e6871-11ce-4d0a-80fe-84e863b9f69e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/kpiUpdatePrdAvlCheckDone.js",
			"id": "scripttask9",
			"name": "KPI Update Prd Avl Check Done"
		},
		"763c1627-4306-47b7-8f2c-403b6c35842d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/OrderReviewWF/kpiUpdateSuccess.js",
			"id": "scripttask10",
			"name": "KPI Update Succeed"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "4faff0c7-80d0-4267-b4ce-94f85ed60ac0"
		},
		"59bb6025-1252-4d3a-87d6-544ddc196967": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "9f5ffa59-3ddf-4a88-b446-9d7f8d179268",
			"targetRef": "088df701-1faa-4487-a16c-656c709c957c"
		},
		"d145a919-6213-462d-9fca-8e740de096e3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "088df701-1faa-4487-a16c-656c709c957c",
			"targetRef": "c06ddb17-9134-4f2b-8840-f57d12d606df"
		},
		"dd87c452-b9e3-4c6c-8fcc-89dde05b44b8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.reviewDecision.userDecision== \"proceed\"}",
			"id": "sequenceflow11",
			"name": "Proceed",
			"sourceRef": "c06ddb17-9134-4f2b-8840-f57d12d606df",
			"targetRef": "95190e6f-6ab5-47cc-93dc-2ad34dd97a15"
		},
		"f6c646f2-ba89-4ea2-bdec-8e24494dea60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "Stop",
			"sourceRef": "c06ddb17-9134-4f2b-8840-f57d12d606df",
			"targetRef": "181cdaac-5ff1-4647-84d9-1a12e14bd035"
		},
		"b588d434-297b-4913-9a62-45669552d9b2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "95190e6f-6ab5-47cc-93dc-2ad34dd97a15",
			"targetRef": "6e2b6680-60ee-44e4-8284-38c2a1aa4c2d"
		},
		"a864c2a6-6411-4b00-ab78-d355fb7a4704": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "6e2b6680-60ee-44e4-8284-38c2a1aa4c2d",
			"targetRef": "7d2ababa-247b-4f93-bc59-9a39206a0321"
		},
		"06626dba-4dcd-407d-b7f1-2b750097c973": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "aa5c5493-4c66-460e-a419-8f39b1491214",
			"targetRef": "c02e6871-11ce-4d0a-80fe-84e863b9f69e"
		},
		"b07c3c37-822f-4514-b34f-2a0d112f46c1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "f455e1e3-419f-465f-99ea-91c7abdc0d5d",
			"targetRef": "763c1627-4306-47b7-8f2c-403b6c35842d"
		},
		"3a693ab0-e271-43fc-bc3c-039c8f9473b3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "4faff0c7-80d0-4267-b4ce-94f85ed60ac0",
			"targetRef": "9f5ffa59-3ddf-4a88-b446-9d7f8d179268"
		},
		"b73a1eb6-55fd-4332-96d8-6f5005d1d0d0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "181cdaac-5ff1-4647-84d9-1a12e14bd035",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ae61ae6a-4cde-4ed0-8ec4-78d386bde6c4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "7d2ababa-247b-4f93-bc59-9a39206a0321",
			"targetRef": "aa5c5493-4c66-460e-a419-8f39b1491214"
		},
		"f50c6633-4b5b-435e-a64b-e92fcc5daa01": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "c02e6871-11ce-4d0a-80fe-84e863b9f69e",
			"targetRef": "f455e1e3-419f-465f-99ea-91c7abdc0d5d"
		},
		"185029be-30f5-4350-96b8-789a90872c43": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "763c1627-4306-47b7-8f2c-403b6c35842d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
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
				"fc5dba9f-a7cc-4364-b633-e79274389e4b": {},
				"063071fd-187a-4661-ac3e-000c15f17fb0": {},
				"a339fcd7-c2f5-42d1-aaa1-b2a03d366271": {},
				"814bc1e5-e802-4629-a6eb-f8c5d4086310": {},
				"ac736714-1c9a-47cc-abbf-a9c5bd7f29ca": {},
				"42801671-9483-4206-b481-41ec63b69dd3": {},
				"9f89edb2-fd0f-42d9-914a-88358ccc87b9": {},
				"0a8ae609-94d2-4c6b-b835-d2f79ba51f78": {},
				"c3e4ba35-d361-4876-8d02-67090ef570e0": {},
				"4b461164-a542-426d-ab60-2f84d823e7d8": {},
				"0a89ad81-88f8-4ffb-86f2-b216ad2e4b20": {},
				"0639b778-44f9-484b-876e-5cbced7f3cd5": {},
				"ee155b07-f9f6-4897-9a8b-c1742845a57d": {},
				"ded65e04-0ebe-4d6b-8848-b1466a706210": {},
				"097c1f37-97cb-4644-bfbf-95fd43f49b06": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 14.5,
			"y": -408,
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
			"points": "30.25,-392 30.25,-284",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "42801671-9483-4206-b481-41ec63b69dd3",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"b6f0dd00-728c-4f2b-b10b-54af6c3c605d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -14,
			"y": -219.7537887487647,
			"width": 100,
			"height": 60,
			"object": "9f5ffa59-3ddf-4a88-b446-9d7f8d179268"
		},
		"93525218-338a-4801-951f-4833fdeb6ec1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "35.875,-189.7537887487647 35.875,-114.12689437438235",
			"sourceSymbol": "b6f0dd00-728c-4f2b-b10b-54af6c3c605d",
			"targetSymbol": "3e7de462-a580-4046-8af1-f7fa273556ef",
			"object": "59bb6025-1252-4d3a-87d6-544ddc196967"
		},
		"3e7de462-a580-4046-8af1-f7fa273556ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -14.25,
			"y": -144.12689437438235,
			"width": 100,
			"height": 60,
			"object": "088df701-1faa-4487-a16c-656c709c957c"
		},
		"a773e6a2-95b3-4c65-af4c-72c8eca86c17": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "35.9375,-114.12689437438235 35.9375,-34.31344718719117",
			"sourceSymbol": "3e7de462-a580-4046-8af1-f7fa273556ef",
			"targetSymbol": "ef6a6096-ff26-4e99-a83d-c26eab439b27",
			"object": "d145a919-6213-462d-9fca-8e740de096e3"
		},
		"ef6a6096-ff26-4e99-a83d-c26eab439b27": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 15.125,
			"y": -55.31344718719117,
			"object": "c06ddb17-9134-4f2b-8840-f57d12d606df"
		},
		"8c874bc6-1c99-4ec8-8327-b0e81e0cb07a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 109.125,
			"y": -55.31344718719117,
			"width": 100,
			"height": 60,
			"object": "95190e6f-6ab5-47cc-93dc-2ad34dd97a15"
		},
		"1be8e371-8aea-42e7-8f39-2266c4e8cf9e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "36.125,-34.31344718719117 76,-34.313446044921875 76,-25.313447952270508 159.125,-25.313447187191173",
			"sourceSymbol": "ef6a6096-ff26-4e99-a83d-c26eab439b27",
			"targetSymbol": "8c874bc6-1c99-4ec8-8327-b0e81e0cb07a",
			"object": "dd87c452-b9e3-4c6c-8fcc-89dde05b44b8"
		},
		"8ca77b01-84ba-40b0-a639-ea0b77c65335": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "34.5625,-34.31344718719117 34.5625,99",
			"sourceSymbol": "ef6a6096-ff26-4e99-a83d-c26eab439b27",
			"targetSymbol": "0a8ae609-94d2-4c6b-b835-d2f79ba51f78",
			"object": "f6c646f2-ba89-4ea2-bdec-8e24494dea60"
		},
		"90e02501-96b0-44a6-a2c9-9353bcf5f58b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "161.5625,-25.156723593595586 310.5625,-25.156723593595586",
			"sourceSymbol": "8c874bc6-1c99-4ec8-8327-b0e81e0cb07a",
			"targetSymbol": "d3cd12c6-0284-4432-b506-da0bc6acb278",
			"object": "b588d434-297b-4913-9a62-45669552d9b2"
		},
		"d3cd12c6-0284-4432-b506-da0bc6acb278": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 269.125,
			"y": -55,
			"width": 100,
			"height": 60,
			"object": "6e2b6680-60ee-44e4-8284-38c2a1aa4c2d"
		},
		"fc5dba9f-a7cc-4364-b633-e79274389e4b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ReferencedSubflowSymbol",
			"x": 270.125,
			"y": 154,
			"width": 100,
			"height": 60,
			"object": "aa5c5493-4c66-460e-a419-8f39b1491214"
		},
		"063071fd-187a-4661-ac3e-000c15f17fb0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "319.0625,-25 319.0625,74",
			"sourceSymbol": "d3cd12c6-0284-4432-b506-da0bc6acb278",
			"targetSymbol": "4b461164-a542-426d-ab60-2f84d823e7d8",
			"object": "a864c2a6-6411-4b00-ab78-d355fb7a4704"
		},
		"a339fcd7-c2f5-42d1-aaa1-b2a03d366271": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "326,184 326,227.25 334.5625,227.25 334.5625,269",
			"sourceSymbol": "fc5dba9f-a7cc-4364-b633-e79274389e4b",
			"targetSymbol": "0639b778-44f9-484b-876e-5cbced7f3cd5",
			"object": "06626dba-4dcd-407d-b7f1-2b750097c973"
		},
		"814bc1e5-e802-4629-a6eb-f8c5d4086310": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 270,
			"y": 335,
			"width": 100,
			"height": 60,
			"object": "f455e1e3-419f-465f-99ea-91c7abdc0d5d"
		},
		"ac736714-1c9a-47cc-abbf-a9c5bd7f29ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "320,365 239.25,365 239.25,329 159,329",
			"sourceSymbol": "814bc1e5-e802-4629-a6eb-f8c5d4086310",
			"targetSymbol": "ded65e04-0ebe-4d6b-8848-b1466a706210",
			"object": "b07c3c37-822f-4514-b34f-2a0d112f46c1"
		},
		"42801671-9483-4206-b481-41ec63b69dd3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -20,
			"y": -314,
			"width": 100,
			"height": 60,
			"object": "4faff0c7-80d0-4267-b4ce-94f85ed60ac0"
		},
		"9f89edb2-fd0f-42d9-914a-88358ccc87b9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "33,-284 33,-189.7537887487647",
			"sourceSymbol": "42801671-9483-4206-b481-41ec63b69dd3",
			"targetSymbol": "b6f0dd00-728c-4f2b-b10b-54af6c3c605d",
			"object": "3a693ab0-e271-43fc-bc3c-039c8f9473b3"
		},
		"0a8ae609-94d2-4c6b-b835-d2f79ba51f78": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -17,
			"y": 69,
			"width": 100,
			"height": 60,
			"object": "181cdaac-5ff1-4647-84d9-1a12e14bd035"
		},
		"c3e4ba35-d361-4876-8d02-67090ef570e0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "32.75,99 32.75,281.5",
			"sourceSymbol": "0a8ae609-94d2-4c6b-b835-d2f79ba51f78",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "b73a1eb6-55fd-4332-96d8-6f5005d1d0d0"
		},
		"4b461164-a542-426d-ab60-2f84d823e7d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 269,
			"y": 44,
			"width": 100,
			"height": 60,
			"object": "7d2ababa-247b-4f93-bc59-9a39206a0321"
		},
		"0a89ad81-88f8-4ffb-86f2-b216ad2e4b20": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "319.5625,74 319.5625,184",
			"sourceSymbol": "4b461164-a542-426d-ab60-2f84d823e7d8",
			"targetSymbol": "fc5dba9f-a7cc-4364-b633-e79274389e4b",
			"object": "ae61ae6a-4cde-4ed0-8ec4-78d386bde6c4"
		},
		"0639b778-44f9-484b-876e-5cbced7f3cd5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 270,
			"y": 239,
			"width": 100,
			"height": 60,
			"object": "c02e6871-11ce-4d0a-80fe-84e863b9f69e"
		},
		"ee155b07-f9f6-4897-9a8b-c1742845a57d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "320,271.5 320,362.5",
			"sourceSymbol": "0639b778-44f9-484b-876e-5cbced7f3cd5",
			"targetSymbol": "814bc1e5-e802-4629-a6eb-f8c5d4086310",
			"object": "f50c6633-4b5b-435e-a64b-e92fcc5daa01"
		},
		"ded65e04-0ebe-4d6b-8848-b1466a706210": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 109,
			"y": 299,
			"width": 100,
			"height": 60,
			"object": "763c1627-4306-47b7-8f2c-403b6c35842d"
		},
		"097c1f37-97cb-4644-bfbf-95fd43f49b06": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "159,329 79.25,329 79.25,281.5 32.5,281.5",
			"sourceSymbol": "ded65e04-0ebe-4d6b-8848-b1466a706210",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "185029be-30f5-4350-96b8-789a90872c43"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 30,
			"startevent": 1,
			"endevent": 1,
			"usertask": 5,
			"servicetask": 2,
			"scripttask": 10,
			"exclusivegateway": 2,
			"parallelgateway": 1,
			"referencedsubflow": 2
		}
	}
}