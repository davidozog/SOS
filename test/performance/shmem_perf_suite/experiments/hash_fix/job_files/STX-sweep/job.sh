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

cd /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/experiments/hash_fix/job_files/STX-sweep

#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=1  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-1_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=2  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-2_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=3  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-3_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=4  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-4_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=5  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-5_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=6  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-6_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=7  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-7_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=8  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-8_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=9  srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-9_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=10 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-10_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=11 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-11_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=12 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-12_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=13 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-13_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=14 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-14_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=15 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-15_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 16 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 16 -C MULTIPLE > 16_threads-16_STX.output
#SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=17 srun -c 17 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 17 -C MULTIPLE > 16_threads-17_STX.output

SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=1  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-1_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=2  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-2_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=3  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-3_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=4  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-4_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=5  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-5_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=6  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-6_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=7  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-7_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=8  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-8_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=9  srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-9_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=10 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-10_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=11 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-11_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=12 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-12_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=13 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-13_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=14 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-14_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=15 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-15_STX.output
SHMEM_DEBUG=1 SHMEM_INFO=1 SHMEM_BOUNCE_SIZE=0 SHMEM_OFI_STX_MAX=16 srun -c 8 -N 2 -n 2 -C haswell /global/homes/o/ozog/Repos/SOS/test/performance/shmem_perf_suite/shmem_bw_put_ctx_perf -T 8 -C MULTIPLE > 8_threads-16_STX.output
