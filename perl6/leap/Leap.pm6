unit module Leap;

sub is-leap-year ($year) is export {
    # `?` forces argument as Bool
    ?(not($year % 4) and ($year % 100) or not($year % 400))
}
