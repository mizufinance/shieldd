import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_steps14 (rho : Nat -> Seg15.F)
    (hp140 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX140 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY140 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r141 : Seg15.relationRow141 rho)
    (r952 : Seg15.relationRow952 rho)
    (r953 : Seg15.relationRow953 rho)
    (r954 : Seg15.relationRow954 rho)
    (r955 : Seg15.relationRow955 rho)
    (r956 : Seg15.relationRow956 rho)
    (r142 : Seg15.relationRow142 rho)
    (r957 : Seg15.relationRow957 rho)
    (r958 : Seg15.relationRow958 rho)
    (r959 : Seg15.relationRow959 rho)
    (r960 : Seg15.relationRow960 rho)
    (r961 : Seg15.relationRow961 rho)
    (r143 : Seg15.relationRow143 rho)
    (r962 : Seg15.relationRow962 rho)
    (r963 : Seg15.relationRow963 rho)
    (r964 : Seg15.relationRow964 rho)
    (r965 : Seg15.relationRow965 rho)
    (r966 : Seg15.relationRow966 rho)
    (r144 : Seg15.relationRow144 rho)
    (r967 : Seg15.relationRow967 rho)
    (r968 : Seg15.relationRow968 rho)
    (r969 : Seg15.relationRow969 rho)
    (r970 : Seg15.relationRow970 rho)
    (r971 : Seg15.relationRow971 rho)
    (r145 : Seg15.relationRow145 rho)
    (r972 : Seg15.relationRow972 rho)
    (r973 : Seg15.relationRow973 rho)
    (r974 : Seg15.relationRow974 rho)
    (r975 : Seg15.relationRow975 rho)
    (r976 : Seg15.relationRow976 rho)
    (r146 : Seg15.relationRow146 rho)
    (r977 : Seg15.relationRow977 rho)
    (r978 : Seg15.relationRow978 rho)
    (r979 : Seg15.relationRow979 rho)
    (r980 : Seg15.relationRow980 rho)
    (r981 : Seg15.relationRow981 rho)
    (r147 : Seg15.relationRow147 rho)
    (r982 : Seg15.relationRow982 rho)
    (r983 : Seg15.relationRow983 rho)
    (r984 : Seg15.relationRow984 rho)
    (r985 : Seg15.relationRow985 rho)
    (r986 : Seg15.relationRow986 rho)
    (r148 : Seg15.relationRow148 rho)
    (r987 : Seg15.relationRow987 rho)
    (r988 : Seg15.relationRow988 rho)
    (r989 : Seg15.relationRow989 rho)
    (r990 : Seg15.relationRow990 rho)
    (r991 : Seg15.relationRow991 rho)
    (r149 : Seg15.relationRow149 rho)
    (r992 : Seg15.relationRow992 rho)
    (r993 : Seg15.relationRow993 rho)
    (r994 : Seg15.relationRow994 rho)
    (r995 : Seg15.relationRow995 rho)
    (r996 : Seg15.relationRow996 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX149 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY149 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow141 : (1*(rho 16277))*(1 + (-1)*(rho 16277)) = 0 := by
    simpa [Seg15.relationRow141] using r141
  have hacc141 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc141 (rho 16136 : Seg15.F)
      (seg15AccX140 rho : Seg15.F) (seg15AccY140 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc141] using hp140
  have hr141 : RvkFixedBaseLadder.FixedStepRel 141 (rho 16277)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX140 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY140 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc141, seg15AccX141, seg15AccY141, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung141_wide (rho 16136 : Seg15.F) (rho 16277 : Seg15.F) (seg15AccX140 rho : Seg15.F) (seg15AccY140 rho : Seg15.F) (rho 17087 : Seg15.F) (rho 17088 : Seg15.F) (rho 17089 : Seg15.F) (rho 17090 : Seg15.F) (rho 17091 : Seg15.F) hacc141
        (by simpa using seg15_prefix_141_v2 rho r952)
        (by simpa using seg15_prefix_141_addX rho r953)
        (by simpa using seg15_prefix_141_addY rho r954)
        (by simpa using seg15_prefix_141_selX rho r955)
        (by simpa using seg15_prefix_141_selY rho r956)
        hbrow141
  obtain ⟨b141, hb141⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16277) hbrow141
  have hrb141 : RvkFixedBaseLadder.FixedStepRel 141 (toZMod b141)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX140 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY140 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb141]
    exact hr141
  have hp141 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 141 b141 _ _ hp140 hrb141).2
  have hbrow142 : (1*(rho 16278))*(1 + (-1)*(rho 16278)) = 0 := by
    simpa [Seg15.relationRow142] using r142
  have hacc142 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc142 (rho 16136 : Seg15.F)
      (seg15AccX141 rho : Seg15.F) (seg15AccY141 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc142] using hp141
  have hr142 : RvkFixedBaseLadder.FixedStepRel 142 (rho 16278)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc142, seg15AccX142, seg15AccY142, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung142_wide (rho 16136 : Seg15.F) (rho 16278 : Seg15.F) (seg15AccX141 rho : Seg15.F) (seg15AccY141 rho : Seg15.F) (rho 17092 : Seg15.F) (rho 17093 : Seg15.F) (rho 17094 : Seg15.F) (rho 17095 : Seg15.F) (rho 17096 : Seg15.F) hacc142
        (by simpa using seg15_prefix_142_v2 rho r957)
        (by simpa using seg15_prefix_142_addX rho r958)
        (by simpa using seg15_prefix_142_addY rho r959)
        (by simpa using seg15_prefix_142_selX rho r960)
        (by simpa using seg15_prefix_142_selY rho r961)
        hbrow142
  obtain ⟨b142, hb142⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16278) hbrow142
  have hrb142 : RvkFixedBaseLadder.FixedStepRel 142 (toZMod b142)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb142]
    exact hr142
  have hp142 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 142 b142 _ _ hp141 hrb142).2
  have hbrow143 : (1*(rho 16279))*(1 + (-1)*(rho 16279)) = 0 := by
    simpa [Seg15.relationRow143] using r143
  have hacc143 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc143 (rho 16136 : Seg15.F)
      (seg15AccX142 rho : Seg15.F) (seg15AccY142 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc143] using hp142
  have hr143 : RvkFixedBaseLadder.FixedStepRel 143 (rho 16279)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc143, seg15AccX143, seg15AccY143, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung143_wide (rho 16136 : Seg15.F) (rho 16279 : Seg15.F) (seg15AccX142 rho : Seg15.F) (seg15AccY142 rho : Seg15.F) (rho 17097 : Seg15.F) (rho 17098 : Seg15.F) (rho 17099 : Seg15.F) (rho 17100 : Seg15.F) (rho 17101 : Seg15.F) hacc143
        (by simpa using seg15_prefix_143_v2 rho r962)
        (by simpa using seg15_prefix_143_addX rho r963)
        (by simpa using seg15_prefix_143_addY rho r964)
        (by simpa using seg15_prefix_143_selX rho r965)
        (by simpa using seg15_prefix_143_selY rho r966)
        hbrow143
  obtain ⟨b143, hb143⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16279) hbrow143
  have hrb143 : RvkFixedBaseLadder.FixedStepRel 143 (toZMod b143)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb143]
    exact hr143
  have hp143 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 143 b143 _ _ hp142 hrb143).2
  have hbrow144 : (1*(rho 16280))*(1 + (-1)*(rho 16280)) = 0 := by
    simpa [Seg15.relationRow144] using r144
  have hacc144 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc144 (rho 16136 : Seg15.F)
      (seg15AccX143 rho : Seg15.F) (seg15AccY143 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc144] using hp143
  have hr144 : RvkFixedBaseLadder.FixedStepRel 144 (rho 16280)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc144, seg15AccX144, seg15AccY144, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung144_wide (rho 16136 : Seg15.F) (rho 16280 : Seg15.F) (seg15AccX143 rho : Seg15.F) (seg15AccY143 rho : Seg15.F) (rho 17102 : Seg15.F) (rho 17103 : Seg15.F) (rho 17104 : Seg15.F) (rho 17105 : Seg15.F) (rho 17106 : Seg15.F) hacc144
        (by simpa using seg15_prefix_144_v2 rho r967)
        (by simpa using seg15_prefix_144_addX rho r968)
        (by simpa using seg15_prefix_144_addY rho r969)
        (by simpa using seg15_prefix_144_selX rho r970)
        (by simpa using seg15_prefix_144_selY rho r971)
        hbrow144
  obtain ⟨b144, hb144⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16280) hbrow144
  have hrb144 : RvkFixedBaseLadder.FixedStepRel 144 (toZMod b144)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb144]
    exact hr144
  have hp144 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 144 b144 _ _ hp143 hrb144).2
  have hbrow145 : (1*(rho 16281))*(1 + (-1)*(rho 16281)) = 0 := by
    simpa [Seg15.relationRow145] using r145
  have hacc145 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc145 (rho 16136 : Seg15.F)
      (seg15AccX144 rho : Seg15.F) (seg15AccY144 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc145] using hp144
  have hr145 : RvkFixedBaseLadder.FixedStepRel 145 (rho 16281)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc145, seg15AccX145, seg15AccY145, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung145_wide (rho 16136 : Seg15.F) (rho 16281 : Seg15.F) (seg15AccX144 rho : Seg15.F) (seg15AccY144 rho : Seg15.F) (rho 17107 : Seg15.F) (rho 17108 : Seg15.F) (rho 17109 : Seg15.F) (rho 17110 : Seg15.F) (rho 17111 : Seg15.F) hacc145
        (by simpa using seg15_prefix_145_v2 rho r972)
        (by simpa using seg15_prefix_145_addX rho r973)
        (by simpa using seg15_prefix_145_addY rho r974)
        (by simpa using seg15_prefix_145_selX rho r975)
        (by simpa using seg15_prefix_145_selY rho r976)
        hbrow145
  obtain ⟨b145, hb145⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16281) hbrow145
  have hrb145 : RvkFixedBaseLadder.FixedStepRel 145 (toZMod b145)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb145]
    exact hr145
  have hp145 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 145 b145 _ _ hp144 hrb145).2
  have hbrow146 : (1*(rho 16282))*(1 + (-1)*(rho 16282)) = 0 := by
    simpa [Seg15.relationRow146] using r146
  have hacc146 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc146 (rho 16136 : Seg15.F)
      (seg15AccX145 rho : Seg15.F) (seg15AccY145 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc146] using hp145
  have hr146 : RvkFixedBaseLadder.FixedStepRel 146 (rho 16282)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc146, seg15AccX146, seg15AccY146, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung146_wide (rho 16136 : Seg15.F) (rho 16282 : Seg15.F) (seg15AccX145 rho : Seg15.F) (seg15AccY145 rho : Seg15.F) (rho 17112 : Seg15.F) (rho 17113 : Seg15.F) (rho 17114 : Seg15.F) (rho 17115 : Seg15.F) (rho 17116 : Seg15.F) hacc146
        (by simpa using seg15_prefix_146_v2 rho r977)
        (by simpa using seg15_prefix_146_addX rho r978)
        (by simpa using seg15_prefix_146_addY rho r979)
        (by simpa using seg15_prefix_146_selX rho r980)
        (by simpa using seg15_prefix_146_selY rho r981)
        hbrow146
  obtain ⟨b146, hb146⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16282) hbrow146
  have hrb146 : RvkFixedBaseLadder.FixedStepRel 146 (toZMod b146)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb146]
    exact hr146
  have hp146 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 146 b146 _ _ hp145 hrb146).2
  have hbrow147 : (1*(rho 16283))*(1 + (-1)*(rho 16283)) = 0 := by
    simpa [Seg15.relationRow147] using r147
  have hacc147 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc147 (rho 16136 : Seg15.F)
      (seg15AccX146 rho : Seg15.F) (seg15AccY146 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc147] using hp146
  have hr147 : RvkFixedBaseLadder.FixedStepRel 147 (rho 16283)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc147, seg15AccX147, seg15AccY147, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung147_wide (rho 16136 : Seg15.F) (rho 16283 : Seg15.F) (seg15AccX146 rho : Seg15.F) (seg15AccY146 rho : Seg15.F) (rho 17117 : Seg15.F) (rho 17118 : Seg15.F) (rho 17119 : Seg15.F) (rho 17120 : Seg15.F) (rho 17121 : Seg15.F) hacc147
        (by simpa using seg15_prefix_147_v2 rho r982)
        (by simpa using seg15_prefix_147_addX rho r983)
        (by simpa using seg15_prefix_147_addY rho r984)
        (by simpa using seg15_prefix_147_selX rho r985)
        (by simpa using seg15_prefix_147_selY rho r986)
        hbrow147
  obtain ⟨b147, hb147⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16283) hbrow147
  have hrb147 : RvkFixedBaseLadder.FixedStepRel 147 (toZMod b147)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb147]
    exact hr147
  have hp147 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 147 b147 _ _ hp146 hrb147).2
  have hbrow148 : (1*(rho 16284))*(1 + (-1)*(rho 16284)) = 0 := by
    simpa [Seg15.relationRow148] using r148
  have hacc148 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc148 (rho 16136 : Seg15.F)
      (seg15AccX147 rho : Seg15.F) (seg15AccY147 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc148] using hp147
  have hr148 : RvkFixedBaseLadder.FixedStepRel 148 (rho 16284)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc148, seg15AccX148, seg15AccY148, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung148_wide (rho 16136 : Seg15.F) (rho 16284 : Seg15.F) (seg15AccX147 rho : Seg15.F) (seg15AccY147 rho : Seg15.F) (rho 17122 : Seg15.F) (rho 17123 : Seg15.F) (rho 17124 : Seg15.F) (rho 17125 : Seg15.F) (rho 17126 : Seg15.F) hacc148
        (by simpa using seg15_prefix_148_v2 rho r987)
        (by simpa using seg15_prefix_148_addX rho r988)
        (by simpa using seg15_prefix_148_addY rho r989)
        (by simpa using seg15_prefix_148_selX rho r990)
        (by simpa using seg15_prefix_148_selY rho r991)
        hbrow148
  obtain ⟨b148, hb148⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16284) hbrow148
  have hrb148 : RvkFixedBaseLadder.FixedStepRel 148 (toZMod b148)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb148]
    exact hr148
  have hp148 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 148 b148 _ _ hp147 hrb148).2
  have hbrow149 : (1*(rho 16285))*(1 + (-1)*(rho 16285)) = 0 := by
    simpa [Seg15.relationRow149] using r149
  have hacc149 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc149 (rho 16136 : Seg15.F)
      (seg15AccX148 rho : Seg15.F) (seg15AccY148 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc149] using hp148
  have hr149 : RvkFixedBaseLadder.FixedStepRel 149 (rho 16285)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX149 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY149 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc149, seg15AccX149, seg15AccY149, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung149_wide (rho 16136 : Seg15.F) (rho 16285 : Seg15.F) (seg15AccX148 rho : Seg15.F) (seg15AccY148 rho : Seg15.F) (rho 17127 : Seg15.F) (rho 17128 : Seg15.F) (rho 17129 : Seg15.F) (rho 17130 : Seg15.F) (rho 17131 : Seg15.F) hacc149
        (by simpa using seg15_prefix_149_v2 rho r992)
        (by simpa using seg15_prefix_149_addX rho r993)
        (by simpa using seg15_prefix_149_addY rho r994)
        (by simpa using seg15_prefix_149_selX rho r995)
        (by simpa using seg15_prefix_149_selY rho r996)
        hbrow149
  obtain ⟨b149, hb149⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16285) hbrow149
  have hrb149 : RvkFixedBaseLadder.FixedStepRel 149 (toZMod b149)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX149 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY149 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb149]
    exact hr149
  have hp149 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX149 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY149 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 149 b149 _ _ hp148 hrb149).2
  exact hp149

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

