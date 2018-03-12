#!/bin/bash -l
#SBATCH --job-name="bw_ctx"
#SBATCH -p regular
#SBATCH -N 2
#SBATCH -t 00:10:00   # MAX 48:00:00
#SBATCH --error=output.%J.err
#SBATCH --output=output.%J.ou
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=david.m.ozog@gmail.com

cd /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/experiments/hash_fix/job_files

SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 1  -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 1  -C SINGLE   > single-thread.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 1  -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 1  -C MULTIPLE > 01-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 2  -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 2  -C MULTIPLE > 02-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 4  -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 4  -C MULTIPLE > 04-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 8  -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8  -C MULTIPLE > 08-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 12 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 12 -C MULTIPLE > 12-threads.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16-threads.output
