module ieee1788_fortran

    use, non_intrinsic :: stdlib_kinds, only: sp
    use, non_intrinsic :: stdlib_kinds, only: dp
    use, non_intrinsic :: stdlib_kinds, only: qp

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
