unit module NucleotideCount;

sub nucleotide-count ($_ where * !~~ /<-[ACGT]>/) is export {
    .comb;
}
