      program tax3
      real income, tax
      integer brak

      parameter(nbrackets=9)
      real brackets(nbrackets,2)
      real plus(nbrackets)
      real taxpct(nbrackets)
      real over(nbrackets)

      data brackets(1,1)/-0.1/ brackets(1,2)/0.0/
      data brackets(2,1)/0.0/ brackets(2,2)/500.0/
      data brackets(3,1)/500.0/ brackets(3,2)/1000.0/
      data brackets(4,1)/1000.0/ brackets(4,2)/1500.0/
      data brackets(5,1)/1500.0/ brackets(5,2)/2000.0/
      data brackets(6,1)/2000.0/ brackets(6,2)/4000.0/
      data brackets(7,1)/4000.0/ brackets(7,2)/6000.0/
      data brackets(8,1)/6000.0/ brackets(8,2)/8000.0/
      data brackets(9,1)/8000.0/ brackets(9,2)/10000.0/

      data plus(1)/0.0/
      data plus(2)/0.0/
      data plus(3)/70.0/
      data plus(4)/145.0/
      data plus(5)/225.0/
      data plus(6)/310.0/
      data plus(7)/690.0/
      data plus(8)/1110.0/
      data plus(9)/1590.0/

      data taxpct(1)/0.0/
      data taxpct(2)/0.14/
      data taxpct(3)/0.15/
      data taxpct(4)/0.16/
      data taxpct(5)/0.17/
      data taxpct(6)/0.19/
      data taxpct(7)/0.21/
      data taxpct(8)/0.24/
      data taxpct(9)/0.25/

      write(*,'(1x,A,\)') ' Enter your income:'
      read(*,*) income
      write(*,'(A,f15.2)') ' Input data  Income:',income

C Indicate we haven't found a bracket
      do 10 i=1,nbrackets
         if (income .gt. brackets(i,1) .and. 
     *       income .le. brackets(i,2)) then
            brak = i
         endif
10    continue

      if (brak .eq. 0) then
         write(*,*) ' Taxable income too high for this program'
      else
         tax = plus(brak) + taxpct(brak) * (income - bracket(brak,1))

         write(*,'(1x,A,F8.2,A,F7.2)') 'The tax on $',income,
     1           ' is $',tax
         write(*,'(1x,A,I2,A)') 'This income is in the ',
     1           ifix(taxpct(brak)*100),
     1           '% tax bracket.'
      endif

999   continue
      end
