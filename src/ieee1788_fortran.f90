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

    public :: is_ieee_negative_inf
    public :: is_ieee_negative_zero
    public :: is_ieee_positive_inf
    public :: is_ieee_positive_zero

end module ieee1788_fortran
