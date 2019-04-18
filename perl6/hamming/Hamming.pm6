unit module Hamming;

sub hamming-distance ($strand1, $strand2) is export {
    # Check strings are the same length
    die 'Unmatched string length' unless $strand1.chars == $strand2.chars;

    # Hyper operator to compare lists in order
    # Reduce ne list with addition
    [+] $strand1.comb >>ne<< $strand2.comb;
}
