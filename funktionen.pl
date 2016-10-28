use strict;
use warnings;
use functions;

for(my $i=1; $i<=10;$i++)
{
    print &functions::helloworld;
}

print &functions::add(2,3),"\n";
