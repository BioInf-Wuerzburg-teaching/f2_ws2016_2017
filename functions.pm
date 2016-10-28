package functions;
use strict;
use warnings;

sub halloween
{
    return "Halloween\n";
}

sub add
{
    my $s1=$_[0];
    my $s2=$_[1];
    return $s1 + $s2
}

sub quersumme
{
    my $zahl=$_[0];
    my @ziffer=split(//,$zahl);
    my $l=@ziffer;
    my $erg=0;
    
    for(my $i=0;$i<$l;$i++)
    {
	$erg = $erg+$ziffer[$i];
    }

    return $erg ;
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
    open(DATEN,$datei) or die;
    my $inhalt=<DATEN>;
    chomp $inhalt;
    close DATEN;
    return $inhalt;
}
1;
