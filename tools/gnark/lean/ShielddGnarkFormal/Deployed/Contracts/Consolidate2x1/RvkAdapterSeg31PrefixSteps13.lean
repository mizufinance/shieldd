import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas13
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

theorem seg31_prefix_steps13 (rho : Nat -> Seg31.F)
    (hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r131 : Seg31.relationRow131 rho)
    (r902 : Seg31.relationRow902 rho)
    (r903 : Seg31.relationRow903 rho)
    (r904 : Seg31.relationRow904 rho)
    (r905 : Seg31.relationRow905 rho)
    (r906 : Seg31.relationRow906 rho)
    (r132 : Seg31.relationRow132 rho)
    (r907 : Seg31.relationRow907 rho)
    (r908 : Seg31.relationRow908 rho)
    (r909 : Seg31.relationRow909 rho)
    (r910 : Seg31.relationRow910 rho)
    (r911 : Seg31.relationRow911 rho)
    (r133 : Seg31.relationRow133 rho)
    (r912 : Seg31.relationRow912 rho)
    (r913 : Seg31.relationRow913 rho)
    (r914 : Seg31.relationRow914 rho)
    (r915 : Seg31.relationRow915 rho)
    (r916 : Seg31.relationRow916 rho)
    (r134 : Seg31.relationRow134 rho)
    (r917 : Seg31.relationRow917 rho)
    (r918 : Seg31.relationRow918 rho)
    (r919 : Seg31.relationRow919 rho)
    (r920 : Seg31.relationRow920 rho)
    (r921 : Seg31.relationRow921 rho)
    (r135 : Seg31.relationRow135 rho)
    (r922 : Seg31.relationRow922 rho)
    (r923 : Seg31.relationRow923 rho)
    (r924 : Seg31.relationRow924 rho)
    (r925 : Seg31.relationRow925 rho)
    (r926 : Seg31.relationRow926 rho)
    (r136 : Seg31.relationRow136 rho)
    (r927 : Seg31.relationRow927 rho)
    (r928 : Seg31.relationRow928 rho)
    (r929 : Seg31.relationRow929 rho)
    (r930 : Seg31.relationRow930 rho)
    (r931 : Seg31.relationRow931 rho)
    (r137 : Seg31.relationRow137 rho)
    (r932 : Seg31.relationRow932 rho)
    (r933 : Seg31.relationRow933 rho)
    (r934 : Seg31.relationRow934 rho)
    (r935 : Seg31.relationRow935 rho)
    (r936 : Seg31.relationRow936 rho)
    (r138 : Seg31.relationRow138 rho)
    (r937 : Seg31.relationRow937 rho)
    (r938 : Seg31.relationRow938 rho)
    (r939 : Seg31.relationRow939 rho)
    (r940 : Seg31.relationRow940 rho)
    (r941 : Seg31.relationRow941 rho)
    (r139 : Seg31.relationRow139 rho)
    (r942 : Seg31.relationRow942 rho)
    (r943 : Seg31.relationRow943 rho)
    (r944 : Seg31.relationRow944 rho)
    (r945 : Seg31.relationRow945 rho)
    (r946 : Seg31.relationRow946 rho)
    (r140 : Seg31.relationRow140 rho)
    (r947 : Seg31.relationRow947 rho)
    (r948 : Seg31.relationRow948 rho)
    (r949 : Seg31.relationRow949 rho)
    (r950 : Seg31.relationRow950 rho)
    (r951 : Seg31.relationRow951 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX140 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY140 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow131 : (1*(rho 29402))*(1 + (-1)*(rho 29402)) = 0 := by
    simpa [Seg31.relationRow131] using r131
  have hacc131 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc131 (rho 29271 : Seg31.F)
      (seg31AccX130 rho : Seg31.F) (seg31AccY130 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc131] using hp130
  have hr131 : RvkFixedBaseLadder.FixedStepRel 131 (rho 29402)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX131 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY131 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc131, seg31AccX131, seg31AccY131, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung131_wide (rho 29271 : Seg31.F) (rho 29402 : Seg31.F) (seg31AccX130 rho : Seg31.F) (seg31AccY130 rho : Seg31.F) (rho 30172 : Seg31.F) (rho 30173 : Seg31.F) (rho 30174 : Seg31.F) (rho 30175 : Seg31.F) (rho 30176 : Seg31.F) hacc131
        (by simpa using seg31_prefix_131_v2 rho r902)
        (by simpa using seg31_prefix_131_addX rho r903)
        (by simpa using seg31_prefix_131_addY rho r904)
        (by simpa using seg31_prefix_131_selX rho r905)
        (by simpa using seg31_prefix_131_selY rho r906)
        hbrow131
  obtain ⟨b131, hb131⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29402) hbrow131
  have hrb131 : RvkFixedBaseLadder.FixedStepRel 131 (toZMod b131)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX131 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY131 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb131]
    exact hr131
  have hp131 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX131 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY131 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 131 b131 _ _ hp130 hrb131).2
  have hbrow132 : (1*(rho 29403))*(1 + (-1)*(rho 29403)) = 0 := by
    simpa [Seg31.relationRow132] using r132
  have hacc132 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc132 (rho 29271 : Seg31.F)
      (seg31AccX131 rho : Seg31.F) (seg31AccY131 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc132] using hp131
  have hr132 : RvkFixedBaseLadder.FixedStepRel 132 (rho 29403)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX131 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY131 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX132 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY132 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc132, seg31AccX132, seg31AccY132, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung132_wide (rho 29271 : Seg31.F) (rho 29403 : Seg31.F) (seg31AccX131 rho : Seg31.F) (seg31AccY131 rho : Seg31.F) (rho 30177 : Seg31.F) (rho 30178 : Seg31.F) (rho 30179 : Seg31.F) (rho 30180 : Seg31.F) (rho 30181 : Seg31.F) hacc132
        (by simpa using seg31_prefix_132_v2 rho r907)
        (by simpa using seg31_prefix_132_addX rho r908)
        (by simpa using seg31_prefix_132_addY rho r909)
        (by simpa using seg31_prefix_132_selX rho r910)
        (by simpa using seg31_prefix_132_selY rho r911)
        hbrow132
  obtain ⟨b132, hb132⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29403) hbrow132
  have hrb132 : RvkFixedBaseLadder.FixedStepRel 132 (toZMod b132)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX131 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY131 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX132 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY132 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb132]
    exact hr132
  have hp132 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX132 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY132 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 132 b132 _ _ hp131 hrb132).2
  have hbrow133 : (1*(rho 29404))*(1 + (-1)*(rho 29404)) = 0 := by
    simpa [Seg31.relationRow133] using r133
  have hacc133 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc133 (rho 29271 : Seg31.F)
      (seg31AccX132 rho : Seg31.F) (seg31AccY132 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc133] using hp132
  have hr133 : RvkFixedBaseLadder.FixedStepRel 133 (rho 29404)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX132 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY132 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX133 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY133 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc133, seg31AccX133, seg31AccY133, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung133_wide (rho 29271 : Seg31.F) (rho 29404 : Seg31.F) (seg31AccX132 rho : Seg31.F) (seg31AccY132 rho : Seg31.F) (rho 30182 : Seg31.F) (rho 30183 : Seg31.F) (rho 30184 : Seg31.F) (rho 30185 : Seg31.F) (rho 30186 : Seg31.F) hacc133
        (by simpa using seg31_prefix_133_v2 rho r912)
        (by simpa using seg31_prefix_133_addX rho r913)
        (by simpa using seg31_prefix_133_addY rho r914)
        (by simpa using seg31_prefix_133_selX rho r915)
        (by simpa using seg31_prefix_133_selY rho r916)
        hbrow133
  obtain ⟨b133, hb133⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29404) hbrow133
  have hrb133 : RvkFixedBaseLadder.FixedStepRel 133 (toZMod b133)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX132 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY132 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX133 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY133 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb133]
    exact hr133
  have hp133 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX133 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY133 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 133 b133 _ _ hp132 hrb133).2
  have hbrow134 : (1*(rho 29405))*(1 + (-1)*(rho 29405)) = 0 := by
    simpa [Seg31.relationRow134] using r134
  have hacc134 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc134 (rho 29271 : Seg31.F)
      (seg31AccX133 rho : Seg31.F) (seg31AccY133 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc134] using hp133
  have hr134 : RvkFixedBaseLadder.FixedStepRel 134 (rho 29405)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX133 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY133 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX134 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY134 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc134, seg31AccX134, seg31AccY134, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung134_wide (rho 29271 : Seg31.F) (rho 29405 : Seg31.F) (seg31AccX133 rho : Seg31.F) (seg31AccY133 rho : Seg31.F) (rho 30187 : Seg31.F) (rho 30188 : Seg31.F) (rho 30189 : Seg31.F) (rho 30190 : Seg31.F) (rho 30191 : Seg31.F) hacc134
        (by simpa using seg31_prefix_134_v2 rho r917)
        (by simpa using seg31_prefix_134_addX rho r918)
        (by simpa using seg31_prefix_134_addY rho r919)
        (by simpa using seg31_prefix_134_selX rho r920)
        (by simpa using seg31_prefix_134_selY rho r921)
        hbrow134
  obtain ⟨b134, hb134⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29405) hbrow134
  have hrb134 : RvkFixedBaseLadder.FixedStepRel 134 (toZMod b134)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX133 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY133 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX134 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY134 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb134]
    exact hr134
  have hp134 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX134 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY134 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 134 b134 _ _ hp133 hrb134).2
  have hbrow135 : (1*(rho 29406))*(1 + (-1)*(rho 29406)) = 0 := by
    simpa [Seg31.relationRow135] using r135
  have hacc135 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc135 (rho 29271 : Seg31.F)
      (seg31AccX134 rho : Seg31.F) (seg31AccY134 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc135] using hp134
  have hr135 : RvkFixedBaseLadder.FixedStepRel 135 (rho 29406)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX134 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY134 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX135 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY135 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc135, seg31AccX135, seg31AccY135, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung135_wide (rho 29271 : Seg31.F) (rho 29406 : Seg31.F) (seg31AccX134 rho : Seg31.F) (seg31AccY134 rho : Seg31.F) (rho 30192 : Seg31.F) (rho 30193 : Seg31.F) (rho 30194 : Seg31.F) (rho 30195 : Seg31.F) (rho 30196 : Seg31.F) hacc135
        (by simpa using seg31_prefix_135_v2 rho r922)
        (by simpa using seg31_prefix_135_addX rho r923)
        (by simpa using seg31_prefix_135_addY rho r924)
        (by simpa using seg31_prefix_135_selX rho r925)
        (by simpa using seg31_prefix_135_selY rho r926)
        hbrow135
  obtain ⟨b135, hb135⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29406) hbrow135
  have hrb135 : RvkFixedBaseLadder.FixedStepRel 135 (toZMod b135)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX134 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY134 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX135 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY135 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb135]
    exact hr135
  have hp135 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX135 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY135 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 135 b135 _ _ hp134 hrb135).2
  have hbrow136 : (1*(rho 29407))*(1 + (-1)*(rho 29407)) = 0 := by
    simpa [Seg31.relationRow136] using r136
  have hacc136 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc136 (rho 29271 : Seg31.F)
      (seg31AccX135 rho : Seg31.F) (seg31AccY135 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc136] using hp135
  have hr136 : RvkFixedBaseLadder.FixedStepRel 136 (rho 29407)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX135 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY135 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX136 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY136 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc136, seg31AccX136, seg31AccY136, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung136_wide (rho 29271 : Seg31.F) (rho 29407 : Seg31.F) (seg31AccX135 rho : Seg31.F) (seg31AccY135 rho : Seg31.F) (rho 30197 : Seg31.F) (rho 30198 : Seg31.F) (rho 30199 : Seg31.F) (rho 30200 : Seg31.F) (rho 30201 : Seg31.F) hacc136
        (by simpa using seg31_prefix_136_v2 rho r927)
        (by simpa using seg31_prefix_136_addX rho r928)
        (by simpa using seg31_prefix_136_addY rho r929)
        (by simpa using seg31_prefix_136_selX rho r930)
        (by simpa using seg31_prefix_136_selY rho r931)
        hbrow136
  obtain ⟨b136, hb136⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29407) hbrow136
  have hrb136 : RvkFixedBaseLadder.FixedStepRel 136 (toZMod b136)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX135 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY135 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX136 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY136 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb136]
    exact hr136
  have hp136 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX136 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY136 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 136 b136 _ _ hp135 hrb136).2
  have hbrow137 : (1*(rho 29408))*(1 + (-1)*(rho 29408)) = 0 := by
    simpa [Seg31.relationRow137] using r137
  have hacc137 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc137 (rho 29271 : Seg31.F)
      (seg31AccX136 rho : Seg31.F) (seg31AccY136 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc137] using hp136
  have hr137 : RvkFixedBaseLadder.FixedStepRel 137 (rho 29408)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX136 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY136 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX137 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY137 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc137, seg31AccX137, seg31AccY137, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung137_wide (rho 29271 : Seg31.F) (rho 29408 : Seg31.F) (seg31AccX136 rho : Seg31.F) (seg31AccY136 rho : Seg31.F) (rho 30202 : Seg31.F) (rho 30203 : Seg31.F) (rho 30204 : Seg31.F) (rho 30205 : Seg31.F) (rho 30206 : Seg31.F) hacc137
        (by simpa using seg31_prefix_137_v2 rho r932)
        (by simpa using seg31_prefix_137_addX rho r933)
        (by simpa using seg31_prefix_137_addY rho r934)
        (by simpa using seg31_prefix_137_selX rho r935)
        (by simpa using seg31_prefix_137_selY rho r936)
        hbrow137
  obtain ⟨b137, hb137⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29408) hbrow137
  have hrb137 : RvkFixedBaseLadder.FixedStepRel 137 (toZMod b137)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX136 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY136 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX137 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY137 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb137]
    exact hr137
  have hp137 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX137 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY137 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 137 b137 _ _ hp136 hrb137).2
  have hbrow138 : (1*(rho 29409))*(1 + (-1)*(rho 29409)) = 0 := by
    simpa [Seg31.relationRow138] using r138
  have hacc138 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc138 (rho 29271 : Seg31.F)
      (seg31AccX137 rho : Seg31.F) (seg31AccY137 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc138] using hp137
  have hr138 : RvkFixedBaseLadder.FixedStepRel 138 (rho 29409)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX137 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY137 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX138 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY138 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc138, seg31AccX138, seg31AccY138, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung138_wide (rho 29271 : Seg31.F) (rho 29409 : Seg31.F) (seg31AccX137 rho : Seg31.F) (seg31AccY137 rho : Seg31.F) (rho 30207 : Seg31.F) (rho 30208 : Seg31.F) (rho 30209 : Seg31.F) (rho 30210 : Seg31.F) (rho 30211 : Seg31.F) hacc138
        (by simpa using seg31_prefix_138_v2 rho r937)
        (by simpa using seg31_prefix_138_addX rho r938)
        (by simpa using seg31_prefix_138_addY rho r939)
        (by simpa using seg31_prefix_138_selX rho r940)
        (by simpa using seg31_prefix_138_selY rho r941)
        hbrow138
  obtain ⟨b138, hb138⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29409) hbrow138
  have hrb138 : RvkFixedBaseLadder.FixedStepRel 138 (toZMod b138)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX137 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY137 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX138 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY138 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb138]
    exact hr138
  have hp138 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX138 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY138 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 138 b138 _ _ hp137 hrb138).2
  have hbrow139 : (1*(rho 29410))*(1 + (-1)*(rho 29410)) = 0 := by
    simpa [Seg31.relationRow139] using r139
  have hacc139 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc139 (rho 29271 : Seg31.F)
      (seg31AccX138 rho : Seg31.F) (seg31AccY138 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc139] using hp138
  have hr139 : RvkFixedBaseLadder.FixedStepRel 139 (rho 29410)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX138 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY138 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX139 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY139 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc139, seg31AccX139, seg31AccY139, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung139_wide (rho 29271 : Seg31.F) (rho 29410 : Seg31.F) (seg31AccX138 rho : Seg31.F) (seg31AccY138 rho : Seg31.F) (rho 30212 : Seg31.F) (rho 30213 : Seg31.F) (rho 30214 : Seg31.F) (rho 30215 : Seg31.F) (rho 30216 : Seg31.F) hacc139
        (by simpa using seg31_prefix_139_v2 rho r942)
        (by simpa using seg31_prefix_139_addX rho r943)
        (by simpa using seg31_prefix_139_addY rho r944)
        (by simpa using seg31_prefix_139_selX rho r945)
        (by simpa using seg31_prefix_139_selY rho r946)
        hbrow139
  obtain ⟨b139, hb139⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29410) hbrow139
  have hrb139 : RvkFixedBaseLadder.FixedStepRel 139 (toZMod b139)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX138 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY138 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX139 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY139 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb139]
    exact hr139
  have hp139 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX139 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY139 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 139 b139 _ _ hp138 hrb139).2
  have hbrow140 : (1*(rho 29411))*(1 + (-1)*(rho 29411)) = 0 := by
    simpa [Seg31.relationRow140] using r140
  have hacc140 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc140 (rho 29271 : Seg31.F)
      (seg31AccX139 rho : Seg31.F) (seg31AccY139 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc140] using hp139
  have hr140 : RvkFixedBaseLadder.FixedStepRel 140 (rho 29411)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX139 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY139 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX140 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY140 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc140, seg31AccX140, seg31AccY140, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung140_wide (rho 29271 : Seg31.F) (rho 29411 : Seg31.F) (seg31AccX139 rho : Seg31.F) (seg31AccY139 rho : Seg31.F) (rho 30217 : Seg31.F) (rho 30218 : Seg31.F) (rho 30219 : Seg31.F) (rho 30220 : Seg31.F) (rho 30221 : Seg31.F) hacc140
        (by simpa using seg31_prefix_140_v2 rho r947)
        (by simpa using seg31_prefix_140_addX rho r948)
        (by simpa using seg31_prefix_140_addY rho r949)
        (by simpa using seg31_prefix_140_selX rho r950)
        (by simpa using seg31_prefix_140_selY rho r951)
        hbrow140
  obtain ⟨b140, hb140⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29411) hbrow140
  have hrb140 : RvkFixedBaseLadder.FixedStepRel 140 (toZMod b140)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX139 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY139 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX140 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY140 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb140]
    exact hr140
  have hp140 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX140 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY140 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 140 b140 _ _ hp139 hrb140).2
  exact hp140

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

