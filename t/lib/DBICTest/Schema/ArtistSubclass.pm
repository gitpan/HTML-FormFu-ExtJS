package # hide from PAUSE
    DBICTest::Schema::ArtistSubclass;
our $VERSION = '0.075';

use base 'DBICTest::Schema::Artist';

__PACKAGE__->table(__PACKAGE__->table);

1;