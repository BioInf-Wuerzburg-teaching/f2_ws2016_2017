use warnings;

#rosalind2
$dna='AAAACCCGGT';
@bases=split(//,$dna);


$ende=@bases;
#$A=0;
#$C=0;
#$G=0;
#$T=0;
for($i=0;$i<$ende;$i++)
{
    if($bases[$i] eq 'A')
    {print "A";}

    if($bases[$i] eq 'C')
    {print "C";}

    if($bases[$i] eq 'G')
    {print "G";}
    
    if($bases[$i] eq 'T')
    {print "T";}
    
}
print "\n";

for($j=$ende;$j>-1;$j--)
{   
    if($bases[$j] eq 'A')
    {print "T";}

    if($bases[$j] eq 'C')
    {print "G";}

    if($bases[$j] eq 'G')
    {print "C";}
    
    if($bases[$j] eq 'T')
    {print "A"}
}
print "\n";
