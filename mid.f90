!mid-point rule for numerical integration
implicit none

real :: a = 0.0
real :: b = 4.0
real :: sum = 0.0
integer, parameter :: n = 100
integer :: i
real :: h
real, allocatable, dimension(:) :: x, y, z

real :: t

t = b - a

h = t / real(n)

allocate(x(n+1))
allocate(y(n+1))
allocate(z(n+1))

x(1) = a

do i = 2, n + 1
    x(i) = x(i-1) + h
    z(i) = (x(i) + x(i-1)) / 2
    y(i-1) = z(i)**3
    
    print*, "Midpoint:", z(i), "Function Value:", y(i-1), "Width:", h
    
    sum = sum + y(i-1) * h
end do

deallocate(x)
deallocate(y)
deallocate(z)

print *, "Result:", sum

end

