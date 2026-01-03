program allocatable_string
  implicit none

  character(:), allocatable :: name
  character(:), allocatable :: surname

  allocate(character(4) :: name)  ! explicit alloc
  name = 'John'
  surname = 'Smith'               ! alloc on assignment
  print *, name//' '//surname
end program allocatable_string
