CREATE TABLE user_records%SUFFIX% (
  id BIGSERIAL NOT NULL,
  aggregate_id uuid NOT NULL,
  name VARCHAR(255),
  CONSTRAINT user_records_pkey%SUFFIX% PRIMARY KEY (id)
);