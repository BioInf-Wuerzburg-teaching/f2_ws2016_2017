use warnings;
use strict;

sub print_parameter
{
    my @summanden=@_;
    print "@summanden", "\n";
}

&print_parameter(5,6);

my @array=(1,2,3,4);

&print_parameter(@array);

my @arraya=(1,2,3);
my @arrayb=(4,5,6,7,8,9);

&print_parameter(@arraya,@arrayb);

sub compare
{
     my ($array1, $array2)=@_;
   # my @array1=@{$_[0]};
     $array1->[0]=9;
   # my @array2=@{$_[1]};
    my $length_array1=@{$array1};
    my $length_array2=@{$array2};

   # print "@array1\n";
   # print "@array2\n";

    if ($length_array1==$length_array2)
    {
	return 1;
    }

    else
    {
	return 0;
    }
}


print &compare(\@array, \@array), "\n";

print &compare(\@array, \@arrayb), "\n";

print @array, "\n";
