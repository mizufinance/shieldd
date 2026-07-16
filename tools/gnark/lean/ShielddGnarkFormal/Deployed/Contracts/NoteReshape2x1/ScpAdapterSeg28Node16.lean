import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node16Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode16.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node16_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode16Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (17 : Seg28.F))
        (rho 136 + rho 25441) (rho 137 + rho 25442 + rho 25443)
        (rho 137 + rho 25444 + rho 25445) (rho 138 + rho 25446) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, p77, p78, p79,
    p80, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg28.relationPart77 at p77
  rcases p77 with ⟨r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg28.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg28.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340, r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353, r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366, r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379, r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392, r6393, r6394, r6395, r6396, r6397, r6398, r6399⟩
  unfold Seg28.relationPart80 at p80
  rcases p80 with ⟨r6400, r6401, r6402, r6403, r6404, r6405, r6406, r6407, r6408, r6409, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418, r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431, r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444, r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, r6453, r6454, r6455, r6456, r6457, r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.relation (rho 136) (rho 137) (rho 138) (rho 25441) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446)
      (fun o0 o1 o2 o3 o4 => o0 = rho 25776 ∧ o1 = rho 25781 ∧ o2 = rho 25786 ∧ o3 = rho 25791 ∧ o4 = rho 25796) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.relation
    exact seg28_scp_node16_seg0 rho _ r6117 r6118 r6119 r6120 r6121 (seg28_scp_node16_seg1 rho _ r6122 r6123 r6124 r6125 r6126 (seg28_scp_node16_seg2 rho _ r6127 r6128 r6129 r6130 r6131 (seg28_scp_node16_seg3 rho _ r6132 r6133 r6134 r6135 r6136 (seg28_scp_node16_seg4 rho _ r6137 r6138 r6139 r6140 r6141 (seg28_scp_node16_seg5 rho _ r6142 r6143 r6144 r6145 r6146 (seg28_scp_node16_seg6 rho _ r6147 r6148 r6149 r6150 r6151 (seg28_scp_node16_seg7 rho _ r6152 r6153 r6154 r6155 r6156 (seg28_scp_node16_seg8 rho _ r6157 r6158 r6159 r6160 r6161 (seg28_scp_node16_seg9 rho _ r6162 r6163 r6164 r6165 r6166 (seg28_scp_node16_seg10 rho _ r6167 r6168 r6169 r6170 r6171 (seg28_scp_node16_seg11 rho _ r6172 r6173 r6174 r6175 r6176 (seg28_scp_node16_seg12 rho _ r6177 r6178 r6179 r6180 r6181 (seg28_scp_node16_seg13 rho _ r6182 r6183 r6184 r6185 r6186 (seg28_scp_node16_seg14 rho _ r6187 r6188 r6189 r6190 r6191 (seg28_scp_node16_seg15 rho _ r6192 r6193 r6194 r6195 r6196 (seg28_scp_node16_seg16 rho _ r6197 r6198 r6199 r6200 r6201 (seg28_scp_node16_seg17 rho _ r6202 r6203 r6204 r6205 r6206 (seg28_scp_node16_seg18 rho _ r6207 r6208 r6209 r6210 r6211 (seg28_scp_node16_seg19 rho _ r6212 r6213 r6214 r6215 r6216 (seg28_scp_node16_seg20 rho _ r6217 r6218 r6219 r6220 r6221 (seg28_scp_node16_seg21 rho _ r6222 r6223 r6224 r6225 r6226 (seg28_scp_node16_seg22 rho _ r6227 r6228 r6229 r6230 r6231 (seg28_scp_node16_seg23 rho _ r6232 r6233 r6234 r6235 r6236 (seg28_scp_node16_seg24 rho _ r6237 r6238 r6239 r6240 r6241 (seg28_scp_node16_seg25 rho _ r6242 r6243 r6244 r6245 r6246 (seg28_scp_node16_seg26 rho _ r6247 r6248 r6249 r6250 r6251 (seg28_scp_node16_seg27 rho _ r6252 r6253 r6254 r6255 r6256 (seg28_scp_node16_seg28 rho _ r6257 r6258 r6259 r6260 r6261 (seg28_scp_node16_seg29 rho _ r6262 r6263 r6264 r6265 r6266 (seg28_scp_node16_seg30 rho _ r6267 r6268 r6269 r6270 r6271 (seg28_scp_node16_seg31 rho _ r6272 r6273 r6274 r6275 r6276 (seg28_scp_node16_seg32 rho _ r6277 r6278 r6279 r6280 r6281 (seg28_scp_node16_seg33 rho _ r6282 r6283 r6284 r6285 r6286 (seg28_scp_node16_seg34 rho _ r6287 r6288 r6289 r6290 r6291 (seg28_scp_node16_seg35 rho _ r6292 r6293 r6294 r6295 r6296 (seg28_scp_node16_seg36 rho _ r6297 r6298 r6299 r6300 r6301 (seg28_scp_node16_seg37 rho _ r6302 r6303 r6304 r6305 r6306 (seg28_scp_node16_seg38 rho _ r6307 r6308 r6309 r6310 r6311 (seg28_scp_node16_seg39 rho _ r6312 r6313 r6314 r6315 r6316 (seg28_scp_node16_seg40 rho _ r6317 r6318 r6319 r6320 r6321 (seg28_scp_node16_seg41 rho _ r6322 r6323 r6324 r6325 r6326 (seg28_scp_node16_seg42 rho _ r6327 r6328 r6329 r6330 r6331 (seg28_scp_node16_seg43 rho _ r6332 r6333 r6334 r6335 r6336 (seg28_scp_node16_seg44 rho _ r6337 r6338 r6339 r6340 r6341 (seg28_scp_node16_seg45 rho _ r6342 r6343 r6344 r6345 r6346 (seg28_scp_node16_seg46 rho _ r6347 r6348 r6349 r6350 r6351 (seg28_scp_node16_seg47 rho _ r6352 r6353 r6354 r6355 r6356 (seg28_scp_node16_seg48 rho _ r6357 r6358 r6359 r6360 r6361 (seg28_scp_node16_seg49 rho _ r6362 r6363 r6364 r6365 r6366 (seg28_scp_node16_seg50 rho _ r6367 r6368 r6369 r6370 r6371 (seg28_scp_node16_seg51 rho _ r6372 r6373 r6374 r6375 r6376 (seg28_scp_node16_seg52 rho _ r6377 r6378 r6379 r6380 r6381 (seg28_scp_node16_seg53 rho _ r6382 r6383 r6384 r6385 r6386 (seg28_scp_node16_seg54 rho _ r6387 r6388 r6389 r6390 r6391 (seg28_scp_node16_seg55 rho _ r6392 r6393 r6394 r6395 r6396 (seg28_scp_node16_seg56 rho _ r6397 r6398 r6399 r6400 r6401 (seg28_scp_node16_seg57 rho _ r6402 r6403 r6404 r6405 r6406 (seg28_scp_node16_seg58 rho _ r6407 r6408 r6409 r6410 r6411 (seg28_scp_node16_seg59 rho _ r6412 r6413 r6414 r6415 r6416 (seg28_scp_node16_seg60 rho _ r6417 r6418 r6419 r6420 r6421 (seg28_scp_node16_seg61 rho _ r6422 r6423 r6424 r6425 r6426 (seg28_scp_node16_seg62 rho _ r6427 r6428 r6429 r6430 r6431 (seg28_scp_node16_seg63 rho _ r6432 r6433 r6434 r6435 r6436 (seg28_scp_node16_seg64 rho _ r6437 r6438 r6439 r6440 r6441 (seg28_scp_node16_seg65 rho _ r6442 r6443 r6444 r6445 r6446 (seg28_scp_node16_seg66 rho _ r6447 r6448 r6449 r6450 r6451 (seg28_scp_node16_seg67 rho _ r6452 r6453 r6454 r6455 r6456 (seg28_scp_node16_seg68 rho _ r6457 r6458 r6459 r6460 r6461 (seg28_scp_node16_seg69 rho _ r6462 r6463 r6464 r6465 r6466 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.relation_sound_permSpec (rho 136) (rho 137) (rho 138) (rho 25441) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.tctNode17DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) + (17 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode16Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

