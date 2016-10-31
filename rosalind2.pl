use warnings;
use strict;
use function;


#rosalind2

my $dna=&function::dateizeile("/home/flofis/dna.txt");

my %dnahash=&function::dnahash($dna);
foreach my $schluessel (sort keys %dnahash)
{
  print "$schluessel ";
  print $dnahash{$schluessel}, "\n";

}


my @bases=split(//,$dna);


my $ende=@bases;
#$A=0;
#$C=0;
#$G=0;
#$T=0;

print "\nDNA:\n";

for(my $i=0;$i<$ende;$i++)
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

print "\n\n","RNA:\n";
for(my $i=0;$i<$ende;$i++)
{
   # if($bases[$i] eq 'A')
   # {print "A";}

   # if($bases[$i] eq 'C')
   # {print "C";}

   # if($bases[$i] eq 'G')
   # {print "G";}
    
    if($bases[$i] eq 'T')
    {print "U";}
    else
    {
	print "$bases[$i]";
    }
}

print "\n\n","Revers:\n";

for(my $j=$ende-1;$j>-1;$j--)
{ 

    print "$bases[$j]";
 #   if($bases[$j] eq 'A')
 #   {print "T";}

 #   if($bases[$j] eq 'C')
 #   {print "G";}

 #   if($bases[$j] eq 'G')
 #   {print "C";}
    
 #   if($bases[$j] eq 'T')
 #   {print "A"}
}
print "\n";
