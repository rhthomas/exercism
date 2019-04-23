unit module Scrabble;

my %points = (
    1 => <A E I O U L N R S T>,
    2 => <D G>,
    3 => <B C M P>,
    4 => <F H V W Y>,
    5 => <K>,
    8 => <J X>,
    10 => <Q Z>,
).invert;

sub score ($word) is export {
    [+] $word.uc.comb.map( { %points{$_} } );
}
