# For use with the OO tut
package Animal::Cat;

use strict;
use warnings;


# Constructor
sub new {
    my $class = shift;
    my $self = {
	name => shift,
	owner => shift
    };
    bless $self, $class;
    return $self;
}

sub getName {
    my ($self) = @_;
    return $self->{name};
}

sub setName {
    my ($self, $name) = @_;
    $self->{name} = $name if defined($name);
    return $self->{name};
}

sub getSound {
    my ($self) = @_;
    return $self->{name}, " says meow";
}


# Package must return true whenever it is called.
1;
