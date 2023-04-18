      character*(9) hms
      character*(9) mdy
      integer*2 hr,min,sec,hund
      integer*2 month, day, year, dow

      character*(12) files(10)
      character*(6) mask
      integer*2 nfiles, mxfiles

      character*(9) filnam

      character*(9) missing
      logical*2 lexist

      integer*2 irw, ihid, isys, iarch, ier

      integer*2 irow, icol

      data mask/'*.for|'/
      data mxfiles/10/
      data filnam/'demo.for|'/
      data missing/'dem1.xxx|'/

      call ctime(hms)
      call cdate(mdy)
      write(*,100) hms,mdy
100   format(1x,'Date and time as strings=',a,a)

      call itime(hr,min,sec,hund)
      write(*,101) hr, min, sec, hund
101   format(1x,'hr:min:sec.hund=',i2,':',i2,':',i2,'.',i03)

      call idate(month, day, year, dow)
      write(*,102) month, day, year, dow
102   format(1x,i2,'/',i2,'/',i4,' dow=',i2)

      call sddir(mask, mxfiles, files, nfiles)
      write(*,103) nfiles
103   format(1x,'Files Found=',i2)
      do 10 i=1,nfiles
         write(*,'(1x,a)') files(i)
10    continue

      call fildnt(filnam, month, day, year, hr, min, sec)
      write(*,'(1x,''File '',a)') filnam
      write(*,102) month, day, year, 0
      write(*,101) hr, min, sec, 0

104   format(1x,'File ',a,' ',a)
      if (lexist(filnam)) then
          write(*,104) filnam,'exists'
      else
          write(*,104) filname,'does not exist'
      endif

      if (lexist(missing)) then
          write(*,104) missing,'exists'
      else
          write(*,104) missing,'does not exist'
      endif

      call gatrib(filnam, irw, ihid, isys, iarch, ier)
105   format(1x,'file ',a,' Attribs:',i2,i2,i2,i2,i2)
      write(*,105) filenam, irw, ihid, isys, iarch, ier

      irow=5
      icol=20
      call poscur(irow,icol)
      write(*,*) 'At 5,10'
      end 
