import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode0Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node0_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    nodeOut0 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 38 + rho 47) (rho 48 + rho 49 + rho 50) (rho 48 + rho 52 + rho 53) (rho 51 + rho 54) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart0 at p0
  rcases p0 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, r278, r279, r280, r281, r282, r283, r284, r285, r286, r287, r288, r289, r290, r291, r292, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 38 + rho 47) (rho 48 + rho 49 + rho 50) (rho 48 + rho 52 + rho 53) (rho 51 + rho 54)
      (fun w334 w339 w344 w349 w354 => w334 = rho 384 ∧ w339 = rho 389 ∧ w344 = rho 394 ∧ w349 = rho 399 ∧ w354 = rho 404) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node0_seg0 rho _ r47 r48 r49 r50 r51 (node0_seg1 rho _ r52 r53 r54 r55 r56 (node0_seg2 rho _ r57 r58 r59 r60 r61 (node0_seg3 rho _ r62 r63 r64 r65 r66 (node0_seg4 rho _ r67 r68 r69 r70 r71 (node0_seg5 rho _ r72 r73 r74 r75 r76 (node0_seg6 rho _ r77 r78 r79 r80 r81 (node0_seg7 rho _ r82 r83 r84 r85 r86 (node0_seg8 rho _ r87 r88 r89 r90 r91 (node0_seg9 rho _ r92 r93 r94 r95 r96 (node0_seg10 rho _ r97 r98 r99 r100 r101 (node0_seg11 rho _ r102 r103 r104 r105 r106 (node0_seg12 rho _ r107 r108 r109 r110 r111 (node0_seg13 rho _ r112 r113 r114 r115 r116 (node0_seg14 rho _ r117 r118 r119 r120 r121 (node0_seg15 rho _ r122 r123 r124 r125 r126 (node0_seg16 rho _ r127 r128 r129 r130 r131 (node0_seg17 rho _ r132 r133 r134 r135 r136 (node0_seg18 rho _ r137 r138 r139 r140 r141 (node0_seg19 rho _ r142 r143 r144 r145 r146 (node0_seg20 rho _ r147 r148 r149 r150 r151 (node0_seg21 rho _ r152 r153 r154 r155 r156 (node0_seg22 rho _ r157 r158 r159 r160 r161 (node0_seg23 rho _ r162 r163 r164 r165 r166 (node0_seg24 rho _ r167 r168 r169 r170 r171 (node0_seg25 rho _ r172 r173 r174 r175 r176 (node0_seg26 rho _ r177 r178 r179 r180 r181 (node0_seg27 rho _ r182 r183 r184 r185 r186 (node0_seg28 rho _ r187 r188 r189 r190 r191 (node0_seg29 rho _ r192 r193 r194 r195 r196 (node0_seg30 rho _ r197 r198 r199 r200 r201 (node0_seg31 rho _ r202 r203 r204 r205 r206 (node0_seg32 rho _ r207 r208 r209 r210 r211 (node0_seg33 rho _ r212 r213 r214 r215 r216 (node0_seg34 rho _ r217 r218 r219 r220 r221 (node0_seg35 rho _ r222 r223 r224 r225 r226 (node0_seg36 rho _ r227 r228 r229 r230 r231 (node0_seg37 rho _ r232 r233 r234 r235 r236 (node0_seg38 rho _ r237 r238 r239 r240 r241 (node0_seg39 rho _ r242 r243 r244 r245 r246 (node0_seg40 rho _ r247 r248 r249 r250 r251 (node0_seg41 rho _ r252 r253 r254 r255 r256 (node0_seg42 rho _ r257 r258 r259 r260 r261 (node0_seg43 rho _ r262 r263 r264 r265 r266 (node0_seg44 rho _ r267 r268 r269 r270 r271 (node0_seg45 rho _ r272 r273 r274 r275 r276 (node0_seg46 rho _ r277 r278 r279 r280 r281 (node0_seg47 rho _ r282 r283 r284 r285 r286 (node0_seg48 rho _ r287 r288 r289 r290 r291 (node0_seg49 rho _ r292 r293 r294 r295 r296 (node0_seg50 rho _ r297 r298 r299 r300 r301 (node0_seg51 rho _ r302 r303 r304 r305 r306 (node0_seg52 rho _ r307 r308 r309 r310 r311 (node0_seg53 rho _ r312 r313 r314 r315 r316 (node0_seg54 rho _ r317 r318 r319 r320 r321 (node0_seg55 rho _ r322 r323 r324 r325 r326 (node0_seg56 rho _ r327 r328 r329 r330 r331 (node0_seg57 rho _ r332 r333 r334 r335 r336 (node0_seg58 rho _ r337 r338 r339 r340 r341 (node0_seg59 rho _ r342 r343 r344 r345 r346 (node0_seg60 rho _ r347 r348 r349 r350 r351 (node0_seg61 rho _ r352 r353 r354 r355 r356 (node0_seg62 rho _ r357 r358 r359 r360 r361 (node0_seg63 rho _ r362 r363 r364 r365 r366 (node0_seg64 rho _ r367 r368 r369 r370 r371 (node0_seg65 rho _ r372 r373 r374 r375 r376 (node0_seg66 rho _ r377 r378 r379 r380 r381 (node0_seg67 rho _ r382 r383 r384 r385 r386 (node0_seg68 rho _ r387 r388 r389 r390 r391 (node0_seg69 rho _ r392 r393 r394 r395 r396 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 38 + rho 47) (rho 48 + rho 49 + rho 50) (rho 48 + rho 52 + rho 53) (rho 51 + rho 54) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut0, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
