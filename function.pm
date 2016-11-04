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

#liefert die erste Zeile einer Datei.
sub dateizeile 
{
    open(IN,'<',$_[0]) or die("can't open file '$_[0]': $!\n");
    my $zeile=<IN>;
    close IN || die("$!");
    return $zeile;
}


sub read_fasta
{    
    open (ZEILE,'<',$_[0]) || die;
    my $header;
    my %hash;   

    while(my $zeile1=<ZEILE>)
    {
	if($zeile1=~/^>(\S+)/)
	{
	    $header =$1;
	}
	else
	{
	    chomp $zeile1;
	    $hash{$header}.=$zeile1; 
	}
    }

    close ZEILE || die;
    return %hash;
}


sub fastq #returns reference to hash,(key=ID,Array=Data).

{
 
    open (ZEILE,'<',$_[0]) || die("can't open file '$_[0]': $!\n");


    my $fastqout;
    my $offset=$_[1];
    if (defined $offset)
    {
	unless (64==$offset || 33==$offset)
	{die ("wrong offset")}
    }
    else
    {
	$offset=33
    }
   


    while(my $zeile1=<ZEILE>)
    { 

	if($zeile1=~/^@(\S+)/)
	{
	    my $key=$1;

	    
	    my $seq=<ZEILE>;
	    <ZEILE>;
	    my $qual=<ZEILE>;
	    chomp($seq,$qual);
	    my @base=split(//,$seq);
	    my @score=split(//,$qual);
	    my @realscore=map{ord($_)-$offset}@score;
	    $fastqout->{$key}={seq=>\@base,qual=>\@realscore};
	}


    }
    
    close ZEILE || die("$!");
    return $fastqout;
			 
}



1;
