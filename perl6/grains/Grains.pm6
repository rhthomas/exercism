unit module Grains;

sub grains-on-square($num where 0 < * < 65) is export {
    2 ** ($num-1);
}

sub total-grains() is export {
    gather {
        take grains-on-square($_) for 1..64;
    }.sum
}
