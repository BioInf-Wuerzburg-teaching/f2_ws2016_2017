use strict;
use warnings;
use functions;


##10000 mal hello world

#print "hello world\n"x10000;
#print "\n";

#for (my $i=1;$i<=10000;$i++)
#{
#    print "hello world\n";
#}
#print "\n";


for (my $i=1;$i<=10;$i++)
{
    print &functions::helloWorld;
}
print "\n";

print &functions::add(2,5), "\n\n";
print &functions::add(2,3),"\n";


