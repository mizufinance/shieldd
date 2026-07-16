import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node21_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8187 : Seg13.relationRow8187 rho)
    (r8188 : Seg13.relationRow8188 rho)
    (r8189 : Seg13.relationRow8189 rho)
    (r8190 : Seg13.relationRow8190 rho)
    (r8191 : Seg13.relationRow8191 rho)
    (tail : next (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg50 (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) next := by
  exact ⟨rho 15316, rho 15317, rho 15318, rho 15319, rho 15320, r8187, r8188, r8189, r8190, r8191, tail⟩

theorem seg13_scp_node21_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8192 : Seg13.relationRow8192 rho)
    (r8193 : Seg13.relationRow8193 rho)
    (r8194 : Seg13.relationRow8194 rho)
    (r8195 : Seg13.relationRow8195 rho)
    (r8196 : Seg13.relationRow8196 rho)
    (tail : next (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) (rho 15325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg51 (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) next := by
  exact ⟨rho 15321, rho 15322, rho 15323, rho 15324, rho 15325, r8192, r8193, r8194, r8195, r8196, tail⟩

theorem seg13_scp_node21_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8197 : Seg13.relationRow8197 rho)
    (r8198 : Seg13.relationRow8198 rho)
    (r8199 : Seg13.relationRow8199 rho)
    (r8200 : Seg13.relationRow8200 rho)
    (r8201 : Seg13.relationRow8201 rho)
    (tail : next (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) (rho 15325) (rho 15330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg52 (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) (rho 15325) next := by
  exact ⟨rho 15326, rho 15327, rho 15328, rho 15329, rho 15330, r8197, r8198, r8199, r8200, r8201, tail⟩

theorem seg13_scp_node21_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8202 : Seg13.relationRow8202 rho)
    (r8203 : Seg13.relationRow8203 rho)
    (r8204 : Seg13.relationRow8204 rho)
    (r8205 : Seg13.relationRow8205 rho)
    (r8206 : Seg13.relationRow8206 rho)
    (tail : next (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) (rho 15325) (rho 15330) (rho 15335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg53 (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) (rho 15325) (rho 15330) next := by
  exact ⟨rho 15331, rho 15332, rho 15333, rho 15334, rho 15335, r8202, r8203, r8204, r8205, r8206, tail⟩

theorem seg13_scp_node21_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8207 : Seg13.relationRow8207 rho)
    (r8208 : Seg13.relationRow8208 rho)
    (r8209 : Seg13.relationRow8209 rho)
    (r8210 : Seg13.relationRow8210 rho)
    (r8211 : Seg13.relationRow8211 rho)
    (tail : next (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg54 (rho 15140) (rho 15145) (rho 15150) (rho 15155) (rho 15160) (rho 15165) (rho 15170) (rho 15175) (rho 15180) (rho 15185) (rho 15190) (rho 15195) (rho 15200) (rho 15205) (rho 15210) (rho 15215) (rho 15220) (rho 15225) (rho 15230) (rho 15235) (rho 15240) (rho 15245) (rho 15250) (rho 15255) (rho 15260) (rho 15265) (rho 15270) (rho 15275) (rho 15280) (rho 15285) (rho 15290) (rho 15295) (rho 15300) (rho 15305) (rho 15310) (rho 15315) (rho 15320) (rho 15325) (rho 15330) (rho 15335) next := by
  exact ⟨rho 15336, rho 15337, rho 15338, rho 15339, rho 15340, r8207, r8208, r8209, r8210, r8211, tail⟩

theorem seg13_scp_node21_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8212 : Seg13.relationRow8212 rho)
    (r8213 : Seg13.relationRow8213 rho)
    (r8214 : Seg13.relationRow8214 rho)
    (r8215 : Seg13.relationRow8215 rho)
    (r8216 : Seg13.relationRow8216 rho)
    (tail : next (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg55 (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) next := by
  exact ⟨rho 15341, rho 15342, rho 15343, rho 15344, rho 15345, r8212, r8213, r8214, r8215, r8216, tail⟩

theorem seg13_scp_node21_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8217 : Seg13.relationRow8217 rho)
    (r8218 : Seg13.relationRow8218 rho)
    (r8219 : Seg13.relationRow8219 rho)
    (r8220 : Seg13.relationRow8220 rho)
    (r8221 : Seg13.relationRow8221 rho)
    (tail : next (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) (rho 15350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg56 (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) next := by
  exact ⟨rho 15346, rho 15347, rho 15348, rho 15349, rho 15350, r8217, r8218, r8219, r8220, r8221, tail⟩

theorem seg13_scp_node21_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8222 : Seg13.relationRow8222 rho)
    (r8223 : Seg13.relationRow8223 rho)
    (r8224 : Seg13.relationRow8224 rho)
    (r8225 : Seg13.relationRow8225 rho)
    (r8226 : Seg13.relationRow8226 rho)
    (tail : next (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) (rho 15350) (rho 15355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg57 (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) (rho 15350) next := by
  exact ⟨rho 15351, rho 15352, rho 15353, rho 15354, rho 15355, r8222, r8223, r8224, r8225, r8226, tail⟩

theorem seg13_scp_node21_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8227 : Seg13.relationRow8227 rho)
    (r8228 : Seg13.relationRow8228 rho)
    (r8229 : Seg13.relationRow8229 rho)
    (r8230 : Seg13.relationRow8230 rho)
    (r8231 : Seg13.relationRow8231 rho)
    (tail : next (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) (rho 15350) (rho 15355) (rho 15360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg58 (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) (rho 15350) (rho 15355) next := by
  exact ⟨rho 15356, rho 15357, rho 15358, rho 15359, rho 15360, r8227, r8228, r8229, r8230, r8231, tail⟩

theorem seg13_scp_node21_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8232 : Seg13.relationRow8232 rho)
    (r8233 : Seg13.relationRow8233 rho)
    (r8234 : Seg13.relationRow8234 rho)
    (r8235 : Seg13.relationRow8235 rho)
    (r8236 : Seg13.relationRow8236 rho)
    (tail : next (rho 15345) (rho 15350) (rho 15355) (rho 15360) (rho 15365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg59 (rho 15320) (rho 15325) (rho 15330) (rho 15335) (rho 15340) (rho 15345) (rho 15350) (rho 15355) (rho 15360) next := by
  exact ⟨rho 15361, rho 15362, rho 15363, rho 15364, rho 15365, r8232, r8233, r8234, r8235, r8236, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

