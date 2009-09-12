
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'HTML-FormFu-ExtJS',
  NAME      => 'HTML::FormFu::ExtJS',
  AUTHOR    => 'Moritz\ Onken\ \<onken\@netcubed\.de\>',
  ABSTRACT  => 'Render\ and\ validate\ ExtJS\ forms\ using\ HTML\:\:FormFu',
  VERSION   => '0.071',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "File::Find::Rule" => '0',
    "Tie::Hash::Indexed" => '0',
    "JavaScript::Dumper" => '0.011',
    "Hash::Merge::Simple" => '0.03',
    "Hash::Flatten" => '0',
    "HTML::FormFu" => '0.04',
    "Exporter" => '5.57',
  },
  test => {TESTS => 't/ t/column_model/ t/elements/ t/grid_data/dbic/ t/grid_data/hashref/ t/record/ t/render/ t/validation/'}
);

