import ShielddGnarkFormal.Poseidon377.Vectors

/-! Named fixed-rate Poseidon377 hashes over `F`, matching the gnark
`Poseidon377HashN` entry points (domain separator + N inputs, output = state[1]). -/

namespace Shieldd.GnarkFormal.Poseidon377

def hash2 (domain in0 in1 : F) : F :=
  hashRate rate2Arc rate2Mds domain [in0, in1]

def hash3 (domain in0 in1 in2 : F) : F :=
  hashRate rate3Arc rate3Mds domain [in0, in1, in2]

def hash4 (domain in0 in1 in2 in3 : F) : F :=
  hashRate rate4Arc rate4Mds domain [in0, in1, in2, in3]

def hash6 (domain in0 in1 in2 in3 in4 in5 : F) : F :=
  hashRate rate6Arc rate6Mds domain [in0, in1, in2, in3, in4, in5]

end Shieldd.GnarkFormal.Poseidon377
