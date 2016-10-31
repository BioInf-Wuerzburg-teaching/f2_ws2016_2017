use warnings;
use strict;
use functions;

open(FAS, "fasta.txt") or die;
my @header;
#my $dnastring=0;
my %hash;
my $fas1;

while($fas1=<FAS>)
{
    if ($fas1=~/>/)
	
 {
     @header = split(/\s/,$fas1);
     # if($dnastring)
     # {
     # 	 print $dnastring, "\n";
     # }
     #  print "\n", $header[0],"\n";
      
    # $dnastring="";
 }
    
    else
	
 {
     chomp $fas1;
     
    # $dnastring=$dnastring.$fas1;
     $hash{$header[0]}.=$fas1;
     
 }
}

#print $dnastring, "\n";
print Dumper(\%hash);

close FAS or die;


use Data::Dumper;
