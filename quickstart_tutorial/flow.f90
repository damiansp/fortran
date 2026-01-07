program flow
  real, parameter :: pi = 3.14159265
  integer, parameter :: n = 10
  integer :: i, j
  real :: angle
  real :: result_sin(n)
 
  angle = 87.6

  if (angle < 90.0) then
     print *, 'Angle is acute'
  else if (angle == 90.0) then
     print *, 'Angle is right'
  else
     print *, 'Angle is obtuse'
  end if

  do i = 1, 10
     print *, i
  end do

  do i = 1, 10, 2  ! 1, 3, 5, ..., 9
     print *, i
  end do

  i = 1
  do while (i < 11)
     print *, i
     i = i + 1
  end do
  ! i = 11 here

  do i = 1, 100
     if (i > 10) then
        exit  ! break
     end if
     print *, i
  end do

  do i = 1, 10
     if (mod(i, 2) == 0) then
        cycle  ! continue
     end if
     print *, i
  end do

  outer: do i = 1, 10
     inner: do j = 1, 10
        if ((j + 1) > 5) then
           cycle outer  ! go to next iter of the outer loop
        end if
        print *, 'i = ', i, ' j = ', j, ' Sum: ', i + j
     end do inner
  end do outer

  do concurrent (i = 1:n)  ! note syntax
     result_sin(i) = sin(i * pi/4.)
  end do
  print *, result_sin
  
end program flow
