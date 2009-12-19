package # hide from PAUSE
    DBICTest::Schema::ArtistSourceName;
our $VERSION = '0.075';

use base 'DBICTest::Schema::Artist';
__PACKAGE__->table(__PACKAGE__->table);
__PACKAGE__->source_name('SourceNameArtists');

1;
