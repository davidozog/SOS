#!/bin/bash -l
#SBATCH --job-name="bw_ctx"
#SBATCH -p regular
#SBATCH -C haswell
#SBATCH -N 2
#SBATCH -t 00:30:00   # MAX 48:00:00
#SBATCH --error=output.%J.err
#SBATCH --output=output.%J.ou
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=david.m.ozog@gmail.com
#SBATCH --switches=1

cd /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/experiments/thread_scaling/16-STXs/manual_progress

SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 1  -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 1  -C SINGLE   > single-thread.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 1  -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 1  -C MULTIPLE > 01-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 2  -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 2  -C MULTIPLE > 02-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 4  -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 4  -C MULTIPLE > 04-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 8  -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 8  -C MULTIPLE > 08-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 12 -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 12 -C MULTIPLE > 12-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 16 -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 16 -C MULTIPLE > 16-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=17 srun -c 17 -N 1 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf-manual_progress -T 17 -C MULTIPLE > 16-threads-17_STX.output
