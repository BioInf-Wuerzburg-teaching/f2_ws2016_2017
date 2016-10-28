use strict;
use warnings;
use functions;

print &functions::quersumme(123456), "\n";


my @num=(1420,2004,3526,99999,80023,850,356,115,000001,999999);
print "@num,\n";

@num=sort{&functions::quersumme($a)<=>&functions::quersumme($b)||$a<=>$b;}(@num);

print "@num\n";
