! Trapezoidal rule for numerical integration

program trap
    implicit none

    real :: a = 0
    real :: b = 4
    real :: inc
    real :: sum = 0

    integer :: i
    integer :: n = 10

    real, dimension(10) :: x, y

    x(1) = a
    y(1) = a**2

    inc = (b - a) / real(n - 1)

    sum = inc * y(1) / 2

    do i = 2, n
        x(i) = x(i - 1) + inc
        y(i) = x(i)**2
        
        if(i/=n)then
        
            sum = sum + y(i) * inc
            
        else
        
            sum = sum + (y(i) * inc /2)
            
        endif    
            
    end do

    print *, "Result of integration:", sum

end program trap

