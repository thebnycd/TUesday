List <string> coloursList = new list<string>();
coloursList.add ('Green');
coloursList.add ('Red');
coloursList.add('Brown');
coloursList.add('White');
coloursList.add('Black');

System.debug('Get the color list size: ' + coloursList.size());
system.debug('Does it contain color: ' + coloursList.contains('Brown'));
System.debug('Get the last element: ' + coloursList.get(coloursList.size()-1));
system.debug('Make the 4th element upper case ' + coloursList.get(3).toUpperCase());

list<string> colorCode = new list<string>();
colorCode.add('#22222F');
colorCode.add('#90000');

system.debug('Compare List: ' + colorCode.equals(coloursList));

List<string> allList = new List<string>();
allList.addAll(colorCode);
allList.addAll(coloursList);

System.debug('Merge two lists: ' + allList);