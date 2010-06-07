package MooseX::Types::DBIx::Class;
# ABSTRACT: MooseX::Types for DBIx::Class objects

use strict;
use warnings;

use MooseX::Types -declare => [qw(
    ResultSet
    ResultSource
    Row
    Schema
)];

class_type ResultSet, { class => 'DBIx::Class::ResultSet' };

class_type ResultSource, { class => 'DBIx::Class::ResultSource' };

class_type Row, { class => 'DBIx::Class::Row' };

class_type Schema, { class => 'DBIx::Class::Schema' };

1;



__END__
=pod

=head1 NAME

MooseX::Types::DBIx::Class - MooseX::Types for DBIx::Class objects

=head1 VERSION

version 0.01

=head1 DESCRIPTION

This simply provides some L<MooseX::Types> style types for often
shared L<DBIx::Class> objects.

=head1 TYPES

The types exported are very simple class types. They do not define
any coercions.

=over 4

=item ResultSet

Requires the object to be an instance of L<DBIx::Class::ResultSet>.

=item ResultSource

Requires the object to be an instance of L<DBIx::Class::ResultSource>.

=item Row

Requires the object to be an instance of L<DBIx::Class::Row>.

=item Schema

Requires the object to be an instance of L<DBIx::Class::Schema>.

=back

=head2 Let Me Know How to Suck Less!

This module was born out of needing a few type constraints, and figuring
they might as well go up on CPAN. But they might not do as much as you'd
like. If so, please file a bug on RT and I will try my best to address
it and be a good maintainer.

=head1 AUTHOR

  Oliver Charles <oliver@ocharles.org.uk>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Oliver Charles.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

