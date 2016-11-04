use warnings;

for($i=10;$i>0;$i--)
{
    print $i,"\n";
    sleep 1;
}


@willi=('a','b','c','d');

$ende=@willi;
for($k=0;$k<$ende;$k++)
{
	print $willi[$k],"\n";
}
