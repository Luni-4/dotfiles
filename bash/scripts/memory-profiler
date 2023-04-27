#!/bin/bash

# Bytehound memory profiler

[ -z $1 ] && exit

export MEMORY_PROFILER_LOG=warn
LD_PRELOAD=$HOME/.cargo/bin/libbytehound.so sudo $1
bytehound server memory-profiling_*.dat
