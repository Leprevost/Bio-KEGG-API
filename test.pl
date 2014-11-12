use v5.12;
use strict;
use warnings;
use utf8;
use lib 'lib';
use Bio::KEGG::API;
use DDP;

my $k = Bio::KEGG::API->new();

my @result = $k->id_convertion(target => 'eco', source => 'ncbi-geneid');
p @result;


