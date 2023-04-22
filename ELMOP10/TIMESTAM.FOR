c function to return the current time stamp down to
c hundredths of a sec
      double precision function timestamp()
      character*(9) hms
      character*(9) mdy
      integer*2 hr,min,sec,hund
      integer*2 month, day, year, dow
      double precision temp

c     Get the current date
      call idate(month, day, year, dow)

c     Convert date to number of days (approx)
      temp = real(year)*365+real(month)*30+real(day)

c     Get the current time
      call itime(hr,min,sec,hund)

c     Convert temp to hours and add hours
      temp = temp*24+real(hr)
c     Convert temp to minutes and add minutes
      temp = temp*60+real(min)
c     Convert temp to seconds and add seconds and hundreths of seconds
      temp = temp*60+real(sec)+real(hund)/100

c     Return the result
      timestamp = temp
      end 
