unit module Grains;

sub grains-on-square($num where 0 < * < 65) is export {
    2 ** ($num-1);
}

sub total-grains() is export {
    # `race` executes in parallel without retaining order
    [+] (1..64).race.map({ grains-on-square($_) })
}
