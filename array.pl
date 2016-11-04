use warnings;

print "\narray-for-Schleife\n\n";
@willi=('a','b','c','d');
#print @willi,"\n";


$ende=@willi;
for($i=0;$i<$ende;$i++)
{
    print $willi[$i],"\n";
}

$text='abcdefg';
@array=split(//,$text);

