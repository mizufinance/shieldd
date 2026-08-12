import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((1 : F) + (-1 : F) * rho 1) = ((0 : F)) ∧
    ((1 : F) * rho 2) * ((1 : F) + (-1 : F) * rho 2) = ((0 : F)) ∧
    ((1 : F) * rho 3) * ((1 : F) + (-1 : F) * rho 3) = ((0 : F)) ∧
    ((1 : F) * rho 4) * ((1 : F) + (-1 : F) * rho 4) = ((0 : F)) ∧
    ((1 : F) * rho 5) * ((1 : F) + (-1 : F) * rho 5) = ((0 : F)) ∧
    ((1 : F) * rho 6) * ((1 : F) + (-1 : F) * rho 6) = ((0 : F)) ∧
    ((1 : F) * rho 7) * ((1 : F) + (-1 : F) * rho 7) = ((0 : F)) ∧
    ((1 : F) * rho 8) * ((1 : F) + (-1 : F) * rho 8) = ((0 : F)) ∧
    ((1 : F) * rho 9) * ((1 : F) + (-1 : F) * rho 9) = ((0 : F)) ∧
    ((1 : F) * rho 10) * ((1 : F) + (-1 : F) * rho 10) = ((0 : F)) ∧
    ((1 : F) * rho 11) * ((1 : F) + (-1 : F) * rho 11) = ((0 : F)) ∧
    ((1 : F) * rho 12) * ((1 : F) + (-1 : F) * rho 12) = ((0 : F)) ∧
    ((1 : F) * rho 13) * ((1 : F) + (-1 : F) * rho 13) = ((0 : F)) ∧
    ((1 : F) * rho 14) * ((1 : F) + (-1 : F) * rho 14) = ((0 : F)) ∧
    ((1 : F) * rho 15) * ((1 : F) + (-1 : F) * rho 15) = ((0 : F)) ∧
    ((1 : F) * rho 16) * ((1 : F) + (-1 : F) * rho 16) = ((0 : F)) ∧ k

def relationSegment1 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) + (-1 : F) * rho 17) = ((0 : F)) ∧
    ((1 : F) * rho 18) * ((1 : F) + (-1 : F) * rho 18) = ((0 : F)) ∧
    ((1 : F) * rho 19) * ((1 : F) + (-1 : F) * rho 19) = ((0 : F)) ∧
    ((1 : F) * rho 20) * ((1 : F) + (-1 : F) * rho 20) = ((0 : F)) ∧
    ((1 : F) * rho 21) * ((1 : F) + (-1 : F) * rho 21) = ((0 : F)) ∧
    ((1 : F) * rho 22) * ((1 : F) + (-1 : F) * rho 22) = ((0 : F)) ∧
    ((1 : F) * rho 23) * ((1 : F) + (-1 : F) * rho 23) = ((0 : F)) ∧
    ((1 : F) * rho 24) * ((1 : F) + (-1 : F) * rho 24) = ((0 : F)) ∧
    ((1 : F) * rho 25) * ((1 : F) + (-1 : F) * rho 25) = ((0 : F)) ∧
    ((1 : F) * rho 26) * ((1 : F) + (-1 : F) * rho 26) = ((0 : F)) ∧
    ((1 : F) * rho 27) * ((1 : F) + (-1 : F) * rho 27) = ((0 : F)) ∧
    ((1 : F) * rho 28) * ((1 : F) + (-1 : F) * rho 28) = ((0 : F)) ∧
    ((1 : F) * rho 29) * ((1 : F) + (-1 : F) * rho 29) = ((0 : F)) ∧
    ((1 : F) * rho 30) * ((1 : F) + (-1 : F) * rho 30) = ((0 : F)) ∧
    ((1 : F) * rho 31) * ((1 : F) + (-1 : F) * rho 31) = ((0 : F)) ∧
    ((1 : F) * rho 32) * ((1 : F) + (-1 : F) * rho 32) = ((0 : F)) ∧ k

def relationSegment2 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((1 : F) * rho 1 + (2 : F) * rho 2 + (4 : F) * rho 3 + (8 : F) * rho 4 + (16 : F) * rho 5 + (32 : F) * rho 6 + (64 : F) * rho 7 + (128 : F) * rho 8 + (256 : F) * rho 9 + (512 : F) * rho 10 + (1024 : F) * rho 11 + (2048 : F) * rho 12 + (4096 : F) * rho 13 + (8192 : F) * rho 14 + (16384 : F) * rho 15 + (32768 : F) * rho 16 + (65536 : F) * rho 17 + (131072 : F) * rho 18 + (262144 : F) * rho 19 + (524288 : F) * rho 20 + (1048576 : F) * rho 21 + (2097152 : F) * rho 22 + (4194304 : F) * rho 23 + (8388608 : F) * rho 24 + (16777216 : F) * rho 25 + (33554432 : F) * rho 26 + (67108864 : F) * rho 27 + (134217728 : F) * rho 28 + (268435456 : F) * rho 29 + (536870912 : F) * rho 30 + (1073741824 : F) * rho 31 + (2147483648 : F) * rho 32) = ((1 : F) * rho 33) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (relationSegment1 rho (relationSegment2 rho (True)))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227
