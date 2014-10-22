# 
# This file is part of HTML-FormFu-ExtJS
# 
# This software is Copyright (c) 2010 by Moritz Onken.
# 
# This is free software, licensed under:
# 
#   The (three-clause) BSD License
# 
package HTML::FormFu::ExtJS::Element::Password;
BEGIN {
  $HTML::FormFu::ExtJS::Element::Password::VERSION = '0.076';
}

use base "HTML::FormFu::ExtJS::Element::Text";

use strict;
use warnings;
use utf8;

sub render {
	my $class = shift;
	my $self = shift;
	my $super = $class->SUPER::render($self);
	return { %{$super}, inputType => "password" };
	
	
}

1;


__END__
=pod

=head1 NAME

HTML::FormFu::ExtJS::Element::Password

=head1 VERSION

version 0.076

=head1 DESCRIPTION

Simple password element.

=head1 NAME

HTML::FormFu::ExtJS::Element::Password - Password element

=head1 SEE ALSO

L<HTML::FormFu::Element::Password>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

=head1 AUTHOR

  Moritz Onken <onken@netcubed.de>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2010 by Moritz Onken.

This is free software, licensed under:

  The (three-clause) BSD License

=cut

