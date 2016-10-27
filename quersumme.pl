use warnings;
use strict;

my $var=123456;
my @reihe=split(//,$var);
my $quer=0;
my $l=@reihe;
# for (my $i=0; $i<=$laengezahl; $i++)
# {
#     if($i<=$laengezahl)
#     {$quersumme=$quersumme+$reihe[i];
#     }
    
# }
for (my $i=0; $i<=$l-1; $i++)
{
    $quer = $quer + $reihe[$i];   
}    
print $quer,"\n";


#my $quersumme= add $reihe[0..$laengezahl];
#print $quersumme;
