program string_array
  implicit none
  ! each array can hold 2 values of 10 chars or fewer
  character(len=10), dimension(2) :: keys, vals

  keys = [character(len=10) :: 'user', 'dbname']
  vals = [character(len=10) :: 'ben', 'motivation']

  call show(keys, vals)

contains

  subroutine show(k, v)
    character(len=*), intent(in) :: k(:), v(:)
    integer :: i

    do i = 1, size(k)
       print *, trim(k(i)), ': ', trim(v(i))
    end do
  end subroutine show
  
end program string_array
