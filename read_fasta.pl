use warnings;
use strict;
use function;

open (ZEILE,"/home/flofis/fasta.txt") || die;
my @header;
#my $dnastring=0;
my %hash;   
my $zeile1;

while($zeile1=<ZEILE>)
{if($zeile1=~/>/)
 {
    @header = split(/\s/,$zeile1);
  #  if($dnastring)
 #   {
#	print $dnastring,"\n";
   # }
    #print "\n",$header[0],"\n";

   # $dnastring="";
 }

 else
 {
     chomp $zeile1;
     
    # $dnastring=$dnastring.$zeile1;
     $hash{$header[0]}.=$zeile1;
     
 }

}
#$hash{$header[0]}=$dnastring;
 # print $dnastring,"\n";
 
#%hash=%hash.($header[0]=>$dnastring);
print %hash,"\n";

close ZEILE || die;

use Data::Dumper;
print Dumper(\%hash);
