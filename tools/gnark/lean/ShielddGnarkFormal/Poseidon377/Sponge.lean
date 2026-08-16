import ShielddGnarkFormal.Poseidon377.Fixed1
import ShielddGnarkFormal.Poseidon377.Fixed2
import ShielddGnarkFormal.Poseidon377.Fixed3
import ShielddGnarkFormal.Poseidon377.Fixed4
import ShielddGnarkFormal.Poseidon377.Fixed5
import ShielddGnarkFormal.Poseidon377.Fixed6
import ShielddGnarkFormal.Poseidon377.Fixed7

/-! Canonical fixed-rate Poseidon377 hashes matching the gnark entry points. -/

namespace Shieldd.GnarkFormal.Poseidon377

def hash2 (domain in0 in1 : F) : F :=
  Fixed2.hash domain in0 in1

def hash3 (domain in0 in1 in2 : F) : F :=
  Fixed3.hash domain in0 in1 in2

def hash4 (domain in0 in1 in2 in3 : F) : F :=
  Fixed4.hash domain in0 in1 in2 in3

def hash5 (domain in0 in1 in2 in3 in4 : F) : F :=
  Fixed5.hash domain in0 in1 in2 in3 in4

def hash1 (domain in0 : F) : F :=
  Fixed1.hash domain in0

def hash6 (domain in0 in1 in2 in3 in4 in5 : F) : F :=
  Fixed6.hash domain in0 in1 in2 in3 in4 in5

def hash7 (domain in0 in1 in2 in3 in4 in5 in6 : F) : F :=
  Fixed7.hash domain in0 in1 in2 in3 in4 in5 in6

end Shieldd.GnarkFormal.Poseidon377
