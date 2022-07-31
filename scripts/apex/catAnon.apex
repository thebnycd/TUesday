//if you define a parameterized constructor,
//then the default non-param constructor DOESN'T work.
Cat dummyCat = new Cat();
dummyCat.color = 'black';
dummyCat.name = 'purr';
dummyCat.sleeping();
system.debug(dummyCat);

Cat falconsCat = new Cat('fluffykins', 'white');
system.debug(falconsCat);