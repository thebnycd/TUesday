List<case> caseList = new List<case>();
for (Integer i=0; i<405; i++) {
    case c = new case();
    c.Subject='there is a bug - v' + i;
    c.Description = 'resolve it';
    c.Origin = 'Web';
    c.Status = 'New';
    caseList.add(c);   
}
insert caseList;