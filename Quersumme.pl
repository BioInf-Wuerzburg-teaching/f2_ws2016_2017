use strict;
use warnings;
use functions;

print &functions::quersumme(123456);


my @num=(1420,2004,3526,99999,80023,850,356,115,000001,999999);
print "@num,\n";

@num=sort{

my $zahl=$a;
my @ziffern=split(//,$zahl);
my $l=@ziffern;
my $erg=0;

for(my $i=0;$i<$l;$i++)
{
    $erg = $erg+$ziffern[$i];
}

$zahl=$b;
@ziffern=split(//,$zahl);
$l=@ziffern;
my $ergb=0;

for(my $i=0;$i<$l;$i++)
{
    $ergb = $ergb+$ziffern[$i];
}

$erg<=>$ergb||$a<=>$b;

}(@num);

print "@num\n";
