program diracdelta

IMPLICIT none

real :: x
real :: a

print *, "enter the value of the shift (a):"
read *, a

print *, "enter a number:"
read *, x


if (x<a) then

	print *, 0

else if (x > a) then

	print *, 0
	
else

	print *, 1
	
end if

end program
