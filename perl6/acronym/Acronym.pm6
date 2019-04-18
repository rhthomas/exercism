unit module Acronym;

sub abbreviate (Str $_ --> Str) is export {
    .comb( /\w )> \w*/ ).join.uc;
}
