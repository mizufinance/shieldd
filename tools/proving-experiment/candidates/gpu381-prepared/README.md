# Prepared BLS12-381 GPU MSM

Development-only persistent-base entry point on the pinned WebGPU library. The isolated patch keeps fixed interleaved P/phi(P) in a context-bound buffer, filters identity terms with a retained index map, and folds all per-call scalar signs into bucket indices. Readiness waits for Montgomery conversion. No shader, proof or production dependency changes.

The gate reuses each of eight point sets across four scalar vectors and compares both the fresh public path and independent CPU oracle. Large historical opening comparison uses separate regular-blst and GPU workers. Preparation, persistent bytes, checked input and result handling are charged explicitly.
