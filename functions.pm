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
    open(DATEN,"<",$datei) or die;
    my $inhalt=<DATEN>;
    chomp $inhalt;
    close DATEN;
    return $inhalt;
}

sub replace_bases
{   
    #my @array = @{$_[0]};
    my @array = @_;
    
    for(my $i=0; $i<@array; $i++)
    {
	if($array[$i] eq "T")
	{
	    $array[$i]= "U";
	}
    }
    return @array;
}

sub transkription
{
    my $dna=$_[0];
    my @bases=split(//, $dna);
    my $l=@bases;

    for (my $i=0; $i<$l; $i++)
    {
	if ($bases[$i] eq "T")
        {
	    $bases[$i] = "U";
	}
    }
return @bases;
}

sub read_fasta
{
    open (DATEN,"<",$_[0]) or die ("$!");
    my $header;
    
    my %hash;
    
    while(my $zeile1=<DATEN>)
    {
	if($zeile1=~/^>(\S+)/)
	{
	    $header = $1;	
	}
	else
	{
	    chomp $zeile1;
	    $hash{$header}.=$zeile1;
	}
    }
    
    close DATEN or die ("$!");
    return %hash;
}

sub fastq
{
    open(FASTQ,'<',$_[0]) or die("can't open file '$_[0]': $!\n");

    my $fastqout;

    while(my $zeile1=<FASTQ>)
    {
	if($zeile1=~/^@(\S+)/)
	{
	    my $key=$1;
	    my $seq=<FASTQ>;
	    my $plus=<FASTQ>;
	    my $quali=<FASTQ>;
	    chomp($seq,$quali);
	    my @basen=split(//,$seq);
	    my @scores=split(//,$quali);
	    my @real_scores=map{ord($_)-33}@scores;
	    $fastqout->{$key}=[\@basen,\@real_scores];
	}
    }
    close FASTQ or die("$!");
    return $fastqout;
}
1;
