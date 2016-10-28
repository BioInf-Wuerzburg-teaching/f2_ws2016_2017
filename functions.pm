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

sub quersumme
{
    my $zahl=$_[0];
    my @ziffern=split(//,$zahl);
    my $l=@ziffern;
    my $erg=0;

    for(my $i=0;$i<$l;$i++)
    {
	$erg = $erg+$ziffern[$i];
    }

    return $erg;
}

sub rosalind1
{
    my $dna=$_[0];
    my @bases=split(//,$dna);
    my $l=@bases;
    my %hash=();
    
for(my $i=0;$i<$l;$i++)
{
   my $nucl=$bases[$i];
   $hash{$nucl}++;   
}

return %hash;
}


sub datei
{
    my $datei=$_[0];
    open(HAND,'<',$datei) or die;
    my  $inhalt=<HAND>;
    chomp $inhalt;

    close HAND;

    return $inhalt;
}

1;
