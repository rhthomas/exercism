unit module Anagram;

sub match-anagrams (:$subject!, :@candidates!) is export {
    my @out;
    my $target = $subject.lc.comb.Bag;

    for @candidates -> $word {
        # Skip if word is the same as subject
        next if $word.lc ~~ $subject.lc;
        # Add word to list if bags match
        @out.append($word) if so $word.lc.comb.Bag ~~ $target;
    }

    @out;
}
