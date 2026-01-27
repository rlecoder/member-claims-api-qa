# Test Cases — Member Claims API

## Notes
- Base URL: {{base_url}}/v1
- Tool: Postman
- All test cases are executed manually.
- Actual Result / Pass-Fail should be filled in during execution.

---

## Test Cases

| Test Case ID | Title | Endpoint | Method | Input / Params | Expected Result |
|------------|-------|----------|--------|----------------|----------------|
| TC-MEM-001 | Get all members | /members | GET | N/A | 200 OK. Response is a non-empty list. Each item includes member_id, first_name, last_name, status, plan_type. member_id is integer. |
| TC-MEM-002 | Get member by valid member_id | /members/101 | GET | member_id=101 | 200 OK. Returns one member record. member_id is integer. Required fields present (first_name, last_name, date_of_birth, status, plan_type). |
| TC-MEM-003 | Get member not found | /members/9999 | GET | member_id=9999 | 404 Not Found. Error response returned (any message is acceptable). |
| TC-MEM-004 | Get member with invalid member_id format | /members/ABC | GET | member_id=ABC | 400 Bad Request. Error response returned. |

| TC-CLM-001 | Get all claims | /claims | GET | N/A | 200 OK. Response is a list. Each item includes claim_id, member_id, service_date, claim_amount, status, provider_name. claim_id and member_id are integers. claim_amount is greater than 0. |
| TC-CLM-002 | Filter claims by status | /claims?status=DENIED | GET | status=DENIED | 200 OK. Response list contains only claims where status = DENIED. |
| TC-CLM-003 | Filter claims by member_id | /claims?member_id=101 | GET | member_id=101 | 200 OK. Response list contains only claims where member_id = 101. |
| TC-CLM-004 | Get claim by valid claim_id | /claims/9001 | GET | claim_id=9001 | 200 OK. Returns one claim record. claim_id and member_id are integers. claim_amount > 0. status is one of SUBMITTED/APPROVED/DENIED. |
| TC-CLM-005 | Get claim not found | /claims/999999 | GET | claim_id=999999 | 404 Not Found. Error response returned (any message is acceptable). |

| TC-ERR-001 | Invalid status filter value | /claims?status=INVALID | GET | status=INVALID | 400 Bad Request. Error response returned. |

