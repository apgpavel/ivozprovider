Feature: Update extensions
  In order to manage extensions
  As an super admin
  I need to be able to update them through the API.

  @createSchema
  Scenario: Update an extensions
    Given I add Company Authorization header
     When I add "Content-Type" header equal to "application/json"
      And I add "Accept" header equal to "application/json"
      And I send a "PUT" request to "/extensions/1" with body:
    """
       {
          "number": "108",
          "routeType": "user",
          "numberValue": null,
          "friendValue": null,
          "id": 1,
          "company": 1,
          "ivr": null,
          "huntGroup": null,
          "conferenceRoom": null,
          "user": 1,
          "queue": null,
          "conditionalRoute": null,
          "numberCountry": 2
      }
    """
    Then the response status code should be 200
     And the response should be in JSON
     And the header "Content-Type" should be equal to "application/json; charset=utf-8"
     And the JSON should be like:
    """
      {
          "number": "108",
          "routeType": "user",
          "numberValue": null,
          "friendValue": null,
          "id": 1,
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
              "balance": 1.2,
              "showInvoices": false,
              "id": 1,
              "language": 1,
              "defaultTimezone": 145,
              "country": 68,
              "outgoingDdi": null,
              "outgoingDdiRule": null
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
              "tokenKey": "4c18027290f0c1ed517680bb4bcf2402",
              "gsQRCode": false,
              "id": 1,
              "company": 1,
              "callAcl": null,
              "bossAssistant": null,
              "bossAssistantWhiteList": null,
              "language": null,
              "terminal": 1,
              "extension": null,
              "timezone": 145,
              "outgoingDdi": null,
              "outgoingDdiRule": null,
              "voicemailLocution": null
          },
          "queue": null,
          "conditionalRoute": null,
          "numberCountry": null
      }
    """
