package Icydee::Docs::DB;
#
# $Id: $
# $Revision: $
# $Author: $
# $Source:  $
#
# $Log: $
#
use Moose;
use namespace::autoclean;

BEGIN {extends 'DBIx::Class::Schema'};

__PACKAGE__->load_namespaces (
    result_namespace            => 'Schema',
    resultset_namespace         => 'ResultSet',
    default_resultset_class     => '+DBIx::Class::ResultSet',
);
1;

