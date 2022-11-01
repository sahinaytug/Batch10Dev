public  class PrimitiveDataTypeDemo {
   public void PrintBasicDataType(){
    system.debug('inside print basic datatype method');
    string batchName = 'Batch 10';
    integer totalCandidates = 85;
    boolean isAdminComleted = true;

    system.debug(batchName);
    system.debug(totalCandidates);
    system.debug(isAdminComleted);
    
    string batchDescription = batchName + 'is amazing';
    system.debug(batchDescription);

    Decimal decValue = 2701;
    system.debug('Decimal:' + decValue);

    Long longValue = 43654176461564L;
    system.debug('Long:' + longValue);

    object obj = 'This is a string object';
    system.debug('obj is -->' + obj);

    object obj2 = 678.6;
    system.debug('obj is -->' + obj2);

    Id id1 = '0014x00001L5ft2AAB';
      system.debug(id1);
   }
}