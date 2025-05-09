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
    public :: is_entire
    public :: kind
    public :: set_empty
    public :: set_entire


    type :: bare_infsup_real32_type
        real(real32), private :: lower_bound, upper_bound
    end type bare_infsup_real32_type

    type :: bare_infsup_real64_type
        real(real64), private :: lower_bound, upper_bound
    end type bare_infsup_real64_type

    type :: bare_infsup_real128_type
        real(real128), private :: lower_bound, upper_bound
    end type bare_infsup_real128_type


    !> version: experimental
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


    !> version: experimental
    !> Checks whether `x` is the whole line
    interface is_entire

        module pure elemental function bare_infsup_real32_is_entire(x) result(result)

            type(bare_infsup_real32_type), intent(in) :: x

            logical :: result

        end function bare_infsup_real32_is_entire


        module pure elemental function bare_infsup_real64_is_entire(x) result(result)

            type(bare_infsup_real64_type), intent(in) :: x

            logical :: result

        end function bare_infsup_real64_is_entire


        module pure elemental function bare_infsup_real128_is_entire(x) result(result)

            type(bare_infsup_real128_type), intent(in) :: x

            logical :: result

        end function bare_infsup_real128_is_entire

    end interface is_entire


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


    !> version: experimental
    !> set the whole line to `x`
    interface set_entire

        module pure elemental subroutine bare_infsup_real32_set_entire(x)

            type(bare_infsup_real32_type), intent(inout) :: x

        end subroutine bare_infsup_real32_set_entire


        module pure elemental subroutine bare_infsup_real64_set_entire(x)

            type(bare_infsup_real64_type), intent(inout) :: x

        end subroutine bare_infsup_real64_set_entire


        module pure elemental subroutine bare_infsup_real128_set_entire(x)

            type(bare_infsup_real128_type), intent(inout) :: x

        end subroutine bare_infsup_real128_set_entire

    end interface set_entire

end module ieee1788_fortran
