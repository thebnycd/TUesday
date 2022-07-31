public class Collection {
    public static string top(integer b){
        list<string> LstMonth = new list<string>();
        string output_Month = '';
        LstMonth.add('Jan');
        LstMonth.add('Feb');
        LstMonth.add('Mar');
        LstMonth.add('Apr');
        LstMonth.add('May');
        LstMonth.add('Jun');
        LstMonth.add('Jul');
        LstMonth.add('Aug');
        LstMonth.add('Sep');
        LstMonth.add('Oct');
        LstMonth.add('Nov');
        LstMonth.add('Dec');
        Integer sizeOfMonth = LstMonth.size();
        if (b>0 && b<sizeOfMonth) {
            output_Month = LstMonth[-1];
        }else{
            output_Month ='Not a valid month';
        }
        return output_Month;
    }
}
