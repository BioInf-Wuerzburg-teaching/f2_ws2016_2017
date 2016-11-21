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
    elsif($bases[$i] eq "C")
    {
	$C++;
    }  
    elsif($bases[$i] eq "G")
    {
	$G++;
    }
    elsif($bases[$i] eq "T")
    {
	$T++;
    }
    else
    {
	print "Error: no base\n";
    }
}

print "$A $C $G $T\n";
