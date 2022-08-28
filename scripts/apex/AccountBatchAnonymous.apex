AccountsBatch ab = new AccountsBatch();
integer numberOfRecords = 20;
id batchId = Database.executeBatch(ab, numberOfRecords); //1way
id batchId2 = Database.executeBatch(new AccountsBatch(), 20); //another way