import ShielddGnarkFormal.Extracted.PoseidonHash5
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Exact structural bridge for the non-abstracted rate-5 Poseidon gadget. -/

namespace Shieldd.GnarkFormal.Poseidon5Bridge

open Shieldd.GnarkFormal.Extracted.PoseidonHash5

def p17 (a : F) : F :=
  Poseidon377.Fixed5.p17 a

def fr6 (state constants : List.Vector F 6) : List.Vector F 6 :=
  Poseidon377.Fixed5.fr6 state constants

def pr6 (state constants : List.Vector F 6) : List.Vector F 6 :=
  Poseidon377.Fixed5.pr6 state constants

def permSpec5 (domain in0 in1 in2 in3 in4 : F) : F :=
  Poseidon377.hash5 domain in0 in1 in2 in3 in4

theorem fullRound_6_6_uncps [Fact (Nat.Prime Order)]
    (state constants : List.Vector F 6) (continuation : List.Vector F 6 → Prop) :
    poseidonFullRound_6_6 state constants continuation ↔
      continuation (Poseidon377.Fixed5.fr6 state constants) := by
  unfold poseidonFullRound_6_6 Poseidon377.Fixed5.fr6
    Poseidon377.Fixed5.p17
  simp only [Extracted.PoseidonHash5.Gates, GatesGnark9, GatesGnark8,
    GatesDef.add, GatesDef.mul, exists_eq_left]
  rfl

theorem partialRound_6_6_uncps [Fact (Nat.Prime Order)]
    (state constants : List.Vector F 6) (continuation : List.Vector F 6 → Prop) :
    poseidonPartialRound_6_6 state constants continuation ↔
      continuation (Poseidon377.Fixed5.pr6 state constants) := by
  unfold poseidonPartialRound_6_6 Poseidon377.Fixed5.pr6
    Poseidon377.Fixed5.p17
  simp only [Extracted.PoseidonHash5.Gates, GatesGnark9, GatesGnark8,
    GatesDef.add, GatesDef.mul, exists_eq_left]
  rfl

/-- Every satisfying rate-5 gadget assignment fixes the output exactly. -/
theorem circuit_sound_eq [Fact (Nat.Prime Order)]
    (domain in0 in1 in2 in3 in4 output : F) :
    circuit domain in0 in1 in2 in3 in4 output →
      output = permSpec5 domain in0 in1 in2 in3 in4 := by
  unfold circuit permSpec5 Poseidon377.hash5 Poseidon377.Fixed5.hash
  simp only [fullRound_6_6_uncps, partialRound_6_6_uncps]
  rintro ⟨heq, _⟩
  simpa [Extracted.PoseidonHash5.Gates, GatesGnark9, GatesGnark8,
    GatesDef.eq, eq_comm] using heq

end Shieldd.GnarkFormal.Poseidon5Bridge
