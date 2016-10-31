use warnings;
use strict;
use functions;

my $dna="ATGATCATGACCACACGGAGAGTGGCTATCCGAATCACAAGAGAAGTACGTGATTCACTCGGCAATGTACGGAGTTGTTTACTAAAGTCTAGCTGACAACCGGCTCATAACTGAAAACCTAGGACATATAAAGCATCCTCAGGAGCAACGACTAGCCTGATCCCCGCCCTGTCTGTCTAAGTTAGCTTTGAAGTGGGCGTGTTTCATGGAGTGCGGGTGGAGAAGACTAGAGTCAGCGTATTGTCAATCAATGACCCCAGGCTATATTCATCCCCTCTTCCACTAAATCCAACCGAACCTGGCTACTACTGAAATGTACAACCATATGGTCCCGAGGCGATTCCCCTGCGGGATCCCTCCAAAGCCTGATAAACCTGACGGCTGAACAGTTCGAACCAAGTGGGAAGCAGGCCCCTGCCGAATTTCTCGTAACCCCGATAGACAGGTATCTGGCCTCGGGGTACAAGTAGCTACTGACGCCTGCAGATTACTCGAGTATCTGAAGTATTCAGAGCTAAATCAATTGTAATGTATTATACAGGCTCGTATGCCATTTCTTCTCCCGCGGACGGCAGAATGCTGTCCGGAAATATTGTCATACACCGCAAGGGAAAGCGCAATTATGTTATAGGATGAGTGGTTTCCGGGTCGGCCGTCGTGACTGAGGATTGTGATAAACCATTGGCCAGACTTGTCTAACAAAGTAGGGAGGATCAAGTACAGGCTGCTGCAATACGTAAGTGTCCACATTGCTAAAGGCTTTACACGCATACCCCAACACGGGCTGGCTAGATGAACTGCGGGATAACTCTCGCCCACCATGTTAAGCTCGATCACCCATAACGAGCTCAGGCGGCTTGGTCATGGGTAGTACAGGCGGACTGTGTCATCCCGTCGGC";

$dna=~ tr/ACGT/TGCA/;

print scalar reverse "$dna";
print "\n";
    
