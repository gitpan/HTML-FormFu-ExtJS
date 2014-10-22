package HTML::FormFu::ExtJS::Element::ExtJS::Panel;
our $VERSION = '0.074';



use strict;
use warnings;
use utf8;

use HTML::FormFu::Util qw(
    xml_escape
);


sub render {
	my $class  = shift;
	my $self   = shift;

	my $parent = $self->can("_get_attributes") ? $self : $self->form;
    my $title = $self->title || $self->label;

	return {
        xtype => $self->xtype,
		$title ? (title => xml_escape( $title )) : (),
		(scalar $self->id) ? (id => scalar $self->id) : (),
        items => $self->form->_render_items( $self ),
		$parent->_get_attributes( $self )
	};
}

1;
