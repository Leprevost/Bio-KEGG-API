use v5.12;
use strict;
use warnings;
use utf8;
use lib 'lib';
use Bio::KEGG::API;
use DDP;

my $k = Bio::KEGG::API->new();

say $k->database_info(database => 'hsa');

