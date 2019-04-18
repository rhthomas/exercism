unit class Bob;

method hey (Str $_ --> Str) {
    given .trim {
        when .ends-with: '?' {
            when &shouting {
                'Calm down, I know what I\'m doing!'
            }
            default {
                'Sure.'
            }
        }
        when &shouting {
            'Whoa, chill out!';
        }
        when '' {
            'Fine. Be that way!'
        }
        default {
            'Whatever.';
        }
    }
}

sub shouting($msg) {
    ($msg ~~ m/<:Lu>/) and ($msg.uc eq $msg)
}
