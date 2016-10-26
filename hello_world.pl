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
print "$eins,$zwei\n"
