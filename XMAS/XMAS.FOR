C Calculate the number of days until Christmas
C
      integer*2 month, day, year, dow
      integer xdays
      integer mdays(12)

C Number of days in each month
      data mdays/31,28,31,30,31,30,31,31,30,31,30,31/

C Get today's date
      call idate(month, day, year, dow)
      write(*,102) month, day, year
102   format(1x,'Today is',i2,'/',i2,'/',i4)

C If we are in Jan. or Feb. we have to worry about leap years
      xdays = 0
      if (month .le. 2 .and. 
     *    mod(year,4) .eq. 0 .and. 
     *    mod(year,400) .ne. 0) then
            xdays = 1
         endif

C Exception - we are in Dec.
      if (month .eq. 12) then
C        Christmas Day
         if (day .eq. 25) then
             write(*,*) ' It''s Christmas today!'
             goto 9999
         endif

C        After Christmas (lazy way to handle this)
         if (day .gt. 25) then
             write(*,*) ' Still recovering from Christmas.'
             write(*,*) ' Ask me again next year.'
             goto 9999
         endif

C        So we must be before Christmas in Dec.
         xdays = 25 - day
         goto 20
      endif

C Days until the end of this month (handles Nov.)
      xdays = mdays(month) - day

C Count up the full months from month+1 through Nov.
      if (month .lt. 11) then
         do 10 i=month+1,11
            xdays = xdays + mdays(i)
10       continue
      endif

C Process December
      xdays = xdays + 25

C And we don't count today
      xdays = xdays - 1

20    write(*,100) xdays
100   format(1x,'There are ',i3,' days until Christmas')

9999  continue
      end 
