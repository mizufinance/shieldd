import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979

variable {F : Type} [CommRing F]

def relationLc0 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 39, 1, 32⟩, ⟨(1 : F), 7, 1, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 40, 1, 31⟩, ⟨(1 : F), 8, 1, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 41, 1, 30⟩, ⟨(1 : F), 9, 1, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc3 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 42, 1, 29⟩, ⟨(1 : F), 10, 1, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc4 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 43, 1, 28⟩, ⟨(1 : F), 11, 1, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc5 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 44, 1, 27⟩, ⟨(1 : F), 12, 1, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc6 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 45, 1, 26⟩, ⟨(1 : F), 13, 1, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc7 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 46, 1, 25⟩, ⟨(1 : F), 14, 1, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc8 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 47, 1, 24⟩, ⟨(1 : F), 15, 1, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc9 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 48, 1, 23⟩, ⟨(1 : F), 16, 1, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc10 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 49, 1, 22⟩, ⟨(1 : F), 17, 1, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc11 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 50, 1, 21⟩, ⟨(1 : F), 18, 1, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc12 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 51, 1, 20⟩, ⟨(1 : F), 19, 1, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc13 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 52, 1, 19⟩, ⟨(1 : F), 20, 1, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc14 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 53, 1, 18⟩, ⟨(1 : F), 21, 1, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 1 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 2 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 3 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 4) = ((1 : F) * rho 5) ∧
    ((1 : F) * rho 6) * (relationLc0 rho) = ((1 : F) * rho 71) ∧
    ((1 : F) * rho 6) * (relationLc1 rho) = ((1 : F) * rho 72) ∧
    ((1 : F) * rho 6) * (relationLc2 rho) = ((1 : F) * rho 73) ∧
    ((1 : F) * rho 6) * (relationLc3 rho) = ((1 : F) * rho 74) ∧
    ((1 : F) * rho 6) * (relationLc4 rho) = ((1 : F) * rho 75) ∧
    ((1 : F) * rho 6) * (relationLc5 rho) = ((1 : F) * rho 76) ∧
    ((1 : F) * rho 6) * (relationLc6 rho) = ((1 : F) * rho 77) ∧
    ((1 : F) * rho 6) * (relationLc7 rho) = ((1 : F) * rho 78) ∧
    ((1 : F) * rho 6) * (relationLc8 rho) = ((1 : F) * rho 79) ∧
    ((1 : F) * rho 6) * (relationLc9 rho) = ((1 : F) * rho 80) ∧
    ((1 : F) * rho 6) * (relationLc10 rho) = ((1 : F) * rho 81) ∧
    ((1 : F) * rho 6) * (relationLc11 rho) = ((1 : F) * rho 82) ∧
    ((1 : F) * rho 6) * (relationLc12 rho) = ((1 : F) * rho 83) ∧
    ((1 : F) * rho 6) * (relationLc13 rho) = ((1 : F) * rho 84) ∧
    ((1 : F) * rho 6) * (relationLc14 rho) = ((1 : F) * rho 85) ∧ k

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 54, 1, 17⟩, ⟨(1 : F), 22, 1, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 55, 1, 16⟩, ⟨(1 : F), 23, 1, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationSegment1 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 6) * (relationLc15 rho) = ((1 : F) * rho 86) ∧
    ((1 : F) * rho 6) * (relationLc16 rho) = ((1 : F) * rho 87) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 24 + (1 : F) * rho 25 + (1 : F) * rho 26 + (1 : F) * rho 27 + (1 : F) * rho 28 + (1 : F) * rho 29 + (1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 56 + (-1 : F) * rho 57 + (-1 : F) * rho 58 + (-1 : F) * rho 59 + (-1 : F) * rho 60 + (-1 : F) * rho 61 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 88) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 25 + (1 : F) * rho 26 + (1 : F) * rho 27 + (1 : F) * rho 28 + (1 : F) * rho 29 + (1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 57 + (-1 : F) * rho 58 + (-1 : F) * rho 59 + (-1 : F) * rho 60 + (-1 : F) * rho 61 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 89) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 26 + (1 : F) * rho 27 + (1 : F) * rho 28 + (1 : F) * rho 29 + (1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 58 + (-1 : F) * rho 59 + (-1 : F) * rho 60 + (-1 : F) * rho 61 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 90) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 27 + (1 : F) * rho 28 + (1 : F) * rho 29 + (1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 59 + (-1 : F) * rho 60 + (-1 : F) * rho 61 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 91) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 28 + (1 : F) * rho 29 + (1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 60 + (-1 : F) * rho 61 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 92) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 29 + (1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 61 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 93) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 30 + (1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 62 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 94) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 31 + (1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 63 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 95) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 32 + (1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 64 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 96) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 33 + (1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 65 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 97) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 34 + (1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 66 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 98) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 35 + (1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 67 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 99) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 36 + (1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 68 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 100) ∧
    ((1 : F) * rho 6) * ((1 : F) * rho 37 + (1 : F) * rho 38 + (-1 : F) * rho 69 + (-1 : F) * rho 70) = ((1 : F) * rho 101) ∧ k

def relationSegment2 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 6) * ((1 : F) * rho 38 + (-1 : F) * rho 70) = ((1 : F) * rho 102) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (relationSegment1 rho (relationSegment2 rho (True)))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
