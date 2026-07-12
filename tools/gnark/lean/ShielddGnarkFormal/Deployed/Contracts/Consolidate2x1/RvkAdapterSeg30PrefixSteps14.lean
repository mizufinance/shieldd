import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_steps14 (rho : Nat -> Seg30.F)
    (hp140 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r141 : Seg30.relationRow141 rho)
    (r952 : Seg30.relationRow952 rho)
    (r953 : Seg30.relationRow953 rho)
    (r954 : Seg30.relationRow954 rho)
    (r955 : Seg30.relationRow955 rho)
    (r956 : Seg30.relationRow956 rho)
    (r142 : Seg30.relationRow142 rho)
    (r957 : Seg30.relationRow957 rho)
    (r958 : Seg30.relationRow958 rho)
    (r959 : Seg30.relationRow959 rho)
    (r960 : Seg30.relationRow960 rho)
    (r961 : Seg30.relationRow961 rho)
    (r143 : Seg30.relationRow143 rho)
    (r962 : Seg30.relationRow962 rho)
    (r963 : Seg30.relationRow963 rho)
    (r964 : Seg30.relationRow964 rho)
    (r965 : Seg30.relationRow965 rho)
    (r966 : Seg30.relationRow966 rho)
    (r144 : Seg30.relationRow144 rho)
    (r967 : Seg30.relationRow967 rho)
    (r968 : Seg30.relationRow968 rho)
    (r969 : Seg30.relationRow969 rho)
    (r970 : Seg30.relationRow970 rho)
    (r971 : Seg30.relationRow971 rho)
    (r145 : Seg30.relationRow145 rho)
    (r972 : Seg30.relationRow972 rho)
    (r973 : Seg30.relationRow973 rho)
    (r974 : Seg30.relationRow974 rho)
    (r975 : Seg30.relationRow975 rho)
    (r976 : Seg30.relationRow976 rho)
    (r146 : Seg30.relationRow146 rho)
    (r977 : Seg30.relationRow977 rho)
    (r978 : Seg30.relationRow978 rho)
    (r979 : Seg30.relationRow979 rho)
    (r980 : Seg30.relationRow980 rho)
    (r981 : Seg30.relationRow981 rho)
    (r147 : Seg30.relationRow147 rho)
    (r982 : Seg30.relationRow982 rho)
    (r983 : Seg30.relationRow983 rho)
    (r984 : Seg30.relationRow984 rho)
    (r985 : Seg30.relationRow985 rho)
    (r986 : Seg30.relationRow986 rho)
    (r148 : Seg30.relationRow148 rho)
    (r987 : Seg30.relationRow987 rho)
    (r988 : Seg30.relationRow988 rho)
    (r989 : Seg30.relationRow989 rho)
    (r990 : Seg30.relationRow990 rho)
    (r991 : Seg30.relationRow991 rho)
    (r149 : Seg30.relationRow149 rho)
    (r992 : Seg30.relationRow992 rho)
    (r993 : Seg30.relationRow993 rho)
    (r994 : Seg30.relationRow994 rho)
    (r995 : Seg30.relationRow995 rho)
    (r996 : Seg30.relationRow996 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX149 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY149 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow141 : (1*(rho 28458))*(1 + (-1)*(rho 28458)) = 0 := by
    simpa [Seg30.relationRow141] using r141
  have hacc141 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc141 (rho 28317 : Seg30.F)
      (seg30AccX140 rho : Seg30.F) (seg30AccY140 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc141] using hp140
  have hr141 : RvkFixedBaseLadder.FixedStepRel 141 (rho 28458)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc141, seg30AccX141, seg30AccY141, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung141_wide (rho 28317 : Seg30.F) (rho 28458 : Seg30.F) (seg30AccX140 rho : Seg30.F) (seg30AccY140 rho : Seg30.F) (rho 29268 : Seg30.F) (rho 29269 : Seg30.F) (rho 29270 : Seg30.F) (rho 29271 : Seg30.F) (rho 29272 : Seg30.F) hacc141
        (by simpa using seg30_prefix_141_v2 rho r952)
        (by simpa using seg30_prefix_141_addX rho r953)
        (by simpa using seg30_prefix_141_addY rho r954)
        (by simpa using seg30_prefix_141_selX rho r955)
        (by simpa using seg30_prefix_141_selY rho r956)
        hbrow141
  obtain ⟨b141, hb141⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28458) hbrow141
  have hrb141 : RvkFixedBaseLadder.FixedStepRel 141 (toZMod b141)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb141]
    exact hr141
  have hp141 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 141 b141 _ _ hp140 hrb141).2
  have hbrow142 : (1*(rho 28459))*(1 + (-1)*(rho 28459)) = 0 := by
    simpa [Seg30.relationRow142] using r142
  have hacc142 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc142 (rho 28317 : Seg30.F)
      (seg30AccX141 rho : Seg30.F) (seg30AccY141 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc142] using hp141
  have hr142 : RvkFixedBaseLadder.FixedStepRel 142 (rho 28459)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc142, seg30AccX142, seg30AccY142, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung142_wide (rho 28317 : Seg30.F) (rho 28459 : Seg30.F) (seg30AccX141 rho : Seg30.F) (seg30AccY141 rho : Seg30.F) (rho 29273 : Seg30.F) (rho 29274 : Seg30.F) (rho 29275 : Seg30.F) (rho 29276 : Seg30.F) (rho 29277 : Seg30.F) hacc142
        (by simpa using seg30_prefix_142_v2 rho r957)
        (by simpa using seg30_prefix_142_addX rho r958)
        (by simpa using seg30_prefix_142_addY rho r959)
        (by simpa using seg30_prefix_142_selX rho r960)
        (by simpa using seg30_prefix_142_selY rho r961)
        hbrow142
  obtain ⟨b142, hb142⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28459) hbrow142
  have hrb142 : RvkFixedBaseLadder.FixedStepRel 142 (toZMod b142)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb142]
    exact hr142
  have hp142 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 142 b142 _ _ hp141 hrb142).2
  have hbrow143 : (1*(rho 28460))*(1 + (-1)*(rho 28460)) = 0 := by
    simpa [Seg30.relationRow143] using r143
  have hacc143 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc143 (rho 28317 : Seg30.F)
      (seg30AccX142 rho : Seg30.F) (seg30AccY142 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc143] using hp142
  have hr143 : RvkFixedBaseLadder.FixedStepRel 143 (rho 28460)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc143, seg30AccX143, seg30AccY143, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung143_wide (rho 28317 : Seg30.F) (rho 28460 : Seg30.F) (seg30AccX142 rho : Seg30.F) (seg30AccY142 rho : Seg30.F) (rho 29278 : Seg30.F) (rho 29279 : Seg30.F) (rho 29280 : Seg30.F) (rho 29281 : Seg30.F) (rho 29282 : Seg30.F) hacc143
        (by simpa using seg30_prefix_143_v2 rho r962)
        (by simpa using seg30_prefix_143_addX rho r963)
        (by simpa using seg30_prefix_143_addY rho r964)
        (by simpa using seg30_prefix_143_selX rho r965)
        (by simpa using seg30_prefix_143_selY rho r966)
        hbrow143
  obtain ⟨b143, hb143⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28460) hbrow143
  have hrb143 : RvkFixedBaseLadder.FixedStepRel 143 (toZMod b143)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb143]
    exact hr143
  have hp143 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 143 b143 _ _ hp142 hrb143).2
  have hbrow144 : (1*(rho 28461))*(1 + (-1)*(rho 28461)) = 0 := by
    simpa [Seg30.relationRow144] using r144
  have hacc144 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc144 (rho 28317 : Seg30.F)
      (seg30AccX143 rho : Seg30.F) (seg30AccY143 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc144] using hp143
  have hr144 : RvkFixedBaseLadder.FixedStepRel 144 (rho 28461)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc144, seg30AccX144, seg30AccY144, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung144_wide (rho 28317 : Seg30.F) (rho 28461 : Seg30.F) (seg30AccX143 rho : Seg30.F) (seg30AccY143 rho : Seg30.F) (rho 29283 : Seg30.F) (rho 29284 : Seg30.F) (rho 29285 : Seg30.F) (rho 29286 : Seg30.F) (rho 29287 : Seg30.F) hacc144
        (by simpa using seg30_prefix_144_v2 rho r967)
        (by simpa using seg30_prefix_144_addX rho r968)
        (by simpa using seg30_prefix_144_addY rho r969)
        (by simpa using seg30_prefix_144_selX rho r970)
        (by simpa using seg30_prefix_144_selY rho r971)
        hbrow144
  obtain ⟨b144, hb144⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28461) hbrow144
  have hrb144 : RvkFixedBaseLadder.FixedStepRel 144 (toZMod b144)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb144]
    exact hr144
  have hp144 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 144 b144 _ _ hp143 hrb144).2
  have hbrow145 : (1*(rho 28462))*(1 + (-1)*(rho 28462)) = 0 := by
    simpa [Seg30.relationRow145] using r145
  have hacc145 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc145 (rho 28317 : Seg30.F)
      (seg30AccX144 rho : Seg30.F) (seg30AccY144 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc145] using hp144
  have hr145 : RvkFixedBaseLadder.FixedStepRel 145 (rho 28462)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc145, seg30AccX145, seg30AccY145, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung145_wide (rho 28317 : Seg30.F) (rho 28462 : Seg30.F) (seg30AccX144 rho : Seg30.F) (seg30AccY144 rho : Seg30.F) (rho 29288 : Seg30.F) (rho 29289 : Seg30.F) (rho 29290 : Seg30.F) (rho 29291 : Seg30.F) (rho 29292 : Seg30.F) hacc145
        (by simpa using seg30_prefix_145_v2 rho r972)
        (by simpa using seg30_prefix_145_addX rho r973)
        (by simpa using seg30_prefix_145_addY rho r974)
        (by simpa using seg30_prefix_145_selX rho r975)
        (by simpa using seg30_prefix_145_selY rho r976)
        hbrow145
  obtain ⟨b145, hb145⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28462) hbrow145
  have hrb145 : RvkFixedBaseLadder.FixedStepRel 145 (toZMod b145)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb145]
    exact hr145
  have hp145 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 145 b145 _ _ hp144 hrb145).2
  have hbrow146 : (1*(rho 28463))*(1 + (-1)*(rho 28463)) = 0 := by
    simpa [Seg30.relationRow146] using r146
  have hacc146 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc146 (rho 28317 : Seg30.F)
      (seg30AccX145 rho : Seg30.F) (seg30AccY145 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc146] using hp145
  have hr146 : RvkFixedBaseLadder.FixedStepRel 146 (rho 28463)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc146, seg30AccX146, seg30AccY146, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung146_wide (rho 28317 : Seg30.F) (rho 28463 : Seg30.F) (seg30AccX145 rho : Seg30.F) (seg30AccY145 rho : Seg30.F) (rho 29293 : Seg30.F) (rho 29294 : Seg30.F) (rho 29295 : Seg30.F) (rho 29296 : Seg30.F) (rho 29297 : Seg30.F) hacc146
        (by simpa using seg30_prefix_146_v2 rho r977)
        (by simpa using seg30_prefix_146_addX rho r978)
        (by simpa using seg30_prefix_146_addY rho r979)
        (by simpa using seg30_prefix_146_selX rho r980)
        (by simpa using seg30_prefix_146_selY rho r981)
        hbrow146
  obtain ⟨b146, hb146⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28463) hbrow146
  have hrb146 : RvkFixedBaseLadder.FixedStepRel 146 (toZMod b146)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb146]
    exact hr146
  have hp146 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 146 b146 _ _ hp145 hrb146).2
  have hbrow147 : (1*(rho 28464))*(1 + (-1)*(rho 28464)) = 0 := by
    simpa [Seg30.relationRow147] using r147
  have hacc147 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc147 (rho 28317 : Seg30.F)
      (seg30AccX146 rho : Seg30.F) (seg30AccY146 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc147] using hp146
  have hr147 : RvkFixedBaseLadder.FixedStepRel 147 (rho 28464)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc147, seg30AccX147, seg30AccY147, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung147_wide (rho 28317 : Seg30.F) (rho 28464 : Seg30.F) (seg30AccX146 rho : Seg30.F) (seg30AccY146 rho : Seg30.F) (rho 29298 : Seg30.F) (rho 29299 : Seg30.F) (rho 29300 : Seg30.F) (rho 29301 : Seg30.F) (rho 29302 : Seg30.F) hacc147
        (by simpa using seg30_prefix_147_v2 rho r982)
        (by simpa using seg30_prefix_147_addX rho r983)
        (by simpa using seg30_prefix_147_addY rho r984)
        (by simpa using seg30_prefix_147_selX rho r985)
        (by simpa using seg30_prefix_147_selY rho r986)
        hbrow147
  obtain ⟨b147, hb147⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28464) hbrow147
  have hrb147 : RvkFixedBaseLadder.FixedStepRel 147 (toZMod b147)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb147]
    exact hr147
  have hp147 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 147 b147 _ _ hp146 hrb147).2
  have hbrow148 : (1*(rho 28465))*(1 + (-1)*(rho 28465)) = 0 := by
    simpa [Seg30.relationRow148] using r148
  have hacc148 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc148 (rho 28317 : Seg30.F)
      (seg30AccX147 rho : Seg30.F) (seg30AccY147 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc148] using hp147
  have hr148 : RvkFixedBaseLadder.FixedStepRel 148 (rho 28465)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc148, seg30AccX148, seg30AccY148, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung148_wide (rho 28317 : Seg30.F) (rho 28465 : Seg30.F) (seg30AccX147 rho : Seg30.F) (seg30AccY147 rho : Seg30.F) (rho 29303 : Seg30.F) (rho 29304 : Seg30.F) (rho 29305 : Seg30.F) (rho 29306 : Seg30.F) (rho 29307 : Seg30.F) hacc148
        (by simpa using seg30_prefix_148_v2 rho r987)
        (by simpa using seg30_prefix_148_addX rho r988)
        (by simpa using seg30_prefix_148_addY rho r989)
        (by simpa using seg30_prefix_148_selX rho r990)
        (by simpa using seg30_prefix_148_selY rho r991)
        hbrow148
  obtain ⟨b148, hb148⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28465) hbrow148
  have hrb148 : RvkFixedBaseLadder.FixedStepRel 148 (toZMod b148)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb148]
    exact hr148
  have hp148 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 148 b148 _ _ hp147 hrb148).2
  have hbrow149 : (1*(rho 28466))*(1 + (-1)*(rho 28466)) = 0 := by
    simpa [Seg30.relationRow149] using r149
  have hacc149 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc149 (rho 28317 : Seg30.F)
      (seg30AccX148 rho : Seg30.F) (seg30AccY148 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc149] using hp148
  have hr149 : RvkFixedBaseLadder.FixedStepRel 149 (rho 28466)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX149 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY149 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc149, seg30AccX149, seg30AccY149, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung149_wide (rho 28317 : Seg30.F) (rho 28466 : Seg30.F) (seg30AccX148 rho : Seg30.F) (seg30AccY148 rho : Seg30.F) (rho 29308 : Seg30.F) (rho 29309 : Seg30.F) (rho 29310 : Seg30.F) (rho 29311 : Seg30.F) (rho 29312 : Seg30.F) hacc149
        (by simpa using seg30_prefix_149_v2 rho r992)
        (by simpa using seg30_prefix_149_addX rho r993)
        (by simpa using seg30_prefix_149_addY rho r994)
        (by simpa using seg30_prefix_149_selX rho r995)
        (by simpa using seg30_prefix_149_selY rho r996)
        hbrow149
  obtain ⟨b149, hb149⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28466) hbrow149
  have hrb149 : RvkFixedBaseLadder.FixedStepRel 149 (toZMod b149)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX149 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY149 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb149]
    exact hr149
  have hp149 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX149 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY149 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 149 b149 _ _ hp148 hrb149).2
  exact hp149

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

