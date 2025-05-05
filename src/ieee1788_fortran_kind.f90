submodule (ieee1788_fortran) ieee1788_fortran_kind

    implicit none


    contains


    module procedure bare_infsup_real32_kind

        result = kind(x%lower_bound)

    end procedure bare_infsup_real32_kind


    module procedure bare_infsup_real64_kind

        result = kind(x%lower_bound)

    end procedure bare_infsup_real64_kind


    module procedure bare_infsup_real128_kind

        result = kind(x%lower_bound)

    end procedure bare_infsup_real128_kind

end submodule ieee1788_fortran_kind
