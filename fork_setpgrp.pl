use strict;
use warnings;

my $pid = fork;

die "fork failed" unless defined $pid;

if($pid){
    sleep;
}
else{
    setpgrp;
    sleep;
}
