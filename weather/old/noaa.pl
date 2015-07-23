#!/usr/bin/perl

# Grab all the lines and put in an array.
@w = <>;

# Keep only certain lines for the current conditions.
@t = grep /^ +(Temperature \d|Wind|Relative|Sky)/, @w;

# Erase the leading spaces and parenthetical values.
for (@t){
  s/^ +//;
  s/ \([^)]+\)//g
};

# Sometimes there's a windchill line, and sometimes there isn't.
# Add a blank line to the front of the array if there isn't.
unshift @t, "\n" if $#t == 2;

# Print the lines of interest in the order I want.
print join "", @t;

