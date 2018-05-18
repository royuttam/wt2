#!D:/Perl64/bin/perl.exe

use strict;
use warnings;
use diagnostics;

$| = 1; # Disable output buffering

for (1..10) {
        print '.';
        sleep 1;
}
print "\n";