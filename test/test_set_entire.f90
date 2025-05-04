program test_set_entire

    use, intrinsic :: iso_fortran_env, only: compiler_options
    use, intrinsic :: iso_fortran_env, only: compiler_version


    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real32_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real64_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real128_type
    use, non_intrinsic :: ieee1788_fortran, only: set_entire


    implicit none


    type(bare_infsup_real32_type) :: bare_infsup_real32
    type(bare_infsup_real64_type) :: bare_infsup_real64
    type(bare_infsup_real128_type) :: bare_infsup_real128


    print * , compiler_version()
    print * , compiler_options()

    call set_entire(bare_infsup_real32)
    call set_entire(bare_infsup_real64)
    call set_entire(bare_infsup_real128)

    print '(A)', 'OK: test_set_entire.fypp'

end program test_set_entire
