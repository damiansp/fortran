program string
  implicit none

  character(len=4) :: name
  character(len=5) :: surname
  character(len=10) :: full_name

  name = 'John'
  surname = 'Smith'

  ! String concat
  full_name = name//' '//surname
  print *, full_name
end program string
