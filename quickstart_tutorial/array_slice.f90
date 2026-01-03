program array_slice
  implicit none

  integer :: i
  integer :: a1(10)
  integer :: a2(10, 10)

  a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print *, 'Array at odd indices:'
  print *, a1(1:10:2)  ! every 2nd element between 1 and 10
  print *, 'Array in reverse:'
  print *, a1(10:1:-1)

  a1(:) = 0  ! set all elements to 0
  print *, 'Reset array to 0'
  print *, a1

  a1 = [(i, i = 1, 10)]  ! implied do loop constructor
  print *, 'Now back to 1 to 10:'
  print *, a1

  a1(6:) = 2  ! set elems 6:10 to 2
  print *, 'Set elements >5 to 2:'
  print *, a1

  print *, 'First column of 2D array:'
  print *, a2(:, 1)
end program array_slice
