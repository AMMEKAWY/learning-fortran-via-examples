!sample plotting program for plotting functions for using GNUPLOT later

program functioneveluator
IMPLICIT none

real::a=0
real::b=8.0*atan(1.0)

call ax(a, b)

endprogram

subroutine ax(a, b)
	
	implicit none
	real, intent(in)::a
	real, intent(in)::b
	
	integer::i
	integer::dim=1000
	real :: inc
	real, allocatable, dimension(:)::x
	real, allocatable, dimension(:)::y
	
	inc=(b-a)/float(dim)
	
	allocate(x(dim))
	allocate(y(dim))
	
	x(1)=a
	y(1)=sin(x(1))
	
	open(unit=100,file="data.dat")
	
	do i=1, dim
	
		x(i)=x(i-1)+inc
		y(i)=sin(x(i))
		
		write(100, *) x(i), y(i)
	
	enddo
	close(100)
	deallocate(x)
	deallocate(y)
	
	endsubroutine
