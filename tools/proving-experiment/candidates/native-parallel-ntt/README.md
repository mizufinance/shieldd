# Bounded parallel native FFT

Development-only arithmetic candidate over the fused-inverse prover. Each prepared FFT stage uses the existing proving strategy and two disjoint partitions, including a split final butterfly block. Join completion is the stage barrier. No pool is created by the transform. Public-column initialization and polynomial diagnostic oracle remain sequential; live proving uses the existing two-worker pool. Relation, keys and verification remain unchanged.
