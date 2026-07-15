import Ipp.Bls12377

/-!
Exact BLS12-377 curve orders and the arithmetic facts used by subgroup proofs.
The two point counts are retained published mathematics, not derived here.
-/

namespace Ipp.Bls12377

def g1GroupOrder : Nat :=
  258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448

def g2GroupOrder : Nat :=
  66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377

/--
The published point counts for the concrete BLS12-377 curve and its G2 twist.

Sources: arkworks-rs/curves v0.5.0, `bls12_377/src/curves/g1.rs` and
`g2.rs` (`COFACTOR` with scalar-field modulus `FrConfig::MODULUS`); Bowe et al.,
"Zexe: Enabling Decentralized Private Computation", [BCGMMW20],
IACR ePrint 2018/962, BLS12-377 parameter listing. These equalities are a
cited mathematics boundary; they are not derived from curve arithmetic here.
-/
structure PublishedCurveOrderFacts : Prop where
  g1_cardinality : Nat.card G1 =
    30631250834960419227450344600217059328 * scalarModulus
  g2_cardinality : Nat.card G2 =
    7923214915284317143930293550643874566881017850177945424769256759165301436616933228209277966774092486467289478618404761412630691835764674559376407658497 *
      scalarModulus

theorem g1Cofactor_mul_scalarModulus :
    g1Cofactor * scalarModulus =
      258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448 := by
  norm_num [g1Cofactor, scalarModulus]

theorem g2Cofactor_mul_scalarModulus :
    g2Cofactor * scalarModulus =
      66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377 := by
  norm_num [g2Cofactor, scalarModulus]

theorem PublishedCurveOrderFacts.g1_cardinality_eq_groupOrder
    (facts : PublishedCurveOrderFacts) : Nat.card G1 = g1GroupOrder := by
  rw [facts.g1_cardinality]
  norm_num [scalarModulus, g1GroupOrder]

theorem PublishedCurveOrderFacts.g2_cardinality_eq_groupOrder
    (facts : PublishedCurveOrderFacts) : Nat.card G2 = g2GroupOrder := by
  rw [facts.g2_cardinality]
  norm_num [scalarModulus, g2GroupOrder]

theorem scalarModulus_prime : scalarModulus.Prime :=
  arithmeticFacts.scalarPrime

theorem g1Cofactor_coprime_scalarModulus :
    Nat.Coprime g1Cofactor scalarModulus := by
  norm_num [g1Cofactor, scalarModulus, Nat.Coprime]

theorem g2Cofactor_coprime_scalarModulus :
    Nat.Coprime g2Cofactor scalarModulus := by
  norm_num [g2Cofactor, scalarModulus, Nat.Coprime]

theorem g1Cofactor_gcd_scalarModulus :
    Nat.gcd g1Cofactor scalarModulus = 1 :=
  g1Cofactor_coprime_scalarModulus

theorem g2Cofactor_gcd_scalarModulus :
    Nat.gcd g2Cofactor scalarModulus = 1 :=
  g2Cofactor_coprime_scalarModulus

theorem scalarModulus_not_dvd_g1Cofactor :
    ¬ scalarModulus ∣ g1Cofactor := by
  norm_num [g1Cofactor, scalarModulus]

theorem scalarModulus_not_dvd_g2Cofactor :
    ¬ scalarModulus ∣ g2Cofactor := by
  norm_num [g2Cofactor, scalarModulus]

theorem scalarModulus_dvd_g1GroupOrder :
    scalarModulus ∣ g1GroupOrder := by
  change scalarModulus ∣
    258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448
  rw [← g1Cofactor_mul_scalarModulus]
  exact dvd_mul_left _ _

theorem scalarModulus_dvd_g2GroupOrder :
    scalarModulus ∣ g2GroupOrder := by
  change scalarModulus ∣
    66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377
  rw [← g2Cofactor_mul_scalarModulus]
  exact dvd_mul_left _ _

theorem scalarModulus_sq_not_dvd_g1GroupOrder :
    ¬ scalarModulus ^ 2 ∣ g1GroupOrder := by
  norm_num [scalarModulus, g1GroupOrder]

theorem scalarModulus_sq_not_dvd_g2GroupOrder :
    ¬ scalarModulus ^ 2 ∣ g2GroupOrder := by
  norm_num [scalarModulus, g2GroupOrder]

end Ipp.Bls12377
