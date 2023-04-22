      program tax3
      real income, tax
      integer brak
      real brakst, braken, plus, taxpct

      write(*,'(1x,A,\)') ' Enter your income:'
      read(*,*) income
      write(*,'(A,f15.2)') ' Input data  Income:',income

C Open the tax braket file
      open(3,file='tax4.dat',status='old')
10    read(3,101,end=20) brakst, braken, plus, taxpct
101   format(f8.1,f8.1,f7.1,f5.2)
      if (income .gt. brakst .and.
     *    income .le. braken) then
         tax = plus + taxpct * (income - brakst)

         write(*,'(1x,A,F8.2,A,F7.2)') 'The tax on $',income,
     1           ' is $',tax
         write(*,'(1x,A,I2,A)') 'This income is in the ',
     1           ifix(taxpct*100),
     1           '% tax bracket.'
         goto 30
      endif
      goto 10
20    write(*,*) ' Taxable income too high for this program'
30    close(3)

      continue
      end
