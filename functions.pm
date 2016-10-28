package functions;
use strict;
use warnings;

sub helloWorld
{
    return ("hello world\n");
}

sub add
{
    my $sum1=$_[0];
    my $sum2=$_[1];
    return $sum1+$sum2;
}

1;
