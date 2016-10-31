use warnings;
use strict;
use functions;

open (FASTABSP,"<","fastaueben.txt") or die;
my $header;

my %hash;

while(my $zeile1=<FASTABSP>)
{
    if($zeile1=~/^>(\S+)/)
    {
	$header = $1;	
    }
    else
    {
	chomp $zeile1;
	$hash{$header}.=$zeile1;
    }
}


print Dumper(\%hash);



close FASTABSP or die;
use Data::Dumper;
