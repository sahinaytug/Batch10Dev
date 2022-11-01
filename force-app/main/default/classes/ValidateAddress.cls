public  class ValidateAddress {
    public void  validateHomeAddress(){
        string houseName = 'My Home';
        string streetName = 'Dalewood Drive';
        string cityName = 'Missassauga';
        string stateName = 'Ontario';
        string stateISOCode = 'ON';
        string countryName = 'Canada';
        string countryISOCode = 'CAN';
        integer numberOfCar = stateName.length();
        system.debug(numberOfCar);
        boolean content1 = stateName.contains(houseName);
        system.debug(content1);
        boolean content2 = streetName.contains(stateISOCode);
        system.debug(content2);
        string convert1 = countryName.toUpperCase();
        system.debug(convert1);
        string convert2 = cityName.toUpperCase();
        system.debug(convert2);
        string convert3 = stateName.toUpperCase();
        system.debug(convert3);
        string convert4 = stateISOCode.toUpperCase();
        system.debug(convert4);
        string convert5 = countryISOCode.toUpperCase();
        system.debug(convert5);
        string myAddress = ('My full address name is => ' + houseName +' '+ stateName + ' ' 
        + cityName +' '+ stateName);
        system.debug('My full address name is => '  + myAddress);
    }

  
}
