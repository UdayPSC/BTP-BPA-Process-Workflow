{
	"contents": {
		"8104fb8f-7994-4eac-bfaa-3abe9ec7f775": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.prh.productavailabilitysubflow",
			"subject": "ProductAvailabilitySubflow",
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
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "2b63fb51-8d4d-4464-af2f-d36348edd298"
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
				"d8aac4df-3913-4465-9a2e-93b7ddbf9b53": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 11.5,
			"y": -132,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 12,
			"y": 94,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28,-116 28,-2.7651654539996997",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "8542a326-3df2-4e7e-8504-22c5b3cb8dd7",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1
		},
		"2b63fb51-8d4d-4464-af2f-d36348edd298": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Availabilty Check for Product ${context.ProductDetails.ProductName}",
			"description": "Please verify the availability of the product given below.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "udaypratap@amityonline.com",
			"formReference": "/forms/ProductAvailabilitySubflow/ProductAvailabilityForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "productavailabilityform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Availabilty Check Form"
		},
		"8542a326-3df2-4e7e-8504-22c5b3cb8dd7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -21.5,
			"y": -32.7651654539997,
			"width": 100,
			"height": 60,
			"object": "2b63fb51-8d4d-4464-af2f-d36348edd298"
		},
		"c2947481-b768-47a5-9e16-823af7d6fc25": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "2b63fb51-8d4d-4464-af2f-d36348edd298",
			"targetRef": "8e790040-f178-4dda-9bb6-448b5a4abafa"
		},
		"ec6772c2-c063-477f-8a2b-a5354e243862": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28.75,-2.7651654539996997 28.75,60.86741727300015",
			"sourceSymbol": "8542a326-3df2-4e7e-8504-22c5b3cb8dd7",
			"targetSymbol": "fbdb2cc4-f358-4696-a937-bacd3b9c531a",
			"object": "c2947481-b768-47a5-9e16-823af7d6fc25"
		},
		"8e790040-f178-4dda-9bb6-448b5a4abafa": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ProductAvailabilitySubflow/DecisionCheck.js",
			"id": "scripttask1",
			"name": "Decision Check"
		},
		"fbdb2cc4-f358-4696-a937-bacd3b9c531a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -21,
			"y": 30.86741727300015,
			"width": 100,
			"height": 60,
			"object": "8e790040-f178-4dda-9bb6-448b5a4abafa"
		},
		"3248b70c-9f9c-4c92-9ead-b28c5a6f6451": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "8e790040-f178-4dda-9bb6-448b5a4abafa",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d8aac4df-3913-4465-9a2e-93b7ddbf9b53": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.25,60.86741727300015 29.25,111.5",
			"sourceSymbol": "fbdb2cc4-f358-4696-a937-bacd3b9c531a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3248b70c-9f9c-4c92-9ead-b28c5a6f6451"
		}
	}
}