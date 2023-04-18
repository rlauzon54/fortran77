c generate prime numbers
c
      do 20 i=3,500,2
         j = ifix(sqrt(float(i)))
         do 10 k=3,j,2
            if (mod(i,k) .eq. 0) goto 20
10       continue
         write(*,99) i
99       format(1x,i4)   
20    continue
      end