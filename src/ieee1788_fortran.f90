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
    public :: is_empty
    public :: kind
    public :: set_empty


    type :: bare_infsup_real32_type
        real(real32), private :: inf, sup
    end type bare_infsup_real32_type

    type :: bare_infsup_real64_type
        real(real64), private :: inf, sup
    end type bare_infsup_real64_type

    type :: bare_infsup_real128_type
        real(real128), private :: inf, sup
    end type bare_infsup_real128_type


    !> Checks whether `x` is empty set
    interface is_empty

        module pure elemental function bare_infsup_real32_is_empty(x) result(result)

            type(bare_infsup_real32_type), intent(in) :: x

            logical :: result

        end function bare_infsup_real32_is_empty


        module pure elemental function bare_infsup_real64_is_empty(x) result(result)

            type(bare_infsup_real64_type), intent(in) :: x

            logical :: result

        end function bare_infsup_real64_is_empty


        module pure elemental function bare_infsup_real128_is_empty(x) result(result)

            type(bare_infsup_real128_type), intent(in) :: x

            logical :: result

        end function bare_infsup_real128_is_empty

    end interface is_empty


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


    !> version: experimental
    !> set the empty set to `x`
    interface set_empty

        module pure elemental subroutine bare_infsup_real32_set_empty(x)

            type(bare_infsup_real32_type), intent(inout) :: x

        end subroutine bare_infsup_real32_set_empty


        module pure elemental subroutine bare_infsup_real64_set_empty(x)

            type(bare_infsup_real64_type), intent(inout) :: x

        end subroutine bare_infsup_real64_set_empty


        module pure elemental subroutine bare_infsup_real128_set_empty(x)

            type(bare_infsup_real128_type), intent(inout) :: x

        end subroutine bare_infsup_real128_set_empty

    end interface set_empty

end module ieee1788_fortran
