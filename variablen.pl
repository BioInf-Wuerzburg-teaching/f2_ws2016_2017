use warnings;
use strict;


my $var=1;
my @blub=(1,2,3,4);

foreach my $bla(@blub)
{
    my $var=7;
    {
	$var=9;
	print $var, "\n";
    }
    print "$var\n";
}

print "$var\n";
