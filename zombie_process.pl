use strict;
use warnings;

my $pid = fork;

if( $pid ) {
    print $pid . "\n";

    while(1){
        sleep;
    }
}
else{
    exit;
}
