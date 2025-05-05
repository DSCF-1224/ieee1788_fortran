submodule (ieee1788_fortran) ieee1788_fortran_set_entire

    use, non_intrinsic :: ieee_class_fortran, only: set_ieee_negative_inf
    use, non_intrinsic :: ieee_class_fortran, only: set_ieee_positive_inf


    implicit none


    contains


    module procedure bare_infsup_real32_set_entire

        call set_ieee_negative_inf(x%lower_bound)
        call set_ieee_positive_inf(x%upper_bound)

    end procedure bare_infsup_real32_set_entire


    module procedure bare_infsup_real64_set_entire

        call set_ieee_negative_inf(x%lower_bound)
        call set_ieee_positive_inf(x%upper_bound)

    end procedure bare_infsup_real64_set_entire


    module procedure bare_infsup_real128_set_entire

        call set_ieee_negative_inf(x%lower_bound)
        call set_ieee_positive_inf(x%upper_bound)

    end procedure bare_infsup_real128_set_entire

end submodule ieee1788_fortran_set_entire
