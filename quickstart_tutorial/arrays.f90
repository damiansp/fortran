program arrays
  implicit none

  ! 1D int array
  integer, dimension(10) :: a1
  ! alternately
  integer :: a2(20)
  ! 2D array
  real, dimension(10, 10) :: a3
  ! custom lower and upper index bounds
  real :: a4(0:9)
  real :: a5(-5:5)
end program arrays
