import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node21_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8187 : Seg28.relationRow8187 rho)
    (r8188 : Seg28.relationRow8188 rho)
    (r8189 : Seg28.relationRow8189 rho)
    (r8190 : Seg28.relationRow8190 rho)
    (r8191 : Seg28.relationRow8191 rho)
    (tail : next (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg50 (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) next := by
  exact ⟨rho 27497, rho 27498, rho 27499, rho 27500, rho 27501, r8187, r8188, r8189, r8190, r8191, tail⟩

theorem seg28_scp_node21_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8192 : Seg28.relationRow8192 rho)
    (r8193 : Seg28.relationRow8193 rho)
    (r8194 : Seg28.relationRow8194 rho)
    (r8195 : Seg28.relationRow8195 rho)
    (r8196 : Seg28.relationRow8196 rho)
    (tail : next (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) (rho 27506)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg51 (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) next := by
  exact ⟨rho 27502, rho 27503, rho 27504, rho 27505, rho 27506, r8192, r8193, r8194, r8195, r8196, tail⟩

theorem seg28_scp_node21_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8197 : Seg28.relationRow8197 rho)
    (r8198 : Seg28.relationRow8198 rho)
    (r8199 : Seg28.relationRow8199 rho)
    (r8200 : Seg28.relationRow8200 rho)
    (r8201 : Seg28.relationRow8201 rho)
    (tail : next (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) (rho 27506) (rho 27511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg52 (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) (rho 27506) next := by
  exact ⟨rho 27507, rho 27508, rho 27509, rho 27510, rho 27511, r8197, r8198, r8199, r8200, r8201, tail⟩

theorem seg28_scp_node21_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8202 : Seg28.relationRow8202 rho)
    (r8203 : Seg28.relationRow8203 rho)
    (r8204 : Seg28.relationRow8204 rho)
    (r8205 : Seg28.relationRow8205 rho)
    (r8206 : Seg28.relationRow8206 rho)
    (tail : next (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) (rho 27506) (rho 27511) (rho 27516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg53 (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) (rho 27506) (rho 27511) next := by
  exact ⟨rho 27512, rho 27513, rho 27514, rho 27515, rho 27516, r8202, r8203, r8204, r8205, r8206, tail⟩

theorem seg28_scp_node21_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8207 : Seg28.relationRow8207 rho)
    (r8208 : Seg28.relationRow8208 rho)
    (r8209 : Seg28.relationRow8209 rho)
    (r8210 : Seg28.relationRow8210 rho)
    (r8211 : Seg28.relationRow8211 rho)
    (tail : next (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg54 (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346) (rho 27351) (rho 27356) (rho 27361) (rho 27366) (rho 27371) (rho 27376) (rho 27381) (rho 27386) (rho 27391) (rho 27396) (rho 27401) (rho 27406) (rho 27411) (rho 27416) (rho 27421) (rho 27426) (rho 27431) (rho 27436) (rho 27441) (rho 27446) (rho 27451) (rho 27456) (rho 27461) (rho 27466) (rho 27471) (rho 27476) (rho 27481) (rho 27486) (rho 27491) (rho 27496) (rho 27501) (rho 27506) (rho 27511) (rho 27516) next := by
  exact ⟨rho 27517, rho 27518, rho 27519, rho 27520, rho 27521, r8207, r8208, r8209, r8210, r8211, tail⟩

theorem seg28_scp_node21_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8212 : Seg28.relationRow8212 rho)
    (r8213 : Seg28.relationRow8213 rho)
    (r8214 : Seg28.relationRow8214 rho)
    (r8215 : Seg28.relationRow8215 rho)
    (r8216 : Seg28.relationRow8216 rho)
    (tail : next (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg55 (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) next := by
  exact ⟨rho 27522, rho 27523, rho 27524, rho 27525, rho 27526, r8212, r8213, r8214, r8215, r8216, tail⟩

theorem seg28_scp_node21_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8217 : Seg28.relationRow8217 rho)
    (r8218 : Seg28.relationRow8218 rho)
    (r8219 : Seg28.relationRow8219 rho)
    (r8220 : Seg28.relationRow8220 rho)
    (r8221 : Seg28.relationRow8221 rho)
    (tail : next (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) (rho 27531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg56 (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) next := by
  exact ⟨rho 27527, rho 27528, rho 27529, rho 27530, rho 27531, r8217, r8218, r8219, r8220, r8221, tail⟩

theorem seg28_scp_node21_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8222 : Seg28.relationRow8222 rho)
    (r8223 : Seg28.relationRow8223 rho)
    (r8224 : Seg28.relationRow8224 rho)
    (r8225 : Seg28.relationRow8225 rho)
    (r8226 : Seg28.relationRow8226 rho)
    (tail : next (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) (rho 27531) (rho 27536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg57 (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) (rho 27531) next := by
  exact ⟨rho 27532, rho 27533, rho 27534, rho 27535, rho 27536, r8222, r8223, r8224, r8225, r8226, tail⟩

theorem seg28_scp_node21_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8227 : Seg28.relationRow8227 rho)
    (r8228 : Seg28.relationRow8228 rho)
    (r8229 : Seg28.relationRow8229 rho)
    (r8230 : Seg28.relationRow8230 rho)
    (r8231 : Seg28.relationRow8231 rho)
    (tail : next (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) (rho 27531) (rho 27536) (rho 27541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg58 (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) (rho 27531) (rho 27536) next := by
  exact ⟨rho 27537, rho 27538, rho 27539, rho 27540, rho 27541, r8227, r8228, r8229, r8230, r8231, tail⟩

theorem seg28_scp_node21_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8232 : Seg28.relationRow8232 rho)
    (r8233 : Seg28.relationRow8233 rho)
    (r8234 : Seg28.relationRow8234 rho)
    (r8235 : Seg28.relationRow8235 rho)
    (r8236 : Seg28.relationRow8236 rho)
    (tail : next (rho 27526) (rho 27531) (rho 27536) (rho 27541) (rho 27546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg59 (rho 27501) (rho 27506) (rho 27511) (rho 27516) (rho 27521) (rho 27526) (rho 27531) (rho 27536) (rho 27541) next := by
  exact ⟨rho 27542, rho 27543, rho 27544, rho 27545, rho 27546, r8232, r8233, r8234, r8235, r8236, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

