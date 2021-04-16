# PerlBasics
basics for the Perl language


This is a small collection of code snippets and comments to illustrate the Perl programming language.
For the step by step construction of these you can view the source video here: https://www.youtube.com/watch?v=WEghIXs8F6c


The tutorials to read through and run are in increasing numerical order.  For your convenience here is the breakdown:


perlbasicstut1.pl :

    - how to define 'sigils' (variables)
    - how to print strings/things to stdout
    - how to create a very long, multiple line string easily
    - how to do quotes within quotes cleanly 
    - extents of integer and float precision
    - how to perform basic math functions
    - more advanced math functions that are built in
    - integer increment/decrement
    - swapping scalar values cleanly using (x,y) = (y,x)
    
    
perllogictut2.pl :

    - which values in Perl evaluate to false
    - what basic logic comparators are supported in Perl
    - if, elsif, and else blocks
    - what logic comparators for strings are supported in core Perl
    - the unless condition
    - ternary operator in Perl


perlloopingtut3.pl :

    - the for loop
    - the while loop
    - the foreach loop
    - the 'do, while' loop
    - the 'given, when' loop (experimental)
    
    
perlstringtut4.pl :

    - built in functions in Perl for basic string manipulation and processing
        * length
        * index of, last index of
        * concatenation
        * getting a substring
        * getting last char, removing trailing newline
        * uppercaseing, lowercaseing
        * the s/// operation (i.e.  s/ /, /g; )
        * repeat a string n times using 'x' (multiply string)
        * joining an array of strings with a specified string
        * increment/decrementing a letter

perlarraytut5.pl :

    - Basics of arrays
      * defining an array
      * multiple data types supported
      * adding values at an index/changing values at an index
    - Looping through arrays
      * for loop
      * foreach loop
    - Getting a slice given specific indices
    - Getting length of an array
    - Saving an array's values to sigils
    - Adding/removing operations
      * pop (remove last)
      * push (add last)
      * shift (remove first)
      * unshift (add first)
    - Splicing a section from an array given a start index and length
    - String-Array conversions
      * join creates a string from an array
      * split creates an array from a string
    - Misc. common functions
      * reverse
      * sort
    - Grepping
      * grep selects out values from an array which meet a criteria into a new array
    - Mapping
      * map does an operation unto every value in an array into a new array    

perlhashestut6.pl
    
    - Basics of hashes
      * defining a hash
      * accessing a value given a key
      * adding/deleting entries
    - Iterating through k,v pairs
    - Creating arrays from hashes
      * Specific "slices" from the hash
      * Whole hash to array
    - Existential checks in hashes
    - Cycling through a hash's key set
