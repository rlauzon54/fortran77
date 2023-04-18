C This random number generator originally appeared in "Toward a Universal 
C Random Number Generator" by George Marsaglia and Arif Zaman. 
C Florida State University Report: FSU-SCRI-87-50 (1987)
C 
C It was later modified by F. James and published in "A Review of Pseudo-
C random Number Generators" 
C 
C THIS IS THE BEST KNOWN RANDOM NUMBER GENERATOR AVAILABLE.
C       (However, a newly discovered technique can yield 
C         a period of 10^600. But that is still in the development stage.)
C
C It passes ALL of the tests for random number generators and has a period 
C   of 2^144, is completely portable (gives bit identical results on all 
C   machines with at least 24-bit mantissas in the floating point 
C   representation). 
C 
C The algorithm is a combination of a Fibonacci sequence (with lags of 97
C   and 33, and operation "subtraction plus one, modulo one") and an 
C   "arithmetic sequence" (using subtraction).
C
C On a Vax 11/780, this random number generator can produce a number in 
C    13 microseconds. 
C======================================================================== 

      PROGRAM TstRAN
      REAL temp
      INTEGER IJ, KL, len
      INTEGER randint
$include:'RANDOM.INC'

C These are the seeds needed to produce the test case results
      IJ = 1802
      KL = 9373

C Do the initialization
      write(*,'('' Initializing random number geneator'')')
      call rmarin(ij,kl)
      write(*,'('' Initialization complete'')')

C Generate 20000 random numbers
      write(*,'('' Generating 20,000 random numbers'')')
      write(*,'('' '')')
      do 10 i = 1, 200
         do 5 j = 1,100
            temp = random()
            write(*,90) i,j,temp
5        continue
10    continue

90    format(1H+,i3,i3,f12.10)

C If the random number generator is working properly, the next six random
C numbers should be:
C           6533892.0  14220222.0  7275067.0
C           6172232.0  8354498.0   10633180.0
      temp = random()
      write(*,20) 4096.0*4096.0*temp, 6533892.0
      temp = random()
      write(*,20) 4096.0*4096.0*temp, 14220222.0
      temp = random()
      write(*,20) 4096.0*4096.0*temp, 7275067.0
      temp = random()
      write(*,20) 4096.0*4096.0*temp, 6172232.0
      temp = random()
      write(*,20) 4096.0*4096.0*temp, 8354498.0
      temp = random()
      write(*,20) 4096.0*4096.0*temp, 10622180.0

20    format (1x,'Actual=',f12.1,' Expected=',f12.1)

C Test randint
      write(*,'(''0Generating rand ints'')')
      do 50 i =1,100
         irand = randint(1,10)
         if (irand .ge. 1 .and. irand .le. 10) goto 50
         write(*,98) irand
50    continue
      write(*,'('' Successfully generated 100 random ints 1-10'')')

      do 60 i =1,100
         irand = randint(5,25)
         if (irand .ge. 5 .and. irand .le. 25) goto 60
         write(*,98) irand
60    continue
      write(*,'('' Successfully generated 100 random ints 5-25'')')

98    format(1x,'Error:',i3)
      end
