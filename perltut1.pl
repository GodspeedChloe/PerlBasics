# This is the Perl Tut file.  Notes will be in comments.
# This tutorial uses the tutorial here: https://www.youtube.com/watch?v=WEghIXs8F6c

# Important to note is that to use Perl it is best to use Perl Brew to manage versions of Perl so that OS Perl versions and files are not edited, causing massive OS failure.
# This is accomplished by using the command:
# curl -kL http://xrl.us/perlbrewinstall | bash
# Then edit your bash profile file and add "source ~/perl5/perlbrew/etc/bashrc"
# To install a version you want to use, simply the command "perlbrew install perl-Xx.Yy.Zz


# make sure we make good code with the following 'pragmas':
use strict;
use warnings;
use diagnostics;

# define some functions
use feature 'say';

# define switch function
use feature "switch";

# force feature
# use v5.30;

print "Hello World\n";

# Scalars, Arrays, Hashes (the 3 main data types)

# Scalars : an individual piece of data
# The variable can start with any letter or underscore before a number is used

my $name = 'Chloe';

my ($age, $street) = (90,'123 Main St');

my $my_info = "$name lives on \"$street\"\n";
# There is a way to add the double quotes without escaping them!
#my_info is already defined, no need to use 'my'
$my_info = qq{$name lives on "$street"\n};

print $my_info;

# Can define very long strings over multiple lines!
# First, define the word that will indicate the end of the entry
my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

say $bunch_of_info;

# Biggest integer to store in Perl
my $big_int = 18446744073709551615;

# printf!
# %c : Character
# %s : String
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)
printf("%u \n", $big_int + 1);
# Wont go up, already at max number


# Floats can handle 16 digits of precision, can denote precision in formatting
my $big_float = .1000000000000001;
printf("%.16f \n", $big_float + .1000000000000001);

# Can switch scalar values in Perl

my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say "$first $second";

# Math functions

# Basic (** is 'to the power of')
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 **4 = ", 5 ** 4;

# More complex
say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "LOG 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Can do increments, etc
my $rand_num = 5;
$rand_num += 1;
$rand_num *= 1;

# If operation after the digit, will print before operation
# If operation before the digit, will print after the operation
say "6++ = ", $rand_num++;
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;

# Parenteses also work.
say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;



# Logic

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

# Looping

for(my $i = 0; $i < 10; $i++) {
  say $i;
}

my $i = 1;

# 'next' is like continue, 'last' is like break
while($i < 10){
  if($i % 2 == 0) {
    $i++;

    next;
  }

  if($i == 7){last;}
  say $i;
  $i++;
}

my $lucky_num = 7;

my $guess;

do {
  say "Guess a Number Between 1 and 10";

  # Get input from user
  $guess = <STDIN>;
} while $guess != $lucky_num;

say "You guessed 7!";

my $age_old = 18;

given($age_old) {
  when($_ > 16) {
    say "Drive";
    # continue lets the execution look at the next when condition
    continue;
  }
  when($_ > 17){say "Go Vote";}
  default {say "Nothing Special";}
}

# Strings


