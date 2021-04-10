# This is the Perl Tut looping file.  Notes will be in comments.
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


############# Looping

say "\nLooping tutorial! :)";
# Loop types
# 'for' loop (like Java, etc)
# 'while' loop (like Java, etc)
# 'foreach' loop (like Java, etc)
# 'do {} while' loop
# 'given () { when(){} default {} }' 

say "\nFor loop classic";

for(my $i = 0; $i < 10; $i++) {
  say $i;
}


say "\nWhile loop classic";

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


say "\nDo, While loop tutorial (featuring STDIN!)";
my $lucky_num = 7;

my $guess;

do {
  say "Guess a Number Between 1 and 10";

  # Get input from user
  $guess = <STDIN>;
} while $guess != $lucky_num;

say "You guessed 7!";


say "\nGiven, when loop tutorial";

my $age_old = 18;

# The given, when loop relies on "given" and "when" which are both experimental.
given($age_old) {
  when($_ > 16) {
    say "Drive";
    # continue lets the execution look at the next when condition
    continue;
  }
  when($_ > 17){say "Go Vote";}
  default {say "Nothing Special";}
}
