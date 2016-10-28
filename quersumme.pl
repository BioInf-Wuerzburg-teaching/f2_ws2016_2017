use strict;
use warnings;
use functions;


#quersumme

print &functions::quersumme(123456),"\n\n";


#nach quersumme sortieren

my @num=(115,2004,3526,99999,80023,850,356,1420,000001,999999);
print "@num\n";

@num=sort
{
    &functions::quersumme($a)<=>&functions::quersumme($b) or $a<=>$b;
}(@num);

print "@num\n\n";
