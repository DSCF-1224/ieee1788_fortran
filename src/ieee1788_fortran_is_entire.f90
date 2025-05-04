submodule (ieee1788_fortran) ieee1788_fortran_is_entire

    implicit none


    contains


    module procedure bare_infsup_real32_is_entire

        result = is_ieee_negative_inf(x%inf) .and. is_ieee_positive_inf(x%sup)

    end procedure bare_infsup_real32_is_entire


    module procedure bare_infsup_real64_is_entire

        result = is_ieee_negative_inf(x%inf) .and. is_ieee_positive_inf(x%sup)

    end procedure bare_infsup_real64_is_entire


    module procedure bare_infsup_real128_is_entire

        result = is_ieee_negative_inf(x%inf) .and. is_ieee_positive_inf(x%sup)

    end procedure bare_infsup_real128_is_entire

end submodule ieee1788_fortran_is_entire
