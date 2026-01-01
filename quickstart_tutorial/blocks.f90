module my_module
  implicit none
  integer :: n = 2
end module my_module


program main
  implicit none
  real :: x

  block
    use my_module, only: n  ! can import modules w/in blocks
    real :: y  ! local scope
    y = 2.0
    x = y ** n
    print *, 'y = ', y
  end block
  
  ! print *, y  ! err: y out of scope
  print *, x
end program main
