import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep141
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep142
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep143
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep144
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep145
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep146
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep147
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep148
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep149

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps14 (rho : Nat -> Seg15.F)
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
    : ∀ i, 141 ≤ i → i ≤ 149 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step141 rho r141 r952 r953 r954 r955 r956 hacc
  · exact seg15_prefix_step142 rho r142 r957 r958 r959 r960 r961 hacc
  · exact seg15_prefix_step143 rho r143 r962 r963 r964 r965 r966 hacc
  · exact seg15_prefix_step144 rho r144 r967 r968 r969 r970 r971 hacc
  · exact seg15_prefix_step145 rho r145 r972 r973 r974 r975 r976 hacc
  · exact seg15_prefix_step146 rho r146 r977 r978 r979 r980 r981 hacc
  · exact seg15_prefix_step147 rho r147 r982 r983 r984 r985 r986 hacc
  · exact seg15_prefix_step148 rho r148 r987 r988 r989 r990 r991 hacc
  · exact seg15_prefix_step149 rho r149 r992 r993 r994 r995 r996 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

