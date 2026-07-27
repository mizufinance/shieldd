import Ipp.Extracted.ArkworksFr
import Ipp.Extracted.ArkworksFqOps

/-! Curve-free exact 256-by-128-bit product used by GLV decomposition. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvMulCore

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul

set_option maxHeartbeats 300000
set_option maxRecDepth 4096

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev PairArray := MacCampaign.Array MacCampaign.U64 2#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def scalarToNat (value : ScalarArray) : Nat :=
  Ipp.Extracted.ArkworksFr.limbsToNat value

def pairWord (value : PairArray) (i : Fin 2) : MacCampaign.U64 :=
  value.val.get ⟨i.val, by rw [value.hlen]; exact i.isLt⟩

def pairToNat (value : PairArray) : Nat :=
  (pairWord value ⟨0, by decide⟩).val +
    (pairWord value ⟨1, by decide⟩).val * wordBase

def wideToNat (value : WideArray) : Nat := limbsToNat value

theorem pair_index (value : PairArray) (i : Fin 2) :
    MacCampaign.Array.index_usize value (Usize.ofNat i.val) =
      .ok (pairWord value i) := by
  unfold MacCampaign.Array.index_usize
  rw [List.getElem?_eq_getElem (by rw [value.hlen]; exact i.isLt)]
  rfl

def mul4by2 (left : ScalarArray) (right : PairArray) : Result WideArray := do
  let p0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac 0#u64
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨0, by decide⟩)
    (pairWord right ⟨0, by decide⟩) 0#u64
  let p1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac 0#u64
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨1, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p0.carry
  let p2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac 0#u64
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨2, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p1.carry
  let p3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac 0#u64
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨3, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p2.carry
  let q1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac p1.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨0, by decide⟩)
    (pairWord right ⟨1, by decide⟩) 0#u64
  let q2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac p2.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨1, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q1.carry
  let q3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac p3.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨2, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q2.carry
  let q4 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mac p3.carry
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨3, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q3.carry
  .ok (MacCampaign.Array.make 6#usize
    [p0.low, q1.low, q2.low, q3.low, q4.low, q4.carry])

private theorem product_telescope
    (l0 l1 l2 l3 r0 r1
      p0 c0 p1 c1 p2 c2 p3 c3 q1 d1 q2 d2 q3 d3 q4 d4 : Nat)
    (h0 : l0 * r0 = c0 * wordBase + p0)
    (h1 : l1 * r0 + c0 = c1 * wordBase + p1)
    (h2 : l2 * r0 + c1 = c2 * wordBase + p2)
    (h3 : l3 * r0 + c2 = c3 * wordBase + p3)
    (e1 : p1 + l0 * r1 = d1 * wordBase + q1)
    (e2 : p2 + l1 * r1 + d1 = d2 * wordBase + q2)
    (e3 : p3 + l2 * r1 + d2 = d3 * wordBase + q3)
    (e4 : c3 + l3 * r1 + d3 = d4 * wordBase + q4) :
    p0 + q1 * wordBase + q2 * wordBase ^ 2 + q3 * wordBase ^ 3 +
        q4 * wordBase ^ 4 + d4 * wordBase ^ 5 =
      (l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3) *
        (r0 + r1 * wordBase) := by
  linear_combination -h0 - wordBase * h1 - wordBase ^ 2 * h2 -
    wordBase ^ 3 * h3 - wordBase * e1 - wordBase ^ 2 * e2 -
    wordBase ^ 3 * e3 - wordBase ^ 4 * e4

theorem mul4by2_spec (left : ScalarArray) (right : PairArray)
    (output : WideArray) (hexec : mul4by2 left right = .ok output) :
    wideToNat output = scalarToNat left * pairToNat right := by
  let z := MacCampaign.U64.ofNat 0
  let p0 := extractedMacModel z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨0, by decide⟩)
    (pairWord right ⟨0, by decide⟩) z
  have hp0 := extracted_mac_eq_model z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨0, by decide⟩)
    (pairWord right ⟨0, by decide⟩) z
  have sp0 := extracted_mac_result_spec _ _ _ _ p0 (by simpa [p0] using hp0)
  let p1 := extractedMacModel z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨1, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p0.carry
  have hp1 := extracted_mac_eq_model z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨1, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p0.carry
  have sp1 := extracted_mac_result_spec _ _ _ _ p1 (by simpa [p1] using hp1)
  let p2 := extractedMacModel z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨2, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p1.carry
  have hp2 := extracted_mac_eq_model z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨2, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p1.carry
  have sp2 := extracted_mac_result_spec _ _ _ _ p2 (by simpa [p2] using hp2)
  let p3 := extractedMacModel z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨3, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p2.carry
  have hp3 := extracted_mac_eq_model z
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨3, by decide⟩)
    (pairWord right ⟨0, by decide⟩) p2.carry
  have sp3 := extracted_mac_result_spec _ _ _ _ p3 (by simpa [p3] using hp3)
  let q1 := extractedMacModel p1.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨0, by decide⟩)
    (pairWord right ⟨1, by decide⟩) z
  have hq1 := extracted_mac_eq_model p1.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨0, by decide⟩)
    (pairWord right ⟨1, by decide⟩) z
  have sq1 := extracted_mac_result_spec _ _ _ _ q1 (by simpa [q1] using hq1)
  let q2 := extractedMacModel p2.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨1, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q1.carry
  have hq2 := extracted_mac_eq_model p2.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨1, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q1.carry
  have sq2 := extracted_mac_result_spec _ _ _ _ q2 (by simpa [q2] using hq2)
  let q3 := extractedMacModel p3.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨2, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q2.carry
  have hq3 := extracted_mac_eq_model p3.low
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨2, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q2.carry
  have sq3 := extracted_mac_result_spec _ _ _ _ q3 (by simpa [q3] using hq3)
  let q4 := extractedMacModel p3.carry
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨3, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q3.carry
  have hq4 := extracted_mac_eq_model p3.carry
    (Ipp.Extracted.ArkworksFr.limbWord left ⟨3, by decide⟩)
    (pairWord right ⟨1, by decide⟩) q3.carry
  have sq4 := extracted_mac_result_spec _ _ _ _ q4 (by simpa [q4] using hq4)
  have hrun := hexec
  simp only [mul4by2] at hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.mac z _ _ z >>= _ = .ok output at hrun
  rw [hp0] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hp1] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hp2] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hp3] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hq1] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hq2] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hq3] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hq4] at hrun
  simp only [Result.bind_ok, Result.ok.injEq] at hrun
  subst output
  rw [wideToNat, scalarToNat, pairToNat, limbsToNat_six,
    Ipp.Extracted.ArkworksFr.limbsToNat_four]
  simp only [limb, limbWord, Ipp.Extracted.ArkworksFr.limb,
    Ipp.Extracted.ArkworksFr.limbWord, pairWord, MacCampaign.Array.make]
  apply product_telescope
  · simpa [z, MacCampaign.U64.ofNat] using sp0.equation
  · simpa [z, MacCampaign.U64.ofNat] using sp1.equation
  · simpa [z, MacCampaign.U64.ofNat] using sp2.equation
  · simpa [z, MacCampaign.U64.ofNat] using sp3.equation
  · simpa [z, MacCampaign.U64.ofNat] using sq1.equation
  · simpa [z, MacCampaign.U64.ofNat] using sq2.equation
  · simpa [z, MacCampaign.U64.ofNat] using sq3.equation
  · simpa [z, MacCampaign.U64.ofNat] using sq4.equation

#print axioms mul4by2_spec

end Ipp.Extracted.ArkworksScalarMul.GlvMulCore
