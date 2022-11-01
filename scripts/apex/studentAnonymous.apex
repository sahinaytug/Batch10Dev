students pt = new students();
pt.lastName = 'Aytug';
pt.classYear = 2022;
pt.major = 'physics';
string reportReturn  = pt.generateReport();
system.debug('Report returned ' + reportReturn);

students pt2 = new students();
pt.firstName = 'Bob';
pt.lastName = 'Tommy';
pt.classYear = 2022;
pt.major = 'electrical';
string reportReturn2  = pt2.generateReport();
system.debug('Report returned ' + reportReturn2);


