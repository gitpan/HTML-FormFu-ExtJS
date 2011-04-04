#
# This file is part of HTML-FormFu-ExtJS
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package HTML::FormFu::ExtJS::Element::Radio;
BEGIN {
  $HTML::FormFu::ExtJS::Element::Radio::VERSION = '0.090';
}
use base "HTML::FormFu::ExtJS::Element::_Field";

use strict;
use warnings;
use utf8;

sub render {
	my $class = shift;
	my $self  = shift;
	my $super = $class->SUPER::render($self);
	return {
		%{$super},
		xtype     => "radio",
		hideLabel => 1,
		boxLabel  => $self->label,
		$self->default ? ( inputValue => $self->default ) : ()
	};
}
1;


__END__
=pod

=head1 NAME

HTML::FormFu::ExtJS::Element::Radio

=head1 VERSION

version 0.090

=head1 DESCRIPTION

Simple Radio element.

=head1 NAME

HTML::FormFu::ExtJS::Element::Radio - Radio element

=head1 SEE ALSO

L<HTML::FormFu::Element::Radio>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 AUTHOR

Moritz Onken <onken@netcubed.de>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Moritz Onken.

This is free software, licensed under:

  The (three-clause) BSD License

=cut

