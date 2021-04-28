# This is the Perl Tut Subroutines file.  Notes will be in comments.
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

# Defining works like so
sub get_random {
    return int(rand 11);
}

say "Random Number: ", get_random();

# Here's how we access arguments
sub get_random_max {
    # The @_ array is the arguments array
    my ($max_num) = @_;

    # This sets a default value for max_num if none supplied
    $max_num ||= 11;
    return int(rand $max_num);
}

say "Random Number: ", get_random_max(100);

sub get_sum {
    my ($num_1, $num_2) = @_;
    $num_1 ||= 1;
    $num_2 ||= 1;

    return $num_1 + $num_2;
}

sub sum_many {
    my $sum = 0;
    foreach my $val (@_){
	$sum += $val;
    }
    return $sum;
}

say "Sum : ", sum_many(1,2,3,4,5);

sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Exectuted $execute_total times";
}

increment();
increment();

sub double_array {
    my @num_array = @_;
    $_ *= 2 for @num_array;
    return @num_array;
}

my @rand_array = (1,2,3,4,5);

print join(", ", double_array(@rand_array)), "\n";

sub get_mults {
    my ($rand_num) = @_;
    $rand_num ||= 1;
    return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "Double: $dbl_num, Triple: $trip_num";


sub factorial {
    my ($num) = @_;
    return 0 if $num <= 0;
    return 1 if $num == 1;
    return $num * factorial($num-1);
}

say "Factorial 4 = ", factorial(4);
