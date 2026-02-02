-- validation_queries.sql
-- QA validation queries for Member Claims API
-- Used to verify API responses against sample database data
--------------------------------------------------
-- Q1: Verify member 101 exists (TC-MEM-002)
--------------------------------------------------
SELECT
  member_id,
  first_name,
  last_name,
  status,
  plan_type
FROM members
WHERE member_id = 101;
--------------------------------------------------
-- Q2: List all members (TC-MEM-001)
--------------------------------------------------
SELECT
  member_id,
  first_name,
  last_name,
  status,
  plan_type
FROM members
ORDER BY member_id;
--------------------------------------------------
-- Q3: Verify claim 9001 exists (TC-CLM-003)
--------------------------------------------------
SELECT
  claim_id,
  member_id,
  service_date,
  claim_amount,
  status,
  provider_name
FROM claims
WHERE claim_id = 9001;
--------------------------------------------------
-- Q4: Claims for a specific member (TC-CLM-005)
--------------------------------------------------
SELECT
  claim_id,
  member_id,
  service_date,
  claim_amount,
  status,
  provider_name
FROM claims
WHERE member_id = 101
ORDER BY service_date, claim_id;
--------------------------------------------------
-- Q5: Claims filtered by DENIED status (TC-CLM-002)
--------------------------------------------------
SELECT
  claim_id,
  member_id,
  service_date,
  claim_amount,
  status,
  provider_name
FROM claims
WHERE status = 'DENIED'
ORDER BY claim_id;
--------------------------------------------------
-- Q6a: Claims with non-positive amounts (data quality check)
-- Expected result: zero rows
--------------------------------------------------
SELECT
  claim_id,
  member_id,
  service_date,
  claim_amount,
  status,
  provider_name
FROM claims
WHERE claim_amount <= 0
ORDER BY claim_id;
--------------------------------------------------
-- Q6b: Claims with invalid status values (data quality check)
-- Expected result: zero rows
--------------------------------------------------
SELECT
  claim_id,
  member_id,
  service_date,
  claim_amount,
  status,
  provider_name
FROM claims
WHERE status NOT IN ('SUBMITTED', 'APPROVED', 'DENIED')
ORDER BY claim_id;
--------------------------------------------------
-- Q6c: Claims referencing a missing member (data integrity check)
-- Expected result: zero rows
--------------------------------------------------
SELECT
  c.claim_id,
  c.member_id,
  c.service_date,
  c.claim_amount,
  c.status,
  c.provider_name
FROM claims c
LEFT JOIN members m
  ON c.member_id = m.member_id
WHERE m.member_id IS NULL;
--------------------------------------------------
-- Q7: Joined member + claim view for investigation
--------------------------------------------------
SELECT
  m.member_id,
  m.first_name,
  m.last_name,
  m.status AS member_status,
  m.plan_type,
  c.claim_id,
  c.service_date,
  c.claim_amount,
  c.status AS claim_status,
  c.provider_name
FROM members m
INNER JOIN claims c
  ON m.member_id = c.member_id
ORDER BY m.member_id, c.claim_id;

