unit module Leap;

sub is-leap-year ($year) is export {
    # Divisibility operator. Returns True if $a % $b == 0.
    ($year %% 4) and not($year %% 100) or ($year %% 400)
}
