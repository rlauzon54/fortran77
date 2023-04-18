c Guess the number game
c Uses random.obj routines
c Uses elmop.lib routines
      program guess
$include:'random.inc'

c random number generator seeds
      integer ij, kl

      integer nans, mymax, nguess
      integer randint
      data mymax/200/

c Create random number seed
      call randseed(ij,kl)

      write(*,*) 'Initializing random generator'
      call rmarin(ij,kl)
      nans = randint(0,mymax)
      write(*,100) mymax
100   format(1x,'Guess the number [0-',I3,'], -1 to exit')
10    continue
         write(*,'(1x,''>'')')
         read(*,*) nguess
         if (nguess .eq. -1) then
            write(*,101) nans
101         format(1x,'Correct answer is ',I3,'.')
            goto 500
         endif
         if (nguess .eq. nans) then
            write(*,*) 'Correct'
            goto 500
         endif
         if (nguess .gt. nans) write(*,*) 'Go lower'
         if (nguess .lt. nans) write(*,*) 'Go higher'
      goto 10
500   continue
      end
