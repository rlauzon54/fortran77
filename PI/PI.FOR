C Calculate Pi
      integer iter
      logical ev
      double precision pi, c1, c2
      character*(9) times, timee

      call ctime(times)

c     Starting value for Pi
      pi = 3.0

      c1=0.0
      c2=0.0
      iter = 0
      ev = .true.

50    if (iter .ge. 5000) goto 500
      iter = iter + 1
      c2=c2+2.0
      c1=4.0/(c2*(c2+1.0)*(c2+2.0))
      if (ev) then
         pi = pi + c1
      else
         pi = pi - c1
      endif
      ev=.not. ev

      write(*,100) iter, pi
100   format(1x,'Iter=',i4,' Pi=',f20.18)
      goto 50
500   call ctime(timee)
      write(*,101) times, timee
101   format(1x,'Start time=',a10,' End time=',a10)
      end
      
