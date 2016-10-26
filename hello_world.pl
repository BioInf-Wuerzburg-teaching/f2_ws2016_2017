use warnings;
print "Hello World\n", $bla;
print 5, "\n";
print 5+5, "\n";
$bla="Hello World2\n";
print $bla;

$bla=5;
$blub="3Hallo";
$sum=$bla+$blub;
print $sum, "\n";

$eins=2;
$zwei=1;

$speicher=$eins;
$eins=$zwei;
$zwei=$speicher;
print "$eins,$zwei\n";

$willi="Blume";
$maja="Gras";

$fliegt=$willi;
$willi=$maja;
$maja=$fliegt;

print "Willi:$willi,Maja:$maja\n";

$zaehler=5;
$zaehler=$zaehler+1;
$zaehler=$zaehler+1;
$zaehler++;
print $zaehler,"\n";

$zaehler2=A;
$zaehler2++;
print $zaehler2,"\n";

$Zaehler="10";
while($Zaehler>0){print $Zaehler--,"\n"};
print $Zaehler,"\n";
    
