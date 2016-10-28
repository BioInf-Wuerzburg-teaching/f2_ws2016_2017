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

sub quersumme
{
    my $zahl=$_[0];
    my @ziffern=split(//,$zahl);
    my $l=@ziffern;
    my $result=0;

    for (my $i=0;$i<$l;$i++)
    {
	$result=$result+$ziffern[$i];
    }
    return $result;
}

1;
