use strict;
use warnings;
my $dna='AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTZCTGATAGCAGC';
my @bases=split(//,$dna);
my $l=@bases;
my %hash=();
    
for(my $i=0;$i<$l;$i++)
{
   my $nucl=$bases[$i];
   $hash{$nucl}++;
    
    
}

if (exists $hash{Z})
{
    print "Z ist da!\n";
}

print "A ", $hash{A}, "\n";

foreach my $schluessel (sort keys %hash)
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
