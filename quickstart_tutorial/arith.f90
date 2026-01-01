program arithmetic
  implicit none

  real :: pi, r, h, A, V

  pi = 3.1415927

  print *, 'Enter cylinder radius: '
  read(*, *) r
  print *, 'Enter cylinder height: '
  read(*, *) h

  A = pi * r**2
  V = A * h

  print *, 'r: ', r
  print *, 'h: ', h
  print *, 'base area: ', A
  print *, 'volume: ', V
end program arithmetic
