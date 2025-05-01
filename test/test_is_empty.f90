program test_is_empty

    use, intrinsic :: iso_fortran_env, only: real32
    use, intrinsic :: iso_fortran_env, only: real64
    use, intrinsic :: iso_fortran_env, only: real128
    use, intrinsic :: iso_fortran_env, only: compiler_options
    use, intrinsic :: iso_fortran_env, only: compiler_version


    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real32_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real64_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real128_type
    use, non_intrinsic :: ieee1788_fortran, only: is_empty
    use, non_intrinsic :: ieee1788_fortran, only: set_empty


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


        if ( .not. is_empty(bare_infsup_real32) ) then
            error stop
        end if


        if ( .not. is_empty(bare_infsup_real64) ) then
            error stop
        end if


        if ( .not. is_empty(bare_infsup_real128) ) then
            error stop
        end if

    end block


    print '(A)', 'OK: test_is_empty.fypp'

end program test_is_empty
