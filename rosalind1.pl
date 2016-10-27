use warnings;
$dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC';
@bases=split(//,$dna);
$l=@bases;
    
for($i=0;$i<$l;$i++)
{
    if($bases[$i]eq"A")
    {
	$A++;
    }
     elsif($bases[$i]eq"C")
    {
	$C++;
    } 
    elsif($bases[$i]eq"G")
    {
	$G++;
    }
     elsif($bases[$i]eq"T")
    {
	$T++;
    }
    else
    {
	print "Achtung: keine Base"
    }
    
}
print $A;
print $C;
print $G;
print $T;
