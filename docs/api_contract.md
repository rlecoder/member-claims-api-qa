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
    "member_id": 101,
    "first_name": "John",
    "last_name": "Doe",
    "status": "ACTIVE",
    "plan_type": "STANDARD"
  }
]
