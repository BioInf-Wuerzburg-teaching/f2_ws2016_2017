use strict;
use warnings;


##10000 mal hello world

#print "hello world\n"x10000;
#print "\n";

#for (my $i=1;$i<=10000,$i++)
#{
#    print "hello world\n";
#}
#print "\n";

for (my $i=1;$i<=10000;$i++)
{
    &helloWorld;
}


sub helloWorld
{
    print "hello world\n";
}

