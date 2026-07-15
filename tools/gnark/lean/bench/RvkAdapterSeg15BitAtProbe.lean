import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Bits

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem rvkAdapterSeg15BitAtProbe (rho : Nat → Seg15.F)
    (hscalarLt : (rho 97).val < 2 ^ 251)
    (hbits : seg15RvkBits rho =
      (Fin.toBitsLE (⟨(rho 97).val, hscalarLt⟩ : Fin (2 ^ 251))).map Bool.toZMod) :
    ∀ i, i < 251 → rho (16136 + i) = Bool.toZMod
      (Fin.toBitsLE (⟨(rho 97).val, hscalarLt⟩ : Fin (2 ^ 251)))[i]! := by
  intro i hi
  let bitsBool := Fin.toBitsLE (⟨(rho 97).val, hscalarLt⟩ : Fin (2 ^ 251))
  rw [← seg15RvkBits_get rho i hi, hbits]
  change (bitsBool.map Bool.toZMod)[i]! = Bool.toZMod bitsBool[i]!
  rw [getElem!_pos (bitsBool.map Bool.toZMod) i (by simpa using hi),
    getElem!_pos bitsBool i (by simpa using hi), List.Vector.getElem_map]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
