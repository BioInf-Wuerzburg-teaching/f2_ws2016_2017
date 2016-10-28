use strict;
use warnings;

my $zahl=123456Z;
my @ziffern=split(//,$zahl);
my $l=@ziffern;
my $erg=0;

for(my $i=0;$i<$l;$i++)
{
    $erg = $erg+$ziffern[$i];
}

print "$erg","\n";
