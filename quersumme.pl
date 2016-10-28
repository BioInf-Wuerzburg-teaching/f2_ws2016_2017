use strict;
use warnings;

my $zahl=123456;
my @ziffer=split(//,$zahl);
my $l=@ziffer;
my $erg=0;

for(my $i=0;$i<$l;$i++)
{
    $erg = $erg+$ziffer[$i];
}

print "$erg\n";

my @num=(115,2004,3526,99999,80023,850,356,1420,000001,999999);
print "@num\n";

@num=sort{

my $zahl=$a;
my @ziffer=split(//,$zahl);
my $l=@ziffer;
my $erg=0;

for(my $i=0;$i<$l;$i++)
{
    $erg = $erg+$ziffer[$i];
}
$zahl=$b;
@ziffer=split(//,$zahl);
$l=@ziffer;
my $ergb=0;

for(my $i=0;$i<$l;$i++)
{
    $ergb = $ergb+$ziffer[$i];
}

$erg<=>$ergb;
}(@num);
print"@num\n";
