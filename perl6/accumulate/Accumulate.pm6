unit module Accumulate;

sub accumulate(@collection, &sub) is export {
    #`( Hyper method call operator calls a method on all elements of a List out
        of order and return the list of return values in order. )
    @collection>>.&sub
}
