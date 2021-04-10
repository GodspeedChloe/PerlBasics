# This is the Perl Tut logic file.  Notes will be in comments.
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



############## Logic

# Perl considers the following to be "false"
my $my_bool = undef;
$my_bool = 0;
$my_bool = 0.0;
$my_bool = "";
$my_bool = "0";

# Here are the following logical operators
# !, &&, ||, ==, <, >, >=, <=, !=
my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age < 16){
  say "You can't drive";
} elsif(!$is_not_intoxicated){
  say "You can't drive";
} else {
  say "You can drive";
}

if (($age >= 1) && ($age < 16)) {
  say "You can't drive";
} elsif (!$is_not_intoxicated) {
  say "You can't drive";
} elsif (($age >= 80) && (($age > 100) ||
(($age - $age_last_exam) > 5))) {
  say "You can't drive";
} else {
  say "You can drive";
}

# Operations for strings
# eq, ne, lt, le, gt, ge
# (equal, not equal, less than, less than or equal to...)

if ('a' eq 'b') {
  say "a equals b";
} else {
  say "a doesn't equal b";
}

unless(!$is_not_intoxicated) {
  say "Get sober!";
}

# Ternary operator
say (($age > 18) ? "Can Vote" : "Can't Vote");
