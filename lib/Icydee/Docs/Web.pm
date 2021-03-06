package Icydee::Docs::Web;
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

use Catalyst::Runtime 5.80;

# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use parent qw/Catalyst/;
use Catalyst qw/-Debug
    StackTrace
    Static::Simple
    ConfigLoader
    Session
    Session::Store::FastMmap
    Session::State::Cookie
    Authentication
    Authorization::Roles
    Unicode
/;

our $VERSION = '0.01';

__PACKAGE__->config(
    name            => 'Icydee::Docs::Web',
    default_view    => 'TT',
);

__PACKAGE__->config->{static} = {
    dirs    => ['static','img'],
    logging => 0,
};

__PACKAGE__->config->{'View::JSON'} = {
	expose_stash    => 'json_data',
};

# Start the application
__PACKAGE__->setup();

1;
