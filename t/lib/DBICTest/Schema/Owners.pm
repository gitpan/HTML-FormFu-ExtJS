package # hide from PAUSE 
    DBICTest::Schema::Owners;
our $VERSION = '0.075';

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('owners');
__PACKAGE__->add_columns(
  'ownerid' => {
    data_type => 'integer',
    is_auto_increment => 1,
  },
  'name' => {
    data_type => 'varchar',
    size      => '100',
  },
);
__PACKAGE__->set_primary_key('ownerid');

__PACKAGE__->has_many(books => "DBICTest::Schema::BooksInLibrary", "owner");

1;
