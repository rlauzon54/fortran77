      program tax2
      real income, tax
      integer bracket

      write(*,'(1x,A,\)') ' Enter your income:'
      read(*,*) income

      write(*,'(A,f15.2)') ' Input data  Income:',income

C Find appropriate bracket and compute tax
      if (income .eq. 0.0) then
         tax = 0.0 + 0.0 * (income-0.0)
         bracket = 0
      else if (income .gt. 0.0 .and. income .le. 500.0) then
         tax = 0.0 + 0.14 * (income-0.0)
         bracket = 14
      else if (income .gt. 500.0 .and. income .le. 1000.0) then
         tax = 70 + 0.15 * (income-500.0)
         bracket = 15
      else if (income .gt. 1000.0 .and. income .le. 1500.0) then
         tax = 145 + 0.16 * (income-1000.0)
         bracket = 16
      else if (income .gt. 1500.0 .and. income .le. 2000.0) then
         tax = 225 + 0.17 * (income-1500.0)
         bracket = 17
      else if (income .gt. 2000.0 .and. income .le. 4000.0) then
         tax = 310 + 0.19 * (income-2000.0)
         bracket = 19
      else if (income .gt. 4000.0 .and. income .le. 6000.0) then
         tax = 690 + 0.21 * (income-4000.0)
         bracket = 21
      else if (income .gt. 6000.0 .and. income .le. 8000.0) then
         tax = 1110 + 0.24 * (income-6000.0)
         bracket = 24
      else if (income .gt. 8000.0 .and. income .lt. 10000.0) then
         tax = 1590 + 0.25 * (income-8000.0)
         bracket = 25
      else
         write(*,*) ' Taxable income too high for this program'
         goto 999
      endif

      write(*,'(1x,A,F8.2,A,F7.2)') 'The tax on $',income,' is $',tax
      write(*,'(1x,A,I2,A)') 'This income is in the ',bracket,
     1'% tax bracket.'

999   continue
      end
