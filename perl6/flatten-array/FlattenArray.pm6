unit module FlattenArray;

sub flatten-array(@input) is export {
    @input[*;*;*;*;*].grep(*.defined).Array;
}
