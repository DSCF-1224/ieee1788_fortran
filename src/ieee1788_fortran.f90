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


    type :: bare_infsup_real32_type
        real(real32), private :: inf, sup
    end type bare_infsup_real32_type

    type :: bare_infsup_real64_type
        real(real64), private :: inf, sup
    end type bare_infsup_real64_type

    type :: bare_infsup_real128_type
        real(real128), private :: inf, sup
    end type bare_infsup_real128_type

end module ieee1788_fortran
