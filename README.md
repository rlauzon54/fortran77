# fortran77
Microsoft FORTRAN programs

Some programs that I wrote and played with for Microsoft FORTRAN 3.2 under MS-DOS.

FORTPREP.BAT - This is a script that sets up 2 environment variables that the build batch files use.  Change for your system.

BAD - Programs that attempt to break FORTRAN

    - BAD1.FOR - Attempt to assign a different value to a constant using SUBROUTINE parameter pass by value
	
	- BAD1.BAT - Compile/link

ELMOP10 - Library to access MS-DOS functions

	- ELMOP.LIB - The library

    - TESTL.FOR - A small program to demonostrate/test some of the functions in the ELMOP library.
	
	- TESTL.BAT - Compile/link
	
	- TIMESTAM.FOR - Subroutine to generate a timestamp
	
	- TIMESTAM.BAT - Compile
	
	- TESTTS.FOR - Tests TIMESTAM.FOR
	
	- TESTTS.BAT - Compile/link

I did not write ELMOP.  But I did write the the other .FOR programs.

GUESS

    - GUESS.FOR - Guess the number game.  Uses RANDOM and ELMOP.
	
	- GUESS.BAT - Compile/link

PI

    - PI.FOR - Generates PI - uses ELMOP.
	
	- PI.BAT - Compile/link

PRIME

    - PRIME.FOR - Generates prime numbers
	
	- PRIME.BAT - Compile/link

RANDOM - Pseudo-Random number generator

	- GENSEED.FOR - Test program for RANSEED
	
	- GENSEED.BAT - Compile/link
	
	- RANDOM.FOR - Random number generator
	
	- RANDOM.BAT - Compile
	
	- RANDOM.DOC - Original documentation
	
	- RANDOM.INC - Include (COMMON) for all routines that need to access the random number generator.
	
	- RANDSEED.FOR - Uses the date/time functions of ELMOP to generate seed values for the random number generator.
	
	- RANDSEED.BAT - Compile
	
	- RANDTEST.FOR - Tests the random number generator.
	
	- RANDTEST.BAT - Compile/link
	
I did not write most of RANDOM.FOR.  The RANDOM.DOC is the original documentation.
I only added the RANDINT function to generate a random integer between min/max values.
I did write the rest of the programs/functions.

SEQFIL - Sequential file example

    - RW.FOR - Example program
	
	- COLNK.BAT - Compile/link
	
TAX - Tax calculator from a FORTRAN77 textbook

    - TAX1.FOR - Original example
	
	- TAX2.FOR - Normalized version of TAX1
	
	- TAX3.FOR - Uses arrays to hold all the information
	
	- TAX4.FOR - Uses a sequential file for the tax information
	
	- TAX4.DAT - Data for TAX4
	
	- COLNK?.BAT - Compile/link for all versions
	
XMAS - How many days until Christmas

    - XMAS.FOR - the program
	
	- XMAS.BAT - Compile/link

