use warnings;

$seq="AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";

@bases=split(//,$seq);
$l=@bases;

for ($i=0;$i<$l;$i++)
{
    if($bases[$i] eq "A")
    {
	$A++;
    }
      if($bases[$i] eq "C")
    {
	$C++;
    }  
     if($bases[$i] eq "G")
    {
	$G++;
    }
     if($bases[$i] eq "T")
    {
	$T++;
    }
}

print "$A $C $G $T\n";
