use strict;
use warnings;


my $zahl="123456";
my @ziffern=split(//,$zahl);
my $l=@ziffern;
my $result=0;

for (my $i=0;$i<$l;$i++)
{
    $result=$result+$ziffern[$i];
}

print "$result\n";
