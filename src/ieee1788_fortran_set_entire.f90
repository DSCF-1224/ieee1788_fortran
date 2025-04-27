submodule (ieee1788_fortran) ieee1788_fortran_set_entire

    use, intrinsic :: ieee_arithmetic, only: ieee_negative_inf
    use, intrinsic :: ieee_arithmetic, only: ieee_positive_inf
    use, intrinsic :: ieee_arithmetic, only: ieee_value

    implicit none


    contains


    module procedure bare_infsup_real32_set_entire

        x%inf = ieee_value( x = x%inf, class = ieee_negative_inf )
        x%sup = ieee_value( x = x%sup, class = ieee_positive_inf )

    end procedure bare_infsup_real32_set_entire


    module procedure bare_infsup_real64_set_entire

        x%inf = ieee_value( x = x%inf, class = ieee_negative_inf )
        x%sup = ieee_value( x = x%sup, class = ieee_positive_inf )

    end procedure bare_infsup_real64_set_entire


    module procedure bare_infsup_real128_set_entire

        x%inf = ieee_value( x = x%inf, class = ieee_negative_inf )
        x%sup = ieee_value( x = x%sup, class = ieee_positive_inf )

    end procedure bare_infsup_real128_set_entire

end submodule ieee1788_fortran_set_entire
