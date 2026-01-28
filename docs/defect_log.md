# Defect Log — Member Claims API (v1)

---

## DEFECT-001

Title: member_id returned as string instead of integer  

Status: Open  
Severity: Medium  
Priority: Medium  

Environment: Postman mock API  
Endpoint: GET /v1/members/101  

Description:  
The member_id field is returned as a string instead of an integer in the member detail response.

Steps to Reproduce:
1. Send GET request to /v1/members/101
2. Review the member_id field in the response body

Expected Result:  
member_id is returned as an integer value (example: 101).

Actual Result:  
member_id is returned as a string value (example: "101").

Evidence:  
Saved response in /evidence/api_responses/member_101.json

Related Test Case:  
TC-MEM-002

---

## DEFECT-002

Title: Claims status filter returns records with incorrect status  

Status: Open  
Severity: High  
Priority: High  

Environment: Postman mock API  
Endpoint: GET /v1/claims?status=DENIED  

Description:  
When filtering claims by status, the API returns at least one claim with a status that does not match the requested filter.

Steps to Reproduce:
1. Send GET request to /v1/claims?status=DENIED
2. Review status field for each returned claim

Expected Result:  
All returned claims have status = DENIED.

Actual Result:  
One or more returned claims have status = APPROVED.

Evidence:  
Saved response in /evidence/api_responses/clai_

