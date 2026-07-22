import Ipp.Extracted.ArkworksG2PreparedModel
import Mathlib.Tactic

/-! Typed continuation cuts for the extracted prepared-G2 doubling chain. -/

namespace Ipp.Extracted.ArkworksG2PreparedDoubleOps

open Aeneas Aeneas.Std Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

abbrev Proj := Ipp.Extracted.ArkworksG2.G2ProjLimbTriple
abbrev Coeff := Ipp.Extracted.ArkworksG2PreparedModel.EllCoeffMont

theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

theorem result_bind_assoc {α β γ : Type} (action : Result α)
    (next : α → Result β) (last : β → Result γ) :
    (action >>= next) >>= last = action >>= fun value => next value >>= last := by
  cases action <;> rfl

theorem fq2_double_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double a = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have c0s := Ipp.Extracted.ArkworksFq2.extracted_double_spec a.c0 c0 ha.1 h0
  have c1s := Ipp.Extracted.ArkworksFq2.extracted_double_spec a.c1 c1 ha.2 h1
  refine ⟨⟨c0s.1, c1s.1⟩, ?_⟩
  have e0 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c0 c0 ha.1 h0
  have e1 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c1 c1 ha.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, e0, e1]

theorem fq2_add_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 b :=
  ⟨canonical_fq2_add a b output ha hb hexec,
    decode_fq2_add a b output ha hb hexec⟩

theorem fq2_sub_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a - decodeFq2 b :=
  ⟨canonical_fq2_sub a b output ha hb hexec,
    decode_fq2_sub a b output ha hb hexec⟩

theorem fq2_neg_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg a = .ok output) :
    Canonical2 output ∧ decodeFq2 output = -decodeFq2 a := by
  have hdecode := decode_fq2_neg a output ha hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have c0s := Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c0 c0 ha.1 h0
  have c1s := Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c1 c1 ha.2 h1
  exact ⟨⟨c0s.1, c1s.1⟩, hdecode⟩

theorem fq2_mul_fp_spec (a : Fq2LimbPair) (b : LimbArray)
    (output : Fq2LimbPair) (ha : Canonical2 a)
    (hb : limbsToNat b < baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp a b = .ok output) :
    Canonical2 output ∧
      decodeFq2 output = fq2MulFq (decodeFq2 a) (decode b) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have c0s := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.c0 b c0 ha.1 hb h0
  have c1s := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.c1 b c1 ha.2 hb h1
  have e0 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul a.c0 b c0 ha.1 hb h0
  have e1 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul a.c1 b c1 ha.2 hb h1
  refine ⟨⟨c0s.1, c1s.1⟩, ?_⟩
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, fq2MulFq, fq2OfFq, e0, e1]

structure Segment1 where
  aa1 : Fq2LimbPair
  b : Fq2LimbPair
  c : Fq2LimbPair
  e : Fq2LimbPair
  f : Fq2LimbPair
  g : Fq2LimbPair

def segment1 (r : Proj) (twoInvMont : LimbArray) : Result Segment1 := do
  let aa ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul r.x r.y
  let aa1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp aa twoInvMont
  let b ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r.y
  let c ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r.z
  let twoC ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double c
  let threeC ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoC c
  let e ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
    ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B threeC
  let twoE ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double e
  let f ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoE e
  let bPlusF ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add b f
  let g ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp bPlusF twoInvMont
  .ok ⟨aa1, b, c, e, f, g⟩

def CanonicalSegment1 (s : Segment1) : Prop :=
  Canonical2 s.aa1 ∧ Canonical2 s.b ∧ Canonical2 s.c ∧
    Canonical2 s.e ∧ Canonical2 s.f ∧ Canonical2 s.g

structure DecodedSegment1 where
  aa1 : Fq2
  b : Fq2
  c : Fq2
  e : Fq2
  f : Fq2
  g : Fq2

@[ext] theorem DecodedSegment1.ext {left right : DecodedSegment1}
    (haa1 : left.aa1 = right.aa1) (hb : left.b = right.b)
    (hc : left.c = right.c) (he : left.e = right.e)
    (hf : left.f = right.f) (hg : left.g = right.g) : left = right := by
  cases left
  cases right
  simp_all

def decodeSegment1 (s : Segment1) : DecodedSegment1 :=
  ⟨decodeFq2 s.aa1, decodeFq2 s.b, decodeFq2 s.c,
    decodeFq2 s.e, decodeFq2 s.f, decodeFq2 s.g⟩

def modelSegment1 (r : G2HomProjective) : DecodedSegment1 :=
  let b := r.y * r.y
  let c := r.z * r.z
  let e := g2TwistB * (c + c + c)
  let f := e + e + e
  ⟨fq2MulFq (r.x * r.y) twoInv, b, c, e, f,
    fq2MulFq (b + f) twoInv⟩

structure Segment1A where
  aa1 : Fq2LimbPair
  b : Fq2LimbPair
  c : Fq2LimbPair

def segment1A (r : Proj) (twoInvMont : LimbArray) : Result Segment1A := do
  let aa ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul r.x r.y
  let aa1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp aa twoInvMont
  let b ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r.y
  let c ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r.z
  .ok ⟨aa1, b, c⟩

def CanonicalSegment1A (s : Segment1A) : Prop :=
  Canonical2 s.aa1 ∧ Canonical2 s.b ∧ Canonical2 s.c

structure DecodedSegment1A where
  aa1 : Fq2
  b : Fq2
  c : Fq2

def decodeSegment1A (s : Segment1A) : DecodedSegment1A :=
  ⟨decodeFq2 s.aa1, decodeFq2 s.b, decodeFq2 s.c⟩

@[ext] theorem DecodedSegment1A.ext {left right : DecodedSegment1A}
    (haa1 : left.aa1 = right.aa1) (hb : left.b = right.b)
    (hc : left.c = right.c) : left = right := by
  cases left
  cases right
  simp_all

def modelSegment1A (r : G2HomProjective) : DecodedSegment1A :=
  ⟨fq2MulFq (r.x * r.y) twoInv, r.y * r.y, r.z * r.z⟩

def segment1B (a : Segment1A) : Result Fq2LimbPair := do
  let twoC ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double a.c
  let threeC ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoC a.c
  ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
    ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B threeC

structure Segment1C where
  f : Fq2LimbPair
  g : Fq2LimbPair

def segment1C (a : Segment1A) (e : Fq2LimbPair) (twoInvMont : LimbArray) :
    Result Segment1C := do
  let twoE ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double e
  let f ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoE e
  let bPlusF ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a.b f
  let g ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp bPlusF twoInvMont
  .ok ⟨f, g⟩

def segment1Cut (r : Proj) (twoInvMont : LimbArray) : Result Segment1 := do
  let a ← segment1A r twoInvMont
  let e ← segment1B a
  let tail ← segment1C a e twoInvMont
  .ok ⟨a.aa1, a.b, a.c, e, tail.f, tail.g⟩

theorem segment1_eq_cut (r : Proj) (twoInvMont : LimbArray) :
    segment1 r twoInvMont = segment1Cut r twoInvMont := by
  unfold segment1 segment1Cut segment1A segment1B segment1C
  simp only [result_bind_assoc, Result.bind_ok]

structure Segment2 where
  h : Fq2LimbPair
  i : Fq2LimbPair
  j : Fq2LimbPair
  e2 : Fq2LimbPair
  outX : Fq2LimbPair

def segment2 (r : Proj) (s : Segment1) : Result Segment2 := do
  let yPlusZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add r.y r.z
  let yPlusZ2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square yPlusZ
  let bPlusC ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add s.b s.c
  let h ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub yPlusZ2 bPlusC
  let i ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub s.e s.b
  let j ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r.x
  let e2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square s.e
  let bMinusF ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub s.b s.f
  let outX ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s.aa1 bMinusF
  .ok ⟨h, i, j, e2, outX⟩

def CanonicalSegment2 (s : Segment2) : Prop :=
  Canonical2 s.h ∧ Canonical2 s.i ∧ Canonical2 s.j ∧
    Canonical2 s.e2 ∧ Canonical2 s.outX

structure DecodedSegment2 where
  h : Fq2
  i : Fq2
  j : Fq2
  e2 : Fq2
  outX : Fq2

@[ext] theorem DecodedSegment2.ext {left right : DecodedSegment2}
    (hh : left.h = right.h) (hi : left.i = right.i)
    (hj : left.j = right.j) (he2 : left.e2 = right.e2)
    (hx : left.outX = right.outX) : left = right := by
  cases left
  cases right
  simp_all

def decodeSegment2 (s : Segment2) : DecodedSegment2 :=
  ⟨decodeFq2 s.h, decodeFq2 s.i, decodeFq2 s.j,
    decodeFq2 s.e2, decodeFq2 s.outX⟩

def modelSegment2 (r : G2HomProjective) (s : DecodedSegment1) : DecodedSegment2 :=
  let h := (r.y + r.z) * (r.y + r.z) - (s.b + s.c)
  ⟨h, s.e - s.b, r.x * r.x, s.e * s.e, s.aa1 * (s.b - s.f)⟩

def segment2A (r : Proj) (s : Segment1) : Result Fq2LimbPair := do
  let yPlusZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add r.y r.z
  let yPlusZ2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square yPlusZ
  let bPlusC ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add s.b s.c
  ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub yPlusZ2 bPlusC

structure Segment2Tail where
  i : Fq2LimbPair
  j : Fq2LimbPair
  e2 : Fq2LimbPair
  outX : Fq2LimbPair

def segment2B (r : Proj) (s : Segment1) : Result Segment2Tail := do
  let i ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub s.e s.b
  let j ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r.x
  let e2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square s.e
  let bMinusF ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub s.b s.f
  let outX ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s.aa1 bMinusF
  .ok ⟨i, j, e2, outX⟩

def segment2Cut (r : Proj) (s : Segment1) : Result Segment2 := do
  let h ← segment2A r s
  let tail ← segment2B r s
  .ok ⟨h, tail.i, tail.j, tail.e2, tail.outX⟩

theorem segment2_eq_cut (r : Proj) (s : Segment1) :
    segment2 r s = segment2Cut r s := by
  unfold segment2 segment2Cut segment2A segment2B
  simp only [result_bind_assoc, Result.bind_ok]

def segment3 (s1 : Segment1) (s2 : Segment2) :
    Result (Proj × Coeff) := do
  let g2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square s1.g
  let twoE2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double s2.e2
  let threeE2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoE2 s2.e2
  let outY ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub g2 threeE2
  let outZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.b s2.h
  let negH ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg s2.h
  let twoJ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double s2.j
  let threeJ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoJ s2.j
  .ok ({ x := s2.outX, y := outY, z := outZ }, (negH, threeJ, s2.i))

structure Segment3A where
  outY : Fq2LimbPair

def segment3A (s1 : Segment1) (s2 : Segment2) : Result Segment3A := do
  let g2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square s1.g
  let twoE2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double s2.e2
  let threeE2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoE2 s2.e2
  let outY ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub g2 threeE2
  .ok ⟨outY⟩

structure Segment3B where
  outZ : Fq2LimbPair
  negH : Fq2LimbPair
  threeJ : Fq2LimbPair

def segment3B (s1 : Segment1) (s2 : Segment2) : Result Segment3B := do
  let outZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.b s2.h
  let negH ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg s2.h
  let twoJ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double s2.j
  let threeJ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add twoJ s2.j
  .ok ⟨outZ, negH, threeJ⟩

def segment3Cut (s1 : Segment1) (s2 : Segment2) : Result (Proj × Coeff) := do
  let a ← segment3A s1 s2
  let b ← segment3B s1 s2
  .ok ({ x := s2.outX, y := a.outY, z := b.outZ }, (b.negH, b.threeJ, s2.i))

theorem segment3_eq_cut (s1 : Segment1) (s2 : Segment2) :
    segment3 s1 s2 = segment3Cut s1 s2 := by
  unfold segment3 segment3Cut segment3A segment3B
  simp only [result_bind_assoc, Result.bind_ok]

def modelSegment3State (s1 : DecodedSegment1) (s2 : DecodedSegment2) :
    G2HomProjective :=
  ⟨s2.outX, s1.g * s1.g - (s2.e2 + s2.e2 + s2.e2), s1.b * s2.h⟩

def modelSegment3Coeff (s2 : DecodedSegment2) : EllCoeff :=
  ⟨-s2.h, s2.j + s2.j + s2.j, s2.i⟩

def segmentedDoubleLine (r : Proj) (twoInvMont : LimbArray) :
    Result (Proj × Coeff) := do
  let s1 ← segment1 r twoInvMont
  let s2 ← segment2 r s1
  segment3 s1 s2

theorem g2_double_line_eq_segmented (r : Proj) (twoInvMont : LimbArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont =
      segmentedDoubleLine r twoInvMont := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
    segmentedDoubleLine segment1 segment2 segment3
  simp only [result_bind_assoc, Result.bind_ok]

end Ipp.Extracted.ArkworksG2PreparedDoubleOps
