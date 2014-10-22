#
# This file is part of HTML-FormFu-ExtJS
#
# This software is Copyright (c) 2010 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package # hide from PAUSE 
    DBICTest::Schema::TypedObject;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('typed_object');
__PACKAGE__->add_columns(
  'objectid' => {
    data_type => 'integer',
    is_auto_increment => 1,
  },
  'type' => {
    data_type => 'varchar',
    size      => '100',
  },
  'value' => {
    data_type => 'varchar',
    size      => 100,
  },
);
__PACKAGE__->set_primary_key('objectid');

__PACKAGE__->has_many( collection_object => "DBICTest::Schema::CollectionObject",
                       { "foreign.object" => "self.objectid" }
                     );
__PACKAGE__->many_to_many( collections => collection_object => "collection" );

1;
