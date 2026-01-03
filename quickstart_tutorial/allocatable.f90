program allocatable
  implicit none

  integer, allocatable :: a1(:)
  integer, allocatable :: a2(:, :)

  allocate(a1(10))
  allocate(a2(10, 10))

  ! do whatever...

  deallocate(a1)
  deallocate(a2)
end program allocatable
