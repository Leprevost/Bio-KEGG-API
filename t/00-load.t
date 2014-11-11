#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Bio::KEGG::API' ) || print "Bail out!\n";
}

diag( "Testing Bio::KEGG::API $Bio::KEGG::API::VERSION, Perl $], $^X" );
