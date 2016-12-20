#!/usr/bin/perl
use strict;
use warnings;
use Data::Dump qw(dump);

my %DNAtoProteintable = (
    UUU => "F",      CUU => "L",      AUU => "I",      GUU => "V",
    UUC => "F",      CUC => "L",      AUC => "I",      GUC => "V",
    UUA => "L",      CUA => "L",      AUA => "I",      GUA => "V",
    UUG => "L",      CUG => "L",      AUG => "M",      GUG => "V",
    UCU => "S",      CCU => "P",      ACU => "T",      GCU => "A",
    UCC => "S",      CCC => "P",      ACC => "T",      GCC => "A",
    UCA => "S",      CCA => "P",      ACA => "T",      GCA => "A",
    UCG => "S",      CCG => "P",      ACG => "T",      GCG => "A",
    UAU => "Y",      CAU => "H",      AAU => "N",      GAU => "D",
    UAC => "Y",      CAC => "H",      AAC => "N",      GAC => "D",
    UAA => "Stop",   CAA => "Q",      AAA => "K",      GAA => "E",
    UAG => "Stop",   CAG => "Q",      AAG => "K",      GAG => "E",
    UGU => "C",      CGU => "R",      AGU => "S",      GGU => "G",
    UGC => "C",      CGC => "R",      AGC => "S",      GGC => "G",
    UGA => "Stop",   CGA => "R",      AGA => "R",      GGA => "G",
    UGG => "W",      CGG => "R",      AGG => "R",      GGG => "G");

my $file = 'data.txt';
my $dnaString;
my @dnaStringArray;

open(FILE, '<', $file) || die $!;
while(<FILE>) {
    chomp;
    if(substr($_, 0, 1) ne '>') {
        $dnaString .= $_;
    }
}
close FILE || die;

@dnaStringArray = split (//, $dnaString);
my $currentTriplet = "";

#DNA to RNA
for(my $i = 0; $i < @dnaStringArray; $i++) {
    if($dnaStringArray[$i] eq "T") {
        $dnaStringArray[$i] = "U";
    }
}

my @proteinStringsCandidates;
my @proteinStrings;
my $active = 0;
my $terminationCharacter = "*";
for(my $offset = 0; $offset <= 2; $offset++) {
    for(my $i = 0 + $offset; $i < @dnaStringArray - $offset - 1; $i += 3) {
        $currentTriplet = $dnaStringArray[$i] . $dnaStringArray[$i+1] . $dnaStringArray[$i+2];

        if($currentTriplet eq "AUG") {
            push(@proteinStringsCandidates, "");
            $active = 1;
        }

        if($active == 1 && $currentTriplet ne "UAA" && $currentTriplet ne "UAG" && $currentTriplet ne "UGA") {
            for(my $j = 0; $j < @proteinStringsCandidates; $j++) {
                if(substr($proteinStringsCandidates[$j], -1) ne $terminationCharacter) {
                    $proteinStringsCandidates[$j] .= $DNAtoProteintable{$currentTriplet};
                }
            }
        }

        if($currentTriplet eq "UAA" || $currentTriplet eq "UAG" || $currentTriplet eq "UGA") {
            for(my $x = 0; $x < @proteinStringsCandidates; $x++) {
                if(substr($proteinStringsCandidates[$x], -1) ne $terminationCharacter) {
                    $proteinStringsCandidates[$x] .= $terminationCharacter;
                }
            }
            $active = 0;
        }
    }

    for(my $i = 0; $i < @proteinStringsCandidates; $i++) {
        if(length($proteinStringsCandidates[$i]) > 1 && substr($proteinStringsCandidates[$i], -1) eq $terminationCharacter) {
            push(@proteinStrings, $proteinStringsCandidates[$i]);
        }
    }
    @proteinStringsCandidates = ();
}

my @dnaStringArrayComplement = reverse @dnaStringArray;
for(my $i = 0; $i < @dnaStringArrayComplement; $i++) {
    if($dnaStringArrayComplement[$i] eq "C") {
        $dnaStringArrayComplement[$i] = "G";
    } elsif($dnaStringArrayComplement[$i] eq "G") {
        $dnaStringArrayComplement[$i] = "C";
    } elsif($dnaStringArrayComplement[$i] eq "A") {
        $dnaStringArrayComplement[$i] = "U";
    } elsif($dnaStringArrayComplement[$i] eq "U") {
        $dnaStringArrayComplement[$i] = "A";
    }
}

for(my $offset = 0; $offset <= 2; $offset++) {
    for(my $i = 0 + $offset; $i < @dnaStringArrayComplement - $offset - 1; $i+=3) {
        $currentTriplet = $dnaStringArrayComplement[$i] . $dnaStringArrayComplement[$i+1] . $dnaStringArrayComplement[$i+2];

        if($currentTriplet eq "AUG") {
            push(@proteinStringsCandidates, "");
            $active = 1;
        }

        if($active == 1 && $currentTriplet ne "UAA" && $currentTriplet ne "UAG" && $currentTriplet ne "UGA") {
            for(my $j = 0; $j < @proteinStringsCandidates; $j++) {
                if(substr($proteinStringsCandidates[$j], -1) ne $terminationCharacter) {
                    $proteinStringsCandidates[$j] .= $DNAtoProteintable{$currentTriplet};
                }
            }
        }

        if($currentTriplet eq "UAA" || $currentTriplet eq "UAG" || $currentTriplet eq "UGA") {
            for(my $x = 0; $x < @proteinStringsCandidates; $x++) {
                if(substr($proteinStringsCandidates[$x], -1) ne $terminationCharacter) {
                    $proteinStringsCandidates[$x] .= $terminationCharacter;
                }
            }
            $active = 0;
        }
    }

    for(my $i = 0; $i < @proteinStringsCandidates; $i++) {
        if(length($proteinStringsCandidates[$i]) > 1 && substr($proteinStringsCandidates[$i], -1) eq $terminationCharacter) {
            push(@proteinStrings, $proteinStringsCandidates[$i]);
        }
    }
    dump(@proteinStringsCandidates);
    @proteinStringsCandidates = ();
}

sub uniq {
    my %seen;
    grep !$seen{$_}++, @_;
}

my @filteredProteinStrings = uniq(@proteinStrings);

print "\n\n\n";
my $proteinString;
for(my $i = 0; $i < @filteredProteinStrings; $i++) {
    $proteinString = @filteredProteinStrings[$i];
    $proteinString =~ tr/*//d;
    print $proteinString . "\n";
}
