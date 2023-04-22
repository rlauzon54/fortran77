C Create a new file.
C Then read from it into another file.
C
      character*12 infile, outfile
      
      data infile/'input.dat'/, outfile/'output.dat'/

C Create test data
      open(3,file=infile,status='new')
      do 10 i=1,10
         write(3,900) i,i*10,i*100
10    continue
      close(3)

C Copy the test data from the input to the output
      open(3,file=infile)
      open(4,file=outfile,status='new')
100   read(3,900,end=200) i,j,k
      write(4,900) j,i,k
      goto 100
200   write(*,*) ' Done!'
      close(4)
      close(3)

900   format(3i7)
      end
