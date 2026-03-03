#!/usr/bin/perl
#
#	Sticker Vote ( mthai.com )
#
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use LWP::UserAgent;

if($ARGV[2] eq ""){
	&printUsage;
	exit;
}

open(PROXYLIST,"$ARGV[0]");
@proxydata = <PROXYLIST>;
chomp(@proxydata);
$category = $ARGV[1];
$id = $ARGV[2];


print "Voting $category : $id \n";
while(1){
	$proxy = "";
	$proxyport = "";
	($proxy,$proxyport) = split(/:/,$proxydata[int(rand(@proxydata))]);
	if(!$proxyport || !$proxy ){
		next;
	}
	print "$proxy:$proxyport....";
	&Lookpic;
	&Votepic;
}





sub Votepic{
	$ua = LWP::UserAgent->new();
	my $req = POST 'http://www.mthai.com/sticker/oo/vote.php',
	[
		Account=>"$id",
		type=>"up"
	];
	$ua ->agent('Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)');
	$ua ->proxy("http","http://$proxy:$proxyport");
	$req ->header('Accept-Language' => "th");
	$req ->referer("http://www.mthai.com/sticker/oo/$category/$id.shtml");
	$content = $ua->request($req)->as_string;
	if ( $content =~ /Location: http:\/\/www.mthai.com\/sticker\/oo\/$category\/$id.shtml/i){
		print "vote done.\n";
	} else { 
		print "vote not done.\n";
	}
}

sub Lookpic{
	$ua = LWP::UserAgent->new();
	my $req = GET "http://www.mthai.com/sticker/oo/tranversal.php?Account=$id",[];
	$ua ->agent('Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)');
	$ua ->proxy("http","http://$proxy:$proxyport");
	$req ->header('Accept-Language' => "th");
	$content = $ua->request($req)->as_string;
}


sub printUsage{
	print "Kengz Mthai Sticker Vote !! \n";
	print "usage : perl kengz.pl <PROXYLIST> <CATEGORY> <ID>\n\n";
	print "\tperl kengz.pl proxylist.txt boys 189385\n\n\n";
}