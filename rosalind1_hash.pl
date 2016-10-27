use warnings;
$dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTZCTGATAGCAGC';
@bases=split(//,$dna);
$l=@bases;
%hash=();
    
for($i=0;$i<$l;$i++)
{
    $nucl=$bases[$i];
    $hash{$nucl}++;
    
    
}

if (exists $hash{Z})
{
    print "Z ist da!\n";
}

print "A ", $hash{A}, "\n";

foreach $schluessel (sort keys %hash)
{
    if ($schluessel eq "A")
    {
	print "$schluessel ";
	print $hash{$schluessel}, "\n";
    }
}

# @Array=(3,7,5,1,46,18,225,4,42,5);
# print "@Array", "\n";
# @ArrayS=sort(@Array);
# print "@ArrayS", "\n";
# @ArrayS2=sort{$b <=> $a}(@Array);
# print "@ArrayS2\n";
