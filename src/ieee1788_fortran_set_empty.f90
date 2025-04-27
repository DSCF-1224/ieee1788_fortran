submodule (ieee1788_fortran) ieee1788_fortran_set_empty

    use, intrinsic :: ieee_arithmetic, only: ieee_negative_inf
    use, intrinsic :: ieee_arithmetic, only: ieee_positive_inf
    use, intrinsic :: ieee_arithmetic, only: ieee_value

    implicit none


    contains


    module procedure bare_infsup_real32_set_empty

        x%inf = ieee_value( x = x%inf, class = ieee_positive_inf )
        x%sup = ieee_value( x = x%sup, class = ieee_negative_inf )

    end procedure bare_infsup_real32_set_empty


    module procedure bare_infsup_real64_set_empty

        x%inf = ieee_value( x = x%inf, class = ieee_positive_inf )
        x%sup = ieee_value( x = x%sup, class = ieee_negative_inf )

    end procedure bare_infsup_real64_set_empty


    module procedure bare_infsup_real128_set_empty

        x%inf = ieee_value( x = x%inf, class = ieee_positive_inf )
        x%sup = ieee_value( x = x%sup, class = ieee_negative_inf )

    end procedure bare_infsup_real128_set_empty

end submodule ieee1788_fortran_set_empty
