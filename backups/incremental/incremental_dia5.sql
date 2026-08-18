# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 126
#260818 13:11:41 server id 1  end_log_pos 126 CRC32 0x9b4b2749 	Start: binlog v 4, server v 8.0.46-0ubuntu0.24.04.3 created 260818 13:11:41
BINLOG '
ba6Eag8BAAAAegAAAH4AAAAAAAQAOC4wLjQ2LTB1YnVudHUwLjI0LjA0LjMAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAUknS5s=
'/*!*/;
# at 157
#260818 13:15:22 server id 1  end_log_pos 236 CRC32 0xcc4fc4d7 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1787080522590611	immediate_commit_timestamp=1787080522590611	transaction_length=1419
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1787080522590611 (2026-08-18 13:15:22.590611 CST)
# immediate_commit_timestamp=1787080522590611 (2026-08-18 13:15:22.590611 CST)
/*!80001 SET @@session.original_commit_timestamp=1787080522590611*//*!*/;
/*!80014 SET @@session.original_server_version=80046*//*!*/;
/*!80014 SET @@session.immediate_server_version=80046*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#260818 13:15:22 server id 1  end_log_pos 324 CRC32 0x04aacdab 	Query	thread_id=52	exec_time=0	error_code=0
SET TIMESTAMP=1787080522/*!*/;
SET @@session.pseudo_thread_id=52/*!*/;
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
#260818 13:15:22 server id 1  end_log_pos 399 CRC32 0x07e68353 	Table_map: `hotel_bd2`.`LOG_HABITACION` mapped to number 95
# has_generated_invisible_primary_key=0
# at 399
#260818 13:15:22 server id 1  end_log_pos 1545 CRC32 0x78f0139e 	Write_rows: table id 95 flags: STMT_END_F

BINLOG '
Sq+EahMBAAAASwAAAI8BAAAAAF8AAAAAAAEACWhvdGVsX2JkMgAOTE9HX0hBQklUQUNJT04AAxEP
AwMGyAAGAQEAAgP8/wBTg+YH
Sq+Eah4BAAAAegQAAAkGAAAAAF8AAAAAAAEAAgAD/wBqhLnBAw1BCVJlc2VydmFkYQEAAAAAaoS5
wgMNQghMaW1waWV6YQIAAAAAaoS5wwMNQwpEaXNwb25pYmxlAwAAAABqhLnEAw1EB09jdXBhZGEE
AAAAAGqEucUDDUUKRGlzcG9uaWJsZQUAAAAAaoS5xgMNRglSZXNlcnZhZGEGAAAAAGqEuccDDUcI
TGltcGllemEHAAAAAGqEucgDDUgKRGlzcG9uaWJsZQgAAAAAaoS5yQMNSQdPY3VwYWRhCQAAAABq
hLnKAw1KDU1hbnRlbmltaWVudG8KAAAAAGqEucsDDUsJUmVzZXJ2YWRhCwAAAABqhLnMAw1MCExp
bXBpZXphDAAAAABqhLnNAw1NCkRpc3BvbmlibGUNAAAAAGqEuc4DDU4HT2N1cGFkYQ4AAAAAaoS5
zwMNTw1NYW50ZW5pbWllbnRvDwAAAABqhLnQAw1QCVJlc2VydmFkYRAAAAAAaoS50QMNUQhMaW1w
aWV6YREAAAAAaoS50gMNUgpEaXNwb25pYmxlEgAAAABqhLnTAw1TB09jdXBhZGETAAAAAGqEudQD
DVQKRGlzcG9uaWJsZRQAAAAAaoS51QMNVQlSZXNlcnZhZGEVAAAAAGqEudYDDVYITGltcGllemEW
AAAAAGqEudcDDVcKRGlzcG9uaWJsZRcAAAAAaoS52AMNWAdPY3VwYWRhGAAAAABqhLnZAw1ZDU1h
bnRlbmltaWVudG8ZAAAAAGqEudoDDVoJUmVzZXJ2YWRhGgAAAABqhLnbAw1bCExpbXBpZXphGwAA
AABqhLncAw1cCkRpc3BvbmlibGUcAAAAAGqEud0DDV0HT2N1cGFkYR0AAAAAaoS53gMNXg1NYW50
ZW5pbWllbnRvHgAAAABqhLnfAw1fCVJlc2VydmFkYR8AAAAAaoS54AMNYAhMaW1waWV6YSAAAAAA
aoS54QMNYQpEaXNwb25pYmxlIQAAAABqhLniAw1iB09jdXBhZGEiAAAAAGqEueMDDWMKRGlzcG9u
aWJsZSMAAAAAaoS55AMNZAlSZXNlcnZhZGEkAAAAAGqEueUDDWUITGltcGllemElAAAAAGqEueYD
DWYKRGlzcG9uaWJsZSYAAAAAaoS55wMNZwdPY3VwYWRhJwAAAABqhLnoAw1oDU1hbnRlbmltaWVu
dG8oAAAAAGqEuekDDWkJUmVzZXJ2YWRhKQAAAABqhLnqAw1qCExpbXBpZXphKgAAAABqhLnrAw1r
CkRpc3BvbmlibGUrAAAAAGqEuewDDWwHT2N1cGFkYSwAAAAAaoS57QMNbQ1NYW50ZW5pbWllbnRv
LQAAAABqhLnuAw1uCVJlc2VydmFkYS4AAAAAaoS57wMNbwhMaW1waWV6YS8AAAAAaoS58AMNcApE
aXNwb25pYmxlMAAAAABqhLnxAw1xB09jdXBhZGExAAAAAGqEufIDDXINTWFudGVuaW1pZW50bzIA
AACeE/B4
'/*!*/;
# at 1545
#260818 13:15:22 server id 1  end_log_pos 1576 CRC32 0x53980cb4 	Xid = 767
COMMIT/*!*/;
# at 1576
#260818 13:16:27 server id 1  end_log_pos 1620 CRC32 0x92cdf6a7 	Rotate to binlog.000298  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
