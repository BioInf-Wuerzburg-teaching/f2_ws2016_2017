use warnings;
use strict;
use functions;


open (BLA,"ros51.txt") || die;

my $dna1=<BLA>;
my $dna2=<BLA>;
close BLA || die;


my @bases1=split(//,$dna1);
my @bases2=split(//,$dna2);

my $ende=@bases1;

my $error = 0;

for(my $i=0;$i<($ende-1);$i++)
{
    if($bases1[$i] ne $bases2[$i])
    {
	$error++;
    }

    
}

print "$error\n";
