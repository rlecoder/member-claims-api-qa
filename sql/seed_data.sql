-- seed_data.sql
-- Sample data for Member Claims API QA validation

-- Members
INSERT INTO members (member_id, first_name, last_name, date_of_birth, status, plan_type) VALUES
(101, 'John', 'Doe', '1985-04-12', 'ACTIVE', 'STANDARD'),
(102, 'Jane', 'Smith', '1990-09-30', 'ACTIVE', 'PREMIUM'),
(103, 'Mark', 'Taylor', '1978-01-18', 'INACTIVE', 'BASIC');

-- Claims
INSERT INTO claims (claim_id, member_id, service_date, claim_amount, status, provider_name) VALUES
(9001, 101, '2025-11-02', 245.75, 'APPROVED', 'City Health Clinic'),
(9002, 101, '2025-11-15', 120.00, 'DENIED', 'Downtown Imaging Center'),
(9003, 101, '2025-12-01', 89.50,  'SUBMITTED', 'Family Practice Group'),
(9004, 102, '2025-10-20', 560.00, 'DENIED', 'Metro Hospital'),
(9005, 102, '2025-11-05', 310.25, 'APPROVED', 'Urgent Care Plus'),
(9006, 103, '2025-09-12', 75.00,  'DENIED', 'Community Health Lab');
