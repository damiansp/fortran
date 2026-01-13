program code_org
  implicit none
  real :: x, y, res

  x = 3.0
  y = 4.0
  res = my_sum(x, y)
  print *, 'Subroutine sum result:', res
  call my_prod(x, y, res)
  print *, 'Function prod result:', res

contains

  real function my_sum(a, b)
    real, intent(in) :: a, b  ! intent(in): read-only input

    my_sum = a + b
  end function my_sum

  subroutine my_prod(a, b, c)
    real, intent(in) :: a, b
    real, intent(out) :: c  ! intent(out) for write-only output

    c = a * b
  end subroutine my_prod
end program code_org
