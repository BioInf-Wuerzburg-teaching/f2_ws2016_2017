use warnings;
$dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC';
@bases=split(//,$dna);
$l=@bases;
%hash=();
    
for($i=0;$i<$l;$i++)
{
    $nucl=$bases[$i];
    $hash{$nucl}++;
    
    
}
foreach $schluessel (sort keys %hash)
{
    
    print "$schluessel ";
    print $hash{$schluessel}, "\n";
}
