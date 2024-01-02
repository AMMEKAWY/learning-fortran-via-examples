program inputoutput
IMPLICIT none

character (len=20) :: x

print *, "enter ur name:"
read *, x

print*, "hi, ",trim(x),"!"

end program
