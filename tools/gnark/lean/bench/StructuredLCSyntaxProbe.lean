import ShielddGnarkFormal.StructuredLC

/-!
Syntax probe: exactly the term shape the Rust extractor emits for a row LC —
constant sum, an anonymous `StrideRun` in the `runs` list, and residual `(F × Nat)`
pairs, with the struct ascription.  Confirms the generated rendering elaborates
before regenerating a full segment.
-/

namespace Shieldd.GnarkFormal.SyntaxProbe

def Order : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev F := ZMod Order

-- Mirrors render_structured_lc output verbatim (modulo the F abbrev).
example (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.StructuredLC.eval rho
    (({ const := (1 : F) + (3 : F), runs := [⟨(1 : F), 15543, 13, 128⟩, ⟨(7 : F), 20, 5, 4⟩],
        residual := [((7 : F), 5), ((7 : F), 9)] } :
      Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.SyntaxProbe
