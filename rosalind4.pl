use warnings;
use strict;
use function;
use Data::Dumper;

open (ZEILE,'<',"ros4.txt") or die;

my $head;
my $GC;
my $i=0;

while (my $zeile=<ZEILE>)
{
    if ($zeile=~/^>(\S+)/)
    {
        $head=$1;
    }
    else
    {
	chomp $zeile;
	my $zeile2=<ZEILE>;
	chomp $zeile2;
	my @bases=split(//,$zeile);
	@bases=@bases.split(//,$zeile2);
	my $length=@bases;
	
	if ($bases[$i] eq "G" or "C")
	{
	    $GC=$i++;
	}
	my $GCcont=$GC / $length;
	print $GCcont,"\n";
    }
}

close ZEILE or die;
