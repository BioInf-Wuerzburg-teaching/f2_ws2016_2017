use strict;
use warnings;
use functions;

open (BLA,"sequenz1.txt") or die;

my $dna=<BLA>;

chomp $dna;
    
my %huhu= &functions::rosalind1($dna);


foreach my $schluessel (sort keys %huhu)
  {
	print "$schluessel ";
	print $huhu{$schluessel},"\n";
   }


#@array=(3,7,5,1,46,18,225,4,42,5);
#print "@array", "\n";
#@arrayso=sort(@array);
#print "@arrayso", "\n";
#@arrayso2=sort{$a <=> $b}(@array);
#print "@arrayso2", "\n";
