map<string, integer> marksObtainMaths = new map<string, integer>();
marksObtainMaths.put('0111CE112', 40);
marksObtainMaths.put('0111CE102',19);
marksObtainMaths.put('0111CE100', 33);
marksObtainMaths.put('0111CE098', 40);
System.debug(marksObtainMaths);

set<string> rollNumberSets = marksObtainMaths.keySet();
system.debug('RollNumber: ' + rollNumberSets);

List<Integer> allMarks = marksObtainMaths.values();
system.debug('All marks: ' + allMarks);

set<string> uniqueRollNumberSet = marksObtainMaths.keySet();
for (string x : uniqueRollNumberSet){
    system.debug('Unique Roll Numbers: ' + x);
}

list<integer> uniqueMarks = marksObtainMaths.values();
for(Integer y: uniqueMarks){
    system.debug('Unique marks: ' + y);
}

set<string> keyWithValues = marksObtainMaths.keySet();
for(string a: keyWithValues){
    system.debug('Student/s Roll number is' + a + ' and Mark Obtains = '+ marksObtainMaths.get(a));
}

set<string> print = marksObtainMaths.keySet();
    for(string rollNumber : print){
        integer marks = marksObtainMaths.get(rollNumber);
        if(marks<= 20){
            system.debug(rollNumber + 'is not qualified for next class');
        }
    }

