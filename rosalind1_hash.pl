use strict;
use warnings;
use functions;

open (BLA,"rosalind1seq.txt") or die;
my $dna= <BLA>;
chomp $dna;

my %huhu= &functions::rosalind1($dna);

#print %huhu;

foreach my $schluessel (sort keys %huhu)
{
	print "'$schluessel' ";
	print $huhu{$schluessel}, "\n";
}

close BLA;
