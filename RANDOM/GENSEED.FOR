c Example of generating a random number seed using ELMOP's date/time
c functions
c
c Then seeding the random number generator and generating a bunch of
c random ints
c
      integer ij, kl
      integer randint

      call randseed(ij,kl)

      write(*,101) ij, kl
101   format(1x,'ij=',i5,' kl=',i5)

      write(*,*) 'Initializing random numbers'
      call rmarin(ij,kl)

      do 10 i=1,10
          inum=randint(1,10)
          write(*,102) inum
10    continue
102   format(1x,'random int=',i2)

      end
