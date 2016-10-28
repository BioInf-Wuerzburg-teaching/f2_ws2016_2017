use warnings;
use strict;
use function;

my $dna=&function::dateizeile("/home/flofis/dna.txt");

my %dnahash=&function::dnahash($dna);
foreach my $schluessel (sort keys %dnahash)
{
  print "$schluessel ";
  print $dnahash{$schluessel}, "\n";

}
