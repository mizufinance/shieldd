import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.StatementHash.FullTail
import ShielddGnarkFormal.Poseidon7Bridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

variable {F : Type} [CommRing F]

/-- Deployed statement-hash Poseidon subchain endpoint. -/
def deployedSpec55 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.StatementHash.s38_1
      (rho 53488) (rho 53493) (rho 53498) (rho 53503)
      (rho 53508) (rho 53513) (rho 53518) (rho 53523) =
    Shieldd.GnarkFormal.Poseidon7Bridge.permSpec7
      Shieldd.GnarkFormal.Poseidon7Bridge.statementDomainLit
      ((1 : DeployedF) * rho 2)
      ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 38712
        + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 38717
        + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 38722
        + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : DeployedF) * rho 38727
        + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : DeployedF) * rho 38732
        + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : DeployedF) * rho 38737
        + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : DeployedF) * rho 38742)
      ((-1 : DeployedF) * rho 52713 + (1 : DeployedF) * rho 53053)
      ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : DeployedF) * rho 1637
        + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 1642
        + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 1647
        + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 1652)
      ((-1 : DeployedF) * rho 12746 + (1 : DeployedF) * rho 13086)
      ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : DeployedF) * rho 20337
        + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 20342
        + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 20347
        + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 20352)
      ((-1 : DeployedF) * rho 31446 + (1 : DeployedF) * rho 31786)

/-- seg2 `decaf.assert_on_curve`. -/
def deployedSpec2 (rho : Nat → F) : Prop := onCurveAt (rho 3) (rho 4)
/-- seg3 `decaf.assert_on_curve`. -/
def deployedSpec3 (rho : Nat → F) : Prop := onCurveAt (rho 17) (rho 18)
/-- seg4 `decaf.assert_on_curve`. -/
def deployedSpec4 (rho : Nat → F) : Prop := onCurveAt (rho 20) (rho 21)
/-- seg18 `decaf.assert_on_curve`. -/
def deployedSpec18 (rho : Nat → F) : Prop := onCurveAt (rho 20) (rho 21)
/-- seg34 `decaf.assert_on_curve`. -/
def deployedSpec34 (rho : Nat → F) : Prop := onCurveAt (rho 110) (rho 111)
/-- seg43 `decaf.assert_on_curve`. -/
def deployedSpec43 (rho : Nat → F) : Prop := onCurveAt (rho 198) (rho 199)

/-- seg10 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec10 (rho : Nat → F) : Prop :=
  rho 23 = (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 1312 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 1317 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1322 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1327 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1332 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1337 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1342
/-- seg12 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec12 (rho : Nat → F) : Prop :=
  rho 11 = (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 1637 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 1642 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 1647 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 1652
/-- seg14 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec14 (rho : Nat → F) : Prop :=
  rho 2 = (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 10550 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 10555 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 10560 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 10565 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 10570
/-- seg21 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec21 (rho : Nat → F) : Prop :=
  rho 16 = (1 : F) * rho 16
/-- seg26 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec26 (rho : Nat → F) : Prop :=
  rho 113 = (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 20012 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 20017 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 20022 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 20027 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 20032 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 20037 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 20042
/-- seg28 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec28 (rho : Nat → F) : Prop :=
  rho 101 = (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 20337 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 20342 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 20347 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 20352
/-- seg30 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec30 (rho : Nat → F) : Prop :=
  rho 2 = (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 29250 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 29255 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 29260 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 29265 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 29270
/-- seg37 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec37 (rho : Nat → F) : Prop :=
  rho 16 = (1 : F) * rho 106
/-- seg42 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec42 (rho : Nat → F) : Prop :=
  rho 191 = (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 38712 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 38717 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 38722 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 38727 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 38732 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 38737 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 38742
/-- seg46 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec46 (rho : Nat → F) : Prop :=
  rho 16 = (1 : F) * rho 194
/-- seg56 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec56 (rho : Nat → F) : Prop :=
  rho 1 = (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 53488 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 53493 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 53498 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 53503 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 53508 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 53513 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 53518 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 53523

/-- seg16 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec16 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 12380) * ((1 : F) * rho 13) = ((1 : F) * rho 12) * ((1 : F) * rho 12381)
/-- seg6 `decaf.assert_equivalent` (DTK consumer, post-T1-d single instance;
wire literals below are inherited from the pre-T1-d seg18 instance and are
NOT YET re-derived for the new segment 6 position -- pending Bounds.lean pass,
see EXECUTOR-HANDOFF.md). -/
def deployedSpec6 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 21) * ((1 : F) * rho 15543 + (1 : F) * rho 15556 + (1 : F) * rho 15569 + (1 : F) * rho 15582 + (1 : F) * rho 15595 + (1 : F) * rho 15608 + (1 : F) * rho 15621 + (1 : F) * rho 15634 + (1 : F) * rho 15647 + (1 : F) * rho 15660 + (1 : F) * rho 15673 + (1 : F) * rho 15686 + (1 : F) * rho 15699 + (1 : F) * rho 15712 + (1 : F) * rho 15725 + (1 : F) * rho 15738 + (1 : F) * rho 15751 + (1 : F) * rho 15764 + (1 : F) * rho 15777 + (1 : F) * rho 15790 + (1 : F) * rho 15803 + (1 : F) * rho 15816 + (1 : F) * rho 15829 + (1 : F) * rho 15842 + (1 : F) * rho 15855 + (1 : F) * rho 15868 + (1 : F) * rho 15881 + (1 : F) * rho 15894 + (1 : F) * rho 15907 + (1 : F) * rho 15920 + (1 : F) * rho 15933 + (1 : F) * rho 15946 + (1 : F) * rho 15959 + (1 : F) * rho 15972 + (1 : F) * rho 15985 + (1 : F) * rho 15998 + (1 : F) * rho 16011 + (1 : F) * rho 16024 + (1 : F) * rho 16037 + (1 : F) * rho 16050 + (1 : F) * rho 16063 + (1 : F) * rho 16076 + (1 : F) * rho 16089 + (1 : F) * rho 16102 + (1 : F) * rho 16115 + (1 : F) * rho 16128 + (1 : F) * rho 16141 + (1 : F) * rho 16154 + (1 : F) * rho 16167 + (1 : F) * rho 16180 + (1 : F) * rho 16193 + (1 : F) * rho 16206 + (1 : F) * rho 16219 + (1 : F) * rho 16232 + (1 : F) * rho 16245 + (1 : F) * rho 16258 + (1 : F) * rho 16271 + (1 : F) * rho 16284 + (1 : F) * rho 16297 + (1 : F) * rho 16310 + (1 : F) * rho 16323 + (1 : F) * rho 16336 + (1 : F) * rho 16349 + (1 : F) * rho 16362 + (1 : F) * rho 16375 + (1 : F) * rho 16388 + (1 : F) * rho 16401 + (1 : F) * rho 16414 + (1 : F) * rho 16427 + (1 : F) * rho 16440 + (1 : F) * rho 16453 + (1 : F) * rho 16466 + (1 : F) * rho 16479 + (1 : F) * rho 16492 + (1 : F) * rho 16505 + (1 : F) * rho 16518 + (1 : F) * rho 16531 + (1 : F) * rho 16544 + (1 : F) * rho 16557 + (1 : F) * rho 16570 + (1 : F) * rho 16583 + (1 : F) * rho 16596 + (1 : F) * rho 16609 + (1 : F) * rho 16622 + (1 : F) * rho 16635 + (1 : F) * rho 16648 + (1 : F) * rho 16661 + (1 : F) * rho 16674 + (1 : F) * rho 16687 + (1 : F) * rho 16700 + (1 : F) * rho 16713 + (1 : F) * rho 16726 + (1 : F) * rho 16739 + (1 : F) * rho 16752 + (1 : F) * rho 16765 + (1 : F) * rho 16778 + (1 : F) * rho 16791 + (1 : F) * rho 16804 + (1 : F) * rho 16817 + (1 : F) * rho 16830 + (1 : F) * rho 16843 + (1 : F) * rho 16856 + (1 : F) * rho 16869 + (1 : F) * rho 16882 + (1 : F) * rho 16895 + (1 : F) * rho 16908 + (1 : F) * rho 16921 + (1 : F) * rho 16934 + (1 : F) * rho 16947 + (1 : F) * rho 16960 + (1 : F) * rho 16973 + (1 : F) * rho 16986 + (1 : F) * rho 16999 + (1 : F) * rho 17012 + (1 : F) * rho 17025 + (1 : F) * rho 17038 + (1 : F) * rho 17051 + (1 : F) * rho 17064 + (1 : F) * rho 17077 + (1 : F) * rho 17090 + (1 : F) * rho 17103 + (1 : F) * rho 17116 + (1 : F) * rho 17129 + (1 : F) * rho 17142 + (1 : F) * rho 17155 + (1 : F) * rho 17168 + (1 : F) * rho 17181 + (1 : F) * rho 17194 + (1 : F) * rho 17207 + (1 : F) * rho 17220 + (1 : F) * rho 17233 + (1 : F) * rho 17246 + (1 : F) * rho 17259 + (1 : F) * rho 17272 + (1 : F) * rho 17285 + (1 : F) * rho 17298 + (1 : F) * rho 17311 + (1 : F) * rho 17324 + (1 : F) * rho 17337 + (1 : F) * rho 17350 + (1 : F) * rho 17363 + (1 : F) * rho 17376 + (1 : F) * rho 17389 + (1 : F) * rho 17402 + (1 : F) * rho 17415 + (1 : F) * rho 17428 + (1 : F) * rho 17441 + (1 : F) * rho 17454 + (1 : F) * rho 17467 + (1 : F) * rho 17480 + (1 : F) * rho 17494 + (1 : F) * rho 17508 + (1 : F) * rho 17522 + (1 : F) * rho 17536 + (1 : F) * rho 17550 + (1 : F) * rho 17564 + (1 : F) * rho 17578 + (1 : F) * rho 17592 + (1 : F) * rho 17606 + (1 : F) * rho 17620 + (1 : F) * rho 17634 + (1 : F) * rho 17648 + (1 : F) * rho 17662 + (1 : F) * rho 17676 + (1 : F) * rho 17690 + (1 : F) * rho 17704 + (1 : F) * rho 17718 + (1 : F) * rho 17732 + (1 : F) * rho 17746 + (1 : F) * rho 17760 + (1 : F) * rho 17774 + (1 : F) * rho 17788 + (1 : F) * rho 17802 + (1 : F) * rho 17816 + (1 : F) * rho 17830 + (1 : F) * rho 17844 + (1 : F) * rho 17858 + (1 : F) * rho 17872 + (1 : F) * rho 17886 + (1 : F) * rho 17900 + (1 : F) * rho 17914 + (1 : F) * rho 17928 + (1 : F) * rho 17942 + (1 : F) * rho 17956 + (1 : F) * rho 17970 + (1 : F) * rho 17984 + (1 : F) * rho 17998 + (1 : F) * rho 18012 + (1 : F) * rho 18026 + (1 : F) * rho 18040 + (1 : F) * rho 18054 + (1 : F) * rho 18068 + (1 : F) * rho 18082 + (1 : F) * rho 18096 + (1 : F) * rho 18110 + (1 : F) * rho 18124 + (1 : F) * rho 18138 + (1 : F) * rho 18152 + (1 : F) * rho 18166 + (1 : F) * rho 18180 + (1 : F) * rho 18194 + (1 : F) * rho 18208 + (1 : F) * rho 18222 + (1 : F) * rho 18236 + (1 : F) * rho 18250 + (1 : F) * rho 18264 + (1 : F) * rho 18278 + (1 : F) * rho 18292 + (1 : F) * rho 18306 + (1 : F) * rho 18320 + (1 : F) * rho 18334 + (1 : F) * rho 18348 + (1 : F) * rho 18362 + (1 : F) * rho 18376 + (1 : F) * rho 18390 + (1 : F) * rho 18404 + (1 : F) * rho 18418 + (1 : F) * rho 18432 + (1 : F) * rho 18446 + (1 : F) * rho 18460 + (1 : F) * rho 18474 + (1 : F) * rho 18488 + (1 : F) * rho 18502 + (1 : F) * rho 18516 + (1 : F) * rho 18530 + (1 : F) * rho 18544 + (1 : F) * rho 18558 + (1 : F) * rho 18572 + (1 : F) * rho 18586 + (1 : F) * rho 18600 + (1 : F) * rho 18614 + (1 : F) * rho 18628 + (1 : F) * rho 18642 + (1 : F) * rho 18656 + (1 : F) * rho 18670 + (1 : F) * rho 18684 + (1 : F) * rho 18698 + (1 : F) * rho 18712 + (1 : F) * rho 18726 + (1 : F) * rho 18740 + (1 : F) * rho 18754 + (1 : F) * rho 18768 + (1 : F) * rho 18782 + (1 : F) * rho 18796 + (1 : F) * rho 18810 + (1 : F) * rho 18824 + (1 : F) * rho 18838 + (1 : F) * rho 18852 + (1 : F) * rho 18866 + (1 : F) * rho 18880 + (1 : F) * rho 18894) = ((1 : F) * rho 20) * ((1 : F) + (1 : F) * rho 15544 + (1 : F) * rho 15557 + (1 : F) * rho 15570 + (1 : F) * rho 15583 + (1 : F) * rho 15596 + (1 : F) * rho 15609 + (1 : F) * rho 15622 + (1 : F) * rho 15635 + (1 : F) * rho 15648 + (1 : F) * rho 15661 + (1 : F) * rho 15674 + (1 : F) * rho 15687 + (1 : F) * rho 15700 + (1 : F) * rho 15713 + (1 : F) * rho 15726 + (1 : F) * rho 15739 + (1 : F) * rho 15752 + (1 : F) * rho 15765 + (1 : F) * rho 15778 + (1 : F) * rho 15791 + (1 : F) * rho 15804 + (1 : F) * rho 15817 + (1 : F) * rho 15830 + (1 : F) * rho 15843 + (1 : F) * rho 15856 + (1 : F) * rho 15869 + (1 : F) * rho 15882 + (1 : F) * rho 15895 + (1 : F) * rho 15908 + (1 : F) * rho 15921 + (1 : F) * rho 15934 + (1 : F) * rho 15947 + (1 : F) * rho 15960 + (1 : F) * rho 15973 + (1 : F) * rho 15986 + (1 : F) * rho 15999 + (1 : F) * rho 16012 + (1 : F) * rho 16025 + (1 : F) * rho 16038 + (1 : F) * rho 16051 + (1 : F) * rho 16064 + (1 : F) * rho 16077 + (1 : F) * rho 16090 + (1 : F) * rho 16103 + (1 : F) * rho 16116 + (1 : F) * rho 16129 + (1 : F) * rho 16142 + (1 : F) * rho 16155 + (1 : F) * rho 16168 + (1 : F) * rho 16181 + (1 : F) * rho 16194 + (1 : F) * rho 16207 + (1 : F) * rho 16220 + (1 : F) * rho 16233 + (1 : F) * rho 16246 + (1 : F) * rho 16259 + (1 : F) * rho 16272 + (1 : F) * rho 16285 + (1 : F) * rho 16298 + (1 : F) * rho 16311 + (1 : F) * rho 16324 + (1 : F) * rho 16337 + (1 : F) * rho 16350 + (1 : F) * rho 16363 + (1 : F) * rho 16376 + (1 : F) * rho 16389 + (1 : F) * rho 16402 + (1 : F) * rho 16415 + (1 : F) * rho 16428 + (1 : F) * rho 16441 + (1 : F) * rho 16454 + (1 : F) * rho 16467 + (1 : F) * rho 16480 + (1 : F) * rho 16493 + (1 : F) * rho 16506 + (1 : F) * rho 16519 + (1 : F) * rho 16532 + (1 : F) * rho 16545 + (1 : F) * rho 16558 + (1 : F) * rho 16571 + (1 : F) * rho 16584 + (1 : F) * rho 16597 + (1 : F) * rho 16610 + (1 : F) * rho 16623 + (1 : F) * rho 16636 + (1 : F) * rho 16649 + (1 : F) * rho 16662 + (1 : F) * rho 16675 + (1 : F) * rho 16688 + (1 : F) * rho 16701 + (1 : F) * rho 16714 + (1 : F) * rho 16727 + (1 : F) * rho 16740 + (1 : F) * rho 16753 + (1 : F) * rho 16766 + (1 : F) * rho 16779 + (1 : F) * rho 16792 + (1 : F) * rho 16805 + (1 : F) * rho 16818 + (1 : F) * rho 16831 + (1 : F) * rho 16844 + (1 : F) * rho 16857 + (1 : F) * rho 16870 + (1 : F) * rho 16883 + (1 : F) * rho 16896 + (1 : F) * rho 16909 + (1 : F) * rho 16922 + (1 : F) * rho 16935 + (1 : F) * rho 16948 + (1 : F) * rho 16961 + (1 : F) * rho 16974 + (1 : F) * rho 16987 + (1 : F) * rho 17000 + (1 : F) * rho 17013 + (1 : F) * rho 17026 + (1 : F) * rho 17039 + (1 : F) * rho 17052 + (1 : F) * rho 17065 + (1 : F) * rho 17078 + (1 : F) * rho 17091 + (1 : F) * rho 17104 + (1 : F) * rho 17117 + (1 : F) * rho 17130 + (1 : F) * rho 17143 + (1 : F) * rho 17156 + (1 : F) * rho 17169 + (1 : F) * rho 17182 + (1 : F) * rho 17195 + (1 : F) * rho 17208 + (1 : F) * rho 17221 + (1 : F) * rho 17234 + (1 : F) * rho 17247 + (1 : F) * rho 17260 + (1 : F) * rho 17273 + (1 : F) * rho 17286 + (1 : F) * rho 17299 + (1 : F) * rho 17312 + (1 : F) * rho 17325 + (1 : F) * rho 17338 + (1 : F) * rho 17351 + (1 : F) * rho 17364 + (1 : F) * rho 17377 + (1 : F) * rho 17390 + (1 : F) * rho 17403 + (1 : F) * rho 17416 + (1 : F) * rho 17429 + (1 : F) * rho 17442 + (1 : F) * rho 17455 + (1 : F) * rho 17468 + (1 : F) * rho 17481 + (1 : F) * rho 17495 + (1 : F) * rho 17509 + (1 : F) * rho 17523 + (1 : F) * rho 17537 + (1 : F) * rho 17551 + (1 : F) * rho 17565 + (1 : F) * rho 17579 + (1 : F) * rho 17593 + (1 : F) * rho 17607 + (1 : F) * rho 17621 + (1 : F) * rho 17635 + (1 : F) * rho 17649 + (1 : F) * rho 17663 + (1 : F) * rho 17677 + (1 : F) * rho 17691 + (1 : F) * rho 17705 + (1 : F) * rho 17719 + (1 : F) * rho 17733 + (1 : F) * rho 17747 + (1 : F) * rho 17761 + (1 : F) * rho 17775 + (1 : F) * rho 17789 + (1 : F) * rho 17803 + (1 : F) * rho 17817 + (1 : F) * rho 17831 + (1 : F) * rho 17845 + (1 : F) * rho 17859 + (1 : F) * rho 17873 + (1 : F) * rho 17887 + (1 : F) * rho 17901 + (1 : F) * rho 17915 + (1 : F) * rho 17929 + (1 : F) * rho 17943 + (1 : F) * rho 17957 + (1 : F) * rho 17971 + (1 : F) * rho 17985 + (1 : F) * rho 17999 + (1 : F) * rho 18013 + (1 : F) * rho 18027 + (1 : F) * rho 18041 + (1 : F) * rho 18055 + (1 : F) * rho 18069 + (1 : F) * rho 18083 + (1 : F) * rho 18097 + (1 : F) * rho 18111 + (1 : F) * rho 18125 + (1 : F) * rho 18139 + (1 : F) * rho 18153 + (1 : F) * rho 18167 + (1 : F) * rho 18181 + (1 : F) * rho 18195 + (1 : F) * rho 18209 + (1 : F) * rho 18223 + (1 : F) * rho 18237 + (1 : F) * rho 18251 + (1 : F) * rho 18265 + (1 : F) * rho 18279 + (1 : F) * rho 18293 + (1 : F) * rho 18307 + (1 : F) * rho 18321 + (1 : F) * rho 18335 + (1 : F) * rho 18349 + (1 : F) * rho 18363 + (1 : F) * rho 18377 + (1 : F) * rho 18391 + (1 : F) * rho 18405 + (1 : F) * rho 18419 + (1 : F) * rho 18433 + (1 : F) * rho 18447 + (1 : F) * rho 18461 + (1 : F) * rho 18475 + (1 : F) * rho 18489 + (1 : F) * rho 18503 + (1 : F) * rho 18517 + (1 : F) * rho 18531 + (1 : F) * rho 18545 + (1 : F) * rho 18559 + (1 : F) * rho 18573 + (1 : F) * rho 18587 + (1 : F) * rho 18601 + (1 : F) * rho 18615 + (1 : F) * rho 18629 + (1 : F) * rho 18643 + (1 : F) * rho 18657 + (1 : F) * rho 18671 + (1 : F) * rho 18685 + (1 : F) * rho 18699 + (1 : F) * rho 18713 + (1 : F) * rho 18727 + (1 : F) * rho 18741 + (1 : F) * rho 18755 + (1 : F) * rho 18769 + (1 : F) * rho 18783 + (1 : F) * rho 18797 + (1 : F) * rho 18811 + (1 : F) * rho 18825 + (1 : F) * rho 18839 + (1 : F) * rho 18853 + (1 : F) * rho 18867 + (1 : F) * rho 18881 + (1 : F) * rho 18895)
/-- seg19 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec19 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 17) * ((1 : F) * rho 18)
/-- seg20 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec20 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 20) * ((1 : F) * rho 21)
/-- seg32 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec32 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 31080) * ((1 : F) * rho 103) = ((1 : F) * rho 102) * ((1 : F) * rho 31081)
/-- seg35 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec35 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 107) * ((1 : F) * rho 18) = ((1 : F) * rho 17) * ((1 : F) * rho 108)
/-- seg36 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec36 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 110) * ((1 : F) * rho 21) = ((1 : F) * rho 20) * ((1 : F) * rho 111)
/-- seg44 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec44 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 195) * ((1 : F) * rho 18) = ((1 : F) * rho 17) * ((1 : F) * rho 196)
/-- seg45 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec45 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 198) * ((1 : F) * rho 21) = ((1 : F) * rho 20) * ((1 : F) * rho 199)
/-- seg49 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec49 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 52347) * ((1 : F) * rho 4) = ((1 : F) * rho 3) * ((1 : F) * rho 52348)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
