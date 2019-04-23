unit module Anagram;

sub match-anagrams (:$subject!, :@candidates!) is export {
    my $target = $subject.lc.comb.Bag;

    @candidates.grep({
        # Word bags match with target
        .lc.comb.Bag ~~ $target
        # and words do not equal subject
        and .lc ne $subject.lc
    });
}
