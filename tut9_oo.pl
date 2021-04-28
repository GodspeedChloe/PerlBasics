# This is the Perl Tut Object Oriented Programming file.  Notes will be in comments.
# This tutorial uses the tutorial here: https://www.youtube.com/watch?v=WEghIXs8F6c

# Important to note is that to use Perl it is best to use Perl Brew to manage versions of Perl so that OS Perl versions and files are not edited, causing massive OS failure.
# This is accomplished by using the command:
# "curl -kL http://xrl.us/perlbrewinstall | bash"
# Then edit your bash profile file and add this line:
# "source ~/perl5/perlbrew/etc/bashrc"
# To install a version you want to use, simply the command:
# "perlbrew install perl-Xx.Yy.Zz


# Make sure we make good code with the following 'pragmas':
use strict;
use warnings;
use diagnostics;

# Define some functions
use feature 'say';

# Define switch function
use feature "switch";

# Define the state function
use feature "state";

# Force feature
# use v5.30;

use lib 'lib';

use Animal::Cat;
use Animal::Lion;

my $whiskers = new Animal::Cat("whiskers","Chloe");
say "Show getters and setters:\n";
say $whiskers->getName();

$whiskers->setName("Whiskers");

say $whiskers->getName();

say $whiskers->getSound();

say "\nShow inheritance:\n";
my $leo = new Animal::Lion("Leo","Lionel");
say $leo->getName();
say $leo->getSound();
