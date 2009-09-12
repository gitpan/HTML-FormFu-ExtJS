package HTML::FormFu::ExtJS::Element::Block;
our $VERSION = '0.071';



use strict;
use warnings;
use utf8;

sub render {
	my $class = shift;
	my $self = shift;
	if($self->content) {
		return {xtype => "label", html => $self->content};
	}
	return @{$self->form->_render_items($self)};
}

1;