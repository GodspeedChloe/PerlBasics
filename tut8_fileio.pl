# This is the Perl Tut I/O file.  Notes will be in comments.
# This tutorial uses the tutorial here: https://www.youtube.com/watch?v=WEghIXs8F6c

# Important to note is that to use Perl it is best to use Perl Brew to manage versions of Perl so that OS Perl versions and files are not edited, causing massive OS failure.
# This is accomplished by using the command:
# "curl -kL http://xrl.us/perlbrewinstall | bash"
# Then edit your bash profile file and add this line:
# "source ~/perl5/perlbrew/etc/bashrc"
# To install a version you want to use, simply the command:
# "perlbrew install perl-Xx.Yy.Zz


# Make sure we make good code with the following 'pragmas':
use warnings;
use diagnostics;

# Define some functions
use feature 'say';

# Define switch function
use feature "switch";

use Tie::File;

# Force feature
# use v5.30;

my $emp_file = 'employees.txt';
my %employees;

# There are different modes for opening the file. 
# '<' is read only
# '>>' is appending data
# '+<' read and write

# Insantiate a "file handler" for a file
# Die will end the program when we encounter an error, and $_ will access the error message
print "File initial state: \n";
open my $fh, '<', $emp_file
  or die "Can't Open File : $_";
while(my $info = <$fh>) {
    chomp($info);
    my ($emp_name, $job, $id) = split /:/, $info;
    $employees{$id} = $emp_name;
    print "$emp_name is a $job and has the ID $id \n";
}
close $fh or die "Couldn't close file : $_";

# Appending example
open $fh, '>>', $emp_file
  or die "Can't Open File : $_";
print $fh "Mark:Engineer:5\n" if !exists $employees{"5"};
close $fh or die "Couldn't close file : $_";

# R+W example with seek
# seek goes to a position in the file
open $fh, '+<', $emp_file
  or die "Can't Open File : $_";
seek $fh, 0, 0;
print $fh "John:Engineer:6\n" if !exists $employees{"6"};
close $fh or die "Couldn't close file : $_";

# Let's see our results
print "File final state: \n";
open $fh, '<', $emp_file
  or die "Can't Open File : $_";
while(my $info = <$fh>) {
    chomp($info);
    my ($emp_name, $job, $id) = split /:/, $info;
    print "$emp_name is a $job and has the ID $id \n";
}
close $fh or die "Couldn't close file : $_";

# Lets reset the file for handling
my $bunch_of_info = <<"END";
Sally:Janitor:1
Sue:Secretary:2
Ron:Teacher:3
Julie:Principal:4
END
my @lines;

# Use Tie::File module to delete last line easy
open $fh, '+<', $emp_file
  or die "Can't Open file : $_";
tie @lines, Tie::File, $fh
  or die "Can't update $fh: $!";
delete $lines[-1];
seek $fh, 0, 0;
print $fh $bunch_of_info;
close $fh or die "Couldn't close file : $_";
