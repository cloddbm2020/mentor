create proc sp_libera_tempdb as 

CHECKPOINT;
DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESYSTEMCACHE ('ALL');
DBCC FREESESSIONCACHE;
DBCC SHRINKFILE (TEMPDEV, 20480);   --- New file size in MB
