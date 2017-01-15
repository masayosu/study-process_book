use strict;
use warnings;

my $pid = fork;

die "fork failed" unless defined $pid;

if($pid){
    my $pgid = $pid;

    print "pid:$pid pgid:$pgid\n";
    setpgrp $pid, $pgid;
    sleep;
}
else{
    sleep;
}
