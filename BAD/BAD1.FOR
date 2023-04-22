c Check to see if the systems allows us to change a
c constant value
      integer a

c Initial check - what's the value of 5
      a=5+1
      write(*,100) a

c FORTRAN is pass by value.  So this should be a reference to the
c constant "5"
      call subp(5)

c Now, in some compilers, "5" is now 6.
c In MS-FORTRAN it seems that they fixed this problem.
c The output here should be the same as the initial check.
      a=5+1
      write(*,100) a

100   format(1x,'The result of 5+1 is',i2)
      end

      subroutine subp(a)
      integer a

c We display the value of the input variable - which should be the constant
c "5", then we set it to 6 and display it as a check
      write(*,100) a
      a=6
      write(*,100) a

100   format(1x,'Value of a=',i2)
      end
