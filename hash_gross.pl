use warnings;

foreach $key (0..1000000)
{
    $hash{$key} = 0;
}

if (exists $hash{50000})
{
    print "50000 existiert.\n";
} else {
    print "50000 existiert nicht!\n";
}

print "50000 ", $hash{50000}, "\n";

# foreach $schluessel (keys %hash)
# {
#     if ($schluessel == 50000)
#     {
# 	print "$schluessel ";
# 	print $hash{$schluessel}, "\n";
#     }
# }
