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

my @num=(115,2004,3526,99999,80023,850,356,1420,000001,999999);
print "@num\n";

my @sortnum= sort{

my $var=$a;
my @reihe=split(//,$var);
my $quer=0;
my $l=@reihe;


for (my $i=0; $i<=$l-1; $i++)
{
    $quer = $quer + $reihe[$i];   
}

$var=$b;
@reihe=split(//,$var);
my $querb=0;
$l=@reihe;


for (my $i=0; $i<=$l-1; $i++)
{
    $querb = $querb + $reihe[$i];   
}    

$quer<=>$querb;
}(@num);

print "@sortnum\n";
