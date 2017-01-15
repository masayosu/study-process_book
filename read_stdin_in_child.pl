use strict;
use warnings;

my $pid = fork;
die "fork failed" unless defined $pid;

if ($pid){
    close (STDIN);

    waitpid($pid,0)
}

else {
    while(my $line = <STDIN>){
        print $line;
    }
}

