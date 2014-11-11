package Bio::KEGG::API;

use v5.12;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use REST::Client;
use Net::FTP::Tiny qw(ftp_get);

our $VERSION = '0.01';

has 'client' => (
	is	=>	'rw',
	isa	=>	'REST::Client',
	default => sub {
		my $self = shift;
		return my $obj = REST::Client->new({host=> "http://rest.kegg.jp", timeout => 10,});
		}
	);

has 'operation' => (
	is	=>	'rw',
	isa	=>	'Str',
	);

has 'database' => (
	is	=>	'rw',
	isa	=>	'Str',
	);

has	'organism' => (
	is	=>	'rw',
	isa	=>	'Str',
	);


sub database_info {
	my $self  = shift;
	my %param = @_;

	$self->operation('/info');
	$self->database($param{'database'}) if defined $param{'database'};
	$self->organism($param{'organism'}) if defined $param{'organism'};
}

1;














