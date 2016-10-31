use warnings;
use strict;
use function;

open (ZEILE,'<',"/home/flofis/fasta.txt") || die;
my $header;
my %hash;   

while(my $zeile1=<ZEILE>)
{if($zeile1=~/^>(\S+)/)
 {
     $header =$1;
 }
 else
 {
     chomp $zeile1;
     $hash{$header}.=$zeile1; 
 }
}

close ZEILE || die;
use Data::Dumper;
print Dumper(\%hash);
