unit module Raindrops;

sub raindrop (Int $num --> Str) is export {
    my $str = '';
    if $num % (3&5&7) {
        $num.Str;
    } else {
        if $num %% 3 {
            $str = $str ~ 'Pling';
        }
        if $num %% 5 {
            $str = $str ~ 'Plang';
        }
        if $num %% 7 {
            $str = $str ~ 'Plong';
        }
        $str;
    }
}
