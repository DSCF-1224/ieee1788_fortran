submodule (ieee1788_fortran) ieee1788_fortran_text_to_interval

    character(len=1) :: left_square_bracket = achar(91)

    character(len=1) :: right_square_bracket = achar(93)


    contains


    !> `textToInterval` for `bare_infsup_real32_type`
    module procedure text_to_bare_infsup_real32
    end procedure text_to_bare_infsup_real32


    !> `textToInterval` for `bare_infsup_real64_type`
    module procedure text_to_bare_infsup_real64
    end procedure text_to_bare_infsup_real64


    !> `textToInterval` for `bare_infsup_real128_type`
    module procedure text_to_bare_infsup_real128
    end procedure text_to_bare_infsup_real128

end submodule ieee1788_fortran_text_to_interval
