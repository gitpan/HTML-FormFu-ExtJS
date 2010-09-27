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
    DBICTest::Schema::CollectionObject;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('collection_object');
__PACKAGE__->add_columns(
  'collection' => {
    data_type => 'integer',
  },
  'object' => {
    data_type => 'integer',
  },
);
__PACKAGE__->set_primary_key(qw/collection object/);

__PACKAGE__->belongs_to( collection => "DBICTest::Schema::Collection",
                         { "foreign.collectionid" => "self.collection" }
                       );
__PACKAGE__->belongs_to( object => "DBICTest::Schema::TypedObject",
                         { "foreign.objectid" => "self.object" }
                       );

1;
