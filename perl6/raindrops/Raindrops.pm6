unit module Raindrops;

sub raindrop (Int $num --> Str) is export {
    gather {
        take 'Pling' if $num %% 3;
        take 'Plang' if $num %% 5;
        take 'Plong' if $num %% 7;
    }.join || $num.Str;
}
