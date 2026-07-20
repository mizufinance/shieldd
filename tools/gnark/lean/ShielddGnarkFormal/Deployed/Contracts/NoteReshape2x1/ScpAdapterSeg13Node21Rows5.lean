import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

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
    (tail : next (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg50 (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) next := by
  exact ⟨rho 15310, rho 15311, rho 15312, rho 15313, rho 15314, r8187, r8188, r8189, r8190, r8191, tail⟩

theorem seg13_scp_node21_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8192 : Seg13.relationRow8192 rho)
    (r8193 : Seg13.relationRow8193 rho)
    (r8194 : Seg13.relationRow8194 rho)
    (r8195 : Seg13.relationRow8195 rho)
    (r8196 : Seg13.relationRow8196 rho)
    (tail : next (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) (rho 15319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg51 (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) next := by
  exact ⟨rho 15315, rho 15316, rho 15317, rho 15318, rho 15319, r8192, r8193, r8194, r8195, r8196, tail⟩

theorem seg13_scp_node21_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8197 : Seg13.relationRow8197 rho)
    (r8198 : Seg13.relationRow8198 rho)
    (r8199 : Seg13.relationRow8199 rho)
    (r8200 : Seg13.relationRow8200 rho)
    (r8201 : Seg13.relationRow8201 rho)
    (tail : next (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) (rho 15319) (rho 15324)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg52 (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) (rho 15319) next := by
  exact ⟨rho 15320, rho 15321, rho 15322, rho 15323, rho 15324, r8197, r8198, r8199, r8200, r8201, tail⟩

theorem seg13_scp_node21_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8202 : Seg13.relationRow8202 rho)
    (r8203 : Seg13.relationRow8203 rho)
    (r8204 : Seg13.relationRow8204 rho)
    (r8205 : Seg13.relationRow8205 rho)
    (r8206 : Seg13.relationRow8206 rho)
    (tail : next (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) (rho 15319) (rho 15324) (rho 15329)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg53 (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) (rho 15319) (rho 15324) next := by
  exact ⟨rho 15325, rho 15326, rho 15327, rho 15328, rho 15329, r8202, r8203, r8204, r8205, r8206, tail⟩

theorem seg13_scp_node21_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8207 : Seg13.relationRow8207 rho)
    (r8208 : Seg13.relationRow8208 rho)
    (r8209 : Seg13.relationRow8209 rho)
    (r8210 : Seg13.relationRow8210 rho)
    (r8211 : Seg13.relationRow8211 rho)
    (tail : next (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg54 (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159) (rho 15164) (rho 15169) (rho 15174) (rho 15179) (rho 15184) (rho 15189) (rho 15194) (rho 15199) (rho 15204) (rho 15209) (rho 15214) (rho 15219) (rho 15224) (rho 15229) (rho 15234) (rho 15239) (rho 15244) (rho 15249) (rho 15254) (rho 15259) (rho 15264) (rho 15269) (rho 15274) (rho 15279) (rho 15284) (rho 15289) (rho 15294) (rho 15299) (rho 15304) (rho 15309) (rho 15314) (rho 15319) (rho 15324) (rho 15329) next := by
  exact ⟨rho 15330, rho 15331, rho 15332, rho 15333, rho 15334, r8207, r8208, r8209, r8210, r8211, tail⟩

theorem seg13_scp_node21_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8212 : Seg13.relationRow8212 rho)
    (r8213 : Seg13.relationRow8213 rho)
    (r8214 : Seg13.relationRow8214 rho)
    (r8215 : Seg13.relationRow8215 rho)
    (r8216 : Seg13.relationRow8216 rho)
    (tail : next (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg55 (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) next := by
  exact ⟨rho 15335, rho 15336, rho 15337, rho 15338, rho 15339, r8212, r8213, r8214, r8215, r8216, tail⟩

theorem seg13_scp_node21_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8217 : Seg13.relationRow8217 rho)
    (r8218 : Seg13.relationRow8218 rho)
    (r8219 : Seg13.relationRow8219 rho)
    (r8220 : Seg13.relationRow8220 rho)
    (r8221 : Seg13.relationRow8221 rho)
    (tail : next (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) (rho 15344)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg56 (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) next := by
  exact ⟨rho 15340, rho 15341, rho 15342, rho 15343, rho 15344, r8217, r8218, r8219, r8220, r8221, tail⟩

theorem seg13_scp_node21_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8222 : Seg13.relationRow8222 rho)
    (r8223 : Seg13.relationRow8223 rho)
    (r8224 : Seg13.relationRow8224 rho)
    (r8225 : Seg13.relationRow8225 rho)
    (r8226 : Seg13.relationRow8226 rho)
    (tail : next (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) (rho 15344) (rho 15349)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg57 (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) (rho 15344) next := by
  exact ⟨rho 15345, rho 15346, rho 15347, rho 15348, rho 15349, r8222, r8223, r8224, r8225, r8226, tail⟩

theorem seg13_scp_node21_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8227 : Seg13.relationRow8227 rho)
    (r8228 : Seg13.relationRow8228 rho)
    (r8229 : Seg13.relationRow8229 rho)
    (r8230 : Seg13.relationRow8230 rho)
    (r8231 : Seg13.relationRow8231 rho)
    (tail : next (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) (rho 15344) (rho 15349) (rho 15354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg58 (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) (rho 15344) (rho 15349) next := by
  exact ⟨rho 15350, rho 15351, rho 15352, rho 15353, rho 15354, r8227, r8228, r8229, r8230, r8231, tail⟩

theorem seg13_scp_node21_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8232 : Seg13.relationRow8232 rho)
    (r8233 : Seg13.relationRow8233 rho)
    (r8234 : Seg13.relationRow8234 rho)
    (r8235 : Seg13.relationRow8235 rho)
    (r8236 : Seg13.relationRow8236 rho)
    (tail : next (rho 15339) (rho 15344) (rho 15349) (rho 15354) (rho 15359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg59 (rho 15314) (rho 15319) (rho 15324) (rho 15329) (rho 15334) (rho 15339) (rho 15344) (rho 15349) (rho 15354) next := by
  exact ⟨rho 15355, rho 15356, rho 15357, rho 15358, rho 15359, r8232, r8233, r8234, r8235, r8236, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

