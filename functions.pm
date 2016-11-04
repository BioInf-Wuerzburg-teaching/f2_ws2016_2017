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

sub fastq
{
    my $fastqout;
    
    open(FASTQ,'<',$_[0]) or die("cannot open file '$_[0]':$!\n");
    my $offset=$_[1];
    
    if (defined $offset)
    {
	unless (64==$offset or 33==$offset)
	{
	    die("wrong offset");
	}
    }
    else
    {
	$offset=33;
    }
    
    while (my $zeile=<FASTQ>)
    {	
	if ($zeile=~/^@(\S+)/)
	{
	    my $key=$1;
	    my $seq=<FASTQ>;
	    <FASTQ>;           #dass es weiß, dass es eine Zeile überspringen muss
	    my $qual=<FASTQ>;
	    chomp($seq,$qual);
	    my @bases=split(//,$seq);
	    my @scores=split(//,$qual);
	    my @rscores=map{ord($_)-$offset}@scores;
	    $fastqout->{$key}={"seq"=>\@bases,"quality"=>\@rscores};
	}
    }
    close FASTQ or die("$!");
    return $fastqout;
}

1;
