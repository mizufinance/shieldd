import Ipp.Extracted.ArkworksG2PreparedDoubleOps
import Ipp.Extracted.ArkworksG2PreparedAdditionModel

/-! Typed cuts for the extracted prepared-G2 mixed-addition chain. -/

namespace Ipp.Extracted.ArkworksG2PreparedAdditionOps

open Aeneas Aeneas.Std Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

abbrev Proj := Ipp.Extracted.ArkworksG2.G2ProjLimbTriple
abbrev Affine := ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont
abbrev Coeff := Ipp.Extracted.ArkworksG2PreparedModel.EllCoeffMont

structure Segment1A where
  theta : Fq2LimbPair
  lambda : Fq2LimbPair

def segment1A (r : Proj) (q : Affine) : Result Segment1A := do
  let qyZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul q.y r.z
  let theta ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub r.y qyZ
  let qxZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul q.x r.z
  let lambda ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub r.x qxZ
  .ok ⟨theta, lambda⟩

def CanonicalSegment1A (s : Segment1A) : Prop :=
  Canonical2 s.theta ∧ Canonical2 s.lambda

structure DecodedSegment1A where
  theta : Fq2
  lambda : Fq2

@[ext] theorem DecodedSegment1A.ext {left right : DecodedSegment1A}
    (htheta : left.theta = right.theta)
    (hlambda : left.lambda = right.lambda) : left = right := by
  cases left
  cases right
  simp_all

def decodeSegment1A (s : Segment1A) : DecodedSegment1A :=
  ⟨decodeFq2 s.theta, decodeFq2 s.lambda⟩

def modelSegment1A (r : G2HomProjective) (qx qy : Fq2) : DecodedSegment1A :=
  ⟨r.y - qy * r.z, r.x - qx * r.z⟩

structure Segment1 where
  theta : Fq2LimbPair
  lambda : Fq2LimbPair
  c : Fq2LimbPair
  d : Fq2LimbPair
  e : Fq2LimbPair

def segment1B (a : Segment1A) : Result Segment1 := do
  let c ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square a.theta
  let d ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square a.lambda
  let e ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.lambda d
  .ok ⟨a.theta, a.lambda, c, d, e⟩

def CanonicalSegment1 (s : Segment1) : Prop :=
  Canonical2 s.theta ∧ Canonical2 s.lambda ∧ Canonical2 s.c ∧
    Canonical2 s.d ∧ Canonical2 s.e

structure DecodedSegment1 where
  theta : Fq2
  lambda : Fq2
  c : Fq2
  d : Fq2
  e : Fq2

@[ext] theorem DecodedSegment1.ext {left right : DecodedSegment1}
    (htheta : left.theta = right.theta) (hlambda : left.lambda = right.lambda)
    (hc : left.c = right.c) (hd : left.d = right.d)
    (he : left.e = right.e) : left = right := by
  cases left
  cases right
  simp_all

def decodeSegment1 (s : Segment1) : DecodedSegment1 :=
  ⟨decodeFq2 s.theta, decodeFq2 s.lambda, decodeFq2 s.c,
    decodeFq2 s.d, decodeFq2 s.e⟩

def modelSegment1 (r : G2HomProjective) (qx qy : Fq2) : DecodedSegment1 :=
  let theta := r.y - qy * r.z
  let lambda := r.x - qx * r.z
  let c := theta ^ 2
  let d := lambda ^ 2
  ⟨theta, lambda, c, d, lambda * d⟩

def segment1 (r : Proj) (q : Affine) : Result Segment1 := do
  let a ← segment1A r q
  segment1B a

structure Segment2A where
  g : Fq2LimbPair
  h : Fq2LimbPair

def segment2A (r : Proj) (s : Segment1) : Result Segment2A := do
  let f ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul r.z s.c
  let g ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul r.x s.d
  let ePlusF ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add s.e f
  let twoG ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double g
  let h ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub ePlusF twoG
  .ok ⟨g, h⟩

def CanonicalSegment2A (s : Segment2A) : Prop :=
  Canonical2 s.g ∧ Canonical2 s.h

structure DecodedSegment2A where
  g : Fq2
  h : Fq2

@[ext] theorem DecodedSegment2A.ext {left right : DecodedSegment2A}
    (hg : left.g = right.g) (hh : left.h = right.h) : left = right := by
  cases left
  cases right
  simp_all

def decodeSegment2A (s : Segment2A) : DecodedSegment2A :=
  ⟨decodeFq2 s.g, decodeFq2 s.h⟩

def modelSegment2A (r : G2HomProjective) (s : DecodedSegment1) :
    DecodedSegment2A :=
  let g := r.x * s.d
  ⟨g, s.e + r.z * s.c - (g + g)⟩

structure Segment2 where
  h : Fq2LimbPair
  outX : Fq2LimbPair
  yHead : Fq2LimbPair

def segment2B (s1 : Segment1) (a : Segment2A) : Result Segment2 := do
  let outX ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.lambda a.h
  let gMinusH ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub a.g a.h
  let yHead ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.theta gMinusH
  .ok ⟨a.h, outX, yHead⟩

def CanonicalSegment2 (s : Segment2) : Prop :=
  Canonical2 s.h ∧ Canonical2 s.outX ∧ Canonical2 s.yHead

structure DecodedSegment2 where
  h : Fq2
  outX : Fq2
  yHead : Fq2

@[ext] theorem DecodedSegment2.ext {left right : DecodedSegment2}
    (hh : left.h = right.h) (hx : left.outX = right.outX)
    (hy : left.yHead = right.yHead) : left = right := by
  cases left
  cases right
  simp_all

def decodeSegment2 (s : Segment2) : DecodedSegment2 :=
  ⟨decodeFq2 s.h, decodeFq2 s.outX, decodeFq2 s.yHead⟩

def modelSegment2 (s1 : DecodedSegment1) (a : DecodedSegment2A) :
    DecodedSegment2 :=
  ⟨a.h, s1.lambda * a.h, s1.theta * (a.g - a.h)⟩

def segment2 (r : Proj) (s1 : Segment1) : Result Segment2 := do
  let a ← segment2A r s1
  segment2B s1 a

structure Segment3A where
  outY : Fq2LimbPair
  outZ : Fq2LimbPair

def segment3A (r : Proj) (s1 : Segment1) (s2 : Segment2) : Result Segment3A := do
  let eY ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.e r.y
  let outY ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub s2.yHead eY
  let outZ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul r.z s1.e
  .ok ⟨outY, outZ⟩

def CanonicalSegment3A (s : Segment3A) : Prop :=
  Canonical2 s.outY ∧ Canonical2 s.outZ

structure DecodedSegment3A where
  outY : Fq2
  outZ : Fq2

@[ext] theorem DecodedSegment3A.ext {left right : DecodedSegment3A}
    (hy : left.outY = right.outY) (hz : left.outZ = right.outZ) :
    left = right := by
  cases left
  cases right
  simp_all

def decodeSegment3A (s : Segment3A) : DecodedSegment3A :=
  ⟨decodeFq2 s.outY, decodeFq2 s.outZ⟩

def modelSegment3A (r : G2HomProjective) (s1 : DecodedSegment1)
    (s2 : DecodedSegment2) : DecodedSegment3A :=
  ⟨s2.yHead - s1.e * r.y, r.z * s1.e⟩

structure Segment3B where
  negTheta : Fq2LimbPair
  j : Fq2LimbPair

def segment3B (q : Affine) (s1 : Segment1) : Result Segment3B := do
  let thetaQx ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.theta q.x
  let lambdaQy ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul s1.lambda q.y
  let j ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub thetaQx lambdaQy
  let negTheta ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg s1.theta
  .ok ⟨negTheta, j⟩

def CanonicalSegment3B (s : Segment3B) : Prop :=
  Canonical2 s.negTheta ∧ Canonical2 s.j

structure DecodedSegment3B where
  negTheta : Fq2
  j : Fq2

@[ext] theorem DecodedSegment3B.ext {left right : DecodedSegment3B}
    (hn : left.negTheta = right.negTheta) (hj : left.j = right.j) :
    left = right := by
  cases left
  cases right
  simp_all

def decodeSegment3B (s : Segment3B) : DecodedSegment3B :=
  ⟨decodeFq2 s.negTheta, decodeFq2 s.j⟩

def modelSegment3B (qx qy : Fq2) (s1 : DecodedSegment1) : DecodedSegment3B :=
  ⟨-s1.theta, s1.theta * qx - s1.lambda * qy⟩

def segment3 (r : Proj) (q : Affine) (s1 : Segment1) (s2 : Segment2) :
    Result (Proj × Coeff) := do
  let a ← segment3A r s1 s2
  let b ← segment3B q s1
  .ok (⟨s2.outX, a.outY, a.outZ⟩, (s1.lambda, b.negTheta, b.j))

def modelSegment3State (s2 : DecodedSegment2) (a : DecodedSegment3A) :
    G2HomProjective := ⟨s2.outX, a.outY, a.outZ⟩

def modelSegment3Coeff (s1 : DecodedSegment1) (b : DecodedSegment3B) :
    EllCoeff := ⟨s1.lambda, b.negTheta, b.j⟩

def segmentedAddLine (r : Proj) (q : Affine) : Result (Proj × Coeff) := do
  let s1 ← segment1 r q
  let s2 ← segment2 r s1
  segment3 r q s1 s2

theorem g2_add_line_eq_segmented (r : Proj) (q : Affine) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line r q =
      segmentedAddLine r q := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line segmentedAddLine
    segment1 segment1A segment1B segment2 segment2A segment2B
    segment3 segment3A segment3B
  simp only [result_bind_assoc, Result.bind_ok]

#print axioms g2_add_line_eq_segmented

end Ipp.Extracted.ArkworksG2PreparedAdditionOps
