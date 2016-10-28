use strict;
use warnings;

my $zahl=123456;
my @ziffern=split(//,$zahl);
my $l=@ziffern;
my $erg=0;

for(my $i=0;$i<$l;$i++)
{
    $erg = $erg+$ziffern[$i];
}

print "$erg","\n";


my @num=(115,2004,3526,99999,80023,850,356,1420,000001,999999);
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

$erg<=>$ergb;

}(@num);

print "@num\n";
