DmlDemo2.dmlInsertDemo2();
DmlDemo2.dmlInsertDemo3();
DmlDemo2.dmlMultipleRecord_right1();
DmlDemo2.dmlMultipleRecord_right2();
DmlDemo2.dmlMultipleRecordUpdate_right();

 List<Account> ListAcc = [select id, name from Account 
ORDER BY CreatedDate desc  limit 155];
delete ListAcc;

delete [select id, name from Account ORDER BY CreatedDate desc  limit 155];


