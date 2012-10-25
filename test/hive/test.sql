ADD JAR s3://omniture-connector/static/omniture-data-file-input-format-0.0.1.jar ;

CREATE TABLE omniture_raw (
hit_time_gmt TIMESTAMP,
service STRING,
accept_language STRING,
date_time STRING,
visid_high STRING,
visid_low STRING,
event_list STRING,
homepage STRING,
ip STRING,
page_event INT,
page_event_var1 STRING,
page_event_var2 STRING,
page_type STRING,
page_url STRING,
pagename STRING,
product_list STRING,
user_server STRING,
channel STRING,
prop1 STRING,
prop2 STRING,
prop3 STRING,
prop4 STRING,
prop5 STRING,
prop6 STRING,
prop7 STRING,
prop8 STRING,
prop9 STRING,
prop10 STRING,
prop11 STRING,
prop12 STRING,
prop13 STRING,
prop14 STRING,
prop15 STRING,
prop16 STRING,
prop17 STRING,
prop18 STRING,
prop19 STRING,
prop20 STRING,
prop21 STRING,
prop22 STRING,
prop23 STRING,
prop24 STRING,
prop25 STRING,
prop26 STRING,
prop27 STRING,
prop28 STRING,
prop29 STRING,
prop30 STRING,
prop31 STRING,
prop32 STRING,
prop33 STRING,
prop34 STRING,
prop35 STRING,
prop36 STRING,
prop37 STRING,
prop38 STRING,
prop39 STRING,
prop40 STRING,
prop41 STRING,
prop42 STRING,
prop43 STRING,
prop44 STRING,
prop45 STRING,
prop46 STRING,
prop47 STRING,
prop48 STRING,
prop49 STRING,
prop50 STRING,
purchaseid STRING,
referrer STRING,
state STRING,
user_agent STRING,
zip STRING,
search_engine INT,
exclude_hit INT,
hier1 STRING,
hier2 STRING,
hier3 STRING,
hier4 STRING,
hier5 STRING,
browser INT,
post_browser_height INT,
post_browser_width INT,
post_cookies STRING,
post_java_enabled STRING,
post_persistent_cookie STRING,
color INT,
connection_type INT,
country INT,
domain STRING,
post_t_time_info STRING,
javascript INT,
language INT,
os INT,
plugins STRING,
resolution INT,
last_hit_time_gmt BIGINT,
first_hit_time_gmt BIGINT,
visit_start_time_gmt BIGINT,
last_purchase_time_gmt BIGINT,
last_purchase_num BIGINT,
first_hit_page_url STRING,
first_hit_pagename STRING,
visit_start_page_url STRING,
visit_start_pagename STRING,
first_hit_referrer STRING,
visit_referrer STRING,
visit_search_engine INT,
visit_num BIGINT,
visit_page_num BIGINT,
prev_page BIGINT,
geo_city STRING,
geo_country STRING,
geo_region STRING,
duplicate_purchase INT,
new_visit INT,
daily_visitor INT,
hourly_visitor INT,
monthly_visitor INT,
yearly_visitor INT,
post_campaign STRING,
evar1 STRING,
evar2 STRING,
evar3 STRING,
evar4 STRING,
evar5 STRING,
evar6 STRING,
evar7 STRING,
evar8 STRING,
evar9 STRING,
evar10 STRING,
evar11 STRING,
evar12 STRING,
evar13 STRING,
evar14 STRING,
evar15 STRING,
evar16 STRING,
evar17 STRING,
evar18 STRING,
evar19 STRING,
evar20 STRING,
evar21 STRING,
evar22 STRING,
evar23 STRING,
evar24 STRING,
evar25 STRING,
evar26 STRING,
evar27 STRING,
evar28 STRING,
evar29 STRING,
evar30 STRING,
evar31 STRING,
evar32 STRING,
evar33 STRING,
evar34 STRING,
evar35 STRING,
evar36 STRING,
evar37 STRING,
evar38 STRING,
evar39 STRING,
evar40 STRING,
evar41 STRING,
evar42 STRING,
evar43 STRING,
evar44 STRING,
evar45 STRING,
evar46 STRING,
evar47 STRING,
evar48 STRING,
evar49 STRING,
evar50 STRING,
post_evar1 STRING,
post_evar2 STRING,
post_evar3 STRING,
post_evar4 STRING,
post_evar5 STRING,
post_evar6 STRING,
post_evar7 STRING,
post_evar8 STRING,
post_evar9 STRING,
post_evar10 STRING,
post_evar11 STRING,
post_evar12 STRING,
post_evar13 STRING,
post_evar14 STRING,
post_evar15 STRING,
post_evar16 STRING,
post_evar17 STRING,
post_evar18 STRING,
post_evar19 STRING,
post_evar20 STRING,
post_evar21 STRING,
post_evar22 STRING,
post_evar23 STRING,
post_evar24 STRING,
post_evar25 STRING,
post_evar26 STRING,
post_evar27 STRING,
post_evar28 STRING,
post_evar29 STRING,
post_evar30 STRING,
post_evar31 STRING,
post_evar32 STRING,
post_evar33 STRING,
post_evar34 STRING,
post_evar35 STRING,
post_evar36 STRING,
post_evar37 STRING,
post_evar38 STRING,
post_evar39 STRING,
post_evar40 STRING,
post_evar41 STRING,
post_evar42 STRING,
post_evar43 STRING,
post_evar44 STRING,
post_evar45 STRING,
post_evar46 STRING,
post_evar47 STRING,
post_evar48 STRING,
post_evar49 STRING,
post_evar50 STRING,
click_action STRING,
-- click_action_type INT,
click_action_type STRING,
click_context STRING,
-- click_context_type INT,
click_context_type STRING,
-- click_sourceid BIGINT,
click_sourceid STRING,
click_tag STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' 
STORED AS 
INPUTFORMAT 'com.tgam.hadoop.mapred.OmnitureDataFileInputFormat' 
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.IgnoreKeyTextOutputFormat';


CREATE EXTERNAL TABLE test (
field1 string,
field2 string,
field3 string,
field4 string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
STORED AS INPUTFORMAT 'com.tgam.hadoop.OmnitureDataFileInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.IgnoreKeyTextOutputFormat'
LOCATION 's3://omniture-connector/data/sample/hit_data.tsv' ;

ADD JAR s3://omniture-connector/static/omniture-data-file-input-format_2.9.1-0.0.1.jar ;
converting to local s3://omniture-connector/static/omniture-data-file-input-format_2.9.1-0.0.1.jar
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/home/hadoop/lib/slf4j-log4j12-1.6.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/home/hadoop/.versions/hive-0.8.1/lib/slf4j-log4j12-1.6.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
Added /mnt/var/lib/hive_081/downloaded_resources/omniture-data-file-input-format_2.9.1-0.0.1.jar to class path
Added resource: /mnt/var/lib/hive_081/downloaded_resources/omniture-data-file-input-format_2.9.1-0.0.1.jar

ADD JAR s3://snplow-static/snowplow-log-deserializers-0.4.9.jar ;
converting to local s3://snplow-static/snowplow-log-deserializers-0.4.9.jar
Added /mnt/var/lib/hive_081/downloaded_resources/snowplow-log-deserializers-0.4.9.jar to class path
Added resource: /mnt/var/lib/hive_081/downloaded_resources/snowplow-log-deserializers-0.4.9.jar
hive> 
