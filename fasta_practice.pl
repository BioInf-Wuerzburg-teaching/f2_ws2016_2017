use warnings;
use strict;
use functions;
use Data::Dumper;

open (ZEILE,'<',"fasta_sample.txt") or die;

my $head;
my %hash;

while (my $zeile=<ZEILE>)
{
    if ($zeile=~/^>(\S+)/)
    {
        $head=$1;
    }
    else
    {
	chomp $zeile;
	$hash{$head}.=$zeile;
    }
}
print Dumper(\%hash);

close ZEILE or die;

