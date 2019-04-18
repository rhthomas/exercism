unit module Pangram;

sub is-pangram (Str $_ --> Bool) is export {
    .lc.comb(/<:L>/).Bag.elems == 26;
}
