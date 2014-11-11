use v5.12;
use strict;
use warnings;
use utf8;
use lib 'lib';
use Bio::KEGG::API;
use DDP;

my $k = Bio::KEGG::API->new();

$k->database_info(organism => 'hsa');
p $k;

