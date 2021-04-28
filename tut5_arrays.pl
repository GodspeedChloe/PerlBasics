# This is the Perl Tut array file.  Notes will be in comments.
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


############## Arrays

say "\nArrays tutorial! :)";
# Basics:
#   defining an array
#   multiple types supported
#   adding values at an index/changing values at an index
#
# Looping through arrays 
#   for loop
#   foreach loop
#
# Getting a slice through specific indices
#
# Get length of an array
# 
# Saving an array's values to sigils
#
# Adding/removing operations
#   pop removes last item of an array (returns this item)
#   push places an item on the end of an array (returns the new length of the array)
#   shift removes the first item of an array (returns this item)
#   unshift places an item at the front of an array (returns the new length of the array)
#
# Splicing arrays given start index and length of slice
#
# String <-> Array operations
#   join creates a string from an array
#   split creates an array from a string
# 
# Misc. common functions
#   reverse reverses an array
#   sort sorts an array
#
# Grepping
#   use grep to select out values from an array that meet a condition
#
# Mapping
#   use map to do an operation to each value in an array



my @primes = (2,3,5,7,11,13,17);

# Multiple data types supported
my @my_info = ("Chloe", "123 Main St", 40, 6.35);

# Appending
$my_info[4] = "Lastname";

# Cycle through an array

for my $info (@my_info) {
    say $info;
}

foreach my $num (@primes){
    say $num;
}

# Shortcutted value
# $_ is automatically used if no value is declared
for (@my_info){
    say $_;
}

# Can get slice of array this way
# Note: this is not a range, but the indices we will take from, and their order
my @my_name = @my_info[0, 4];
say @my_name;

# scalar used with an array gives its length
my $items = scalar @my_info;
say $items;

# save values to sigils like so
my ($f_name, $address, $age, $height, $l_name) = @my_info;
say "$f_name $l_name";

# pop last value off array
say "Popped Value ", pop @primes;

# push a value on end of array, returns length of array
say "Pushed Value ", push @primes, 17;

# shift pops first value of array
say "First Item ", shift @primes;

# add a value to the front
say "Unshifted Item ", unshift @primes, 2;

print join(", ", @primes), "\n";

# Splice out values
say "Remove Index 0 - 2", splice @primes, 0, 3;
print join(", ", @primes), "\n";

# join up from a list
print join " ", ('list', 'of', 'words', "\n");

# split up a string into an array
my $customers = "Sue Sally Paul";
my @customer_array = split / /, $customers;
print join(", ", @customer_array), "\n";

# reverse an array
@customer_array = reverse @customer_array;

# sort an array
@customer_array = sort @customer_array;
@customer_array = reverse sort @customer_array;

# grep!
my @number_array = (1,2,3,4,5,6,7,8);
my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

# map
my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @number_array), "\n";
