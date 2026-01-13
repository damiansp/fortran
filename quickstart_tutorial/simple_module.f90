module simple_module
  implicit none

  private  ! All entities are now module-private by default
  public public_var, print_matrix  ! explicitly export public enitities

  real, parameter :: public_var = 2
  integer :: private_var

contains

  ! Print matrix <A> to stdout
  subroutine print_matrix(A)
    real, intent(in) :: A(:, :)  ! An assumed-shape dummy arg
    integer :: i

    do i = 1, size(A, 1)
       print *, A(i, :)
    end do
    
  end subroutine print_matrix
  
end module simple_module
