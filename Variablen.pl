use strict;
use warnings;
my $var=1;

my @blub=(1);
foreach my $bla (@blub)
{
   my $var=7;
    {
	$var=9;
	print$var;
	{
	    $var=5;
	    print $var;
	}
    }
    print $var;
}
print $var;
