#!/bin/sh -e
fypp -F ieee1788_fortran.fypp                  ieee1788_fortran.f90
fypp -F ieee1788_fortran_kind.fypp             ieee1788_fortran_kind.f90
fypp -F ieee1788_fortran_set_empty.fypp        ieee1788_fortran_set_empty.f90
fypp -F ieee1788_fortran_set_entire.fypp       ieee1788_fortran_set_entire.f90
fypp -F ieee1788_fortran_text_to_interval.fypp ieee1788_fortran_text_to_interval.f90
