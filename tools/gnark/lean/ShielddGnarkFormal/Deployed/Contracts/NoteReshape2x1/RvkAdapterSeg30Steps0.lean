import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step150
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step151
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step152
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step153
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step154

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps0 (rho : Nat -> Seg30.F)
    (r150 : Seg30.relationRow150 rho)
    (r997 : Seg30.relationRow997 rho)
    (r998 : Seg30.relationRow998 rho)
    (r999 : Seg30.relationRow999 rho)
    (r1000 : Seg30.relationRow1000 rho)
    (r1001 : Seg30.relationRow1001 rho)
    (r1002 : Seg30.relationRow1002 rho)
    (r1003 : Seg30.relationRow1003 rho)
    (r1004 : Seg30.relationRow1004 rho)
    (r151 : Seg30.relationRow151 rho)
    (r1005 : Seg30.relationRow1005 rho)
    (r1006 : Seg30.relationRow1006 rho)
    (r1007 : Seg30.relationRow1007 rho)
    (r1008 : Seg30.relationRow1008 rho)
    (r1009 : Seg30.relationRow1009 rho)
    (r1010 : Seg30.relationRow1010 rho)
    (r1011 : Seg30.relationRow1011 rho)
    (r1012 : Seg30.relationRow1012 rho)
    (r152 : Seg30.relationRow152 rho)
    (r1013 : Seg30.relationRow1013 rho)
    (r1014 : Seg30.relationRow1014 rho)
    (r1015 : Seg30.relationRow1015 rho)
    (r1016 : Seg30.relationRow1016 rho)
    (r1017 : Seg30.relationRow1017 rho)
    (r1018 : Seg30.relationRow1018 rho)
    (r1019 : Seg30.relationRow1019 rho)
    (r1020 : Seg30.relationRow1020 rho)
    (r153 : Seg30.relationRow153 rho)
    (r1021 : Seg30.relationRow1021 rho)
    (r1022 : Seg30.relationRow1022 rho)
    (r1023 : Seg30.relationRow1023 rho)
    (r1024 : Seg30.relationRow1024 rho)
    (r1025 : Seg30.relationRow1025 rho)
    (r1026 : Seg30.relationRow1026 rho)
    (r1027 : Seg30.relationRow1027 rho)
    (r1028 : Seg30.relationRow1028 rho)
    (r154 : Seg30.relationRow154 rho)
    (r1029 : Seg30.relationRow1029 rho)
    (r1030 : Seg30.relationRow1030 rho)
    (r1031 : Seg30.relationRow1031 rho)
    (r1032 : Seg30.relationRow1032 rho)
    (r1033 : Seg30.relationRow1033 rho)
    (r1034 : Seg30.relationRow1034 rho)
    (r1035 : Seg30.relationRow1035 rho)
    (r1036 : Seg30.relationRow1036 rho)
    : ∀ i, 150 ≤ i → i ≤ 154 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28311 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step150 rho r150 r997 r998 r999 r1000 r1001 r1002 r1003 r1004 hacc
  · exact seg30_step151 rho r151 r1005 r1006 r1007 r1008 r1009 r1010 r1011 r1012 hacc
  · exact seg30_step152 rho r152 r1013 r1014 r1015 r1016 r1017 r1018 r1019 r1020 hacc
  · exact seg30_step153 rho r153 r1021 r1022 r1023 r1024 r1025 r1026 r1027 r1028 hacc
  · exact seg30_step154 rho r154 r1029 r1030 r1031 r1032 r1033 r1034 r1035 r1036 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

