use strict;
use warnings;
use function;
use Data::Dumper;
srand(1234);

my @array=();

for(my $i=0;$i<20;$i++)
{
    push(@array,1+int(rand(100)));
}
print "@array\n";
