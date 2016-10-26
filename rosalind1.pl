use warnings;


$dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC';
@bases=split(//,$dna);


$ende=@bases;
$A=0;
$C=0;
$G=0;
$T=0;
for($i=0;$i<$ende;$i++)
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
print "A\tC\tG\tT\n$A\t$C\t$G\t$T\n";


