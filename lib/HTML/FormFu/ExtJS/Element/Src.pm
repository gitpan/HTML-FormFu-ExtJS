package HTML::FormFu::ExtJS::Element::Src;
our $VERSION = '0.075';


use strict;
use warnings;
use utf8;


sub render {
	my $class = shift;
	my $self = shift;
	return {html => $self->content };
	
	
}

1;