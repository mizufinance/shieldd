import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Extracted.DecafRvk
import ShielddGnarkFormal.Extracted.DecafDtk
import ShielddGnarkFormal.Extracted.NetBalanceCommitment
import ShielddGnarkFormal.Extracted.NetBalanceCommitment2
import ShielddGnarkFormal.Extracted.ConservationNetBalanceCommitment

set_option linter.unusedSectionVars false

namespace Shieldd.GnarkFormal.Decaf377Assumptions

variable [Fact (Nat.Prime Extracted.DecafRvk.Order)]
variable [Fact (Nat.Prime Extracted.DecafDtk.Order)]
variable [Fact (Nat.Prime Extracted.NetBalanceCommitment.Order)]
variable [Fact (Nat.Prime Extracted.NetBalanceCommitment2.Order)]
variable [Fact (Nat.Prime Extracted.ConservationNetBalanceCommitment.Order)]

/-- The exact constraint set of the extracted DecafRvk gadget: a 251-step
generator scalar-mul ladder of the randomizer followed by an Edwards add of
`ak`, with the result pinned to `out`. -/
def RandomizedVerificationKeyCircuit (ak : Point) (r : F) (out : Point) : Prop :=
  Extracted.DecafRvk.circuit ak.x ak.y r out.x out.y

/-- The exact constraint set of the extracted DecafDtk gadget: `ak` on-curve
assertion, compress/Poseidon/IVK-mod-r provenance constraints, and a 251-step
`divGen` scalar-mul ladder of `ivkReduced` pinned to `out`. -/
def DiversifiedTransmissionKeyCircuit
    (nk : F) (ak divGen : Point) (ivkReduced ivkQuotientA : F) (out : Point) : Prop :=
  ∃ wasSquare sqrtRatio,
    Extracted.DecafDtk.circuit nk ak.x ak.y divGen.x divGen.y
      wasSquare sqrtRatio ivkReduced ivkQuotientA out.x out.y

/-- The exact constraint set of the legacy NetBalanceCommitment gadget used as
an optimization-parity oracle. This is not the deployed Transfer relation. -/
def NetBalanceCommitmentCircuit
    (input0 input1 output assetID balanceBlinding : F) (out : Point) : Prop :=
  ∃ encodeWasSquare encodeInvSqrt,
    Extracted.NetBalanceCommitment.circuit input0 input1 output assetID balanceBlinding
      encodeWasSquare encodeInvSqrt out.x out.y

/-- The exact constraint set of the extracted ConservationNetBalanceCommitment
gadget (NB-1): three 128-bit range decompositions, one linear conservation
assert `input0 + input1 = output`, and a 251-bit blinding ladder over the value
blinding generator pinned to `out`. No hint wires. -/
def ConservationNetBalanceCommitmentCircuit
    (input0 input1 output balanceBlinding : F) (out : Point) : Prop :=
  Extracted.ConservationNetBalanceCommitment.circuit input0 input1 output
    balanceBlinding out.x out.y

/-- The legacy 2-in-2-out net-balance gadget retained as an independent
optimization-parity oracle. Deployed Transfer uses two 129-bit sum ladders. -/
def NetBalanceCommitment2Circuit
    (input0 input1 output0 output1 assetID balanceBlinding : F) (out : Point) : Prop :=
  ∃ encodeWasSquare encodeInvSqrt,
    Extracted.NetBalanceCommitment2.circuit input0 input1 output0 output1 assetID
      balanceBlinding encodeWasSquare encodeInvSqrt out.x out.y

end Shieldd.GnarkFormal.Decaf377Assumptions
