use warnings;
use strict;
use function;

# my $dna='CGATTACGCACTAGGTCTGGGGGTAACGCGTGTCTTGAGAAACTGAGGGCACACGTGGGTTAAGAGCTCAGAATCTTAGGGGGCCACAGATACTTCGTACACGATCTCCTCGTATCACAATCACCTTAGGCATAGGCGTGTCACGCGTTTACAGGAACCAAAACGTATTGTGACACGGCGATCTAATAGAGCAACAGAAACCTCAGGATTCGGTGACGGCGGATTGAGCATAGTTTACTTCGTGGAGGCCGCATGCACTCAACCGCTATCCGTTATACTTCAGTACCCAATTCACTGAGGATCTACATGATTCGTAAGCCAGTTATCGTGCTGGTATGCGACCGAACTCGGTCCTGGGTGCCTAAGGACATCCGCGTTACATGTCGGGGCCGTGTCTTGAAGTCCCCAGGTGGGCACGACCAGCCTTTGCCCGCAATTGGGTTTAAAGAGGCTCAGTAGGCTATCACGCGGTTTCTTTGAGGCCCGTGCATTGACAATGGTTCCCGAGAACCTGTTAGTACGCTGCCATCGCAGAGGATTTGCTGTTGTACAGGGAGTCGCTTTAAGATATCTAGCGCAAGTGAGGATTGTCCCTCACGTAGAAACAGCCCACATCCTGAGTATCCTGCCTGTGCGATTACTGTGCTCATATGATTGACGGATAATATCCTTGCCTTGAGCCGGGAGAATTCTGGCGTTGAATATACAGTGCCAGATCGCGCCCTAAGCCTAATGAGCTACCTTCCTCAAGATCAGAATCGTATGCAACTGCCTAATAATGTGGCCTGTAAACTATCTAGCACATTGCCACTCG';
# my @bases=split(//,$dna);


# my $ende=@bases;
# my $A=0;
# my $C=0;
# my $G=0;
# my $T=0;
# for(my $i=0;$i<$ende;$i++)
# {
#     if($bases[$i] eq 'A')
#     {$A++}

#     if($bases[$i] eq 'C')
#     {$C++}

#     if($bases[$i] eq 'G')
#     {$G++}
    
#     if($bases[$i] eq 'T')
#     {$T++}
# }
# #print "\nA\tC\tG\tT\n$A\t$C\t$G\t$T\n\n";
# print "\nA  C  G  T\n$A $C $G $T\n\n";

print &function::dnahash('CGATTACGCACTAGGTCTGGGGGTAACGCGTGTCTTGAGAAACTGAGGGCACACGTGGGTTAAGAGCTCAGAATCTTAGGGGGCCACAGATACTTCGTACACGATCTCCTCGTATCACAATCACCTTAGGCATAGGCGTGTCACGCGTTTACAGGAACCAAAACGTATTGTGACACGGCGATCTAATAGAGCAACAGAAACCTCAGGATTCGGTGACGGCGGATTGAGCATAGTTTACTTCGTGGAGGCCGCATGCACTCAACCGCTATCCGTTATACTTCAGTACCCAATTCACTGAGGATCTACATGATTCGTAAGCCAGTTATCGTGCTGGTATGCGACCGAACTCGGTCCTGGGTGCCTAAGGACATCCGCGTTACATGTCGGGGCCGTGTCTTGAAGTCCCCAGGTGGGCACGACCAGCCTTTGCCCGCAATTGGGTTTAAAGAGGCTCAGTAGGCTATCACGCGGTTTCTTTGAGGCCCGTGCATTGACAATGGTTCCCGAGAACCTGTTAGTACGCTGCCATCGCAGAGGATTTGCTGTTGTACAGGGAGTCGCTTTAAGATATCTAGCGCAAGTGAGGATTGTCCCTCACGTAGAAACAGCCCACATCCTGAGTATCCTGCCTGTGCGATTACTGTGCTCATATGATTGACGGATAATATCCTTGCCTTGAGCCGGGAGAATTCTGGCGTTGAATATACAGTGCCAGATCGCGCCCTAAGCCTAATGAGCTACCTTCCTCAAGATCAGAATCGTATGCAACTGCCTAATAATGTGGCCTGTAAACTATCTAGCACATTGCCACTCG')
