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

sub rosalind1
{
    my $DNA=$_[0];
    my @bases=split(//,$DNA);
    my $l=@bases;
    my %hash=();
       
    for (my $i=0;$i<$l;$i++)
    {
	my $nucl=$bases[$i];
	$hash{$nucl}++;
    
    }
    
    return %hash;
}

sub openFile      #read only
{
    my $file=$_[0];
    open(HAND,'<',$file) or die;
    my $content=<HAND>;
    chomp $content;
    close HAND or die;

    return $content;
}

sub transcription
{
    my $DNA=$_[0];
    my @bases=split(//,$DNA);
    my $l=@bases;

    for (my $i=0;$i<$l;$i++)
    {
	if ($bases[$i] eq "T")
	{
	    $bases[$i] = "U";
	}	
    }
    return @bases;
}

1;
