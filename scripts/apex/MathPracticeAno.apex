// MathPractice obj = new MathPractice();
// integer ortalama = obj.practiceThree(20, 30);
// System.debug('20 ve 30 ortalamasi => ' + ortalama);

// decimal top =obj.practiceTwo(1.78, 75.5);
// System.debug('Vücut Kitle İndeksi: ' + top);

Map<String,date> mapage = new Map<String,date> ();
mapage.put('David', Date.newInstance(1324, 01, 25));
mapage.put('Poul', Date.newInstance(1454, 02, 26));
mapage.put('Sementha', Date.newInstance(1564, 03, 27));

MathPractice.ageCalculate(mapage);

