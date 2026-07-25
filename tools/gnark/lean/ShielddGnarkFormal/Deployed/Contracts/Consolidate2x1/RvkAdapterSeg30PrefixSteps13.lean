import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas13
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps13 (rho : Nat -> Seg30.F)
    (hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r131 : Seg30.relationRow131 rho)
    (r902 : Seg30.relationRow902 rho)
    (r903 : Seg30.relationRow903 rho)
    (r904 : Seg30.relationRow904 rho)
    (r905 : Seg30.relationRow905 rho)
    (r906 : Seg30.relationRow906 rho)
    (r132 : Seg30.relationRow132 rho)
    (r907 : Seg30.relationRow907 rho)
    (r908 : Seg30.relationRow908 rho)
    (r909 : Seg30.relationRow909 rho)
    (r910 : Seg30.relationRow910 rho)
    (r911 : Seg30.relationRow911 rho)
    (r133 : Seg30.relationRow133 rho)
    (r912 : Seg30.relationRow912 rho)
    (r913 : Seg30.relationRow913 rho)
    (r914 : Seg30.relationRow914 rho)
    (r915 : Seg30.relationRow915 rho)
    (r916 : Seg30.relationRow916 rho)
    (r134 : Seg30.relationRow134 rho)
    (r917 : Seg30.relationRow917 rho)
    (r918 : Seg30.relationRow918 rho)
    (r919 : Seg30.relationRow919 rho)
    (r920 : Seg30.relationRow920 rho)
    (r921 : Seg30.relationRow921 rho)
    (r135 : Seg30.relationRow135 rho)
    (r922 : Seg30.relationRow922 rho)
    (r923 : Seg30.relationRow923 rho)
    (r924 : Seg30.relationRow924 rho)
    (r925 : Seg30.relationRow925 rho)
    (r926 : Seg30.relationRow926 rho)
    (r136 : Seg30.relationRow136 rho)
    (r927 : Seg30.relationRow927 rho)
    (r928 : Seg30.relationRow928 rho)
    (r929 : Seg30.relationRow929 rho)
    (r930 : Seg30.relationRow930 rho)
    (r931 : Seg30.relationRow931 rho)
    (r137 : Seg30.relationRow137 rho)
    (r932 : Seg30.relationRow932 rho)
    (r933 : Seg30.relationRow933 rho)
    (r934 : Seg30.relationRow934 rho)
    (r935 : Seg30.relationRow935 rho)
    (r936 : Seg30.relationRow936 rho)
    (r138 : Seg30.relationRow138 rho)
    (r937 : Seg30.relationRow937 rho)
    (r938 : Seg30.relationRow938 rho)
    (r939 : Seg30.relationRow939 rho)
    (r940 : Seg30.relationRow940 rho)
    (r941 : Seg30.relationRow941 rho)
    (r139 : Seg30.relationRow139 rho)
    (r942 : Seg30.relationRow942 rho)
    (r943 : Seg30.relationRow943 rho)
    (r944 : Seg30.relationRow944 rho)
    (r945 : Seg30.relationRow945 rho)
    (r946 : Seg30.relationRow946 rho)
    (r140 : Seg30.relationRow140 rho)
    (r947 : Seg30.relationRow947 rho)
    (r948 : Seg30.relationRow948 rho)
    (r949 : Seg30.relationRow949 rho)
    (r950 : Seg30.relationRow950 rho)
    (r951 : Seg30.relationRow951 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow131 : (1*(rho 28448))*(1 + (-1)*(rho 28448)) = 0 := by
    simpa [Seg30.relationRow131] using r131
  have hacc131 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc131 (rho 28317 : Seg30.F)
      (seg30AccX130 rho : Seg30.F) (seg30AccY130 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc131] using hp130
  have hr131 : RvkFixedBaseLadder.FixedStepRel 131 (rho 28448)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc131, seg30AccX131, seg30AccY131, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung131_wide (rho 28317 : Seg30.F) (rho 28448 : Seg30.F) (seg30AccX130 rho : Seg30.F) (seg30AccY130 rho : Seg30.F) (rho 29218 : Seg30.F) (rho 29219 : Seg30.F) (rho 29220 : Seg30.F) (rho 29221 : Seg30.F) (rho 29222 : Seg30.F) hacc131
        (by simpa using seg30_prefix_131_v2 rho r902)
        (by simpa using seg30_prefix_131_addX rho r903)
        (by simpa using seg30_prefix_131_addY rho r904)
        (by simpa using seg30_prefix_131_selX rho r905)
        (by simpa using seg30_prefix_131_selY rho r906)
        hbrow131
  obtain ⟨b131, hb131⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28448) hbrow131
  have hrb131 : RvkFixedBaseLadder.FixedStepRel 131 (toZMod b131)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb131]
    exact hr131
  have hp131 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 131 b131 _ _ hp130 hrb131).2
  have hbrow132 : (1*(rho 28449))*(1 + (-1)*(rho 28449)) = 0 := by
    simpa [Seg30.relationRow132] using r132
  have hacc132 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc132 (rho 28317 : Seg30.F)
      (seg30AccX131 rho : Seg30.F) (seg30AccY131 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc132] using hp131
  have hr132 : RvkFixedBaseLadder.FixedStepRel 132 (rho 28449)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc132, seg30AccX132, seg30AccY132, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung132_wide (rho 28317 : Seg30.F) (rho 28449 : Seg30.F) (seg30AccX131 rho : Seg30.F) (seg30AccY131 rho : Seg30.F) (rho 29223 : Seg30.F) (rho 29224 : Seg30.F) (rho 29225 : Seg30.F) (rho 29226 : Seg30.F) (rho 29227 : Seg30.F) hacc132
        (by simpa using seg30_prefix_132_v2 rho r907)
        (by simpa using seg30_prefix_132_addX rho r908)
        (by simpa using seg30_prefix_132_addY rho r909)
        (by simpa using seg30_prefix_132_selX rho r910)
        (by simpa using seg30_prefix_132_selY rho r911)
        hbrow132
  obtain ⟨b132, hb132⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28449) hbrow132
  have hrb132 : RvkFixedBaseLadder.FixedStepRel 132 (toZMod b132)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb132]
    exact hr132
  have hp132 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 132 b132 _ _ hp131 hrb132).2
  have hbrow133 : (1*(rho 28450))*(1 + (-1)*(rho 28450)) = 0 := by
    simpa [Seg30.relationRow133] using r133
  have hacc133 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc133 (rho 28317 : Seg30.F)
      (seg30AccX132 rho : Seg30.F) (seg30AccY132 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc133] using hp132
  have hr133 : RvkFixedBaseLadder.FixedStepRel 133 (rho 28450)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc133, seg30AccX133, seg30AccY133, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung133_wide (rho 28317 : Seg30.F) (rho 28450 : Seg30.F) (seg30AccX132 rho : Seg30.F) (seg30AccY132 rho : Seg30.F) (rho 29228 : Seg30.F) (rho 29229 : Seg30.F) (rho 29230 : Seg30.F) (rho 29231 : Seg30.F) (rho 29232 : Seg30.F) hacc133
        (by simpa using seg30_prefix_133_v2 rho r912)
        (by simpa using seg30_prefix_133_addX rho r913)
        (by simpa using seg30_prefix_133_addY rho r914)
        (by simpa using seg30_prefix_133_selX rho r915)
        (by simpa using seg30_prefix_133_selY rho r916)
        hbrow133
  obtain ⟨b133, hb133⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28450) hbrow133
  have hrb133 : RvkFixedBaseLadder.FixedStepRel 133 (toZMod b133)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb133]
    exact hr133
  have hp133 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 133 b133 _ _ hp132 hrb133).2
  have hbrow134 : (1*(rho 28451))*(1 + (-1)*(rho 28451)) = 0 := by
    simpa [Seg30.relationRow134] using r134
  have hacc134 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc134 (rho 28317 : Seg30.F)
      (seg30AccX133 rho : Seg30.F) (seg30AccY133 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc134] using hp133
  have hr134 : RvkFixedBaseLadder.FixedStepRel 134 (rho 28451)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc134, seg30AccX134, seg30AccY134, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung134_wide (rho 28317 : Seg30.F) (rho 28451 : Seg30.F) (seg30AccX133 rho : Seg30.F) (seg30AccY133 rho : Seg30.F) (rho 29233 : Seg30.F) (rho 29234 : Seg30.F) (rho 29235 : Seg30.F) (rho 29236 : Seg30.F) (rho 29237 : Seg30.F) hacc134
        (by simpa using seg30_prefix_134_v2 rho r917)
        (by simpa using seg30_prefix_134_addX rho r918)
        (by simpa using seg30_prefix_134_addY rho r919)
        (by simpa using seg30_prefix_134_selX rho r920)
        (by simpa using seg30_prefix_134_selY rho r921)
        hbrow134
  obtain ⟨b134, hb134⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28451) hbrow134
  have hrb134 : RvkFixedBaseLadder.FixedStepRel 134 (toZMod b134)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb134]
    exact hr134
  have hp134 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 134 b134 _ _ hp133 hrb134).2
  have hbrow135 : (1*(rho 28452))*(1 + (-1)*(rho 28452)) = 0 := by
    simpa [Seg30.relationRow135] using r135
  have hacc135 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc135 (rho 28317 : Seg30.F)
      (seg30AccX134 rho : Seg30.F) (seg30AccY134 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc135] using hp134
  have hr135 : RvkFixedBaseLadder.FixedStepRel 135 (rho 28452)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX135 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY135 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc135, seg30AccX135, seg30AccY135, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung135_wide (rho 28317 : Seg30.F) (rho 28452 : Seg30.F) (seg30AccX134 rho : Seg30.F) (seg30AccY134 rho : Seg30.F) (rho 29238 : Seg30.F) (rho 29239 : Seg30.F) (rho 29240 : Seg30.F) (rho 29241 : Seg30.F) (rho 29242 : Seg30.F) hacc135
        (by simpa using seg30_prefix_135_v2 rho r922)
        (by simpa using seg30_prefix_135_addX rho r923)
        (by simpa using seg30_prefix_135_addY rho r924)
        (by simpa using seg30_prefix_135_selX rho r925)
        (by simpa using seg30_prefix_135_selY rho r926)
        hbrow135
  obtain ⟨b135, hb135⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28452) hbrow135
  have hrb135 : RvkFixedBaseLadder.FixedStepRel 135 (toZMod b135)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX135 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY135 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb135]
    exact hr135
  have hp135 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX135 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY135 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 135 b135 _ _ hp134 hrb135).2
  have hbrow136 : (1*(rho 28453))*(1 + (-1)*(rho 28453)) = 0 := by
    simpa [Seg30.relationRow136] using r136
  have hacc136 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc136 (rho 28317 : Seg30.F)
      (seg30AccX135 rho : Seg30.F) (seg30AccY135 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc136] using hp135
  have hr136 : RvkFixedBaseLadder.FixedStepRel 136 (rho 28453)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX135 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY135 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc136, seg30AccX136, seg30AccY136, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung136_wide (rho 28317 : Seg30.F) (rho 28453 : Seg30.F) (seg30AccX135 rho : Seg30.F) (seg30AccY135 rho : Seg30.F) (rho 29243 : Seg30.F) (rho 29244 : Seg30.F) (rho 29245 : Seg30.F) (rho 29246 : Seg30.F) (rho 29247 : Seg30.F) hacc136
        (by simpa using seg30_prefix_136_v2 rho r927)
        (by simpa using seg30_prefix_136_addX rho r928)
        (by simpa using seg30_prefix_136_addY rho r929)
        (by simpa using seg30_prefix_136_selX rho r930)
        (by simpa using seg30_prefix_136_selY rho r931)
        hbrow136
  obtain ⟨b136, hb136⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28453) hbrow136
  have hrb136 : RvkFixedBaseLadder.FixedStepRel 136 (toZMod b136)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX135 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY135 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb136]
    exact hr136
  have hp136 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 136 b136 _ _ hp135 hrb136).2
  have hbrow137 : (1*(rho 28454))*(1 + (-1)*(rho 28454)) = 0 := by
    simpa [Seg30.relationRow137] using r137
  have hacc137 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc137 (rho 28317 : Seg30.F)
      (seg30AccX136 rho : Seg30.F) (seg30AccY136 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc137] using hp136
  have hr137 : RvkFixedBaseLadder.FixedStepRel 137 (rho 28454)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc137, seg30AccX137, seg30AccY137, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung137_wide (rho 28317 : Seg30.F) (rho 28454 : Seg30.F) (seg30AccX136 rho : Seg30.F) (seg30AccY136 rho : Seg30.F) (rho 29248 : Seg30.F) (rho 29249 : Seg30.F) (rho 29250 : Seg30.F) (rho 29251 : Seg30.F) (rho 29252 : Seg30.F) hacc137
        (by simpa using seg30_prefix_137_v2 rho r932)
        (by simpa using seg30_prefix_137_addX rho r933)
        (by simpa using seg30_prefix_137_addY rho r934)
        (by simpa using seg30_prefix_137_selX rho r935)
        (by simpa using seg30_prefix_137_selY rho r936)
        hbrow137
  obtain ⟨b137, hb137⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28454) hbrow137
  have hrb137 : RvkFixedBaseLadder.FixedStepRel 137 (toZMod b137)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb137]
    exact hr137
  have hp137 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 137 b137 _ _ hp136 hrb137).2
  have hbrow138 : (1*(rho 28455))*(1 + (-1)*(rho 28455)) = 0 := by
    simpa [Seg30.relationRow138] using r138
  have hacc138 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc138 (rho 28317 : Seg30.F)
      (seg30AccX137 rho : Seg30.F) (seg30AccY137 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc138] using hp137
  have hr138 : RvkFixedBaseLadder.FixedStepRel 138 (rho 28455)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc138, seg30AccX138, seg30AccY138, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung138_wide (rho 28317 : Seg30.F) (rho 28455 : Seg30.F) (seg30AccX137 rho : Seg30.F) (seg30AccY137 rho : Seg30.F) (rho 29253 : Seg30.F) (rho 29254 : Seg30.F) (rho 29255 : Seg30.F) (rho 29256 : Seg30.F) (rho 29257 : Seg30.F) hacc138
        (by simpa using seg30_prefix_138_v2 rho r937)
        (by simpa using seg30_prefix_138_addX rho r938)
        (by simpa using seg30_prefix_138_addY rho r939)
        (by simpa using seg30_prefix_138_selX rho r940)
        (by simpa using seg30_prefix_138_selY rho r941)
        hbrow138
  obtain ⟨b138, hb138⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28455) hbrow138
  have hrb138 : RvkFixedBaseLadder.FixedStepRel 138 (toZMod b138)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb138]
    exact hr138
  have hp138 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 138 b138 _ _ hp137 hrb138).2
  have hbrow139 : (1*(rho 28456))*(1 + (-1)*(rho 28456)) = 0 := by
    simpa [Seg30.relationRow139] using r139
  have hacc139 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc139 (rho 28317 : Seg30.F)
      (seg30AccX138 rho : Seg30.F) (seg30AccY138 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc139] using hp138
  have hr139 : RvkFixedBaseLadder.FixedStepRel 139 (rho 28456)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc139, seg30AccX139, seg30AccY139, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung139_wide (rho 28317 : Seg30.F) (rho 28456 : Seg30.F) (seg30AccX138 rho : Seg30.F) (seg30AccY138 rho : Seg30.F) (rho 29258 : Seg30.F) (rho 29259 : Seg30.F) (rho 29260 : Seg30.F) (rho 29261 : Seg30.F) (rho 29262 : Seg30.F) hacc139
        (by simpa using seg30_prefix_139_v2 rho r942)
        (by simpa using seg30_prefix_139_addX rho r943)
        (by simpa using seg30_prefix_139_addY rho r944)
        (by simpa using seg30_prefix_139_selX rho r945)
        (by simpa using seg30_prefix_139_selY rho r946)
        hbrow139
  obtain ⟨b139, hb139⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28456) hbrow139
  have hrb139 : RvkFixedBaseLadder.FixedStepRel 139 (toZMod b139)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb139]
    exact hr139
  have hp139 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 139 b139 _ _ hp138 hrb139).2
  have hbrow140 : (1*(rho 28457))*(1 + (-1)*(rho 28457)) = 0 := by
    simpa [Seg30.relationRow140] using r140
  have hacc140 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc140 (rho 28317 : Seg30.F)
      (seg30AccX139 rho : Seg30.F) (seg30AccY139 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc140] using hp139
  have hr140 : RvkFixedBaseLadder.FixedStepRel 140 (rho 28457)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc140, seg30AccX140, seg30AccY140, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung140_wide (rho 28317 : Seg30.F) (rho 28457 : Seg30.F) (seg30AccX139 rho : Seg30.F) (seg30AccY139 rho : Seg30.F) (rho 29263 : Seg30.F) (rho 29264 : Seg30.F) (rho 29265 : Seg30.F) (rho 29266 : Seg30.F) (rho 29267 : Seg30.F) hacc140
        (by simpa using seg30_prefix_140_v2 rho r947)
        (by simpa using seg30_prefix_140_addX rho r948)
        (by simpa using seg30_prefix_140_addY rho r949)
        (by simpa using seg30_prefix_140_selX rho r950)
        (by simpa using seg30_prefix_140_selY rho r951)
        hbrow140
  obtain ⟨b140, hb140⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28457) hbrow140
  have hrb140 : RvkFixedBaseLadder.FixedStepRel 140 (toZMod b140)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb140]
    exact hr140
  have hp140 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 140 b140 _ _ hp139 hrb140).2
  exact hp140

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

