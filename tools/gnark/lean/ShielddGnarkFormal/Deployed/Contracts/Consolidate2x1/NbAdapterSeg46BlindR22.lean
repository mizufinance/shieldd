import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46Blind_rows221 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow609 rho ∧ Seg46.relationRow1953 rho ∧ Seg46.relationRow1954 rho ∧ Seg46.relationRow1955 rho ∧ Seg46.relationRow1956 rho ∧ Seg46.relationRow1957 rho ∧ Seg46.relationRow1958 rho ∧ Seg46.relationRow1959 rho ∧ Seg46.relationRow1960 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r609, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r609, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960⟩

theorem seg46Blind_rung221 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31882 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 221)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      221 (Bool.toZMod bit) (seg46BlindAccState rho 221)
      (seg46BlindAccState rho 222) := by
  obtain ⟨r609, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960⟩ := seg46Blind_rows221 rho h
  unfold Seg46.relationRow609 at r609

  unfold Seg46.relationRow1953 at r1953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1953

  unfold Seg46.relationRow1954 at r1954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1954

  unfold Seg46.relationRow1955 at r1955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1955

  unfold Seg46.relationRow1956 at r1956

  unfold Seg46.relationRow1957 at r1957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1957

  unfold Seg46.relationRow1958 at r1958

  unfold Seg46.relationRow1959 at r1959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1959

  unfold Seg46.relationRow1960 at r1960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1960

  have hnextx : seg46BlindDeltaX221 rho =
      seg46BlindDeltaX220 rho + rho 33231 := by
    unfold seg46BlindDeltaX221 seg46BlindDeltaX220
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 71]

    ring

  have hnexty : seg46BlindDeltaY221 rho =
      seg46BlindDeltaY220 rho + rho 33232 := by
    unfold seg46BlindDeltaY221 seg46BlindDeltaY220
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 221
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX220 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY220 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX221 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY221 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY220 rho) (rho 33232)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 221)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (3582457232854017490679727548806619789199351417472999200107726731446390762695 : Seg46.F) (8356398933712813133618965600787090502994906481482673616451228079613955108354 : Seg46.F)
    (3494394417138460200049868210812163760818358563801608988623721355142936632008 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (4185009705009278583157337959757827265049367783660213600747228776622166843885 : Seg46.F) (383082562966876509052088454560345866870394795901995490069381434441366547319 : Seg46.F)
    (7058699996902104145726176427107042444173523936118927654194633626935732919530 : Seg46.F) (6728986854277284273646630166159785858660288012003642140720191996229406231791 : Seg46.F)
    (88062815715557290629859337994456028380992853671390211484005376303454130687 : Seg46.F) (4862004516574352933569097389974926742176547917681064627827506724471018476346 : Seg46.F)
    (1715474895151086150602194772621760672715611323150421687215041459688003007250 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX220 rho) (seg46BlindDeltaY220 rho) (rho 31882)
    (rho 33225) (rho 33226) (rho 33227) (rho 33229)
    (rho 33228) (rho 33230) (rho 33231) (rho 33232) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 221)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L221]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX220 seg46BlindDeltaY220;
        first | linear_combination r1953 | linear_combination -r1953)
    (by unfold seg46BlindDeltaX220 seg46BlindDeltaY220;
        first | linear_combination r1954 | linear_combination -r1954)
    (by unfold seg46BlindDeltaX220 seg46BlindDeltaY220;
        first | linear_combination r1955 | linear_combination -r1955)
    (by first | linear_combination r1956 | linear_combination -r1956)
    (by unfold seg46BlindDeltaX220 seg46BlindDeltaY220;
        first | linear_combination r1957 | linear_combination -r1957)
    (by first | linear_combination r1958 | linear_combination -r1958)
    (by unfold seg46BlindDeltaX220; first | linear_combination r1959 | linear_combination -r1959)
    (by unfold seg46BlindDeltaY220; first | linear_combination r1960 | linear_combination -r1960)
    (by linear_combination r609)

theorem seg46Blind_rows222 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow610 rho ∧ Seg46.relationRow1961 rho ∧ Seg46.relationRow1962 rho ∧ Seg46.relationRow1963 rho ∧ Seg46.relationRow1964 rho ∧ Seg46.relationRow1965 rho ∧ Seg46.relationRow1966 rho ∧ Seg46.relationRow1967 rho ∧ Seg46.relationRow1968 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1961, r1962, r1963, r1964, r1965, r1966, r1967, r1968, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r610, r1961, r1962, r1963, r1964, r1965, r1966, r1967, r1968⟩

theorem seg46Blind_rung222 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31883 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 222)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      222 (Bool.toZMod bit) (seg46BlindAccState rho 222)
      (seg46BlindAccState rho 223) := by
  obtain ⟨r610, r1961, r1962, r1963, r1964, r1965, r1966, r1967, r1968⟩ := seg46Blind_rows222 rho h
  unfold Seg46.relationRow610 at r610

  unfold Seg46.relationRow1961 at r1961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1961

  unfold Seg46.relationRow1962 at r1962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1962

  unfold Seg46.relationRow1963 at r1963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1963

  unfold Seg46.relationRow1964 at r1964

  unfold Seg46.relationRow1965 at r1965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1965

  unfold Seg46.relationRow1966 at r1966

  unfold Seg46.relationRow1967 at r1967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1967

  unfold Seg46.relationRow1968 at r1968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1968

  have hnextx : seg46BlindDeltaX222 rho =
      seg46BlindDeltaX221 rho + rho 33239 := by
    unfold seg46BlindDeltaX222 seg46BlindDeltaX221
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 72]

    ring

  have hnexty : seg46BlindDeltaY222 rho =
      seg46BlindDeltaY221 rho + rho 33240 := by
    unfold seg46BlindDeltaY222 seg46BlindDeltaY221
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 222
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX221 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY221 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX222 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY222 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY221 rho) (rho 33240)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 222)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (587431020291212425077570287060209112092291997683260210283999568885891829628 : Seg46.F) (3186933932818472081082754308592615368266078739163828012042132765608240016162 : Seg46.F)
    (3774364953109684506160324595652824480358370736847088222326132334494131845790 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (1041016696261873307340336047327981763298628938291660533116945156646556318662 : Seg46.F) (1950914135566194575319471229970379663738043476462169302070774594291170094184 : Seg46.F)
    (3892941673995227343189094966822599319633698296099933602780283735295161868150 : Seg46.F) (8206664081642874400187193726097639596885188106632599162464539278848572535457 : Seg46.F)
    (5257527816609898343166070630188931163109820595990235815893100690309169222879 : Seg46.F) (7857030729137157999171254651721337419283607337470803617651233887031517409413 : Seg46.F)
    (237797667785496024061631212683906934490711228521464665470694177068836703584 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX221 rho) (seg46BlindDeltaY221 rho) (rho 31883)
    (rho 33233) (rho 33234) (rho 33235) (rho 33237)
    (rho 33236) (rho 33238) (rho 33239) (rho 33240) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 222)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L222]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX221 seg46BlindDeltaY221;
        first | linear_combination r1961 | linear_combination -r1961)
    (by unfold seg46BlindDeltaX221 seg46BlindDeltaY221;
        first | linear_combination r1962 | linear_combination -r1962)
    (by unfold seg46BlindDeltaX221 seg46BlindDeltaY221;
        first | linear_combination r1963 | linear_combination -r1963)
    (by first | linear_combination r1964 | linear_combination -r1964)
    (by unfold seg46BlindDeltaX221 seg46BlindDeltaY221;
        first | linear_combination r1965 | linear_combination -r1965)
    (by first | linear_combination r1966 | linear_combination -r1966)
    (by unfold seg46BlindDeltaX221; first | linear_combination r1967 | linear_combination -r1967)
    (by unfold seg46BlindDeltaY221; first | linear_combination r1968 | linear_combination -r1968)
    (by linear_combination r610)

theorem seg46Blind_rows223 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow611 rho ∧ Seg46.relationRow1969 rho ∧ Seg46.relationRow1970 rho ∧ Seg46.relationRow1971 rho ∧ Seg46.relationRow1972 rho ∧ Seg46.relationRow1973 rho ∧ Seg46.relationRow1974 rho ∧ Seg46.relationRow1975 rho ∧ Seg46.relationRow1976 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r611, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r611, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976⟩

theorem seg46Blind_rung223 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31884 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 223)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      223 (Bool.toZMod bit) (seg46BlindAccState rho 223)
      (seg46BlindAccState rho 224) := by
  obtain ⟨r611, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976⟩ := seg46Blind_rows223 rho h
  unfold Seg46.relationRow611 at r611

  unfold Seg46.relationRow1969 at r1969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1969

  unfold Seg46.relationRow1970 at r1970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1970

  unfold Seg46.relationRow1971 at r1971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1971

  unfold Seg46.relationRow1972 at r1972

  unfold Seg46.relationRow1973 at r1973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1973

  unfold Seg46.relationRow1974 at r1974

  unfold Seg46.relationRow1975 at r1975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1975

  unfold Seg46.relationRow1976 at r1976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1976

  have hnextx : seg46BlindDeltaX223 rho =
      seg46BlindDeltaX222 rho + rho 33247 := by
    unfold seg46BlindDeltaX223 seg46BlindDeltaX222
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 73]

    ring

  have hnexty : seg46BlindDeltaY223 rho =
      seg46BlindDeltaY222 rho + rho 33248 := by
    unfold seg46BlindDeltaY223 seg46BlindDeltaY222
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 223
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX222 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY222 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX223 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY223 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY222 rho) (rho 33248)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 223)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (6252774744021088771151931377995730287240547912466162259661321476502298112282 : Seg46.F) (772809274111116873408109393460791188669308610482743526629127229971911097569 : Seg46.F)
    (7025584018132205644560040771456521475909856522948905786290448706474209209851 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (3985374247453837473222794541343338310233095765846577436468927911938475780633 : Seg46.F) (7105142906426796296168390025664855125272204098034851028457940225008388755719 : Seg46.F)
    (6429624184377402250098413480349454538985920751972232079382271333906710152618 : Seg46.F) (1487172118229649689952765374861572725388206842740353873295223984256631187008 : Seg46.F)
    (7671652475317253550840715545320755342706590724671320301306106225945498141472 : Seg46.F) (2191687005407281653096893560785816244135351422687901568273911979415111126759 : Seg46.F)
    (6957289631198720734296059563919973805987692492413709954640009471660778052033 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX222 rho) (seg46BlindDeltaY222 rho) (rho 31884)
    (rho 33241) (rho 33242) (rho 33243) (rho 33245)
    (rho 33244) (rho 33246) (rho 33247) (rho 33248) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 223)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L223]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX222 seg46BlindDeltaY222;
        first | linear_combination r1969 | linear_combination -r1969)
    (by unfold seg46BlindDeltaX222 seg46BlindDeltaY222;
        first | linear_combination r1970 | linear_combination -r1970)
    (by unfold seg46BlindDeltaX222 seg46BlindDeltaY222;
        first | linear_combination r1971 | linear_combination -r1971)
    (by first | linear_combination r1972 | linear_combination -r1972)
    (by unfold seg46BlindDeltaX222 seg46BlindDeltaY222;
        first | linear_combination r1973 | linear_combination -r1973)
    (by first | linear_combination r1974 | linear_combination -r1974)
    (by unfold seg46BlindDeltaX222; first | linear_combination r1975 | linear_combination -r1975)
    (by unfold seg46BlindDeltaY222; first | linear_combination r1976 | linear_combination -r1976)
    (by linear_combination r611)

theorem seg46Blind_rows224 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow612 rho ∧ Seg46.relationRow1977 rho ∧ Seg46.relationRow1978 rho ∧ Seg46.relationRow1979 rho ∧ Seg46.relationRow1980 rho ∧ Seg46.relationRow1981 rho ∧ Seg46.relationRow1982 rho ∧ Seg46.relationRow1983 rho ∧ Seg46.relationRow1984 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r612, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984⟩

theorem seg46Blind_rung224 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31885 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 224)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      224 (Bool.toZMod bit) (seg46BlindAccState rho 224)
      (seg46BlindAccState rho 225) := by
  obtain ⟨r612, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984⟩ := seg46Blind_rows224 rho h
  unfold Seg46.relationRow612 at r612

  unfold Seg46.relationRow1977 at r1977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1977

  unfold Seg46.relationRow1978 at r1978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1978

  unfold Seg46.relationRow1979 at r1979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1979

  unfold Seg46.relationRow1980 at r1980

  unfold Seg46.relationRow1981 at r1981

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1981

  unfold Seg46.relationRow1982 at r1982

  unfold Seg46.relationRow1983 at r1983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1983

  unfold Seg46.relationRow1984 at r1984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1984

  have hnextx : seg46BlindDeltaX224 rho =
      seg46BlindDeltaX223 rho + rho 33255 := by
    unfold seg46BlindDeltaX224 seg46BlindDeltaX223
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 74]

    ring

  have hnexty : seg46BlindDeltaY224 rho =
      seg46BlindDeltaY223 rho + rho 33256 := by
    unfold seg46BlindDeltaY224 seg46BlindDeltaY223
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 224
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX223 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY223 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX224 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY224 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY223 rho) (rho 33256)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 224)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (1150864079152338539263846845990030258145800544795680543046530314609120824927 : Seg46.F) (6971256099087244692275809914967681648836661854443374148096234117134425472605 : Seg46.F)
    (8122120178239583231539656760957711906982462399239054691142764431743546297532 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (8121534017638747712901180734970758415438419734352178356186262260998119810492 : Seg46.F) (4772544478899057561087517555422350775831763930266204989794514715128854340322 : Seg46.F)
    (1727421586306472614272207993773771346151534926016096070848824142586155885468 : Seg46.F) (3380996375578589786828362597009559611897641602946356887564983522646506006161 : Seg46.F)
    (1473205650341125731973015023813864882539237480710689679838999338782983766436 : Seg46.F) (7293597670276031884984978092791516273230098790358383284888703141308288414114 : Seg46.F)
    (5063465373849780637420462341771986919478257732207706940370249933270903232880 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX223 rho) (seg46BlindDeltaY223 rho) (rho 31885)
    (rho 33249) (rho 33250) (rho 33251) (rho 33253)
    (rho 33252) (rho 33254) (rho 33255) (rho 33256) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 224)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L224]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX223 seg46BlindDeltaY223;
        first | linear_combination r1977 | linear_combination -r1977)
    (by unfold seg46BlindDeltaX223 seg46BlindDeltaY223;
        first | linear_combination r1978 | linear_combination -r1978)
    (by unfold seg46BlindDeltaX223 seg46BlindDeltaY223;
        first | linear_combination r1979 | linear_combination -r1979)
    (by first | linear_combination r1980 | linear_combination -r1980)
    (by unfold seg46BlindDeltaX223 seg46BlindDeltaY223;
        first | linear_combination r1981 | linear_combination -r1981)
    (by first | linear_combination r1982 | linear_combination -r1982)
    (by unfold seg46BlindDeltaX223; first | linear_combination r1983 | linear_combination -r1983)
    (by unfold seg46BlindDeltaY223; first | linear_combination r1984 | linear_combination -r1984)
    (by linear_combination r612)

theorem seg46Blind_rows225 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow613 rho ∧ Seg46.relationRow1985 rho ∧ Seg46.relationRow1986 rho ∧ Seg46.relationRow1987 rho ∧ Seg46.relationRow1988 rho ∧ Seg46.relationRow1989 rho ∧ Seg46.relationRow1990 rho ∧ Seg46.relationRow1991 rho ∧ Seg46.relationRow1992 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r613, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, _, _, _, _, _, _, _⟩

  exact ⟨r613, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992⟩

theorem seg46Blind_rung225 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31886 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 225)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      225 (Bool.toZMod bit) (seg46BlindAccState rho 225)
      (seg46BlindAccState rho 226) := by
  obtain ⟨r613, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992⟩ := seg46Blind_rows225 rho h
  unfold Seg46.relationRow613 at r613

  unfold Seg46.relationRow1985 at r1985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1985

  unfold Seg46.relationRow1986 at r1986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1986

  unfold Seg46.relationRow1987 at r1987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1987

  unfold Seg46.relationRow1988 at r1988

  unfold Seg46.relationRow1989 at r1989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1989

  unfold Seg46.relationRow1990 at r1990

  unfold Seg46.relationRow1991 at r1991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1991

  unfold Seg46.relationRow1992 at r1992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1992

  have hnextx : seg46BlindDeltaX225 rho =
      seg46BlindDeltaX224 rho + rho 33263 := by
    unfold seg46BlindDeltaX225 seg46BlindDeltaX224
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 75]

    ring

  have hnexty : seg46BlindDeltaY225 rho =
      seg46BlindDeltaY224 rho + rho 33264 := by
    unfold seg46BlindDeltaY225 seg46BlindDeltaY224
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 225
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX224 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY224 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX225 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY225 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY224 rho) (rho 33264)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 225)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (2477411039352224260586883854216779246546796701215891281646540553915667872452 : Seg46.F) (2931874370928210846062542283899266086203817363132369643143240489346137578087 : Seg46.F)
    (5409285410280435106649426138116045332750614064348260924789781043261805450539 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (7396561173192761342171703816622081539789750781429800259604856513236740885859 : Seg46.F) (1421462245074834074587288782787002326083756887145579104072002412561438665897 : Seg46.F)
    (1527964148890742347591961995730542078352246799645079595788984596084193822120 : Seg46.F) (919069346133274648680457014640972352594596254071944761169385492814603032499 : Seg46.F)
    (5512587378500159578186282654882280445172081972021694184791992966571271660954 : Seg46.F) (5967050710076146163661941084564767284829102633938172546288692902001741366589 : Seg46.F)
    (7525392403295095775568367924140574178781303081082119066765847963102806206542 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX224 rho) (seg46BlindDeltaY224 rho) (rho 31886)
    (rho 33257) (rho 33258) (rho 33259) (rho 33261)
    (rho 33260) (rho 33262) (rho 33263) (rho 33264) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 225)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L225]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX224 seg46BlindDeltaY224;
        first | linear_combination r1985 | linear_combination -r1985)
    (by unfold seg46BlindDeltaX224 seg46BlindDeltaY224;
        first | linear_combination r1986 | linear_combination -r1986)
    (by unfold seg46BlindDeltaX224 seg46BlindDeltaY224;
        first | linear_combination r1987 | linear_combination -r1987)
    (by first | linear_combination r1988 | linear_combination -r1988)
    (by unfold seg46BlindDeltaX224 seg46BlindDeltaY224;
        first | linear_combination r1989 | linear_combination -r1989)
    (by first | linear_combination r1990 | linear_combination -r1990)
    (by unfold seg46BlindDeltaX224; first | linear_combination r1991 | linear_combination -r1991)
    (by unfold seg46BlindDeltaY224; first | linear_combination r1992 | linear_combination -r1992)
    (by linear_combination r613)

theorem seg46Blind_rows226 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow614 rho ∧ Seg46.relationRow1993 rho ∧ Seg46.relationRow1994 rho ∧ Seg46.relationRow1995 rho ∧ Seg46.relationRow1996 rho ∧ Seg46.relationRow1997 rho ∧ Seg46.relationRow1998 rho ∧ Seg46.relationRow1999 rho ∧ Seg46.relationRow2000 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, p25, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩

  unfold Seg46.relationPart25 at p25

  rcases p25 with ⟨r2000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r614, r1993, r1994, r1995, r1996, r1997, r1998, r1999, r2000⟩

theorem seg46Blind_rung226 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31887 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 226)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      226 (Bool.toZMod bit) (seg46BlindAccState rho 226)
      (seg46BlindAccState rho 227) := by
  obtain ⟨r614, r1993, r1994, r1995, r1996, r1997, r1998, r1999, r2000⟩ := seg46Blind_rows226 rho h
  unfold Seg46.relationRow614 at r614

  unfold Seg46.relationRow1993 at r1993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1993

  unfold Seg46.relationRow1994 at r1994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1994

  unfold Seg46.relationRow1995 at r1995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1995

  unfold Seg46.relationRow1996 at r1996

  unfold Seg46.relationRow1997 at r1997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1997

  unfold Seg46.relationRow1998 at r1998

  unfold Seg46.relationRow1999 at r1999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1999

  unfold Seg46.relationRow2000 at r2000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2000

  have hnextx : seg46BlindDeltaX226 rho =
      seg46BlindDeltaX225 rho + rho 33271 := by
    unfold seg46BlindDeltaX226 seg46BlindDeltaX225
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 76]

    ring

  have hnexty : seg46BlindDeltaY226 rho =
      seg46BlindDeltaY225 rho + rho 33272 := by
    unfold seg46BlindDeltaY226 seg46BlindDeltaY225
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 226
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX225 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY225 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX226 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY226 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY225 rho) (rho 33272)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 226)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (6644893773590675935356019136105454186295776267883026808891637538251579701530 : Seg46.F) (1358947139763598523979381175766945051572916828767179566627534868149475308058 : Seg46.F)
    (8003840913354274459335400311872399237868693096650206375519172406401055009588 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (1370899003643114756781611744109386553094662820774450405259377103704015469292 : Seg46.F) (8141275100190006914658353657066157249113390796072961797440698404213409452259 : Seg46.F)
    (6555184613843016807734723121542783358669618418595386565712857918117277017435 : Seg46.F) (5775208442131744476759876173776557979147560019705262464413809699231920785234 : Seg46.F)
    (7085514609664771900269443763014601479802982506386884261307698587767933930983 : Seg46.F) (1799567975837694488892805802676092345080123067271037019043595917665829537511 : Seg46.F)
    (2669253307296625947488948765004988552228339315448801363521423756685488453807 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX225 rho) (seg46BlindDeltaY225 rho) (rho 31887)
    (rho 33265) (rho 33266) (rho 33267) (rho 33269)
    (rho 33268) (rho 33270) (rho 33271) (rho 33272) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 226)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L226]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX225 seg46BlindDeltaY225;
        first | linear_combination r1993 | linear_combination -r1993)
    (by unfold seg46BlindDeltaX225 seg46BlindDeltaY225;
        first | linear_combination r1994 | linear_combination -r1994)
    (by unfold seg46BlindDeltaX225 seg46BlindDeltaY225;
        first | linear_combination r1995 | linear_combination -r1995)
    (by first | linear_combination r1996 | linear_combination -r1996)
    (by unfold seg46BlindDeltaX225 seg46BlindDeltaY225;
        first | linear_combination r1997 | linear_combination -r1997)
    (by first | linear_combination r1998 | linear_combination -r1998)
    (by unfold seg46BlindDeltaX225; first | linear_combination r1999 | linear_combination -r1999)
    (by unfold seg46BlindDeltaY225; first | linear_combination r2000 | linear_combination -r2000)
    (by linear_combination r614)

theorem seg46Blind_rows227 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow615 rho ∧ Seg46.relationRow2001 rho ∧ Seg46.relationRow2002 rho ∧ Seg46.relationRow2003 rho ∧ Seg46.relationRow2004 rho ∧ Seg46.relationRow2005 rho ∧ Seg46.relationRow2006 rho ∧ Seg46.relationRow2007 rho ∧ Seg46.relationRow2008 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart25 at p25

  rcases p25 with ⟨_, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r615, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008⟩

theorem seg46Blind_rung227 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31888 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 227)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      227 (Bool.toZMod bit) (seg46BlindAccState rho 227)
      (seg46BlindAccState rho 228) := by
  obtain ⟨r615, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008⟩ := seg46Blind_rows227 rho h
  unfold Seg46.relationRow615 at r615

  unfold Seg46.relationRow2001 at r2001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2001

  unfold Seg46.relationRow2002 at r2002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2002

  unfold Seg46.relationRow2003 at r2003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2003

  unfold Seg46.relationRow2004 at r2004

  unfold Seg46.relationRow2005 at r2005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2005

  unfold Seg46.relationRow2006 at r2006

  unfold Seg46.relationRow2007 at r2007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2007

  unfold Seg46.relationRow2008 at r2008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2008

  have hnextx : seg46BlindDeltaX227 rho =
      seg46BlindDeltaX226 rho + rho 33279 := by
    unfold seg46BlindDeltaX227 seg46BlindDeltaX226
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 77]

    ring

  have hnexty : seg46BlindDeltaY227 rho =
      seg46BlindDeltaY226 rho + rho 33280 := by
    unfold seg46BlindDeltaY227 seg46BlindDeltaY226
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 227
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX226 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY226 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX227 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY227 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY226 rho) (rho 33280)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 227)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (5334004567915182446805514930710721924036148541606086840559039522898988352764 : Seg46.F) (1991033993335388628820338045395499282699371769765454452129987432965487389246 : Seg46.F)
    (7325038561250571075625852976106221206735520311371541292689026955864475742010 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (2456928273209305601077878727342202695161789831744454394805814375542024714974 : Seg46.F) (225960549042405015589554413610048305587383928935673200746613718328758695144 : Seg46.F)
    (2377565731515325974346402149423536618830307292694298078726633428379148686201 : Seg46.F) (6495049385092628867406352063107359223604318250857446602973354876338325305798 : Seg46.F)
    (6453427756092981795428486893386047248676527565388609375805246022951921849795 : Seg46.F) (3110457181513187977443310008070824607339750793547976987376193933018420886277 : Seg46.F)
    (1949412364335741556842472875674187307771581084296617224961878579579083933243 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX226 rho) (seg46BlindDeltaY226 rho) (rho 31888)
    (rho 33273) (rho 33274) (rho 33275) (rho 33277)
    (rho 33276) (rho 33278) (rho 33279) (rho 33280) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 227)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L227]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX226 seg46BlindDeltaY226;
        first | linear_combination r2001 | linear_combination -r2001)
    (by unfold seg46BlindDeltaX226 seg46BlindDeltaY226;
        first | linear_combination r2002 | linear_combination -r2002)
    (by unfold seg46BlindDeltaX226 seg46BlindDeltaY226;
        first | linear_combination r2003 | linear_combination -r2003)
    (by first | linear_combination r2004 | linear_combination -r2004)
    (by unfold seg46BlindDeltaX226 seg46BlindDeltaY226;
        first | linear_combination r2005 | linear_combination -r2005)
    (by first | linear_combination r2006 | linear_combination -r2006)
    (by unfold seg46BlindDeltaX226; first | linear_combination r2007 | linear_combination -r2007)
    (by unfold seg46BlindDeltaY226; first | linear_combination r2008 | linear_combination -r2008)
    (by linear_combination r615)

theorem seg46Blind_rows228 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow616 rho ∧ Seg46.relationRow2009 rho ∧ Seg46.relationRow2010 rho ∧ Seg46.relationRow2011 rho ∧ Seg46.relationRow2012 rho ∧ Seg46.relationRow2013 rho ∧ Seg46.relationRow2014 rho ∧ Seg46.relationRow2015 rho ∧ Seg46.relationRow2016 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r616, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r616, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016⟩

theorem seg46Blind_rung228 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31889 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 228)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      228 (Bool.toZMod bit) (seg46BlindAccState rho 228)
      (seg46BlindAccState rho 229) := by
  obtain ⟨r616, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016⟩ := seg46Blind_rows228 rho h
  unfold Seg46.relationRow616 at r616

  unfold Seg46.relationRow2009 at r2009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2009

  unfold Seg46.relationRow2010 at r2010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2010

  unfold Seg46.relationRow2011 at r2011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2011

  unfold Seg46.relationRow2012 at r2012

  unfold Seg46.relationRow2013 at r2013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2013

  unfold Seg46.relationRow2014 at r2014

  unfold Seg46.relationRow2015 at r2015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2015

  unfold Seg46.relationRow2016 at r2016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2016

  have hnextx : seg46BlindDeltaX228 rho =
      seg46BlindDeltaX227 rho + rho 33287 := by
    unfold seg46BlindDeltaX228 seg46BlindDeltaX227
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 78]

    ring

  have hnexty : seg46BlindDeltaY228 rho =
      seg46BlindDeltaY227 rho + rho 33288 := by
    unfold seg46BlindDeltaY228 seg46BlindDeltaY227
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 228
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX227 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY227 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX228 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY228 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY227 rho) (rho 33288)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 228)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (7217793937253800789741884765125212187620636552247818368741390785428178410341 : Seg46.F) (611552855140327603083208253242555566521751092399387731279429143038378337872 : Seg46.F)
    (7829346792394128392825093018367767754142387644647206100020819928466556748213 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (6608514003544936428128296391383222622263995074964421705274547728945744600374 : Seg46.F) (2494493880114136375937464094236986813929821556645170667056295195131356723997 : Seg46.F)
    (2070901315292787702406687565408067050291591758372033748537273467943474765058 : Seg46.F) (1599329139929239054501320484785808070818371908625462541568058585833275888966 : Seg46.F)
    (7832908894288042821165616685538990964854148242754676096655804312879030901169 : Seg46.F) (1226667812174569634506940173656334343755262782906245459193842670489230828700 : Seg46.F)
    (6845132609499131369747504453995738460557527426528601286367174870084133350075 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX227 rho) (seg46BlindDeltaY227 rho) (rho 31889)
    (rho 33281) (rho 33282) (rho 33283) (rho 33285)
    (rho 33284) (rho 33286) (rho 33287) (rho 33288) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 228)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L228]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX227 seg46BlindDeltaY227;
        first | linear_combination r2009 | linear_combination -r2009)
    (by unfold seg46BlindDeltaX227 seg46BlindDeltaY227;
        first | linear_combination r2010 | linear_combination -r2010)
    (by unfold seg46BlindDeltaX227 seg46BlindDeltaY227;
        first | linear_combination r2011 | linear_combination -r2011)
    (by first | linear_combination r2012 | linear_combination -r2012)
    (by unfold seg46BlindDeltaX227 seg46BlindDeltaY227;
        first | linear_combination r2013 | linear_combination -r2013)
    (by first | linear_combination r2014 | linear_combination -r2014)
    (by unfold seg46BlindDeltaX227; first | linear_combination r2015 | linear_combination -r2015)
    (by unfold seg46BlindDeltaY227; first | linear_combination r2016 | linear_combination -r2016)
    (by linear_combination r616)

theorem seg46Blind_rows229 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow617 rho ∧ Seg46.relationRow2017 rho ∧ Seg46.relationRow2018 rho ∧ Seg46.relationRow2019 rho ∧ Seg46.relationRow2020 rho ∧ Seg46.relationRow2021 rho ∧ Seg46.relationRow2022 rho ∧ Seg46.relationRow2023 rho ∧ Seg46.relationRow2024 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r617, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024⟩

theorem seg46Blind_rung229 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31890 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 229)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      229 (Bool.toZMod bit) (seg46BlindAccState rho 229)
      (seg46BlindAccState rho 230) := by
  obtain ⟨r617, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024⟩ := seg46Blind_rows229 rho h
  unfold Seg46.relationRow617 at r617

  unfold Seg46.relationRow2017 at r2017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2017

  unfold Seg46.relationRow2018 at r2018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2018

  unfold Seg46.relationRow2019 at r2019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2019

  unfold Seg46.relationRow2020 at r2020

  unfold Seg46.relationRow2021 at r2021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2021

  unfold Seg46.relationRow2022 at r2022

  unfold Seg46.relationRow2023 at r2023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2023

  unfold Seg46.relationRow2024 at r2024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2024

  have hnextx : seg46BlindDeltaX229 rho =
      seg46BlindDeltaX228 rho + rho 33295 := by
    unfold seg46BlindDeltaX229 seg46BlindDeltaX228
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 79]

    ring

  have hnexty : seg46BlindDeltaY229 rho =
      seg46BlindDeltaY228 rho + rho 33296 := by
    unfold seg46BlindDeltaY229 seg46BlindDeltaY228
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 229
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX228 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY228 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX229 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY229 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY228 rho) (rho 33296)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 229)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (1262916560049378410634649340024687678018494763055378467071091317309682769282 : Seg46.F) (4439089567212760500649554994617419808637872756754369376683914634620681888818 : Seg46.F)
    (5702006127262138911284204334642107486656367519809747843755005951930364658100 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (684324457497238755171635954129350070085453930296528200955383192234114522070 : Seg46.F) (6327656689886066240785449211006082544101674608080640733798216470321894989715 : Seg46.F)
    (3870954308191713971872500864422005677763758200325916030540011082079875431642 : Seg46.F) (1810151555994345118229717893349587519004634719777879465070827343583772775759 : Seg46.F)
    (4005372182215609923599269944164126722738026578399694451251318821296727350223 : Seg46.F) (7181545189378992013614175598756858853357404572098685360864142138607726469759 : Seg46.F)
    (6634310193434025306019107045431959012371264615376184362864406112333636463282 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX228 rho) (seg46BlindDeltaY228 rho) (rho 31890)
    (rho 33289) (rho 33290) (rho 33291) (rho 33293)
    (rho 33292) (rho 33294) (rho 33295) (rho 33296) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 229)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L229]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX228 seg46BlindDeltaY228;
        first | linear_combination r2017 | linear_combination -r2017)
    (by unfold seg46BlindDeltaX228 seg46BlindDeltaY228;
        first | linear_combination r2018 | linear_combination -r2018)
    (by unfold seg46BlindDeltaX228 seg46BlindDeltaY228;
        first | linear_combination r2019 | linear_combination -r2019)
    (by first | linear_combination r2020 | linear_combination -r2020)
    (by unfold seg46BlindDeltaX228 seg46BlindDeltaY228;
        first | linear_combination r2021 | linear_combination -r2021)
    (by first | linear_combination r2022 | linear_combination -r2022)
    (by unfold seg46BlindDeltaX228; first | linear_combination r2023 | linear_combination -r2023)
    (by unfold seg46BlindDeltaY228; first | linear_combination r2024 | linear_combination -r2024)
    (by linear_combination r617)

theorem seg46Blind_rows230 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow618 rho ∧ Seg46.relationRow2025 rho ∧ Seg46.relationRow2026 rho ∧ Seg46.relationRow2027 rho ∧ Seg46.relationRow2028 rho ∧ Seg46.relationRow2029 rho ∧ Seg46.relationRow2030 rho ∧ Seg46.relationRow2031 rho ∧ Seg46.relationRow2032 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r618, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r618, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032⟩

theorem seg46Blind_rung230 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31891 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 230)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      230 (Bool.toZMod bit) (seg46BlindAccState rho 230)
      (seg46BlindAccState rho 231) := by
  obtain ⟨r618, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032⟩ := seg46Blind_rows230 rho h
  unfold Seg46.relationRow618 at r618

  unfold Seg46.relationRow2025 at r2025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2025

  unfold Seg46.relationRow2026 at r2026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2026

  unfold Seg46.relationRow2027 at r2027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2027

  unfold Seg46.relationRow2028 at r2028

  unfold Seg46.relationRow2029 at r2029

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2029

  unfold Seg46.relationRow2030 at r2030

  unfold Seg46.relationRow2031 at r2031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2031

  unfold Seg46.relationRow2032 at r2032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2032

  have hnextx : seg46BlindDeltaX230 rho =
      seg46BlindDeltaX229 rho + rho 33303 := by
    unfold seg46BlindDeltaX230 seg46BlindDeltaX229
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 80]

    ring

  have hnexty : seg46BlindDeltaY230 rho =
      seg46BlindDeltaY229 rho + rho 33304 := by
    unfold seg46BlindDeltaY230 seg46BlindDeltaY229
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 80]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 230
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX229 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY229 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX230 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY230 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY229 rho) (rho 33304)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 230)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (1754564508264316280080767253654471569266116149749282790523517573152094733235 : Seg46.F) (3255123647791336139979832684865989033507441408648469121457026773121774894719 : Seg46.F)
    (5009688156055652420060599938520460602773557558397751911980544346273869627954 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (4375063643003305053442312238432707704433669407694920205066138913017602702375 : Seg46.F) (6827565584601986065097078658718696289843280211445254743478131538328482764782 : Seg46.F)
    (5611454971280825110232058586781909309252677113250095359038853620826121304010 : Seg46.F) (6438314879147747076871747575725727555874899418474158279920803968735411012147 : Seg46.F)
    (5189338101637034284268992253915557497868457926505594706478206682795634344322 : Seg46.F) (6689897241164054144168057685127074962109783185404781037411715882765314505806 : Seg46.F)
    (2006146870280623347377077363055818975500999916679905548014429487181998226894 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX229 rho) (seg46BlindDeltaY229 rho) (rho 31891)
    (rho 33297) (rho 33298) (rho 33299) (rho 33301)
    (rho 33300) (rho 33302) (rho 33303) (rho 33304) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 230)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L230]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX229 seg46BlindDeltaY229;
        first | linear_combination r2025 | linear_combination -r2025)
    (by unfold seg46BlindDeltaX229 seg46BlindDeltaY229;
        first | linear_combination r2026 | linear_combination -r2026)
    (by unfold seg46BlindDeltaX229 seg46BlindDeltaY229;
        first | linear_combination r2027 | linear_combination -r2027)
    (by first | linear_combination r2028 | linear_combination -r2028)
    (by unfold seg46BlindDeltaX229 seg46BlindDeltaY229;
        first | linear_combination r2029 | linear_combination -r2029)
    (by first | linear_combination r2030 | linear_combination -r2030)
    (by unfold seg46BlindDeltaX229; first | linear_combination r2031 | linear_combination -r2031)
    (by unfold seg46BlindDeltaY229; first | linear_combination r2032 | linear_combination -r2032)
    (by linear_combination r618)

theorem seg46Blind_hstep_c22 (rho : Nat -> Seg46.F)
    (h : Seg46.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 221 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg46BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)
        (seg46BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg46Blind_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc
  · exact seg46Blind_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc
  · exact seg46Blind_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc
  · exact seg46Blind_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc
  · exact seg46Blind_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc
  · exact seg46Blind_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc
  · exact seg46Blind_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc
  · exact seg46Blind_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc
  · exact seg46Blind_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc
  · exact seg46Blind_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
