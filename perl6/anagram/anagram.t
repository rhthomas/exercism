#!/usr/bin/env perl6
use v6;
use Test;
use JSON::Fast;
use lib $?FILE.IO.dirname;
use Anagram;
plan 12;

my $c-data = from-json $=pod.pop.contents;
cmp-ok match-anagrams( |%(.<input><subject candidates>:p) ), '~~', .<expected>.Set, .<description> for $c-data<cases>.values;

=head2 Canonical Data
=begin code
{
  "exercise": "anagram",
  "version": "1.4.0",
  "cases": [
    {
      "description": "no matches",
      "property": "findAnagrams",
      "input": {
        "subject": "diaper",
        "candidates": ["hello", "world", "zombies", "pants"]
      },
      "expected": []
    },
    {
      "description": "detects two anagrams",
      "property": "findAnagrams",
      "input": {
        "subject": "master",
        "candidates": ["stream", "pigeon", "maters"]
      },
      "expected": ["stream", "maters"]
    },
    {
      "description": "does not detect anagram subsets",
      "property": "findAnagrams",
      "input": {
        "subject": "good",
        "candidates": ["dog", "goody"]
      },
      "expected": []
    },
    {
      "description": "detects anagram",
      "property": "findAnagrams",
      "input": {
        "subject": "listen",
        "candidates": ["enlists", "google", "inlets", "banana"]
      },
      "expected": ["inlets"]
    },
    {
      "description": "detects three anagrams",
      "property": "findAnagrams",
      "input": {
        "subject": "allergy",
        "candidates": [
          "gallery",
          "ballerina",
          "regally",
          "clergy",
          "largely",
          "leading"
        ]
      },
      "expected": ["gallery", "regally", "largely"]
    },
    {
      "description": "does not detect non-anagrams with identical checksum",
      "property": "findAnagrams",
      "input": {
        "subject": "mass",
        "candidates": ["last"]
      },
      "expected": []
    },
    {
      "description": "detects anagrams case-insensitively",
      "property": "findAnagrams",
      "input": {
        "subject": "Orchestra",
        "candidates": ["cashregister", "Carthorse", "radishes"]
      },
      "expected": ["Carthorse"]
    },
    {
      "description": "detects anagrams using case-insensitive subject",
      "property": "findAnagrams",
      "input": {
        "subject": "Orchestra",
        "candidates": ["cashregister", "carthorse", "radishes"]
      },
      "expected": ["carthorse"]
    },
    {
      "description": "detects anagrams using case-insensitive possible matches",
      "property": "findAnagrams",
      "input": {
        "subject": "orchestra",
        "candidates": ["cashregister", "Carthorse", "radishes"]
      },
      "expected": ["Carthorse"]
    },
    {
      "description": "does not detect a anagram if the original word is repeated",
      "property": "findAnagrams",
      "input": {
        "subject": "go",
        "candidates": ["go Go GO"]
      },
      "expected": []
    },
    {
      "description": "anagrams must use all letters exactly once",
      "property": "findAnagrams",
      "input": {
        "subject": "tapper",
        "candidates": ["patter"]
      },
      "expected": []
    },
    {
      "description": "words are not anagrams of themselves (case-insensitive)",
      "property": "findAnagrams",
      "input": {
        "subject": "BANANA",
        "candidates": ["BANANA", "Banana", "banana"]
      },
      "expected": []
    }
  ]
}
=end code
