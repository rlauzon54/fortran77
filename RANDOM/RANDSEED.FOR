      subroutine randseed(ij,kl)
$include:'random.inc'

c Holding area for values from ELMOP's date/time functions
      integer*2 hr, min, sec, hund
      integer*2 mon, day, year, dow
c Random seed
      integer ij, kl
      integer*4 tij, tkl

c Create random number seed
      call itime(hr, min, sec, hund)
      tij = hr+1000+min*100+sec*10+hund
      call idate(month, day, year, dow)
      tkl = mon*10000+day+1000+year
      ij = mod(tij,31328)
      kl = mod(tkl,30081)
      end
