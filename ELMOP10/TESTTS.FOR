c test timestamp.for
      double precision timestamp
      double precision ts

      ts = timestamp()

104   format(1x,'Timestamp = ',f30.10)
      write(*,104) ts
      end
