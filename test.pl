use v5.12;
use strict;
use warnings;
use utf8;
use lib 'lib';
use Bio::KEGG::API;
use DDP;

my $k = Bio::KEGG::API->new();

my @result = $k->entry_list(database => 'pathway', organism => 'hsa');
p @result;


