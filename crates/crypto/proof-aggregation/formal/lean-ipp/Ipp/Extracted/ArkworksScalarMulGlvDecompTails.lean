import Ipp.Extracted.ArkworksScalarMulGlvArrayCore

/-! Opaque normalization segments for the decomposition's limb-reading tails. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompTails

open Aeneas Aeneas.Std Result

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def makeOutput (positive : Bool) (k1 beta : ScalarArray) : Output :=
  { k1_positive := positive
    k1 := k1
    k2_positive := false
    k2 := beta }

private theorem bind_congr_right {alpha beta : Type} (action : Result alpha)
    (left right : alpha → Result beta) (h : ∀ value, left value = right value) :
    (action >>= left) = (action >>= right) := by
  cases action <;> simp_all

def finishRaw (reduced beta : ScalarArray) (b1 : WideArray) : Result Output := do
  let x0 ← MacCampaign.Array.index_usize reduced 0#usize
  let x1 ← MacCampaign.Array.index_usize reduced 1#usize
  let x2 ← MacCampaign.Array.index_usize reduced 2#usize
  let x3 ← MacCampaign.Array.index_usize reduced 3#usize
  let reducedWide := MacCampaign.Array.make 6#usize
    [x0, x1, x2, x3, 0#u64, 0#u64]
  let positive ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 reducedWide b1
  let k1Wide ← if positive then
    ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 reducedWide b1
  else ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1 reducedWide
  let y0 ← MacCampaign.Array.index_usize k1Wide 0#usize
  let y1 ← MacCampaign.Array.index_usize k1Wide 1#usize
  let y2 ← MacCampaign.Array.index_usize k1Wide 2#usize
  let y3 ← MacCampaign.Array.index_usize k1Wide 3#usize
  .ok { k1_positive := positive
        k1 := MacCampaign.Array.make 4#usize [y0, y1, y2, y3]
        k2_positive := false, k2 := beta }

def finishWide (reduced beta : ScalarArray) (b1 : WideArray) : Result Output := do
  let x0 ← MacCampaign.Array.index_usize reduced 0#usize
  let x1 ← MacCampaign.Array.index_usize reduced 1#usize
  let x2 ← MacCampaign.Array.index_usize reduced 2#usize
  let x3 ← MacCampaign.Array.index_usize reduced 3#usize
  let reducedWide := MacCampaign.Array.make 6#usize
    [x0, x1, x2, x3, 0#u64, 0#u64]
  let positive ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 reducedWide b1
  let k1Wide ← if positive then
    ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 reducedWide b1
  else ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1 reducedWide
  .ok { k1_positive := positive
        k1 := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide
        k2_positive := false, k2 := beta }

def finish (reduced beta : ScalarArray) (b1 : WideArray) : Result Output := do
  let reducedWide := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced
  let positive ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 reducedWide b1
  let k1Wide ← if positive then
    ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 reducedWide b1
  else ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1 reducedWide
  .ok { k1_positive := positive
        k1 := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide
        k2_positive := false, k2 := beta }

theorem raw_eq_wide (reduced beta : ScalarArray) (b1 : WideArray) :
    finishRaw reduced beta b1 = finishWide reduced beta b1 := by
  unfold finishRaw finishWide
  apply bind_congr_right
  intro x0
  apply bind_congr_right
  intro x1
  apply bind_congr_right
  intro x2
  apply bind_congr_right
  intro x3
  apply bind_congr_right
  intro positive
  cases positive <;> simp only [Bool.false_eq_true, ↓reduceIte]
  · apply bind_congr_right
    intro k1Wide
    exact Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.bind_low4 k1Wide
      (fun k1 => .ok (makeOutput false k1 beta))
  · apply bind_congr_right
    intro k1Wide
    exact Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.bind_low4 k1Wide
      (fun k1 => .ok (makeOutput true k1 beta))

theorem wide_eq_finish (reduced beta : ScalarArray) (b1 : WideArray) :
    finishWide reduced beta b1 = finish reduced beta b1 := by
  unfold finishWide finish
  exact Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.bind_widen4 reduced
    (fun reducedWide => do
      let positive ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 reducedWide b1
      let k1Wide ← if positive then
        ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 reducedWide b1
      else ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 b1 reducedWide
      .ok (makeOutput positive
        (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide) beta))

theorem raw_eq_finish (reduced beta : ScalarArray) (b1 : WideArray) :
    finishRaw reduced beta b1 = finish reduced beta b1 :=
  (raw_eq_wide reduced beta b1).trans (wide_eq_finish reduced beta b1)

def betaRaw (reduced : ScalarArray) (betaWide : WideArray) : Result Output := do
  let b0 ← MacCampaign.Array.index_usize betaWide 0#usize
  let b1 ← MacCampaign.Array.index_usize betaWide 1#usize
  let b2 ← MacCampaign.Array.index_usize betaWide 2#usize
  let b3 ← MacCampaign.Array.index_usize betaWide 3#usize
  let beta := MacCampaign.Array.make 4#usize [b0, b1, b2, b3]
  let product ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 beta
    ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE
  finishRaw reduced beta product

def beta (reduced : ScalarArray) (betaWide : WideArray) : Result Output := do
  let beta := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide
  let product ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 beta
    ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE
  finish reduced beta product

def betaMid (reduced : ScalarArray) (betaWide : WideArray) : Result Output := do
  let beta := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide
  let product ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 beta
    ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE
  finishRaw reduced beta product

theorem betaRaw_eq_mid (reduced : ScalarArray) (betaWide : WideArray) :
    betaRaw reduced betaWide = betaMid reduced betaWide := by
  unfold betaRaw betaMid
  exact Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.bind_low4 betaWide
    (fun beta => do
      let product ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 beta
        ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE
      finishRaw reduced beta product)

theorem betaMid_eq_beta (reduced : ScalarArray) (betaWide : WideArray) :
    betaMid reduced betaWide = beta reduced betaWide := by
  unfold betaMid beta
  apply bind_congr_right
  intro product
  exact raw_eq_finish reduced
    (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide) product

theorem betaRaw_eq_beta (reduced : ScalarArray) (betaWide : WideArray) :
    betaRaw reduced betaWide = beta reduced betaWide :=
  (betaRaw_eq_mid reduced betaWide).trans (betaMid_eq_beta reduced betaWide)

#print axioms raw_eq_wide
#print axioms wide_eq_finish
#print axioms raw_eq_finish
#print axioms betaRaw_eq_mid
#print axioms betaMid_eq_beta
#print axioms betaRaw_eq_beta

end Ipp.Extracted.ArkworksScalarMul.GlvDecompTails
