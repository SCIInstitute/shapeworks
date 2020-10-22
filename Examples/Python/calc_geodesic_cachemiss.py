import random
import sys
import os
from functools import lru_cache
import pylru
from tqdm import tqdm

fname = '/scratch/karthik/projects/ShapeWorks/Examples/Python/Output/femur_mesh/shape_models/distance_queries.txt'
fd = open(fname)
N = 10982
total_lines = os.path.getsize(fname) // 10 # approx
total_iters = 250 # HACK TO GET MORE SAMPLES
lines_per_iter = total_lines // total_iters


caches = {}
cache_hits = {}
cache_misses = {}
for cache_size in [1024, 1536, 2048, 3072, 4096, 8192]:
    caches[cache_size] = pylru.lrucache(cache_size)
    cache_hits[cache_size] = 0
    cache_misses[cache_size] = 0

for n_lines, line in tqdm(enumerate(fd), total=total_lines):
    n_lines += 1
    i, j = [int(x) for x in line.split()]

    for cache_size in caches.keys():
        if i in caches[cache_size]:
            _ = caches[cache_size][i] # force it to be "recently used"
            cache_hits[cache_size] += 1
        else:
            cache_misses[cache_size] += 1
            caches[cache_size][i] = 0.0
    
    if n_lines % 5000000 == 0:
        for cache_size in caches.keys():
            cache_size_bytes = cache_size * N * 8
            print(f'{cache_size},{cache_size_bytes},{n_lines},{total_lines},{cache_hits[cache_size]},{cache_misses[cache_size]},{cache_misses[cache_size]/n_lines}')

for cache_size in caches.keys():
    cache_size_bytes = cache_size * N * 8
    print(f'{cache_size},{cache_size_bytes},{n_lines},{total_lines},{cache_hits[cache_size]},{cache_misses[cache_size]},{cache_misses[cache_size]/n_lines}')

# print(f'number of accesses: {n_lines} / ~{total_lines}')
# print(f'approx iters: {n_iters} / {total_iters}')
# print(f'Cache(size={cache_size}): {cache_hits:>9} hits | {cache_misses:>9} misses | {cache_misses / (cache_misses + cache_hits):.2} miss rate | ~{cache_size_bytes/2**20:.3} MB')