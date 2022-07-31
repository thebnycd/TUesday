public  class ListDemo {
    public static void candidateList() {
        // LIST
            //<DataType>
        List<String> listCandidate = new List<String>();
        listCandidate.add('Marc');
        listCandidate.add('Elon');
        listCandidate.add('Bill');
        listCandidate.add('Marc');
        system.debug('candidates are ' + listCandidate);
    }

    public static void randomIntegerList() {
        List<Integer> integerList = new List<Integer>();
        integerList.add(10);
        integerList.add(15);
        integerList.add(21);
        integerList.add(15);
        integerList.add(15);
        system.debug('list of random integers = ' + integerList);
    }

    public static void allCats(){
        // create list of cat
        List<Cat> cats = new list<Cat>();

        Cat falconsCat = new Cat('Tom', 'White');
        Cat vitapsCat = new Cat('Simba', 'brown');

        cats.add(falconsCat);
        cats.add(vitapsCat);
        system.debug(cats);

        if(!cats.isEmpty()){
            cat catAt2 = cats[1];
            system.debug('cat at 2 = ' + catAt2);
        }
    }
}
