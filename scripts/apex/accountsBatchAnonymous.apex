AccountsBatch ab = new AccountsBatch();
id batchId Database.executeBatch(ab, 15);
//using this batchId or job id we can get status(queued, In Progres)

System.debug('batch id===>' + batchId);