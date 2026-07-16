import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node16_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6367 : Seg13.relationRow6367 rho)
    (r6368 : Seg13.relationRow6368 rho)
    (r6369 : Seg13.relationRow6369 rho)
    (r6370 : Seg13.relationRow6370 rho)
    (r6371 : Seg13.relationRow6371 rho)
    (tail : next (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg50 (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) next := by
  exact ⟨rho 13516, rho 13517, rho 13518, rho 13519, rho 13520, r6367, r6368, r6369, r6370, r6371, tail⟩

theorem seg13_scp_node16_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6372 : Seg13.relationRow6372 rho)
    (r6373 : Seg13.relationRow6373 rho)
    (r6374 : Seg13.relationRow6374 rho)
    (r6375 : Seg13.relationRow6375 rho)
    (r6376 : Seg13.relationRow6376 rho)
    (tail : next (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) (rho 13525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg51 (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) next := by
  exact ⟨rho 13521, rho 13522, rho 13523, rho 13524, rho 13525, r6372, r6373, r6374, r6375, r6376, tail⟩

theorem seg13_scp_node16_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6377 : Seg13.relationRow6377 rho)
    (r6378 : Seg13.relationRow6378 rho)
    (r6379 : Seg13.relationRow6379 rho)
    (r6380 : Seg13.relationRow6380 rho)
    (r6381 : Seg13.relationRow6381 rho)
    (tail : next (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) (rho 13525) (rho 13530)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg52 (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) (rho 13525) next := by
  exact ⟨rho 13526, rho 13527, rho 13528, rho 13529, rho 13530, r6377, r6378, r6379, r6380, r6381, tail⟩

theorem seg13_scp_node16_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6382 : Seg13.relationRow6382 rho)
    (r6383 : Seg13.relationRow6383 rho)
    (r6384 : Seg13.relationRow6384 rho)
    (r6385 : Seg13.relationRow6385 rho)
    (r6386 : Seg13.relationRow6386 rho)
    (tail : next (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) (rho 13525) (rho 13530) (rho 13535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg53 (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) (rho 13525) (rho 13530) next := by
  exact ⟨rho 13531, rho 13532, rho 13533, rho 13534, rho 13535, r6382, r6383, r6384, r6385, r6386, tail⟩

theorem seg13_scp_node16_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6387 : Seg13.relationRow6387 rho)
    (r6388 : Seg13.relationRow6388 rho)
    (r6389 : Seg13.relationRow6389 rho)
    (r6390 : Seg13.relationRow6390 rho)
    (r6391 : Seg13.relationRow6391 rho)
    (tail : next (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg54 (rho 13340) (rho 13345) (rho 13350) (rho 13355) (rho 13360) (rho 13365) (rho 13370) (rho 13375) (rho 13380) (rho 13385) (rho 13390) (rho 13395) (rho 13400) (rho 13405) (rho 13410) (rho 13415) (rho 13420) (rho 13425) (rho 13430) (rho 13435) (rho 13440) (rho 13445) (rho 13450) (rho 13455) (rho 13460) (rho 13465) (rho 13470) (rho 13475) (rho 13480) (rho 13485) (rho 13490) (rho 13495) (rho 13500) (rho 13505) (rho 13510) (rho 13515) (rho 13520) (rho 13525) (rho 13530) (rho 13535) next := by
  exact ⟨rho 13536, rho 13537, rho 13538, rho 13539, rho 13540, r6387, r6388, r6389, r6390, r6391, tail⟩

theorem seg13_scp_node16_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6392 : Seg13.relationRow6392 rho)
    (r6393 : Seg13.relationRow6393 rho)
    (r6394 : Seg13.relationRow6394 rho)
    (r6395 : Seg13.relationRow6395 rho)
    (r6396 : Seg13.relationRow6396 rho)
    (tail : next (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg55 (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) next := by
  exact ⟨rho 13541, rho 13542, rho 13543, rho 13544, rho 13545, r6392, r6393, r6394, r6395, r6396, tail⟩

theorem seg13_scp_node16_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6397 : Seg13.relationRow6397 rho)
    (r6398 : Seg13.relationRow6398 rho)
    (r6399 : Seg13.relationRow6399 rho)
    (r6400 : Seg13.relationRow6400 rho)
    (r6401 : Seg13.relationRow6401 rho)
    (tail : next (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) (rho 13550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg56 (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) next := by
  exact ⟨rho 13546, rho 13547, rho 13548, rho 13549, rho 13550, r6397, r6398, r6399, r6400, r6401, tail⟩

theorem seg13_scp_node16_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6402 : Seg13.relationRow6402 rho)
    (r6403 : Seg13.relationRow6403 rho)
    (r6404 : Seg13.relationRow6404 rho)
    (r6405 : Seg13.relationRow6405 rho)
    (r6406 : Seg13.relationRow6406 rho)
    (tail : next (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) (rho 13550) (rho 13555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg57 (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) (rho 13550) next := by
  exact ⟨rho 13551, rho 13552, rho 13553, rho 13554, rho 13555, r6402, r6403, r6404, r6405, r6406, tail⟩

theorem seg13_scp_node16_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6407 : Seg13.relationRow6407 rho)
    (r6408 : Seg13.relationRow6408 rho)
    (r6409 : Seg13.relationRow6409 rho)
    (r6410 : Seg13.relationRow6410 rho)
    (r6411 : Seg13.relationRow6411 rho)
    (tail : next (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) (rho 13550) (rho 13555) (rho 13560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg58 (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) (rho 13550) (rho 13555) next := by
  exact ⟨rho 13556, rho 13557, rho 13558, rho 13559, rho 13560, r6407, r6408, r6409, r6410, r6411, tail⟩

theorem seg13_scp_node16_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6412 : Seg13.relationRow6412 rho)
    (r6413 : Seg13.relationRow6413 rho)
    (r6414 : Seg13.relationRow6414 rho)
    (r6415 : Seg13.relationRow6415 rho)
    (r6416 : Seg13.relationRow6416 rho)
    (tail : next (rho 13545) (rho 13550) (rho 13555) (rho 13560) (rho 13565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg59 (rho 13520) (rho 13525) (rho 13530) (rho 13535) (rho 13540) (rho 13545) (rho 13550) (rho 13555) (rho 13560) next := by
  exact ⟨rho 13561, rho 13562, rho 13563, rho 13564, rho 13565, r6412, r6413, r6414, r6415, r6416, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

