# Test Plan — Member Claims API

## Objective

The purpose of this test plan is to validate the core functionality of the Member Claims API. Testing focuses on verifying that endpoints return correct data, follow documented business rules, and handle invalid input appropriately.

This testing effort is limited to manual API validation and basic SQL verification.

---

## Scope

### In Scope

- Member retrieval endpoints
- Claim retrieval endpoints
- Query parameter filtering
- Field-level data validation
- Data type validation
- HTTP response codes
- Basic SQL data validation

### Out of Scope

- Authentication and authorization
- Performance testing
- Load or stress testing
- Security testing
- UI testing
- Pagination
- Data creation or update endpoints

---

## Test Approach

- Manual API testing performed using Postman
- Requests executed individually
- Responses validated against the API contract
- Status codes, response structure, and field values verified
- Sample API data cross-checked using SQL queries
- Defects logged when behavior differed from documented expectations

---

## Test Environment

- API Type: Mock REST API
- Tool: Postman
- Database: Local SQL environment
- IDE: VS Code

---

## Entry Criteria

- API contract is available
- Endpoints are accessible
- Test data is loaded
- Test scenarios and test cases are prepared

---

## Exit Criteria

- All planned test cases executed
- Test results documented
- Defects logged with reproduction steps
- Test summary completed

---

## Assumptions and Risks

- API responses are based on static mock data
- Some defects may be due to sample data limitations
- Data may not reflect real-world insurance logic

