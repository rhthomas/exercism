unit module NucleotideCount;

sub nucleotide-count ($_) is export {
    die if $_ ~~ /<-[ACGT]>/;
    .comb;
}
