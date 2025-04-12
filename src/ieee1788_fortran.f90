module ieee1788_fortran
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, ieee1788_fortran!"
  end subroutine say_hello
end module ieee1788_fortran
