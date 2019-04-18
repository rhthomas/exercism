unit module Hamming;

sub hamming-distance ($strand1, $strand2) is export {
    die 'Unmatched string length' unless $strand1.chars == $strand2.chars;

    my Int:D $dist = 0;

    for ^$strand1.chars {
        $dist++ if $strand1.comb[$_] ne $strand2.comb[$_];
    }

    $dist;
}
