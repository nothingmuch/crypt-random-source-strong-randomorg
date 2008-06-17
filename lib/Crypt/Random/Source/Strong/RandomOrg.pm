#!/usr/bin/perl

package Crypt::Random::Source::Strong::RandomOrg;
use Squirrel;

extends qw(
	Crypt::Random::Source::Strong
	Crypt::Random::Source::Base
);

sub available { 0 }

sub get {
	my ( $self, $n ) = @_;

	require Math::RandomOrg;
	Math::RandomOrg::randbyte($n);
}

__PACKAGE__

__END__

=pod

=head1 NAME

Crypt::Random::Source::Strong::RandomOrg - use L<Math::RandomOrg> as a source
for L<Crypt::Random::Source>.

=head1 SYNOPSIS

	use Crypt::Random::Source::Strong::RandomOrg;

=head1 DESCRIPTION

=cut


