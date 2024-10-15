CREATE OR REPLACE FILE FORMAT PUBLIC.FILE_FORMAT
TYPE='CSV'
FIELD_OPTIONALLY_ENCLOSED_BY='"'
SKIP_HEADER=1
NULL_IF =('NULL','null','')

create or replace storage integration s3_int
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE 
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::851725184716:role/external_table'
  STORAGE_ALLOWED_LOCATIONS = ('s3://snowflake01ext/csv/snowpipe')
   COMMENT = 'This an optional comment' ;

DESC integration s3_int;
