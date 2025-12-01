-- Pre-allocated CHASM search attributes
ALTER TABLE executions_visibility ADD COLUMN TemporalKeyword05 VARCHAR(255) GENERATED ALWAYS AS (search_attributes->>'TemporalKeyword05') STORED;
CREATE INDEX by_temporal_keyword_05 ON executions_visibility (namespace_id, TemporalKeyword05, (COALESCE(close_time, '9999-12-31 23:59:59')) DESC, start_time DESC, run_id);