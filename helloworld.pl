use warnings;
print "Hallo\n";
$bla="Guten Apetit!\n";
#print 5,"\n";
print $bla,"\n";

#$bla=5;
#$blub=3;
#$sum=$bla+$blub;

#print $sum,"\n\nvorher\n";

$eins=2;
$zwei=1;
print "eins:$eins\nzwei:$zwei\n\n";

$speicher=$eins;
$eins=$zwei;
$zwei=$speicher;
print "nachher\neins:$eins\nzwei:$zwei\n\n\n";

$willi="Blume";
$maja="Gras";

print "Wer?\t\tWo?\n";
print "Willi:\t\t$willi\nMaja:\t\t$maja\n\n";

$zettelchen="leer\n";
print "Zettelchen:\t$zettelchen\n";

$zettelchen=$willi;
$willi=$maja;
$maja=$zettelchen;


print "Zettelchen:\t$zettelchen\n\nWilli:\t\t$willi\nMaja:\t\t$maja\n\n";


$zaehler=5;
$zaehler=$zaehler+1;
print "$zaehler\n\n";
$zaehler="AZ";
$zaehler++;
print "$zaehler\n\n";
