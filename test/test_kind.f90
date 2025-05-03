program test_kind

    use, intrinsic :: iso_fortran_env, only: real32
    use, intrinsic :: iso_fortran_env, only: real64
    use, intrinsic :: iso_fortran_env, only: real128
    use, intrinsic :: iso_fortran_env, only: compiler_options
    use, intrinsic :: iso_fortran_env, only: compiler_version


    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real32_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real64_type
    use, non_intrinsic :: ieee1788_fortran, only: bare_infsup_real128_type
    use, non_intrinsic :: ieee1788_fortran, only: kind


    implicit none


    type(bare_infsup_real32_type) :: bare_infsup_real32
    type(bare_infsup_real64_type) :: bare_infsup_real64
    type(bare_infsup_real128_type) :: bare_infsup_real128


    print * , compiler_version()
    print * , compiler_options()

    if ( kind(bare_infsup_real32) .ne. real32 ) error stop 'test_kind.fypp:L29 (real32)'
    if ( kind(bare_infsup_real64) .ne. real64 ) error stop 'test_kind.fypp:L29 (real64)'
    if ( kind(bare_infsup_real128) .ne. real128 ) error stop 'test_kind.fypp:L29 (real128)'

    print '(A)', 'OK: test_kind.fypp'

end program test_kind
