use warnings;

foreach $key (0..1000000)
{
    $hash{$key}=1;
}

print "50000 ",$hash{50000}, "\n";
