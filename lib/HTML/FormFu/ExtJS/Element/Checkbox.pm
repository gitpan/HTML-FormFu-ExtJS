package HTML::FormFu::ExtJS::Element::Checkbox;
our $VERSION = '0.074';


use base "HTML::FormFu::ExtJS::Element::_Field";

use strict;
use warnings;
use utf8;

sub render {
	my $class = shift;
	my $self  = shift;
	my $super = $class->SUPER::render($self);
	return {
		xtype     => "checkbox",
		hideLabel => 1,
		boxLabel  => $self->label,
		checked => $self->default ? \1 : \0,
		%{$super},
		$self->default ? ( inputValue => $self->default ) : ()
	};
}
1;

=head1 NAME

HTML::FormFu::ExtJS::Element::Checkbox - Checkbox element

=head1 VERSION

version 0.074

=head1 DESCRIPTION

Simple Checkbox element.

=head1 SEE ALSO

L<HTML::FormFu::Element::Checkbox>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut