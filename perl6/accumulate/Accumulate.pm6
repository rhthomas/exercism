unit module Accumulate;

sub accumulate(@collection, &sub) is export {
    @collection.map(&sub).Array;
}
