import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.StatementHash.FullTail
import ShielddGnarkFormal.Poseidon7Bridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

variable {F : Type} [CommRing F]

/-- Deployed statement-hash Poseidon subchain endpoint (seg55; post-T1-d
renumbered from seg59). Argument wire numbers re-derived from the fresh
`seg55_sound` adapter bridge (`StatementHashAdapters.lean`); every
coefficient is unchanged, only the deployed wire ids shift with the DTK
hoist. -/
def deployedSpec55 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.StatementHash.s38_1
      (rho 41856) (rho 41861) (rho 41866) (rho 41871)
      (rho 41876) (rho 41881) (rho 41886) (rho 41891) =
    Shieldd.GnarkFormal.Poseidon7Bridge.permSpec7
      Shieldd.GnarkFormal.Poseidon7Bridge.statementDomainLit
      ((1 : DeployedF) * rho 2)
      ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 32896
        + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 32901
        + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 32906
        + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : DeployedF) * rho 32911
        + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : DeployedF) * rho 32916
        + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : DeployedF) * rho 32921
        + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : DeployedF) * rho 32926)
      ((-1 : DeployedF) * rho 41081 + (1 : DeployedF) * rho 41421)
      ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : DeployedF) * rho 7453
        + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 7458
        + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 7463
        + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 7468)
      ((-1 : DeployedF) * rho 18562 + (1 : DeployedF) * rho 18902)
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
  rho 23 = (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 7128 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 7133 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 7138 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 7143 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 7148 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 7153 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 7158
/-- seg12 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec12 (rho : Nat → F) : Prop :=
  rho 11 = (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 7453 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 7458 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 7463 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 7468
/-- seg14 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec14 (rho : Nat → F) : Prop :=
  rho 2 = (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 16366 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 16371 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 16376 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 16381 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 16386
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
  rho 191 = (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 32896 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 32901 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 32906 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 32911 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 32916 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 32921 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 32926
/-- seg46 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec46 (rho : Nat → F) : Prop :=
  rho 16 = (1 : F) * rho 194
/-- seg56 `assert.eq`: output wire equals the constant-folded linear form. -/
def deployedSpec56 (rho : Nat → F) : Prop :=
  rho 1 = (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 41856 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 41861 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 41866 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 41871 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 41876 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 41881 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 41886 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 41891

/-- seg16 `decaf.assert_equivalent`: cross-multiplication endpoint. -/
def deployedSpec16 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 18196) * ((1 : F) * rho 13) = ((1 : F) * rho 12) * ((1 : F) * rho 18197)
/-- seg6 `decaf.assert_equivalent` (DTK consumer, post-T1-d single instance;
wire content re-derived from the fresh Seg6.lean relation rows, dropping the
intermediate 6024/6025 wires: rho21 * ladderSumX = rho20 * ladderSumY). -/
def deployedSpec6 (rho : Nat → F) : Prop :=
  ((1 : F) * rho 21) * ((1 : F) * rho 2666 + (1 : F) * rho 2679 + (1 : F) * rho 2692 + (1 : F) * rho 2705 + (1 : F) * rho 2718 + (1 : F) * rho 2731 + (1 : F) * rho 2744 + (1 : F) * rho 2757 + (1 : F) * rho 2770 + (1 : F) * rho 2783 + (1 : F) * rho 2796 + (1 : F) * rho 2809 + (1 : F) * rho 2822 + (1 : F) * rho 2835 + (1 : F) * rho 2848 + (1 : F) * rho 2861 + (1 : F) * rho 2874 + (1 : F) * rho 2887 + (1 : F) * rho 2900 + (1 : F) * rho 2913 + (1 : F) * rho 2926 + (1 : F) * rho 2939 + (1 : F) * rho 2952 + (1 : F) * rho 2965 + (1 : F) * rho 2978 + (1 : F) * rho 2991 + (1 : F) * rho 3004 + (1 : F) * rho 3017 + (1 : F) * rho 3030 + (1 : F) * rho 3043 + (1 : F) * rho 3056 + (1 : F) * rho 3069 + (1 : F) * rho 3082 + (1 : F) * rho 3095 + (1 : F) * rho 3108 + (1 : F) * rho 3121 + (1 : F) * rho 3134 + (1 : F) * rho 3147 + (1 : F) * rho 3160 + (1 : F) * rho 3173 + (1 : F) * rho 3186 + (1 : F) * rho 3199 + (1 : F) * rho 3212 + (1 : F) * rho 3225 + (1 : F) * rho 3238 + (1 : F) * rho 3251 + (1 : F) * rho 3264 + (1 : F) * rho 3277 + (1 : F) * rho 3290 + (1 : F) * rho 3303 + (1 : F) * rho 3316 + (1 : F) * rho 3329 + (1 : F) * rho 3342 + (1 : F) * rho 3355 + (1 : F) * rho 3368 + (1 : F) * rho 3381 + (1 : F) * rho 3394 + (1 : F) * rho 3407 + (1 : F) * rho 3420 + (1 : F) * rho 3433 + (1 : F) * rho 3446 + (1 : F) * rho 3459 + (1 : F) * rho 3472 + (1 : F) * rho 3485 + (1 : F) * rho 3498 + (1 : F) * rho 3511 + (1 : F) * rho 3524 + (1 : F) * rho 3537 + (1 : F) * rho 3550 + (1 : F) * rho 3563 + (1 : F) * rho 3576 + (1 : F) * rho 3589 + (1 : F) * rho 3602 + (1 : F) * rho 3615 + (1 : F) * rho 3628 + (1 : F) * rho 3641 + (1 : F) * rho 3654 + (1 : F) * rho 3667 + (1 : F) * rho 3680 + (1 : F) * rho 3693 + (1 : F) * rho 3706 + (1 : F) * rho 3719 + (1 : F) * rho 3732 + (1 : F) * rho 3745 + (1 : F) * rho 3758 + (1 : F) * rho 3771 + (1 : F) * rho 3784 + (1 : F) * rho 3797 + (1 : F) * rho 3810 + (1 : F) * rho 3823 + (1 : F) * rho 3836 + (1 : F) * rho 3849 + (1 : F) * rho 3862 + (1 : F) * rho 3875 + (1 : F) * rho 3888 + (1 : F) * rho 3901 + (1 : F) * rho 3914 + (1 : F) * rho 3927 + (1 : F) * rho 3940 + (1 : F) * rho 3953 + (1 : F) * rho 3966 + (1 : F) * rho 3979 + (1 : F) * rho 3992 + (1 : F) * rho 4005 + (1 : F) * rho 4018 + (1 : F) * rho 4031 + (1 : F) * rho 4044 + (1 : F) * rho 4057 + (1 : F) * rho 4070 + (1 : F) * rho 4083 + (1 : F) * rho 4096 + (1 : F) * rho 4109 + (1 : F) * rho 4122 + (1 : F) * rho 4135 + (1 : F) * rho 4148 + (1 : F) * rho 4161 + (1 : F) * rho 4174 + (1 : F) * rho 4187 + (1 : F) * rho 4200 + (1 : F) * rho 4213 + (1 : F) * rho 4226 + (1 : F) * rho 4239 + (1 : F) * rho 4252 + (1 : F) * rho 4265 + (1 : F) * rho 4278 + (1 : F) * rho 4291 + (1 : F) * rho 4304 + (1 : F) * rho 4317 + (1 : F) * rho 4330 + (1 : F) * rho 4343 + (1 : F) * rho 4356 + (1 : F) * rho 4369 + (1 : F) * rho 4382 + (1 : F) * rho 4395 + (1 : F) * rho 4408 + (1 : F) * rho 4421 + (1 : F) * rho 4434 + (1 : F) * rho 4447 + (1 : F) * rho 4460 + (1 : F) * rho 4473 + (1 : F) * rho 4486 + (1 : F) * rho 4499 + (1 : F) * rho 4512 + (1 : F) * rho 4525 + (1 : F) * rho 4538 + (1 : F) * rho 4551 + (1 : F) * rho 4564 + (1 : F) * rho 4577 + (1 : F) * rho 4590 + (1 : F) * rho 4603 + (1 : F) * rho 4617 + (1 : F) * rho 4631 + (1 : F) * rho 4645 + (1 : F) * rho 4659 + (1 : F) * rho 4673 + (1 : F) * rho 4687 + (1 : F) * rho 4701 + (1 : F) * rho 4715 + (1 : F) * rho 4729 + (1 : F) * rho 4743 + (1 : F) * rho 4757 + (1 : F) * rho 4771 + (1 : F) * rho 4785 + (1 : F) * rho 4799 + (1 : F) * rho 4813 + (1 : F) * rho 4827 + (1 : F) * rho 4841 + (1 : F) * rho 4855 + (1 : F) * rho 4869 + (1 : F) * rho 4883 + (1 : F) * rho 4897 + (1 : F) * rho 4911 + (1 : F) * rho 4925 + (1 : F) * rho 4939 + (1 : F) * rho 4953 + (1 : F) * rho 4967 + (1 : F) * rho 4981 + (1 : F) * rho 4995 + (1 : F) * rho 5009 + (1 : F) * rho 5023 + (1 : F) * rho 5037 + (1 : F) * rho 5051 + (1 : F) * rho 5065 + (1 : F) * rho 5079 + (1 : F) * rho 5093 + (1 : F) * rho 5107 + (1 : F) * rho 5121 + (1 : F) * rho 5135 + (1 : F) * rho 5149 + (1 : F) * rho 5163 + (1 : F) * rho 5177 + (1 : F) * rho 5191 + (1 : F) * rho 5205 + (1 : F) * rho 5219 + (1 : F) * rho 5233 + (1 : F) * rho 5247 + (1 : F) * rho 5261 + (1 : F) * rho 5275 + (1 : F) * rho 5289 + (1 : F) * rho 5303 + (1 : F) * rho 5317 + (1 : F) * rho 5331 + (1 : F) * rho 5345 + (1 : F) * rho 5359 + (1 : F) * rho 5373 + (1 : F) * rho 5387 + (1 : F) * rho 5401 + (1 : F) * rho 5415 + (1 : F) * rho 5429 + (1 : F) * rho 5443 + (1 : F) * rho 5457 + (1 : F) * rho 5471 + (1 : F) * rho 5485 + (1 : F) * rho 5499 + (1 : F) * rho 5513 + (1 : F) * rho 5527 + (1 : F) * rho 5541 + (1 : F) * rho 5555 + (1 : F) * rho 5569 + (1 : F) * rho 5583 + (1 : F) * rho 5597 + (1 : F) * rho 5611 + (1 : F) * rho 5625 + (1 : F) * rho 5639 + (1 : F) * rho 5653 + (1 : F) * rho 5667 + (1 : F) * rho 5681 + (1 : F) * rho 5695 + (1 : F) * rho 5709 + (1 : F) * rho 5723 + (1 : F) * rho 5737 + (1 : F) * rho 5751 + (1 : F) * rho 5765 + (1 : F) * rho 5779 + (1 : F) * rho 5793 + (1 : F) * rho 5807 + (1 : F) * rho 5821 + (1 : F) * rho 5835 + (1 : F) * rho 5849 + (1 : F) * rho 5863 + (1 : F) * rho 5877 + (1 : F) * rho 5891 + (1 : F) * rho 5905 + (1 : F) * rho 5919 + (1 : F) * rho 5933 + (1 : F) * rho 5947 + (1 : F) * rho 5961 + (1 : F) * rho 5975 + (1 : F) * rho 5989 + (1 : F) * rho 6003 + (1 : F) * rho 6017) =
    ((1 : F) * rho 20) * ((1 : F) + (1 : F) * rho 2667 + (1 : F) * rho 2680 + (1 : F) * rho 2693 + (1 : F) * rho 2706 + (1 : F) * rho 2719 + (1 : F) * rho 2732 + (1 : F) * rho 2745 + (1 : F) * rho 2758 + (1 : F) * rho 2771 + (1 : F) * rho 2784 + (1 : F) * rho 2797 + (1 : F) * rho 2810 + (1 : F) * rho 2823 + (1 : F) * rho 2836 + (1 : F) * rho 2849 + (1 : F) * rho 2862 + (1 : F) * rho 2875 + (1 : F) * rho 2888 + (1 : F) * rho 2901 + (1 : F) * rho 2914 + (1 : F) * rho 2927 + (1 : F) * rho 2940 + (1 : F) * rho 2953 + (1 : F) * rho 2966 + (1 : F) * rho 2979 + (1 : F) * rho 2992 + (1 : F) * rho 3005 + (1 : F) * rho 3018 + (1 : F) * rho 3031 + (1 : F) * rho 3044 + (1 : F) * rho 3057 + (1 : F) * rho 3070 + (1 : F) * rho 3083 + (1 : F) * rho 3096 + (1 : F) * rho 3109 + (1 : F) * rho 3122 + (1 : F) * rho 3135 + (1 : F) * rho 3148 + (1 : F) * rho 3161 + (1 : F) * rho 3174 + (1 : F) * rho 3187 + (1 : F) * rho 3200 + (1 : F) * rho 3213 + (1 : F) * rho 3226 + (1 : F) * rho 3239 + (1 : F) * rho 3252 + (1 : F) * rho 3265 + (1 : F) * rho 3278 + (1 : F) * rho 3291 + (1 : F) * rho 3304 + (1 : F) * rho 3317 + (1 : F) * rho 3330 + (1 : F) * rho 3343 + (1 : F) * rho 3356 + (1 : F) * rho 3369 + (1 : F) * rho 3382 + (1 : F) * rho 3395 + (1 : F) * rho 3408 + (1 : F) * rho 3421 + (1 : F) * rho 3434 + (1 : F) * rho 3447 + (1 : F) * rho 3460 + (1 : F) * rho 3473 + (1 : F) * rho 3486 + (1 : F) * rho 3499 + (1 : F) * rho 3512 + (1 : F) * rho 3525 + (1 : F) * rho 3538 + (1 : F) * rho 3551 + (1 : F) * rho 3564 + (1 : F) * rho 3577 + (1 : F) * rho 3590 + (1 : F) * rho 3603 + (1 : F) * rho 3616 + (1 : F) * rho 3629 + (1 : F) * rho 3642 + (1 : F) * rho 3655 + (1 : F) * rho 3668 + (1 : F) * rho 3681 + (1 : F) * rho 3694 + (1 : F) * rho 3707 + (1 : F) * rho 3720 + (1 : F) * rho 3733 + (1 : F) * rho 3746 + (1 : F) * rho 3759 + (1 : F) * rho 3772 + (1 : F) * rho 3785 + (1 : F) * rho 3798 + (1 : F) * rho 3811 + (1 : F) * rho 3824 + (1 : F) * rho 3837 + (1 : F) * rho 3850 + (1 : F) * rho 3863 + (1 : F) * rho 3876 + (1 : F) * rho 3889 + (1 : F) * rho 3902 + (1 : F) * rho 3915 + (1 : F) * rho 3928 + (1 : F) * rho 3941 + (1 : F) * rho 3954 + (1 : F) * rho 3967 + (1 : F) * rho 3980 + (1 : F) * rho 3993 + (1 : F) * rho 4006 + (1 : F) * rho 4019 + (1 : F) * rho 4032 + (1 : F) * rho 4045 + (1 : F) * rho 4058 + (1 : F) * rho 4071 + (1 : F) * rho 4084 + (1 : F) * rho 4097 + (1 : F) * rho 4110 + (1 : F) * rho 4123 + (1 : F) * rho 4136 + (1 : F) * rho 4149 + (1 : F) * rho 4162 + (1 : F) * rho 4175 + (1 : F) * rho 4188 + (1 : F) * rho 4201 + (1 : F) * rho 4214 + (1 : F) * rho 4227 + (1 : F) * rho 4240 + (1 : F) * rho 4253 + (1 : F) * rho 4266 + (1 : F) * rho 4279 + (1 : F) * rho 4292 + (1 : F) * rho 4305 + (1 : F) * rho 4318 + (1 : F) * rho 4331 + (1 : F) * rho 4344 + (1 : F) * rho 4357 + (1 : F) * rho 4370 + (1 : F) * rho 4383 + (1 : F) * rho 4396 + (1 : F) * rho 4409 + (1 : F) * rho 4422 + (1 : F) * rho 4435 + (1 : F) * rho 4448 + (1 : F) * rho 4461 + (1 : F) * rho 4474 + (1 : F) * rho 4487 + (1 : F) * rho 4500 + (1 : F) * rho 4513 + (1 : F) * rho 4526 + (1 : F) * rho 4539 + (1 : F) * rho 4552 + (1 : F) * rho 4565 + (1 : F) * rho 4578 + (1 : F) * rho 4591 + (1 : F) * rho 4604 + (1 : F) * rho 4618 + (1 : F) * rho 4632 + (1 : F) * rho 4646 + (1 : F) * rho 4660 + (1 : F) * rho 4674 + (1 : F) * rho 4688 + (1 : F) * rho 4702 + (1 : F) * rho 4716 + (1 : F) * rho 4730 + (1 : F) * rho 4744 + (1 : F) * rho 4758 + (1 : F) * rho 4772 + (1 : F) * rho 4786 + (1 : F) * rho 4800 + (1 : F) * rho 4814 + (1 : F) * rho 4828 + (1 : F) * rho 4842 + (1 : F) * rho 4856 + (1 : F) * rho 4870 + (1 : F) * rho 4884 + (1 : F) * rho 4898 + (1 : F) * rho 4912 + (1 : F) * rho 4926 + (1 : F) * rho 4940 + (1 : F) * rho 4954 + (1 : F) * rho 4968 + (1 : F) * rho 4982 + (1 : F) * rho 4996 + (1 : F) * rho 5010 + (1 : F) * rho 5024 + (1 : F) * rho 5038 + (1 : F) * rho 5052 + (1 : F) * rho 5066 + (1 : F) * rho 5080 + (1 : F) * rho 5094 + (1 : F) * rho 5108 + (1 : F) * rho 5122 + (1 : F) * rho 5136 + (1 : F) * rho 5150 + (1 : F) * rho 5164 + (1 : F) * rho 5178 + (1 : F) * rho 5192 + (1 : F) * rho 5206 + (1 : F) * rho 5220 + (1 : F) * rho 5234 + (1 : F) * rho 5248 + (1 : F) * rho 5262 + (1 : F) * rho 5276 + (1 : F) * rho 5290 + (1 : F) * rho 5304 + (1 : F) * rho 5318 + (1 : F) * rho 5332 + (1 : F) * rho 5346 + (1 : F) * rho 5360 + (1 : F) * rho 5374 + (1 : F) * rho 5388 + (1 : F) * rho 5402 + (1 : F) * rho 5416 + (1 : F) * rho 5430 + (1 : F) * rho 5444 + (1 : F) * rho 5458 + (1 : F) * rho 5472 + (1 : F) * rho 5486 + (1 : F) * rho 5500 + (1 : F) * rho 5514 + (1 : F) * rho 5528 + (1 : F) * rho 5542 + (1 : F) * rho 5556 + (1 : F) * rho 5570 + (1 : F) * rho 5584 + (1 : F) * rho 5598 + (1 : F) * rho 5612 + (1 : F) * rho 5626 + (1 : F) * rho 5640 + (1 : F) * rho 5654 + (1 : F) * rho 5668 + (1 : F) * rho 5682 + (1 : F) * rho 5696 + (1 : F) * rho 5710 + (1 : F) * rho 5724 + (1 : F) * rho 5738 + (1 : F) * rho 5752 + (1 : F) * rho 5766 + (1 : F) * rho 5780 + (1 : F) * rho 5794 + (1 : F) * rho 5808 + (1 : F) * rho 5822 + (1 : F) * rho 5836 + (1 : F) * rho 5850 + (1 : F) * rho 5864 + (1 : F) * rho 5878 + (1 : F) * rho 5892 + (1 : F) * rho 5906 + (1 : F) * rho 5920 + (1 : F) * rho 5934 + (1 : F) * rho 5948 + (1 : F) * rho 5962 + (1 : F) * rho 5976 + (1 : F) * rho 5990 + (1 : F) * rho 6004 + (1 : F) * rho 6018)

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
  ((1 : F) * rho 40715) * ((1 : F) * rho 4) = ((1 : F) * rho 3) * ((1 : F) * rho 40716)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
