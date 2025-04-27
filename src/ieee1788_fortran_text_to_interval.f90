submodule (ieee1788_fortran) ieee1788_fortran_text_to_interval

    character(len=1) :: lbracket = achar(91)

    character(len=1) :: rbracket = achar(93)


    contains


    pure elemental function index_lbracket(string)

        character(len=*), intent(in) :: string

        integer :: index_lbracket

        index_lbracket = index( string = string(:), substring = lbracket, back = .false. )

    end function index_lbracket


    pure elemental function index_right(string)

        character(len=*), intent(in) :: string

        integer :: index_right

        index_right = index( string = string(:), substring = lbracket, back = .false. )

    end function index_right



    !> `textToInterval` for `bare_infsup_real32_type`
    module procedure text_to_bare_infsup_real32

        ! TODO
        ! call set_empty(interval)

        associate( &!
        &   len_string   => len( string(:) )            , &!
        &   loc_lbracket => index_lbracket( string(:) )   &!
        )

            if ( loc_lbracket .lt. 0          ) return
            if ( loc_lbracket .eq. len_string ) return

        end associate

    end procedure text_to_bare_infsup_real32


    !> `textToInterval` for `bare_infsup_real64_type`
    module procedure text_to_bare_infsup_real64

        ! TODO
        ! call set_empty(interval)

        associate( &!
        &   len_string   => len( string(:) )            , &!
        &   loc_lbracket => index_lbracket( string(:) )   &!
        )

            if ( loc_lbracket .lt. 0          ) return
            if ( loc_lbracket .eq. len_string ) return

        end associate

    end procedure text_to_bare_infsup_real64


    !> `textToInterval` for `bare_infsup_real128_type`
    module procedure text_to_bare_infsup_real128

        ! TODO
        ! call set_empty(interval)

        associate( &!
        &   len_string   => len( string(:) )            , &!
        &   loc_lbracket => index_lbracket( string(:) )   &!
        )

            if ( loc_lbracket .lt. 0          ) return
            if ( loc_lbracket .eq. len_string ) return

        end associate

    end procedure text_to_bare_infsup_real128

end submodule ieee1788_fortran_text_to_interval
