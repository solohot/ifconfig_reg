#!/usr/bin/perl
@nainfo = `ifconfig | awk '/Link encap|inet addr/'`;#ifconfig output.
print "Network Interface";
print " "x4;
print "IPv4 Address\n";
foreach(@nainfo){
	#Get Network Interface.
	if(/^\b(\w+)\b/){
		printf "%-21s",$1;
	}
	#Get IPv4 Address.
	if(/inet addr:((?:(?:25[0-5]|2[0-4]\d|((1\d{2})|([1-9]?\d)))\.){3}(?:25[0-5]|2[0-4]\d|((1\d{2})|([1-9]?\d))))/){
		print "$1\n";
	}
}
