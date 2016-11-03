use warnings;
use strict;
srand(1234);

my @array=();

for(my $i=0;$i<20;$i++)
{
    push(@array,1+int(rand(100)));
}

print "@array\n\n";

my @array2=grep{$_>50}@array;

print "@array2\n\n";

my @array3=map{$_*$_}@array;

print "@array3\n";

my @array4=map{$_*$_}grep{$_>50}@array;

print "@array4\n";
