# Member Claims API — Contract (v1)

Base URL:
{{base_url}}/v1

This document defines the expected behavior of the Member Claims API. QA validation is performed against the rules outlined below.

## Member Object

| Field | Type | Notes |
|------|------|------|
| member_id | integer | Unique member identifier |
| first_name | string | Required |
| last_name | string | Required |
| date_of_birth | string (YYYY-MM-DD) | Required |
| status | string | ACTIVE or INACTIVE |
| plan_type | string | BASIC, STANDARD, PREMIUM |

## Claim Object

| Field | Type | Notes |
|------|------|------|
| claim_id | integer | Unique claim identifier |
| member_id | integer | Must match an existing member |
| service_date | string (YYYY-MM-DD) | Date of medical service |
| claim_amount | number | Must be greater than 0 |
| status | string | SUBMITTED, APPROVED, DENIED |
| provider_name | string | Required |

## Endpoints

### GET /members

Returns a list of all members.

Response Code:
- 200 OK

Example Response:

```json
[
  {
    "claim_id": 9001,
    "member_id": 101,
    "service_date": "2025-11-02",
    "claim_amount": 245.75,
    "status": "APPROVED",
    "provider_name": "City Health Clinic"
  }
]
```

### GET /members/{member_id}

Returns details for a single member.

Path Parameters:
- member_id (integer)

Response Codes:
- 200 OK
- 404 Not Found

Business Rules:
- member_id must be numeric
- returned member_id must be an integer type

Example Response:
```json
{
  "member_id": 101,
  "first_name": "John",
  "last_name": "Doe",
  "date_of_birth": "1985-04-12",
  "status": "ACTIVE",
  "plan_type": "STANDARD"
}
```
### GET /claims

Returns a list of claims.

Optional Query Parameters:
- member_id (integer)
- status (SUBMITTED, APPROVED, DENIED)

Response Codes:
- 200 OK

Business Rules:
- if status is provided, only claims matching that status should be returned
- if member_id is provided, only claims for that member should be returned

Example Response:
```json
[
  {
    "claim_id": 9001,
    "member_id": 101,
    "service_date": "2025-11-02",
    "claim_amount": 245.75,
    "status": "APPROVED",
    "provider_name": "City Health Clinic"
  }
]
```
### GET /claims/{claim_id}

Returns details for a single claim.

Path Parameters:
- claim_id (integer)

Response Codes:
- 200 OK
- 404 Not Found

Business Rules:
- claim_amount must be greater than 0
- claim_id must be numeric

## General Error Handling

| Scenario | Expected Code |
|--------|----------------|
| Invalid ID format | 400 Bad Request |
| Resource not found | 404 Not Found |
| Invalid query parameter | 400 Bad Request |

## Known Limitations

- This API uses mock data.
- Pagination and authentication are out of scope.
