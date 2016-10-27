use strict;
use warnings;

my @blub=(1);
my $var=1;

foreach my $bla (@blub)
{
   my $var=7;
    {
	$var=9;
	print $var, "\n";
    }
    print $var, "\n";
}
print $var, "\n";

