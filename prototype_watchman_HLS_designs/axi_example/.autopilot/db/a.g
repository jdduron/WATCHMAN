#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_example/.autopilot/db/a.g.bc ${1+"$@"}
