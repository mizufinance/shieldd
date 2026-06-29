import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas13
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg13_prefix_steps13 (rho : Nat -> Seg13.F)
    (hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r131 : Seg13.relationRow131 rho)
    (r902 : Seg13.relationRow902 rho)
    (r903 : Seg13.relationRow903 rho)
    (r904 : Seg13.relationRow904 rho)
    (r905 : Seg13.relationRow905 rho)
    (r906 : Seg13.relationRow906 rho)
    (r132 : Seg13.relationRow132 rho)
    (r907 : Seg13.relationRow907 rho)
    (r908 : Seg13.relationRow908 rho)
    (r909 : Seg13.relationRow909 rho)
    (r910 : Seg13.relationRow910 rho)
    (r911 : Seg13.relationRow911 rho)
    (r133 : Seg13.relationRow133 rho)
    (r912 : Seg13.relationRow912 rho)
    (r913 : Seg13.relationRow913 rho)
    (r914 : Seg13.relationRow914 rho)
    (r915 : Seg13.relationRow915 rho)
    (r916 : Seg13.relationRow916 rho)
    (r134 : Seg13.relationRow134 rho)
    (r917 : Seg13.relationRow917 rho)
    (r918 : Seg13.relationRow918 rho)
    (r919 : Seg13.relationRow919 rho)
    (r920 : Seg13.relationRow920 rho)
    (r921 : Seg13.relationRow921 rho)
    (r135 : Seg13.relationRow135 rho)
    (r922 : Seg13.relationRow922 rho)
    (r923 : Seg13.relationRow923 rho)
    (r924 : Seg13.relationRow924 rho)
    (r925 : Seg13.relationRow925 rho)
    (r926 : Seg13.relationRow926 rho)
    (r136 : Seg13.relationRow136 rho)
    (r927 : Seg13.relationRow927 rho)
    (r928 : Seg13.relationRow928 rho)
    (r929 : Seg13.relationRow929 rho)
    (r930 : Seg13.relationRow930 rho)
    (r931 : Seg13.relationRow931 rho)
    (r137 : Seg13.relationRow137 rho)
    (r932 : Seg13.relationRow932 rho)
    (r933 : Seg13.relationRow933 rho)
    (r934 : Seg13.relationRow934 rho)
    (r935 : Seg13.relationRow935 rho)
    (r936 : Seg13.relationRow936 rho)
    (r138 : Seg13.relationRow138 rho)
    (r937 : Seg13.relationRow937 rho)
    (r938 : Seg13.relationRow938 rho)
    (r939 : Seg13.relationRow939 rho)
    (r940 : Seg13.relationRow940 rho)
    (r941 : Seg13.relationRow941 rho)
    (r139 : Seg13.relationRow139 rho)
    (r942 : Seg13.relationRow942 rho)
    (r943 : Seg13.relationRow943 rho)
    (r944 : Seg13.relationRow944 rho)
    (r945 : Seg13.relationRow945 rho)
    (r946 : Seg13.relationRow946 rho)
    (r140 : Seg13.relationRow140 rho)
    (r947 : Seg13.relationRow947 rho)
    (r948 : Seg13.relationRow948 rho)
    (r949 : Seg13.relationRow949 rho)
    (r950 : Seg13.relationRow950 rho)
    (r951 : Seg13.relationRow951 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX140 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY140 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow131 : (1*(rho 10702))*(1 + (-1)*(rho 10702)) = 0 := by
    simpa [Seg13.relationRow131] using r131
  have hacc131 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc131 (rho 10571 : Seg13.F)
      (seg13AccX130 rho : Seg13.F) (seg13AccY130 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc131] using hp130
  have hr131 : RvkFixedBaseLadder.FixedStepRel 131 (rho 10702)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX131 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY131 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc131, seg13AccX131, seg13AccY131, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung131_wide (rho 10571 : Seg13.F) (rho 10702 : Seg13.F) (seg13AccX130 rho : Seg13.F) (seg13AccY130 rho : Seg13.F) (rho 11472 : Seg13.F) (rho 11473 : Seg13.F) (rho 11474 : Seg13.F) (rho 11475 : Seg13.F) (rho 11476 : Seg13.F) hacc131
        (by simpa using seg13_prefix_131_v2 rho r902)
        (by simpa using seg13_prefix_131_addX rho r903)
        (by simpa using seg13_prefix_131_addY rho r904)
        (by simpa using seg13_prefix_131_selX rho r905)
        (by simpa using seg13_prefix_131_selY rho r906)
        hbrow131
  obtain ⟨b131, hb131⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10702) hbrow131
  have hrb131 : RvkFixedBaseLadder.FixedStepRel 131 (toZMod b131)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX131 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY131 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb131]
    exact hr131
  have hp131 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX131 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY131 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 131 b131 _ _ hp130 hrb131).2
  have hbrow132 : (1*(rho 10703))*(1 + (-1)*(rho 10703)) = 0 := by
    simpa [Seg13.relationRow132] using r132
  have hacc132 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc132 (rho 10571 : Seg13.F)
      (seg13AccX131 rho : Seg13.F) (seg13AccY131 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc132] using hp131
  have hr132 : RvkFixedBaseLadder.FixedStepRel 132 (rho 10703)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX131 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY131 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX132 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY132 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc132, seg13AccX132, seg13AccY132, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung132_wide (rho 10571 : Seg13.F) (rho 10703 : Seg13.F) (seg13AccX131 rho : Seg13.F) (seg13AccY131 rho : Seg13.F) (rho 11477 : Seg13.F) (rho 11478 : Seg13.F) (rho 11479 : Seg13.F) (rho 11480 : Seg13.F) (rho 11481 : Seg13.F) hacc132
        (by simpa using seg13_prefix_132_v2 rho r907)
        (by simpa using seg13_prefix_132_addX rho r908)
        (by simpa using seg13_prefix_132_addY rho r909)
        (by simpa using seg13_prefix_132_selX rho r910)
        (by simpa using seg13_prefix_132_selY rho r911)
        hbrow132
  obtain ⟨b132, hb132⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10703) hbrow132
  have hrb132 : RvkFixedBaseLadder.FixedStepRel 132 (toZMod b132)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX131 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY131 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX132 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY132 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb132]
    exact hr132
  have hp132 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX132 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY132 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 132 b132 _ _ hp131 hrb132).2
  have hbrow133 : (1*(rho 10704))*(1 + (-1)*(rho 10704)) = 0 := by
    simpa [Seg13.relationRow133] using r133
  have hacc133 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc133 (rho 10571 : Seg13.F)
      (seg13AccX132 rho : Seg13.F) (seg13AccY132 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc133] using hp132
  have hr133 : RvkFixedBaseLadder.FixedStepRel 133 (rho 10704)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX132 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY132 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX133 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY133 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc133, seg13AccX133, seg13AccY133, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung133_wide (rho 10571 : Seg13.F) (rho 10704 : Seg13.F) (seg13AccX132 rho : Seg13.F) (seg13AccY132 rho : Seg13.F) (rho 11482 : Seg13.F) (rho 11483 : Seg13.F) (rho 11484 : Seg13.F) (rho 11485 : Seg13.F) (rho 11486 : Seg13.F) hacc133
        (by simpa using seg13_prefix_133_v2 rho r912)
        (by simpa using seg13_prefix_133_addX rho r913)
        (by simpa using seg13_prefix_133_addY rho r914)
        (by simpa using seg13_prefix_133_selX rho r915)
        (by simpa using seg13_prefix_133_selY rho r916)
        hbrow133
  obtain ⟨b133, hb133⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10704) hbrow133
  have hrb133 : RvkFixedBaseLadder.FixedStepRel 133 (toZMod b133)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX132 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY132 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX133 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY133 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb133]
    exact hr133
  have hp133 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX133 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY133 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 133 b133 _ _ hp132 hrb133).2
  have hbrow134 : (1*(rho 10705))*(1 + (-1)*(rho 10705)) = 0 := by
    simpa [Seg13.relationRow134] using r134
  have hacc134 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc134 (rho 10571 : Seg13.F)
      (seg13AccX133 rho : Seg13.F) (seg13AccY133 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc134] using hp133
  have hr134 : RvkFixedBaseLadder.FixedStepRel 134 (rho 10705)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX133 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY133 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX134 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY134 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc134, seg13AccX134, seg13AccY134, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung134_wide (rho 10571 : Seg13.F) (rho 10705 : Seg13.F) (seg13AccX133 rho : Seg13.F) (seg13AccY133 rho : Seg13.F) (rho 11487 : Seg13.F) (rho 11488 : Seg13.F) (rho 11489 : Seg13.F) (rho 11490 : Seg13.F) (rho 11491 : Seg13.F) hacc134
        (by simpa using seg13_prefix_134_v2 rho r917)
        (by simpa using seg13_prefix_134_addX rho r918)
        (by simpa using seg13_prefix_134_addY rho r919)
        (by simpa using seg13_prefix_134_selX rho r920)
        (by simpa using seg13_prefix_134_selY rho r921)
        hbrow134
  obtain ⟨b134, hb134⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10705) hbrow134
  have hrb134 : RvkFixedBaseLadder.FixedStepRel 134 (toZMod b134)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX133 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY133 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX134 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY134 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb134]
    exact hr134
  have hp134 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX134 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY134 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 134 b134 _ _ hp133 hrb134).2
  have hbrow135 : (1*(rho 10706))*(1 + (-1)*(rho 10706)) = 0 := by
    simpa [Seg13.relationRow135] using r135
  have hacc135 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc135 (rho 10571 : Seg13.F)
      (seg13AccX134 rho : Seg13.F) (seg13AccY134 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc135] using hp134
  have hr135 : RvkFixedBaseLadder.FixedStepRel 135 (rho 10706)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX134 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY134 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX135 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY135 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc135, seg13AccX135, seg13AccY135, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung135_wide (rho 10571 : Seg13.F) (rho 10706 : Seg13.F) (seg13AccX134 rho : Seg13.F) (seg13AccY134 rho : Seg13.F) (rho 11492 : Seg13.F) (rho 11493 : Seg13.F) (rho 11494 : Seg13.F) (rho 11495 : Seg13.F) (rho 11496 : Seg13.F) hacc135
        (by simpa using seg13_prefix_135_v2 rho r922)
        (by simpa using seg13_prefix_135_addX rho r923)
        (by simpa using seg13_prefix_135_addY rho r924)
        (by simpa using seg13_prefix_135_selX rho r925)
        (by simpa using seg13_prefix_135_selY rho r926)
        hbrow135
  obtain ⟨b135, hb135⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10706) hbrow135
  have hrb135 : RvkFixedBaseLadder.FixedStepRel 135 (toZMod b135)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX134 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY134 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX135 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY135 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb135]
    exact hr135
  have hp135 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX135 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY135 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 135 b135 _ _ hp134 hrb135).2
  have hbrow136 : (1*(rho 10707))*(1 + (-1)*(rho 10707)) = 0 := by
    simpa [Seg13.relationRow136] using r136
  have hacc136 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc136 (rho 10571 : Seg13.F)
      (seg13AccX135 rho : Seg13.F) (seg13AccY135 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc136] using hp135
  have hr136 : RvkFixedBaseLadder.FixedStepRel 136 (rho 10707)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX135 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY135 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX136 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY136 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc136, seg13AccX136, seg13AccY136, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung136_wide (rho 10571 : Seg13.F) (rho 10707 : Seg13.F) (seg13AccX135 rho : Seg13.F) (seg13AccY135 rho : Seg13.F) (rho 11497 : Seg13.F) (rho 11498 : Seg13.F) (rho 11499 : Seg13.F) (rho 11500 : Seg13.F) (rho 11501 : Seg13.F) hacc136
        (by simpa using seg13_prefix_136_v2 rho r927)
        (by simpa using seg13_prefix_136_addX rho r928)
        (by simpa using seg13_prefix_136_addY rho r929)
        (by simpa using seg13_prefix_136_selX rho r930)
        (by simpa using seg13_prefix_136_selY rho r931)
        hbrow136
  obtain ⟨b136, hb136⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10707) hbrow136
  have hrb136 : RvkFixedBaseLadder.FixedStepRel 136 (toZMod b136)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX135 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY135 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX136 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY136 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb136]
    exact hr136
  have hp136 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX136 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY136 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 136 b136 _ _ hp135 hrb136).2
  have hbrow137 : (1*(rho 10708))*(1 + (-1)*(rho 10708)) = 0 := by
    simpa [Seg13.relationRow137] using r137
  have hacc137 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc137 (rho 10571 : Seg13.F)
      (seg13AccX136 rho : Seg13.F) (seg13AccY136 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc137] using hp136
  have hr137 : RvkFixedBaseLadder.FixedStepRel 137 (rho 10708)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX136 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY136 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX137 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY137 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc137, seg13AccX137, seg13AccY137, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung137_wide (rho 10571 : Seg13.F) (rho 10708 : Seg13.F) (seg13AccX136 rho : Seg13.F) (seg13AccY136 rho : Seg13.F) (rho 11502 : Seg13.F) (rho 11503 : Seg13.F) (rho 11504 : Seg13.F) (rho 11505 : Seg13.F) (rho 11506 : Seg13.F) hacc137
        (by simpa using seg13_prefix_137_v2 rho r932)
        (by simpa using seg13_prefix_137_addX rho r933)
        (by simpa using seg13_prefix_137_addY rho r934)
        (by simpa using seg13_prefix_137_selX rho r935)
        (by simpa using seg13_prefix_137_selY rho r936)
        hbrow137
  obtain ⟨b137, hb137⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10708) hbrow137
  have hrb137 : RvkFixedBaseLadder.FixedStepRel 137 (toZMod b137)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX136 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY136 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX137 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY137 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb137]
    exact hr137
  have hp137 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX137 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY137 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 137 b137 _ _ hp136 hrb137).2
  have hbrow138 : (1*(rho 10709))*(1 + (-1)*(rho 10709)) = 0 := by
    simpa [Seg13.relationRow138] using r138
  have hacc138 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc138 (rho 10571 : Seg13.F)
      (seg13AccX137 rho : Seg13.F) (seg13AccY137 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc138] using hp137
  have hr138 : RvkFixedBaseLadder.FixedStepRel 138 (rho 10709)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX137 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY137 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX138 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY138 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc138, seg13AccX138, seg13AccY138, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung138_wide (rho 10571 : Seg13.F) (rho 10709 : Seg13.F) (seg13AccX137 rho : Seg13.F) (seg13AccY137 rho : Seg13.F) (rho 11507 : Seg13.F) (rho 11508 : Seg13.F) (rho 11509 : Seg13.F) (rho 11510 : Seg13.F) (rho 11511 : Seg13.F) hacc138
        (by simpa using seg13_prefix_138_v2 rho r937)
        (by simpa using seg13_prefix_138_addX rho r938)
        (by simpa using seg13_prefix_138_addY rho r939)
        (by simpa using seg13_prefix_138_selX rho r940)
        (by simpa using seg13_prefix_138_selY rho r941)
        hbrow138
  obtain ⟨b138, hb138⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10709) hbrow138
  have hrb138 : RvkFixedBaseLadder.FixedStepRel 138 (toZMod b138)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX137 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY137 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX138 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY138 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb138]
    exact hr138
  have hp138 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX138 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY138 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 138 b138 _ _ hp137 hrb138).2
  have hbrow139 : (1*(rho 10710))*(1 + (-1)*(rho 10710)) = 0 := by
    simpa [Seg13.relationRow139] using r139
  have hacc139 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc139 (rho 10571 : Seg13.F)
      (seg13AccX138 rho : Seg13.F) (seg13AccY138 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc139] using hp138
  have hr139 : RvkFixedBaseLadder.FixedStepRel 139 (rho 10710)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX138 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY138 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX139 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY139 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc139, seg13AccX139, seg13AccY139, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung139_wide (rho 10571 : Seg13.F) (rho 10710 : Seg13.F) (seg13AccX138 rho : Seg13.F) (seg13AccY138 rho : Seg13.F) (rho 11512 : Seg13.F) (rho 11513 : Seg13.F) (rho 11514 : Seg13.F) (rho 11515 : Seg13.F) (rho 11516 : Seg13.F) hacc139
        (by simpa using seg13_prefix_139_v2 rho r942)
        (by simpa using seg13_prefix_139_addX rho r943)
        (by simpa using seg13_prefix_139_addY rho r944)
        (by simpa using seg13_prefix_139_selX rho r945)
        (by simpa using seg13_prefix_139_selY rho r946)
        hbrow139
  obtain ⟨b139, hb139⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10710) hbrow139
  have hrb139 : RvkFixedBaseLadder.FixedStepRel 139 (toZMod b139)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX138 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY138 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX139 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY139 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb139]
    exact hr139
  have hp139 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX139 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY139 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 139 b139 _ _ hp138 hrb139).2
  have hbrow140 : (1*(rho 10711))*(1 + (-1)*(rho 10711)) = 0 := by
    simpa [Seg13.relationRow140] using r140
  have hacc140 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc140 (rho 10571 : Seg13.F)
      (seg13AccX139 rho : Seg13.F) (seg13AccY139 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc140] using hp139
  have hr140 : RvkFixedBaseLadder.FixedStepRel 140 (rho 10711)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX139 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY139 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX140 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY140 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc140, seg13AccX140, seg13AccY140, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung140_wide (rho 10571 : Seg13.F) (rho 10711 : Seg13.F) (seg13AccX139 rho : Seg13.F) (seg13AccY139 rho : Seg13.F) (rho 11517 : Seg13.F) (rho 11518 : Seg13.F) (rho 11519 : Seg13.F) (rho 11520 : Seg13.F) (rho 11521 : Seg13.F) hacc140
        (by simpa using seg13_prefix_140_v2 rho r947)
        (by simpa using seg13_prefix_140_addX rho r948)
        (by simpa using seg13_prefix_140_addY rho r949)
        (by simpa using seg13_prefix_140_selX rho r950)
        (by simpa using seg13_prefix_140_selY rho r951)
        hbrow140
  obtain ⟨b140, hb140⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10711) hbrow140
  have hrb140 : RvkFixedBaseLadder.FixedStepRel 140 (toZMod b140)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX139 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY139 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX140 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY140 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb140]
    exact hr140
  have hp140 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX140 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY140 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 140 b140 _ _ hp139 hrb140).2
  exact hp140

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

