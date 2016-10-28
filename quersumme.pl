use warnings;
use strict;
use function;


print &function::quersumme(123456),"\n";


my @num=(115,2004,3526,99999,80023,850,356,1420,000001,999999);
print "@num\n";

my @sortnum= sort
{
    &function::quersumme($a)<=>&function::quersumme($b) || $a<=>$b;

}(@num);

print "@sortnum\n";
