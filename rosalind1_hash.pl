use strict;
use warnings;
use functions;

my $dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC';

my %huhu= &functions::rosalind1($dna);

#print %huhu;

foreach my $schluessel (sort keys %huhu)
{
	print "$schluessel ";
	print $huhu{$schluessel}, "\n";
}


