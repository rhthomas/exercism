unit module RNA;

sub to-rna ($dna) is export {
    $dna.trans("GCTA" => "CGAU");
}
