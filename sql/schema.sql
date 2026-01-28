-- schema.sql
-- Member Claims API - local validation schema

DROP TABLE IF EXISTS claims;
DROP TABLE IF EXISTS members;

CREATE TABLE members (
  member_id     INTEGER PRIMARY KEY,
  first_name    VARCHAR(50)  NOT NULL,
  last_name     VARCHAR(50)  NOT NULL,
  date_of_birth DATE         NOT NULL,
  status        VARCHAR(10)  NOT NULL,
  plan_type     VARCHAR(10)  NOT NULL,
  CONSTRAINT chk_member_status CHECK (status IN ('ACTIVE', 'INACTIVE')),
  CONSTRAINT chk_plan_type     CHECK (plan_type IN ('BASIC', 'STANDARD', 'PREMIUM'))
);

CREATE TABLE claims (
  claim_id       INTEGER PRIMARY KEY,
  member_id      INTEGER      NOT NULL,
  service_date   DATE         NOT NULL,
  claim_amount   NUMERIC(10,2) NOT NULL,
  status         VARCHAR(10)  NOT NULL,
  provider_name  VARCHAR(100) NOT NULL,
  CONSTRAINT fk_claims_member FOREIGN KEY (member_id) REFERENCES members(member_id),
  CONSTRAINT chk_claim_status CHECK (status IN ('SUBMITTED', 'APPROVED', 'DENIED')),
  CONSTRAINT chk_claim_amount CHECK (claim_amount > 0)
);

