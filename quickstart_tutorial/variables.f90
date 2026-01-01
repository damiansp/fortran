program variables
  ! tells compiler all vars explicity declared (else uses first char of vars to
  ! determine
  implicit none  

  integer :: amount
  real :: pi, e, x, y
  complex :: freq
  character :: initial
  logical :: isOkay

  amount = 10
  pi = 3.1415927
  freq = (1.0, -0.5)  ! 1 - 0.5i
  initial = 'A'
  isOkay = .false.

  print *, 'The value of <amount> (integer) is: ', amount
  print *, 'The value of <pi> (real) is: ', pi
  print *, 'The value of <freq> (complex) is: ', freq
  print *, 'The value of <initial> (character) is: ', initial
  print *, 'The value of <isOkay> (logical) is: ', isOkay

  print *, 'Please enter two real numbers: '
  read(*, *) x, y
  print *, 'The sum and product are: ', x + y, x * y
end program variables
