module ieee1788_fortran

    use, intrinsic :: iso_fortran_env, only: real32
    use, intrinsic :: iso_fortran_env, only: real64
    use, intrinsic :: iso_fortran_env, only: real128

    use, non_intrinsic :: ieee_class_fortran, only: is_ieee_negative_inf
    use, non_intrinsic :: ieee_class_fortran, only: is_ieee_negative_zero
    use, non_intrinsic :: ieee_class_fortran, only: is_ieee_positive_inf
    use, non_intrinsic :: ieee_class_fortran, only: is_ieee_positive_zero


    implicit none


    private

    public :: bare_infsup_real32_type
    public :: bare_infsup_real64_type
    public :: bare_infsup_real128_type
    public :: is_ieee_negative_inf
    public :: is_ieee_negative_zero
    public :: is_ieee_positive_inf
    public :: is_ieee_positive_zero
    public :: kind
    public :: set_empty
    public :: text_to_bare_infsup_real32
    public :: text_to_bare_infsup_real64
    public :: text_to_bare_infsup_real128


    type :: bare_infsup_real32_type
        real(real32), private :: inf, sup
    end type bare_infsup_real32_type

    type :: bare_infsup_real64_type
        real(real64), private :: inf, sup
    end type bare_infsup_real64_type

    type :: bare_infsup_real128_type
        real(real128), private :: inf, sup
    end type bare_infsup_real128_type


    interface

        module pure elemental subroutine text_to_bare_infsup_real32(string, interval)

            character(len=*), intent(in) :: string

            type(bare_infsup_real32_type), intent(out) :: interval

        end subroutine text_to_bare_infsup_real32


        module pure elemental subroutine text_to_bare_infsup_real64(string, interval)

            character(len=*), intent(in) :: string

            type(bare_infsup_real64_type), intent(out) :: interval

        end subroutine text_to_bare_infsup_real64


        module pure elemental subroutine text_to_bare_infsup_real128(string, interval)

            character(len=*), intent(in) :: string

            type(bare_infsup_real128_type), intent(out) :: interval

        end subroutine text_to_bare_infsup_real128

    end interface


    !> `kind(x)` returns the kind value of the entity `x`.
    interface kind

        module pure elemental function bare_infsup_real32_kind(x) result(result)

            type(bare_infsup_real32_type), intent(in) :: x

            integer :: result

        end function bare_infsup_real32_kind


        module pure elemental function bare_infsup_real64_kind(x) result(result)

            type(bare_infsup_real64_type), intent(in) :: x

            integer :: result

        end function bare_infsup_real64_kind


        module pure elemental function bare_infsup_real128_kind(x) result(result)

            type(bare_infsup_real128_type), intent(in) :: x

            integer :: result

        end function bare_infsup_real128_kind

    end interface kind


    interface set_empty

        module impure elemental subroutine bare_infsup_real32_set_empty(x)

            type(bare_infsup_real32_type), intent(inout) :: x

        end subroutine bare_infsup_real32_set_empty


        module impure elemental subroutine bare_infsup_real64_set_empty(x)

            type(bare_infsup_real64_type), intent(inout) :: x

        end subroutine bare_infsup_real64_set_empty


        module impure elemental subroutine bare_infsup_real128_set_empty(x)

            type(bare_infsup_real128_type), intent(inout) :: x

        end subroutine bare_infsup_real128_set_empty

    end interface set_empty

end module ieee1788_fortran
