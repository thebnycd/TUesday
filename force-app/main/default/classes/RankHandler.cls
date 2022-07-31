public  class RankHandler {
    public String rankPrice(Integer rank){
        string price = '';
        //if-else if
        if (rank == 1){
            price = 'Gold';
        }else if (rank == 2) {
            price = 'Silver';
        }else if (rank == 3) {
            price = 'Bronze';
        }else{
            if (rank <=10){
                price = 'Top 10 certificate';
            }else{
                price = 'Participation certificate';
            }
                
        }
        return price;
    }

    public String rankPriceSwitch(Integer rank){
        String price = '';
        switch on rank {
            when 1 {
                price ='gold';
            }
         when 2{
                price = 'silver';
            }
            when 3{
                price = 'bronze';
         }
            when 4,5,6,7,8,9,10{
                price = 'top 10';
         }
             when else {
             price = 'thank you for participating';
             }
        }
        return price;
    }
}
    




