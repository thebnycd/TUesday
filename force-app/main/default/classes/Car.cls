public class Car {
    
   public string carColor = '';
   public String carName = '';
   //if we do not write access modifier, by default it is private.

   integer maxSpeedKmPerHr = 150;
   public void switchOn(){
       //method body
       system.debug('starting the car');
   }

   public void drive(){
      system.debug('driving ' + carName);

   }

   public void dreiveAtMaxSpeed(){
      string drivingDescription = 'driving ' + carName + ' at' + maxSpeedKmPerHr + ' km/h';
      system.debug(drivingDescription); 
   }
}