unit module AtbashCipher;

sub encode ($phrase) is export {
    $phrase.lc.trans(['a'...'z'] => ['z'...'a']).subst(/\W/, '', :g).comb(5);
}

sub decode ($phrase) is export {
    #`( Rather than having another function which does the tr/// I opted for
        code reuse, and instead join the `comb` result. )
    encode($phrase).join;
}
