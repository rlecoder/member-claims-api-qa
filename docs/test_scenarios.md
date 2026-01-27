# Test Scenarios — Member Claims API

## Members

MS-001 — Retrieve all members  
Verify GET /members returns a list of members with expected fields and valid data types.

MS-002 — Retrieve a member by valid member_id  
Verify GET /members/{member_id} returns the correct member record and required fields.

MS-003 — Member not found  
Verify GET /members/{member_id} returns 404 when the member_id does not exist.

MS-004 — Invalid member_id format  
Verify GET /members/{member_id} returns 400 when member_id is not numeric.

---

## Claims

CS-001 — Retrieve all claims  
Verify GET /claims returns a list of claims with expected fields and valid data types.

CS-002 — Filter claims by status  
Verify GET /claims?status={status} returns only claims matching the requested status.

CS-003 — Filter claims by member_id  
Verify GET /claims?member_id={member_id} returns only claims for that member.

CS-004 — Retrieve a claim by valid claim_id  
Verify GET /claims/{claim_id} returns the correct claim record and required fields.

CS-005 — Claim not found  
Verify GET /claims/{claim_id} returns 404 when the claim_id does not exist.

---

## Error Handling

EH-001 — Invalid claim status value  
Verify GET /claims?status=INVALID returns 400.

