use strict;
use warnings;
package Gentoo::MetaEbuild::Spec::MiniSpec;

# ABSTRACT: Minimal Conforming spec for MetaEbuilds.

=head1 SYNOPSIS

    use Gentoo::MetaEbuild::Spec::MiniSpec;
    if( Gentoo::MetaEbuild::Spec::MiniSpec->check( json_decode( scalar slurp( $file ) ) ) ){
        print "$file is metaspec compliant\n";
    }

=cut

use Moose;
extends 'Gentoo::MetaEbuild::Spec::Base';

=head1 DESCRIPTION

Most the work for this module is performed by the parent class L<Gentoo::MetaEbuild::Spec::Base>.

Everything outside that is governed by the .json files shipped in this distributions "Share" directory.

=head1 SCHEMA

    $root = {
        SCHEME => $scheme_spec                   # required
        ...                                      # anything.
    }

    $scheme_spec = {
        min_version => "Minimum Version String", # required
        standard    => "Schema Standard",        # required
        generator   => $generator_spec           # optional
    }

    $generator_spec = {
        type       => "Type String",             # required
        author     => $generator_auth_spec       # optional
        module     => $generator_modu_spec       # optional
    }

    $generator_auth_spec = {
        name      => "Authors name"              # required
        email     => "Authors contact Email"     # required
    }

    $generator_modu_spec = {
        name      => "Module::Name",             # required
        version   => "Module Version String",    # required
    }

=cut



__PACKAGE__->meta->make_immutable;

1;
