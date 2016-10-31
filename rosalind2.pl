use strict;
use warnings;
use functions;

#my $DNA=&functions::openFile("ros2seq.txt");
my $DNA="GCTAGACCCGCTGCTGGGTCAAGACTGGGGCATTCTCCACGACCGGGTCCCCGCATATGTTCTTTGTACCTGAATGAGTGATTACCCACAAGATAGACGCGAAGAGTCAACTTGTACGGGCTAGAACTCCTCTATATAATGAACAACCTTGTACCTAGTTGACCAATCCAAGGCGTCCGTCGATGTCTGGGTATTTGCAGAGTAATTAAGATTTGCCTGGGCGGAATCAGAGGGTCTTTTCTAGCTGTTATAGAGTTCTGATGGCACTAGCCGGTACTGGCTGAGCTCTGGGCATCACGCGGCCAAAAATCTACAAGCCCGTAAAATTACATGACCCCATGCTCGTAACACCTATCCGTGATTACGATGTGGATGGCCGCAGACGGTGGAACCTTTTGAACCCGCATACGGCCGGTAGGTTGTTATGTTGTTCCACGGAAAGCGATACGTTCGAGAAACACCTTCTTCTCGCATCGCAGAGGTAGCACGAGATGAGCCACCTCTTTTAACATGAAAGGCGTGTACCATTCATATGTAAGGAATGAGCGGTGATAGGAGTAAGCAGCGGAACCCTTTTAATATTCTACAGACAGGATTCCGAGGGTTTGCTTAGTCTACGGTATAAGGACGTGCAGCCCATAAGCAGGGCATGATCAGAGGGGTGCACTCCTGGAGCTAGTAACTTCCGTTGTTCGCTGTGCCCGCAACTATGTTATAATAATCGACATCGGGTGAAAATAGCCCGTCTAATAAAGACAACTGGCAGGGGGTGCACACCCAGAGACGTAGCTCTTATGACCAAGTACCTGCCAAACGGTTAGCACTACACCTATGGAACCATGGGGGCGGTTGATGATTCGGTGCTCCAACAGGATTGACACCCATGAGGTATACCCGGCTCTCTATAGCAGATGGGTTGGACCAGGAGGAAC
";

print $DNA,"\n";

print &functions::transcription($DNA),"\n";

