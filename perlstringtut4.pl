# This is the Perl Tut file for strings.  Notes will be in comments.
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


############### Strings

# Built in functions
# 'length' gives digit of a strings length
# 'index' gives you leftmost index of a substring
# 'rindex' gives you rightmost index of a substring
# '.' concatenates two strings
# 'substr' gives you the substring starting at an index and of a specified length
# 'chop' removes last char and returns it
# 'chomp' removes newline char
# 'uc' makes a string uppercase
# 'lc' makes a string lowercase
# 'ucfirst' makes the first char uppercase
# 'lcfirst' makes the first char lowercase
# 's///' works like it does in vim for string operations (i.e. replace all instances)
# 'x' lets you repeat a string n times like $string x 3
# 'join' joins all the elements in an array with a specific string to go between them (like a comma)
# '++','--' can be used to "increment" letters


my $long_string = "Random Long String";

# length is obvious
say "Length of String ", length $long_string;

# index gives you leftmost index of a string
printf("Long is at %d \n", index $long_string, "Long");

# rindex gives you rightmost index of a string
printf("Last g is at %d \n", rindex $long_string, "g");

# . operator concatenates two strings
$long_string = $long_string . ' isn\'t that long';

# substr gives you the substring starting at an index and of a specified length
say "Index 7 through 10 ", substr $long_string, 7, 4;

# chop removes the last char and returns it
my $animal = "animals";
printf("Last character is %s\n", chop $animal);

# chomp deletes newline chars
my $no_newline = "No Newline\n";
chomp $no_newline;

# Uppercase and lowercase operators
printf("Uppercase : %s \n", uc $long_string);
printf("Lowercase : %s \n", lc $long_string);
printf("1st Uppercase : %s \n", ucfirst $long_string);
printf("1st Lowercase : %s \n", lcfirst $long_string);

# Replace all occurrences with this command (like in vim)
$long_string =~ s/ /, /g;
say $long_string;

# Repeat a string
my $two_times = "What I said is " x 2;
say $two_times;

# Can define an array of abcs with this
my @abcs = ('a' .. 'z');

# Will add a string between all elements
print join(", ", @abcs), "\n";

# Increment letters
my $letter = 'c';
say "Next Letter ", ++$letter;


