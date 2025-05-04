#!/bin/sh -e
fypp -F test_is_empty.fypp   test_is_empty.f90
fypp -F test_kind.fypp       test_kind.f90
fypp -F test_set_empty.fypp  test_set_empty.f90
fypp -F test_set_entire.fypp test_set_entire.f90
