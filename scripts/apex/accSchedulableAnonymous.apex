String cronExp = '0 0 13 * * ?';
AccountSchedulable ac = new AccountSchedulable();
System.schedule('accUpdateCron', cronExp, ac);