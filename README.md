# Member Claims API — Manual QA Project

This repository contains manual QA testing work for a simplified health insurance claims API. The API supports basic member lookup and claim retrieval functionality.

Testing focuses on validating API behavior against documented business rules and verifying sample data through SQL-based checks. Mock responses are used to simulate backend behavior.

This project is intended to demonstrate entry-level QA testing skills.

---

## Project Scope

Testing covered the following areas:

- Member lookup by ID
- Claim retrieval and filtering
- Claim status values and response structure
- Field-level data validation
- Error handling for invalid input
- Basic SQL validation of API data

---

## Defects

Intentional defects were introduced in mock API responses to demonstrate defect identification and documentation. These defects are based on API behavior rather than backend failures.

Details can be found in `docs/defect_log.md`.

---

## Repository Structure

```
member-claims-api-qa/
├── README.md
├── postman/
│   ├── MemberClaimsAPI.postman_collection.json
│   └── MemberClaimsAPI.postman_environment.json
├── docs/
│   ├── api_contract.md
│   ├── test_plan.md
│   ├── test_scenarios.md
│   ├── test_cases.md
│   ├── defect_log.md
│   └── test_summary.md
├── sql/
│   ├── schema.sql
│   ├── seed_data.sql
│   └── validation_queries.sql
└── evidence/
   ├── api_responses/
   └── screenshots/
```
