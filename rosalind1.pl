use warnings;
$dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC';
@bases=split(//,$dna);
$l=@bases;
    
for($i=0;$i<$l;$i++)
{
    # print $bases[$i];
    if($bases[$i]eq"A")
    {
	#print $bases[$i];
	$A++;
    }
     if($bases[$i]eq"C")
    {
	#print $bases[$i];
	$C++;
    } if($bases[$i]eq"G")
    {
	#print $bases[$i];
	$G++;
    }
     if($bases[$i]eq"T")
    {
	#print $bases[$i];
	$T++;
    }
    
}
print $A;
print $C;
print $G;
print $T;
