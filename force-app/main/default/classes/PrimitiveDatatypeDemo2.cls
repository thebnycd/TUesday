public class PrimitiveDatatypeDemo2 {
    public void print1(){
        String id1 = '0015i0000BFSCtAAP';
        system.debug('print id = ' + id1);

        //Object --> Object is a parent class to all primitive data types, sObjects, custom classes and everyhing in apex
        
        Object obj1 = 'This is a string';
        Object obj2 = 15;
        Object obj3 = true;
    
        system.debug('obj1 = ' + obj1);
        system.debug('obj2 = ' + obj2);
        system.debug('obj3 = ' + obj3);
    }
}
