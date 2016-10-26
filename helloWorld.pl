use warnings;
print "Hello World!\n",$bla;
print 5,"\n";
print 5+5,"\n";
$bla="hello world";
print $bla,"\n";

$bla=5;
$blub="3Hallo";
$sum=$bla+$blub;
print $sum, "\n";

$eins="B";
$zwei="A";
$speich=$eins;
$eins=$zwei;
$zwei=$speich;
print "$eins,$zwei\n";

$willi="Blume";
$maja="Gras";
$notiz=$willi;
$willi=$maja;
$maja=$notiz;
print "Willi:$willi, Maja:$maja\n";

$zaehler=10;
#$zaehler=$zaehler+1;
#$zaehler=$zaehler+1;
#$zaehler--;
$zaehler++;
print $zaehler,"\n\n";

$var=10;
#while ($var)
#{
#    print $var,"\n";
#    $var--;
#}

#print "\n";

#while (10==$var)
#{
#    print --$var,"\n";
#}
#print $var,"\n";

#print "\n";

#while (abc==ABC)
#{
#    print --$var,"\n";
#}
#print $var,"\n"

while ($var)
{
    $var--;
    while ($var<=7 && $var>=3)
    {
    print $var,"\n";
    $var--;
    }
}
