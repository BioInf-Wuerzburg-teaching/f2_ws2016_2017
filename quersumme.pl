use strict;
use warnings;

my $zahl='123456';
my @ziffer=split(//,$zahl);
my $l=@ziffer;
my $erg=0;

for(my $i=0;$i<$l;$i++)
{
    $erg = $erg+$ziffer[$i];
}

print "$erg\n";


