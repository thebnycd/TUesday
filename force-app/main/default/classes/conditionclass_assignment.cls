public with sharing class conditionclass_assignment {
    public String Ifclassmethod(Integer count){
        string output_month = '';
        if (count ==1 ) {
            output_month = 'January';
        } else if (count == 2) {
            output_month = 'February';
        } else if (count == 3) {
            output_month = 'March';
        } else if (count == 4) {
            output_month = 'April';
        } else if (count == 5) {
            output_month = 'May';
        } else if (count == 6){
            output_month = 'June';
        } else if (count == 7) {
            output_month = 'July';
        } else if (count == 8) {
            output_month = 'August';
        } else if (count == 9) {
            output_month = 'September';
        } else if (count == 10) {
            output_month = 'October';
        } else if (count == 11) {
            output_month = 'November';
        } else if (count == 12) {
            output_month = 'December';
        }else {
            output_month = 'Not a valid Month';
        }
        return output_month;
    }

    public String casemethod( String quater){
        String output_Quater = 'Enter a proper Month name';
        switch on quater {
            when  'Janary', 'February', 'March'{
                output_Quater = 'Quater 1';
            }
            when 'April','May', 'June'{
                output_Quater = 'Quater 2';
            }
            when 'July', 'August', 'September'{
                output_Quater = 'Quater 3';
            }
            when 'October','November','December'{
                output_Quater = 'Quater 4';
            }
        }
        return output_Quater;
    }
}
