tips1:
SELECT r.trx_mysql_thread_id AS waiting_thread, r.trx_id AS waiting_trx_id, r.trx_query AS waiting_query, b.trx_id AS blocking_trx_id, b.trx_query AS blocking_query
	, b.trx_mysql_thread_id AS blocking_thread, b.trx_started, b.trx_wait_started
FROM information_schema.innodb_lock_waits w INNER JOIN information_schema.innodb_trx b ON b.trx_id = w.blocking_trx_id INNER JOIN information_schema.innodb_trx r ON r.trx_id = w.requesting_trx_id\G

tip2: 重复记录load data

mysql> load data infile '/home/dba/4.csv' replace into table tb_xheroes_unmasteruser(uid);
Query OK, 7711265 rows affected (1 min 50.01 sec)
Records: 7354793  Deleted: 356472  Skipped: 0  Warnings: 0


