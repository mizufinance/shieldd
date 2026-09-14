# Native Poseidon parameter screening

The experiment uses width three/rate two for arities up to two and width six/rate
five otherwise. Both use alpha five, eight full rounds, 57 partial rounds and
one capacity element over the BLS12-381 scalar field. Domain and input arity are
bound in the capacity IV. Parameter generation uses Arkworks Grain with matrix
skip zero, and native/circuit values are checked against its sponge vectors.

The pinned [round calculator](https://github.com/daira/pasta-hadeshash/blob/5959f2684a25b372fba347e62467efb00e7e2c3f/code/calc_round_numbers.py)
returns 8/56 for width three and 8/57 for width six at security parameter 128,
with its security margin enabled. Width three retains the stricter 57 partial
rounds. `cache/native-poseidon-rounds.json` records the exact source hash and
outputs; only these two widths were evaluated. This is a development parameter
recipe, not a security certification or production hash recommendation.

`check_poseidon.py` specializes the [reference matrix screening](https://github.com/daira/pasta-hadeshash/blob/5959f2684a25b372fba347e62467efb00e7e2c3f/code/generate_parameters_grain.sage)
to these widths and one active partial-round S-box. It checks every MDS minor,
canonical entries and invertibility of the fifth-power S-box. It does not run Sage.

For Algorithm 1, let `c=(1,0,...,0)`. For each `A=M^i`, `i=1..t-1`, the checker
requires full rank of rows `c,cA,...,cA^(t-1)`. This rules out every nonzero
A-invariant subspace inside ker(c), including eigenspaces and scalar-identity
cases. The reference's examined S_i are contained in ker(c); requiring every
power through t-1 also excludes their invariance under the smaller powers.
This is a stronger sufficient condition than reference Algorithm 1.

With one active coordinate, Algorithm 2 is exactly full rank of the orbit
`e0,Ae0,...,A^(t-1)e0`; its full iota space is the whole state space. Algorithm 3
repeats it for `A=M^r`, `r=2..4t`. Typed records distinguish the sufficient check
from the specialized exact checks. Four Python tests cover both parameter files,
invariant subspaces, failed power orbits and malformed inputs. Native full
circuit/proof validation is a separate required gate.
