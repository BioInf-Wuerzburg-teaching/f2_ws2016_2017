package function;
use strict;
use warnings;


sub helloworld
{
    return "Hallo Welt! ";
}

sub add
{
    my $S1=$_[0];
    my $S2=$_[1];
    return $S1 + $S2;
    
}

sub quersumme
{
    my $var=$_[0];
    my @reihe=split(//,$var);
    my $quer=0;
    my $l=@reihe;

    for (my $i=0; $i<=$l-1; $i++)
    {
	$quer = $quer + $reihe[$i];   
    }    
    return $quer;
}


1;
