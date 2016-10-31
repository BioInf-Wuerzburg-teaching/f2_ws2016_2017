use warnings;
use strict;
use function;


my $dna="GTACATATAT";

if($dna=~/A.AT/)
   {
       print "found\n";
   }
else
{
    print "no have\n";
}

my @bases=split(/A\w+?AT/,$dna);
print "@bases\n";

    
