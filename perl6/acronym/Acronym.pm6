unit module Acronym;

sub abbreviate ($phrase) is export {
    gather {
        # Take first character for all matches in phrase.
        take .substr(0, 1) for $phrase.uc ~~ m:g/\w+/;
    }.join;
}
