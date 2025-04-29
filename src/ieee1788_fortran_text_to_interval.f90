submodule (ieee1788_fortran) ieee1788_fortran_text_to_interval

    implicit none


    character(len=1), parameter :: comma    = achar(44)

    character(len=1), parameter :: lbracket = achar(91)

    character(len=1), parameter :: rbracket = achar(93)

    character(len=5), parameter :: string_empty = 'empty'

    character(len=6), parameter :: string_entire = 'entire'


    interface text_to_bare_infsup_1
        module procedure :: text_to_bare_infsup_real32_1
        module procedure :: text_to_bare_infsup_real64_1
        module procedure :: text_to_bare_infsup_real128_1
    end interface text_to_bare_infsup_1


    contains


    pure elemental function index_comma(string)

        character(len=*), intent(in) :: string

        integer :: index_comma

        index_comma = index( string = string(:), substring = comma, back = .false. )

    end function index_comma


    pure elemental function index_empty(string)

        character(len=*), intent(in) :: string

        integer :: index_empty

        index_empty = index( string = string(:), substring = string_empty, back = .false. )

    end function index_empty


    pure elemental function index_entire(string)

        character(len=*), intent(in) :: string

        integer :: index_entire

        index_entire = index( string = string(:), substring = string_entire, back = .false. )

    end function index_entire


    pure elemental function index_lbracket(string)

        character(len=*), intent(in) :: string

        integer :: index_lbracket

        index_lbracket = index( string = string(:), substring = lbracket, back = .false. )

    end function index_lbracket


    pure elemental function index_rbracket(string)

        character(len=*), intent(in) :: string

        integer :: index_rbracket

        index_rbracket = index( string = string(:), substring = rbracket, back = .false. )

    end function index_rbracket




    pure elemental subroutine text_to_bare_infsup_real32_1(string, interval)

        character(len=*), intent(in) :: string

        type(bare_infsup_real32_type), intent(out) :: interval


        if ( 1 .lt. index_empty( string(:) ) ) then

            call set_empty(interval)

        else if ( 1 .lt. index_entire( string(:) ) ) then

            call set_entire(interval)

        else

            read( &!
            &   unit   = string(:) , &!
            &   fmt    = *         , &!
            &   round  = 'DOWN'      &!
            ) &!
            interval%inf

            read( &!
            &   unit   = string(:) , &!
            &   fmt    = *         , &!
            &   round  = 'UP'        &!
            ) &!
            interval%sup

        end if

    end subroutine text_to_bare_infsup_real32_1


    pure elemental subroutine text_to_bare_infsup_real64_1(string, interval)

        character(len=*), intent(in) :: string

        type(bare_infsup_real64_type), intent(out) :: interval


        if ( 1 .lt. index_empty( string(:) ) ) then

            call set_empty(interval)

        else if ( 1 .lt. index_entire( string(:) ) ) then

            call set_entire(interval)

        else

            read( &!
            &   unit   = string(:) , &!
            &   fmt    = *         , &!
            &   round  = 'DOWN'      &!
            ) &!
            interval%inf

            read( &!
            &   unit   = string(:) , &!
            &   fmt    = *         , &!
            &   round  = 'UP'        &!
            ) &!
            interval%sup

        end if

    end subroutine text_to_bare_infsup_real64_1


    pure elemental subroutine text_to_bare_infsup_real128_1(string, interval)

        character(len=*), intent(in) :: string

        type(bare_infsup_real128_type), intent(out) :: interval


        if ( 1 .lt. index_empty( string(:) ) ) then

            call set_empty(interval)

        else if ( 1 .lt. index_entire( string(:) ) ) then

            call set_entire(interval)

        else

            read( &!
            &   unit   = string(:) , &!
            &   fmt    = *         , &!
            &   round  = 'DOWN'      &!
            ) &!
            interval%inf

            read( &!
            &   unit   = string(:) , &!
            &   fmt    = *         , &!
            &   round  = 'UP'        &!
            ) &!
            interval%sup

        end if

    end subroutine text_to_bare_infsup_real128_1




    !> `textToInterval` for `bare_infsup_real32_type`
    module procedure text_to_bare_infsup_real32

        call set_empty(interval)

        associate( &!
        &   len_string   => len( string(:) )            , &!
        &   loc_lbracket => index_lbracket( string(:) )   &!
        )

            if ( loc_lbracket .lt. 1            ) return
            if ( len_string   .le. loc_lbracket ) return

            associate( loc_rbracket => index_rbracket( string(:) ) )

                if ( loc_rbracket .lt. 1 ) return

                associate( &!
                &   loc_lbracket_p1 => loc_lbracket + 1 , &!
                &   loc_rbracket_m1 => loc_rbracket - 1   &!
                )

                    if ( loc_rbracket_m1 .lt. loc_lbracket_p1 ) return

                    associate( loc_comma => index_comma( string(loc_lbracket_p1:loc_rbracket_m1) ) )

                        if ( loc_comma .lt. 1 ) then

                            call text_to_bare_infsup_1(string, interval)

                        else
                        end if

                    end associate

                end associate

            end associate

        end associate

    end procedure text_to_bare_infsup_real32


    !> `textToInterval` for `bare_infsup_real64_type`
    module procedure text_to_bare_infsup_real64

        call set_empty(interval)

        associate( &!
        &   len_string   => len( string(:) )            , &!
        &   loc_lbracket => index_lbracket( string(:) )   &!
        )

            if ( loc_lbracket .lt. 1            ) return
            if ( len_string   .le. loc_lbracket ) return

            associate( loc_rbracket => index_rbracket( string(:) ) )

                if ( loc_rbracket .lt. 1 ) return

                associate( &!
                &   loc_lbracket_p1 => loc_lbracket + 1 , &!
                &   loc_rbracket_m1 => loc_rbracket - 1   &!
                )

                    if ( loc_rbracket_m1 .lt. loc_lbracket_p1 ) return

                    associate( loc_comma => index_comma( string(loc_lbracket_p1:loc_rbracket_m1) ) )

                        if ( loc_comma .lt. 1 ) then

                            call text_to_bare_infsup_1(string, interval)

                        else
                        end if

                    end associate

                end associate

            end associate

        end associate

    end procedure text_to_bare_infsup_real64


    !> `textToInterval` for `bare_infsup_real128_type`
    module procedure text_to_bare_infsup_real128

        call set_empty(interval)

        associate( &!
        &   len_string   => len( string(:) )            , &!
        &   loc_lbracket => index_lbracket( string(:) )   &!
        )

            if ( loc_lbracket .lt. 1            ) return
            if ( len_string   .le. loc_lbracket ) return

            associate( loc_rbracket => index_rbracket( string(:) ) )

                if ( loc_rbracket .lt. 1 ) return

                associate( &!
                &   loc_lbracket_p1 => loc_lbracket + 1 , &!
                &   loc_rbracket_m1 => loc_rbracket - 1   &!
                )

                    if ( loc_rbracket_m1 .lt. loc_lbracket_p1 ) return

                    associate( loc_comma => index_comma( string(loc_lbracket_p1:loc_rbracket_m1) ) )

                        if ( loc_comma .lt. 1 ) then

                            call text_to_bare_infsup_1(string, interval)

                        else
                        end if

                    end associate

                end associate

            end associate

        end associate

    end procedure text_to_bare_infsup_real128

end submodule ieee1788_fortran_text_to_interval
