set<string> fruitSet = new set<string>{'apple', 'chery', 'apricot', 'peach'};
system.debug(fruitSet);
for(string fruit: fruitSet ){
    system.debug('fruit name' + fruit);
}

Integer listSize = fruitSet.size();
system.debug(listSize);

fruitSet.add('apricot');
System.debug(fruitSet);
System.debug('is contain apricot' + fruitSet.contains('apricot'));
System.debug('Is empty' + fruitSet.isEmpty());