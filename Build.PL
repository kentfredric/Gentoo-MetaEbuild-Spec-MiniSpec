
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'FindBin' => '0',
    'Module::Build' => '0.3601',
    'Test::File::ShareDir' => '0',
    'Test::More' => '0.96'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Minimal Conforming spec for MetaEbuilds.',
  'dist_author' => [
    'Kent Fredric <kentnl@cpan.org>'
  ],
  'dist_name' => 'Gentoo-MetaEbuild-Spec-MiniSpec',
  'dist_version' => '0.1.0',
  'license' => 'perl',
  'module_name' => 'Gentoo::MetaEbuild::Spec::MiniSpec',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Gentoo::MetaEbuild::Spec::Base' => '0',
    'Moose' => '0'
  },
  'script_files' => [],
  'share_dir' => {
    'module' => {
      'Gentoo::MetaEbuild::Spec::MiniSpec' => 'share'
    }
  }
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
