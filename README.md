# fortran77
Microsoft FORTRAN programs

Some programs that I wrote and played with for Microsoft FORTRAN 3.2 under MS-DOS.

ELMOP - Library to access MS-DOS functions
    - Build.doc - instructions on how to build the test program
	- ELMOP.LIB - The library
	- TESTL.FOR - A small program to demonostrate/test some of the functions in the ELMOP library.

    I did not write ELMOP.  But I did write the test program for it.
	
RANDOM - Pseudo-Random number generator
    - build.doc - Instructions on how to build the programs/libraries.
	- GENSEED.FOR - Test program for RANSEED
	- RANDOM.FOR - Random number generator
	- RANDOM.INC - Include (COMMON) for all routines that need to access the random number generator.
	- RANDSEED.FOR - Uses the date/time functions of ELMOP to generate seed values for the random number generator.
	- RANDTEST.FOR - Tests the random number generator.
	
	I did not write most of RANDOM.FOR.  The RANDOM.DOC is the original documentation.
	I only added the RANDINT function to generate a random integer between min/max values.
    I did write the rest of the programs/functions.

GUESS.FOR - Guess the number game.  Uses RANDOM and ELMOP.
PI.FOR - Generates PI - uses ELMOP.
PRIME.FOR - Generates prime numbers
