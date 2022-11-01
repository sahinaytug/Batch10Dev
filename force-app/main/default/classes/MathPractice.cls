public  class MathPractice {
   // public decimal practiceTwo(decimal boy ,decimal kilo){
   
   //  decimal WKI = (kilo / (boy * boy));
    
   //  return WKI;
    // "MathPractice" Class'ının içerisine "practiceTwo" isimli bir method oluşturun.
// Bu method boy ve kilo değerlerini iki adet decimal parametre olarak kabul etsin ve
// vücut kitle indeksini hesaplayıp return etsin. 
//[ İpucu: VKI = Kilo(kg)  / (boy(m)  * boy(m)) - return type: decimal ]
// Örnek:
//        Birinci Parametre      : 1.78
//        İkinci Parametre        : 85.5
//        Debug Ekranı            : Vücut Kitle İndeksi: 26.9852291377351344527206160838278 
  
   // }

   // public integer practiceThree(integer a,integer b){
   
   //    integer ort = ((a + b)/2);
      
   //    return ort;
    
   //  }
   //  "MathPractice" Class'ının içerisine "practiceThree" isimli bir method 
   // oluşturun.
   //   iki sayıyı parametre olarak kabul etsin ve bu sayıların ortalamasını 
   // return etsin. 
   //   [ipucu: iki integer değerin ortalaması ondalık bir sayı olabilir.]

   public static void ageCalculate(Map<String,date> mapName){
      list<date> allDates = mapName.values();
      Set<String> allNames = mapName.keySet();
      List<String> allNamesDemo = new List<String>();

      Decimal age = 0;
      String name = '';

      //Age icin bir liste olustur
      List<Decimal> ageList = new list<decimal>();

      for (Date eachOne : allDates){
         Date today = date.today();
         age = (eachOne.daysBetween(today)) / 365;

         ageList.add(age);
      }

      Map<String,Decimal> ageMap = new Map<String,Decimal>();
      for (Integer i = 0; i < ageList.size(); i++){
         ageMap.put(allNamesDemo[i], ageList[i]);
         system.debug(allNamesDemo[i] + '  in yasi = '+ ageList[i]);
      }   

   }


