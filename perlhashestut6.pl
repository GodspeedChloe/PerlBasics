# This is the Perl Tut hashes file.  Notes will be in comments.
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

# Force feature
# use v5.30;

# NOTE: the value we are getting from operations on a hash must be proceeded by the appropriate data type sigil ($,@,%). 
# The exception being when we are transferring the whole hash into an array

# Can define a hash this way
my %employees = (
    "Sue"=>35,
    "Paul"=>43,
    "Sam"=>39
);

# Can access a value given a key this way
printf("Sue is %d \n",$employees{Sue});

# Can add an entry this way
$employees{Frank} = 44;

# Can remove an entry like so
delete $employees{"Frank"};

# Can iterate through a hash like so using "each"
while (my ($k, $v)=each %employees){print "$k $v\n"}

# We can create an array from a selection in the hash like so
my @ages = @employees{"Sue", "Sam"};
say join(", ",@ages);

# We can actually create an array from a whole hash like so
my @hash_array = %employees;
say "Hash to array result: ",join(", ",@hash_array);


# Check exists
say ((exists $employees{"Sam"}) ? "Sam is here" : "No Sam");

# Cycle through keys
for my $key (keys %employees){
    if($employees{$key} == 35) {
        say "Hi Sue";
    }
}
