#!/bin/sh -e
fypp -F test_ieee_class_fortran.fypp test_ieee_class_fortran.f90
fypp -F test_kind.fypp               test_kind.f90
