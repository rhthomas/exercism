unit module Raindrops;

sub raindrop (Int $num --> Str) is export {
    # return $num.Str if $num % (3 & 5 & 7);

    gather {
        take 'Pling' if $num %% 3;
        take 'Plang' if $num %% 5;
        take 'Plong' if $num %% 7;
    }.join || $num.Str;
}
