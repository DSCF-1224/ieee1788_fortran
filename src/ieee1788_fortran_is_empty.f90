submodule (ieee1788_fortran) ieee1788_fortran_is_empty

    use, intrinsic :: ieee_arithmetic, only: ieee_unordered


    implicit none


    contains


    module procedure bare_infsup_real32_is_empty

        result = ieee_unordered(x%inf, x%sup)

        if (result) then
            result = .false.
        else
            result = x%inf .gt. x%sup
        end if

    end procedure bare_infsup_real32_is_empty


    module procedure bare_infsup_real64_is_empty

        result = ieee_unordered(x%inf, x%sup)

        if (result) then
            result = .false.
        else
            result = x%inf .gt. x%sup
        end if

    end procedure bare_infsup_real64_is_empty


    module procedure bare_infsup_real128_is_empty

        result = ieee_unordered(x%inf, x%sup)

        if (result) then
            result = .false.
        else
            result = x%inf .gt. x%sup
        end if

    end procedure bare_infsup_real128_is_empty

end submodule ieee1788_fortran_is_empty
