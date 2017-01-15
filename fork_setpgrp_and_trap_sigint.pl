use strict;
use warnings;

$SIG{INT} = sub{
    die "got sigint";
};

my $pid = fork;

die "fork failed" unless defined $pid;

if($pid){
    sleep;
}
else{
    setpgrp;
    sleep;
}
