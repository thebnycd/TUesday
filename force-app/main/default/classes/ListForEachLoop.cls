public  class ListForEachLoop {
    public static void randomIntegerList() {
        List<Integer> integerList = new List<Integer>();
        integerList.add(10);
        integerList.add(15);
        integerList.add(21);
        integerList.add(15);
        integerList.add(15);
        system.debug('list of random integers = ' + integerList);

        for (integer eachInteger : integerList) {
            system.debug(eachInteger);
        }    
    }

    public static integer add(List<integer>listInt){
        integer returnInt = 0;
        for (integer eachInteger : listInt) {
            returnInt = returnInt + eachInteger;
            //0//r = 0 + 10;
            //1//r = 10 +15;
            //2//r = 25 + 21;
            //3//r=45 + 15;
            //4//r=61 + 15;
        }
        //r=76;

        return returnInt;
    }
}
