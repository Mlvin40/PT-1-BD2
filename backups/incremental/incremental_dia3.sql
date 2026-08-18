# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 126
#260818 13:00:16 server id 1  end_log_pos 126 CRC32 0xff2959f9 	Start: binlog v 4, server v 8.0.46-0ubuntu0.24.04.3 created 260818 13:00:16
BINLOG '
wKuEag8BAAAAegAAAH4AAAAAAAQAOC4wLjQ2LTB1YnVudHUwLjI0LjA0LjMAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAflZKf8=
'/*!*/;
# at 157
#260818 13:03:03 server id 1  end_log_pos 236 CRC32 0x9d8a4d9e 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1787079783128136	immediate_commit_timestamp=1787079783128136	transaction_length=1410
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1787079783128136 (2026-08-18 13:03:03.128136 CST)
# immediate_commit_timestamp=1787079783128136 (2026-08-18 13:03:03.128136 CST)
/*!80001 SET @@session.original_commit_timestamp=1787079783128136*//*!*/;
/*!80014 SET @@session.original_server_version=80046*//*!*/;
/*!80014 SET @@session.immediate_server_version=80046*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#260818 13:03:03 server id 1  end_log_pos 324 CRC32 0xca00c2c2 	Query	thread_id=42	exec_time=0	error_code=0
SET TIMESTAMP=1787079783/*!*/;
SET @@session.pseudo_thread_id=42/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.time_zone='SYSTEM'/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 324
#260818 13:03:03 server id 1  end_log_pos 399 CRC32 0xc9952c74 	Table_map: `hotel_bd2`.`LOG_HABITACION` mapped to number 95
# has_generated_invisible_primary_key=0
# at 399
#260818 13:03:03 server id 1  end_log_pos 1536 CRC32 0x7f495506 	Write_rows: table id 95 flags: STMT_END_F

BINLOG '
Z6yEahMBAAAASwAAAI8BAAAAAF8AAAAAAAEACWhvdGVsX2JkMgAOTE9HX0hBQklUQUNJT04AAxEP
AwMGyAAGAQEAAgP8/wB0LJXJ
Z6yEah4BAAAAcQQAAAAGAAAAAF8AAAAAAAEAAgAD/wBqhKuxAYahCkRpc3BvbmlibGUBAAAAAGqE
q7IBhqIHT2N1cGFkYQIAAAAAaoSrswGGowhMaW1waWV6YQMAAAAAaoSrtAGGpAlSZXNlcnZhZGEE
AAAAAGqEq7UBhqUNTWFudGVuaW1pZW50bwUAAAAAaoSrtgGGpgpEaXNwb25pYmxlBgAAAABqhKu3
AYanB09jdXBhZGEHAAAAAGqEq7gBhqgITGltcGllemEIAAAAAGqEq7kBhqkJUmVzZXJ2YWRhCQAA
AABqhKu6AYaqCkRpc3BvbmlibGUKAAAAAGqEq7sBhqsHT2N1cGFkYQsAAAAAaoSrvAGGrAhMaW1w
aWV6YQwAAAAAaoSrvQGGrQlSZXNlcnZhZGENAAAAAGqEq74Bhq4NTWFudGVuaW1pZW50bw4AAAAA
aoSrvwGGrwpEaXNwb25pYmxlDwAAAABqhKvAAYawB09jdXBhZGEQAAAAAGqEq8EBhrEITGltcGll
emERAAAAAGqEq8IBhrIJUmVzZXJ2YWRhEgAAAABqhKvDAYazCkRpc3BvbmlibGUTAAAAAGqEq8QB
hrQHT2N1cGFkYRQAAAAAaoSrxQGGtQhMaW1waWV6YRUAAAAAaoSrxgGGtglSZXNlcnZhZGEWAAAA
AGqEq8cBhrcNTWFudGVuaW1pZW50bxcAAAAAaoSryAGGuApEaXNwb25pYmxlGAAAAABqhKvJAYa5
B09jdXBhZGEZAAAAAGqEq8oBhroITGltcGllemEaAAAAAGqEq8sBhrsJUmVzZXJ2YWRhGwAAAABq
hKvMAYa8CkRpc3BvbmlibGUcAAAAAGqEq80Bhr0HT2N1cGFkYR0AAAAAaoSrzgGGvghMaW1waWV6
YR4AAAAAaoSrzwGGvwlSZXNlcnZhZGEfAAAAAGqEq9ABhsANTWFudGVuaW1pZW50byAAAAAAaoSr
0QGGwQpEaXNwb25pYmxlIQAAAABqhKvSAYbCB09jdXBhZGEiAAAAAGqEq9MBhsMITGltcGllemEj
AAAAAGqEq9QBhsQJUmVzZXJ2YWRhJAAAAABqhKvVAYbFCkRpc3BvbmlibGUlAAAAAGqEq9YBhsYH
T2N1cGFkYSYAAAAAaoSr1wGGxwhMaW1waWV6YScAAAAAaoSr2AGGyAlSZXNlcnZhZGEoAAAAAGqE
q9kBhskNTWFudGVuaW1pZW50bykAAAAAaoSr2gGGygpEaXNwb25pYmxlKgAAAABqhKvbAYbLB09j
dXBhZGErAAAAAGqEq9wBhswITGltcGllemEsAAAAAGqEq90Bhs0JUmVzZXJ2YWRhLQAAAABqhKve
AYbOCkRpc3BvbmlibGUuAAAAAGqEq98Bhs8HT2N1cGFkYS8AAAAAaoSr4AGG0AhMaW1waWV6YTAA
AAAAaoSr4QGG0QlSZXNlcnZhZGExAAAAAGqEq+IBhtINTWFudGVuaW1pZW50bzIAAAAGVUl/
'/*!*/;
# at 1536
#260818 13:03:03 server id 1  end_log_pos 1567 CRC32 0x255fec98 	Xid = 504
COMMIT/*!*/;
# at 1567
#260818 13:03:40 server id 1  end_log_pos 1611 CRC32 0x12f00f55 	Rotate to binlog.000296  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
