
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Render and validate ExtJS forms using HTML::FormFu',
                       'script_files' => [],
                       'license' => 'bsd',
                       'build_requires' => {
                                             'DateTime' => '0',
                                             'English' => '0',
                                             'DBIx::Class::Schema' => '0',
                                             'overload' => '0',
                                             'DBIx::Class::Core' => '0',
                                             'Test::More' => '0.88',
                                             'perl' => '5.004',
                                             'HTML::FormFu::Element::Text' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601',
                                             'DBIx::Class' => '0'
                                           },
                       'dist_name' => 'HTML-FormFu-ExtJS',
                       'dist_author' => [
                                          'Moritz Onken <onken@netcubed.de>'
                                        ],
                       'module_name' => 'HTML::FormFu::ExtJS',
                       'requires' => {
                                       'Tie::Hash::Indexed' => '0',
                                       'HTML::FormFu::Util' => '0',
                                       'Scalar::Util' => '0',
                                       'Data::Dumper' => '0',
                                       'Exporter' => '0',
                                       'Carp' => '0',
                                       'utf8' => '0',
                                       'JavaScript::Dumper' => '0',
                                       'Hash::Merge::Simple' => '0',
                                       'HTML::FormFu::Element::Block' => '0',
                                       'Class::C3' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '0.076'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
