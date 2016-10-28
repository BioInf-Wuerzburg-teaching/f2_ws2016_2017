package functions;
use strict;
use warnings;

sub helloworld
{
    return "Hello World\n";
}


sub add
{
    my $s1=$_[0];
    my $s2=$_[1];
    return $s1 + $s2;
}

1;
