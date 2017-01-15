use strict;
use warnings;

my $pid = fork;

if ($pid) {
    sleep 1;
    exit;
}
else{
    print getppid."\n";

    sleep 2;

    print getppid."\n";
}
