unit module ETL;

sub transform (%input) is export {
    my Int:D %out{Str:D};

    for %input.kv -> $key, @vals {
        %out{.lc} = $key.Int for @vals;
    }

    %out;
}
