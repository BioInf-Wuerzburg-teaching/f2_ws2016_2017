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

sub replace_bases
{ 
    #my @array = @{$_[0]};
    my @array = @_;

  for(my $i=0; $i<@array; $i++)
  {
      if($array[$i] eq "T")
      {
	  $array[$i] = "U";
      }
  }

  return @array;
}



sub transcription
{
    my $DNA=$_[0];
    my @bases=split(//,$DNA);
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
  open(FAS,'<',$_[0]) or die("can't open file '$_[0]': $!");
  my $header;
  my %hash;

  while(my $fas1=<FAS>)
  {
      if ($fas1=~/^>(\S+)/) #Dach sagt es soll am Anfang der Zeile sein
	
      {
	  $header = $1;
      }
    
      else
	
      {
	  chomp $fas1;
	  $hash{$header}.=$fas1;
      }
  }
  
  close FAS or die;
  return %hash;
  
}

1;
