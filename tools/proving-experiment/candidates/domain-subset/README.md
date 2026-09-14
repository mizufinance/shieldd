# Structured-subset polynomial cost gate

This isolated Arkworks 0.6 executable measures field-polynomial kernels, not proofs. It checks retained-domain interpolation and exact quotient division at full size over both actual scalar fields, including a changed-relation rejection. The retained set removes one subgroup coset from a 262,144-point domain. FFTs remain size N and 2N; shorter commitments have not been implemented.

Three warmups and five measured blocks cover retained sizes 245,760 and 229,376 for both Pari candidates, and 196,608 as an additional Groth16 QAP capacity. Preparation is separate. Pari mask expansion is included; input generation is outside the timed kernel. The synthetic A product kernel uses 2N, while current gnark uses a coset-N quotient, so these timings are not a production Groth16 delta.

The gate confirms feasibility of the polynomial identities and extra interpolation/division cost. It does not establish a commitment saving, integrated key/proof format, verifier result, full-API gain, protocol security proof or production-readiness claim. Groth16 is also eligible for structured-domain work and must remain an explicit control when that work continues.
