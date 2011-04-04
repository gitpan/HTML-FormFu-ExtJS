#
# This file is part of HTML-FormFu-ExtJS
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package # hide from PAUSE
    DBICTest::Schema::Link;

use base 'DBIx::Class::Core';

use strict;
use warnings;

__PACKAGE__->table('link');
__PACKAGE__->add_columns(
    'id' => {
        data_type => 'integer',
        is_auto_increment => 1
    },
    'url' => {
        data_type => 'varchar',
        size      => 100,
        is_nullable => 1,
    },
    'title' => {
        data_type => 'varchar',
        size      => 100,
        is_nullable => 1,
    },
);
__PACKAGE__->set_primary_key('id');

use overload '""' => sub { shift->url }, fallback=> 1;

1;
