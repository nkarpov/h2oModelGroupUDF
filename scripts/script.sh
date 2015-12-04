hive -e 'set hive.cli.print.header=true;
INSERT OVERWRITE LOCAL DIRECTORY '/home/amy/adult_data' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' select * from adult_data_set;'

hive -e 'describe adult_data_set;' > headers

hadoop fs -copyFromLocal ~/adult_data/ .
