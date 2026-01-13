program use_mod
  use simple_module
  implicit none

  real :: mat(10, 10)

  mat(:, :) = public_var
  call print_matrix(mat)
end program use_mod
