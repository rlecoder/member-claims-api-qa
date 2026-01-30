# Defect Log — Member Claims API (v1)

---

## DEFECT-001

Title: member_id returned as string instead of integer

Status: Open  
Severity: Medium  
Priority: Medium  

Endpoint:  
GET /v1/members/101

Description:  
member_id is returned as a string value instead of an integer.

Steps to Reproduce:
1. Send GET request to /v1/members/101
2. Review the member_id field in the response

Expected Result:  
member_id is returned as an integer (example: 101).

Actual Result:  
member_id is returned as a string (example: "101").

Evidence:  
/evidence/api_responses/member_101.json

Related Test Case:  
TC-MEM-002

---

## DEFECT-002

Title: Claims status filter returns incorrect records

Status: Open  
Severity: High  
Priority: High  

Endpoint:  
GET /v1/claims?status=DENIED

Description:  
Filtering claims by status returns at least one claim with a status that does not match the requested filter.

Steps to Reproduce:
1. Send GET request to /v1/claims?status=DENIED
2. Review the status value of each returned claim

Expected Result:  
All returned claims have status = DENIED.

Actual Result:  
One or more returned claims have status = APPROVED.

Evidence:  
/evidence/api_responses/claims_status_denied.json

Related Test Case:  
TC-CLM-002
