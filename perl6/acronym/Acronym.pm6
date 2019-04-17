unit module Acronym;

sub abbreviate ($phrase) is export {
    gather {
        for $phrase.uc ~~ m:g/\w+/ -> $match {
            take substr($match, 0, 1);
        }
    }.join;
}
