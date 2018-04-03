Feature: Create extensions
  In order to manage extensions
  As an super admin
  I need to be able to create them through the API.

  @createSchema
  Scenario: Create an extension
    Given I add Authorization header
     When I add "Content-Type" header equal to "application/json"
      And I add "Accept" header equal to "application/json"
      And I send a "POST" request to "/extensions" with body:
    """
      {
          "number": "111",
          "routeType": "user",
          "numberValue": null,
          "friendValue": null,
          "company": 1,
          "ivr": null,
          "huntGroup": null,
          "conferenceRoom": null,
          "user": 1,
          "queue": null,
          "conditionalRoute": null,
          "numberCountry": 1
      }
    """
    Then the response status code should be 201
     And the response should be in JSON
     And the header "Content-Type" should be equal to "application/json; charset=utf-8"
     And the JSON should be equal to:
    """
       {
          "number": "111",
          "id": 4
      }
    """

  Scenario: Retrieve created extension
    Given I add Authorization header
     When I add "Accept" header equal to "application/json"
      And I send a "GET" request to "extensions/4"
     Then the response status code should be 200
      And the response should be in JSON
      And the header "Content-Type" should be equal to "application/json; charset=utf-8"
      And the JSON should be equal to:
    """
      {
          "number": "111",
          "routeType": "user",
          "numberValue": null,
          "friendValue": null,
          "id": 4,
          "company": {
              "type": "vpbx",
              "name": "DemoCompany",
              "domainUsers": "127.0.0.1",
              "nif": "12345678A",
              "distributeMethod": "hash",
              "maxCalls": 0,
              "postalAddress": "Company Address",
              "postalCode": "54321",
              "town": "Company Town",
              "province": "Company Province",
              "countryName": "Company Country",
              "ipfilter": false,
              "onDemandRecord": 0,
              "onDemandRecordCode": "",
              "externallyextraopts": "",
              "recordingsLimitMB": null,
              "recordingsLimitEmail": "",
              "billingMethod": "prepaid",
              "balance": "1.2",
              "id": 1,
              "language": 1,
              "mediaRelaySets": 1,
              "defaultTimezone": 1,
              "brand": 1,
              "domain": 3,
              "applicationServer": null,
              "country": 1,
              "transformationRuleSet": 1,
              "outgoingDdi": null,
              "outgoingDdiRule": null,
              "voicemailNotificationTemplate": 1,
              "faxNotificationTemplate": null
          },
          "ivr": null,
          "huntGroup": null,
          "conferenceRoom": null,
          "user": {
              "name": "Alice",
              "lastname": "Allison",
              "email": "alice@democompany.com",
              "pass": "*****",
              "doNotDisturb": false,
              "isBoss": false,
              "active": true,
              "maxCalls": 1,
              "externalIpCalls": "0",
              "voicemailEnabled": true,
              "voicemailSendMail": true,
              "voicemailAttachSound": true,
              "tokenKey": "ec6a6536ca304edf844d1d248a4f08dc",
              "gsQRCode": false,
              "id": 1,
              "company": 1,
              "callAcl": null,
              "bossAssistant": null,
              "bossAssistantWhiteList": null,
              "transformationRuleSet": 1,
              "language": null,
              "terminal": 1,
              "extension": 4,
              "timezone": 1,
              "outgoingDdi": null,
              "outgoingDdiRule": null,
              "voicemailLocution": null
          },
          "queue": null,
          "conditionalRoute": null,
          "numberCountry": null
      }
    """