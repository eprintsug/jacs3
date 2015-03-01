#!/usr/bin/perl -w

use Text::CSV_XS;
use strict;

my $file = $ARGV[0];
my $top = $ARGV[1] || "subjects";

my $csv = Text::CSV_XS->new;
open my $fh, "<", $file or die "Could not open '$file': $!";

print "$top:Joint Academic Coding System (JACS) Version 3.0:ROOT:0\n";

while( my $row = $csv->getline( $fh ) ) 
{
	my $code = $row->[0];
	my $label = $row->[1];

	my $parent = "subjects";
	if( $code !~ /^([A-Z])000/ )
	{
		$parent = sprintf( "%s000", substr( $code, 0, 1 ) );
	}

	print join( ":", $code, $label, $parent, $parent eq "subjects" ? 0 : 1 );
	print "\n"; 
}
close $fh;
