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

sub dnahash
{

    
	my @bases=split(//,$_[0]);


my $ende=@bases;
my $A=0;
my $C=0;
my $G=0;
my $T=0;
for(my $i=0;$i<$ende;$i++)
{
    if($bases[$i] eq 'A')
    {$A++}

    if($bases[$i] eq 'C')
    {$C++}

    if($bases[$i] eq 'G')
    {$G++}
    
    if($bases[$i] eq 'T')
    {$T++}

}
return my %dnahash=(A=>$A, C=>$C, G=>$G, T=>$T);

}


1;
