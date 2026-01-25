# Member Claims API — Manual QA Practice Project

This project is a manual QA practice repository based on a simplified health insurance claims system. The API supports member lookup and claim tracking functionality.

Testing focuses on validating API behavior against documented business rules and verifying sample data using SQL queries.

This project is intended to demonstrate entry-level QA skills rather than represent a production system.

---

## Project Scope

The following areas were tested:

- Member lookup by ID
- Claim retrieval and filtering
- Claim status values and response structure
- Field-level data validation
- Error handling for invalid input
- Basic SQL validation of API data

---

## Tools Used

- Postman — manual API testing  
- VS Code — SQL validation queries  

---

## Project Structure


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

---

## Quick Start (Postman)

- This project uses mock API data and none of the other data is based on real data
- Defects are created based on mock responses not backend failures

---

## Project Structure

