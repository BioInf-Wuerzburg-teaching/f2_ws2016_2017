use strict;
use warnings;
use function;
use Data::Dumper;

sub print_parameter
{
    my @summanden=@_;
    print "@summanden","\n";
}
&print_parameter(5,6);

my @array=(1,2,3,4);
&print_parameter(@array);

sub compare
{
    my ($array1, $array2)=@_;
   # my @array1=@{$_[0]};
    # my @array2=@{$_[1]};
    $array1->[0]=9;
    my $length_array1=@{$array1};
    my $length_array2=@{$array2};

    if($length_array1==$length_array2)
    {
        return 1;
    }
    else
    {
	return 0;
    }
    

}
my @arrayb=(5..9);
print compare(\@array, \@arrayb), "\n";
    
print "@array,\n";
print "@arrayb,\n";
