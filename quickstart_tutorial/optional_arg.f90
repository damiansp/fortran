module norm_mod
  implicit none

contains

  ! the output value will be stored in a variable named <norm>
  function vector_norm(vec, power) result(norm)
    real, intent(in) :: vec(:)
    integer, intent(in), optional :: power
    real :: norm

    if (present(power)) then  ! compute Lp norm
       norm = sum(abs(vec) ** power) ** (1.0 / power)
    else  ! compute L2 norm
       norm = sqrt(sum(vec ** 2))
    end if
  end function vector_norm
  
end module norm_mod


program opt_arg
  use norm_mod
  implicit none

  real :: v(9)

  v(:) = 9
  print *, 'Vector norm: ', vector_norm(v), vector_norm(v, 2)
  print *, 'L1 norm: ', vector_norm(v, 1)
end program opt_arg
