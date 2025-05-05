program test_is_entire

    use, intrinsic :: iso_fortran_env, only: compiler_options
    use, intrinsic :: iso_fortran_env, only: compiler_version


    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real32_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real64_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real128_type
    use, non_intrinsic :: ieee1788_fortran, only: is_entire
    use, non_intrinsic :: ieee1788_fortran, only: set_empty
    use, non_intrinsic :: ieee1788_fortran, only: set_entire


    implicit none


    print * , compiler_version()
    print * , compiler_options()


    block

        type(bare_infsup_real32_type) :: bare_infsup_real32
        type(bare_infsup_real64_type) :: bare_infsup_real64
        type(bare_infsup_real128_type) :: bare_infsup_real128


        call set_empty(bare_infsup_real32)
        call set_empty(bare_infsup_real64)
        call set_empty(bare_infsup_real128)


        if ( is_entire(bare_infsup_real32) ) then
            error stop '; NG: is_entire(bare_infsup_real32 called set_empty) must be .false.'
        end if


        if ( is_entire(bare_infsup_real64) ) then
            error stop '; NG: is_entire(bare_infsup_real64 called set_empty) must be .false.'
        end if


        if ( is_entire(bare_infsup_real128) ) then
            error stop '; NG: is_entire(bare_infsup_real128 called set_empty) must be .false.'
        end if

    end block


    block

        type(bare_infsup_real32_type) :: bare_infsup_real32
        type(bare_infsup_real64_type) :: bare_infsup_real64
        type(bare_infsup_real128_type) :: bare_infsup_real128


        call set_entire(bare_infsup_real32)
        call set_entire(bare_infsup_real64)
        call set_entire(bare_infsup_real128)


        if ( .not. is_entire(bare_infsup_real32) ) then
            error stop '; NG: is_entire(bare_infsup_real32 called set_entire) must be .false.'
        end if


        if ( .not. is_entire(bare_infsup_real64) ) then
            error stop '; NG: is_entire(bare_infsup_real64 called set_entire) must be .false.'
        end if


        if ( .not. is_entire(bare_infsup_real128) ) then
            error stop '; NG: is_entire(bare_infsup_real128 called set_entire) must be .false.'
        end if

    end block


    print '(A)', 'OK: test_is_entire.fypp'

end program test_is_entire
