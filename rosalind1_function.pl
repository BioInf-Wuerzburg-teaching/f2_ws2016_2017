use strict;
use warnings;
use functions;


my $DNA=&functions::openFile("sequence.txt");

my %huhu=&functions::rosalind1($DNA);
#print %seq,"\n";

foreach my $schluessel (sort keys %huhu)
{
    print "$schluessel ";
    print $huhu{$schluessel},"\n";
}
