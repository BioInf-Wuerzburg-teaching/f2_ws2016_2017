use warnings;
use strict;
use functions;

open(FAS,'<', "fasta.txt") or die;
my $header;
my %hash;

while(my $fas1=<FAS>)
{
    if ($fas1=~/^>(\S+)/) #Dach sagt es soll am Anfang der Zeile sein
	
    {
	$header = $1;
    }
    
    else
	
    {
	chomp $fas1;
	$hash{$header}.=$fas1;
    }
}

print Dumper(\%hash);

close FAS or die;


use Data::Dumper;
