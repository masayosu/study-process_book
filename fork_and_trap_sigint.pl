use strict;
use warnings;

$SIG{INT} = sub{
    die "got SIGINT";
};

fork;

sleep;

