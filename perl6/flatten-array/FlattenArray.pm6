unit module FlattenArray;

sub flatten-array(@input) is export {
    [ gather @input>>.&{ .take if .defined } ];
}
