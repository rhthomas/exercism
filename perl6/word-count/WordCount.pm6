unit module WordCount;

sub count-words ($_) is export {
    .lc.comb(/ \w+ (\'\w+)? /).Bag;
}
