import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode16.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_node16_eq (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode16Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (17 : Seg11.F))
        (rho 46 + rho 7695) (rho 47 + rho 7696 + rho 7697)
        (rho 47 + rho 7698 + rho 7699) (rho 48 + rho 7700) := by
  unfold Seg11.relation at h
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
  unfold Seg11.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg11.relationPart77 at p77
  rcases p77 with ⟨r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg11.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg11.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340, r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353, r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366, r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379, r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392, r6393, r6394, r6395, r6396, r6397, r6398, r6399⟩
  unfold Seg11.relationPart80 at p80
  rcases p80 with ⟨r6400, r6401, r6402, r6403, r6404, r6405, r6406, r6407, r6408, r6409, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418, r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431, r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444, r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, r6453, r6454, r6455, r6456, r6457, r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.relation (rho 46) (rho 47) (rho 48) (rho 7695) (rho 7696) (rho 7697) (rho 7698) (rho 7699) (rho 7700)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8030 ∧ o1 = rho 8035 ∧ o2 = rho 8040 ∧ o3 = rho 8045 ∧ o4 = rho 8050) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg0
    refine ⟨rho 7701, rho 7702, rho 7703, rho 7704, rho 7705,
      (by unfold Seg11.relationRow6117 at r6117; linear_combination r6117), (by unfold Seg11.relationRow6118 at r6118; linear_combination r6118), (by unfold Seg11.relationRow6119 at r6119; linear_combination r6119), (by unfold Seg11.relationRow6120 at r6120; linear_combination r6120), (by unfold Seg11.relationRow6121 at r6121; linear_combination r6121), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg1
    refine ⟨rho 7706, rho 7707, rho 7708, rho 7709, rho 7710,
      (by unfold Seg11.relationRow6122 at r6122; linear_combination r6122), (by unfold Seg11.relationRow6123 at r6123; linear_combination r6123), (by unfold Seg11.relationRow6124 at r6124; linear_combination r6124), (by unfold Seg11.relationRow6125 at r6125; linear_combination r6125), (by unfold Seg11.relationRow6126 at r6126; linear_combination r6126), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg2
    refine ⟨rho 7711, rho 7712, rho 7713, rho 7714, rho 7715,
      (by unfold Seg11.relationRow6127 at r6127; linear_combination r6127), (by unfold Seg11.relationRow6128 at r6128; linear_combination r6128), (by unfold Seg11.relationRow6129 at r6129; linear_combination r6129), (by unfold Seg11.relationRow6130 at r6130; linear_combination r6130), (by unfold Seg11.relationRow6131 at r6131; linear_combination r6131), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg3
    refine ⟨rho 7716, rho 7717, rho 7718, rho 7719, rho 7720,
      (by unfold Seg11.relationRow6132 at r6132; linear_combination r6132), (by unfold Seg11.relationRow6133 at r6133; linear_combination r6133), (by unfold Seg11.relationRow6134 at r6134; linear_combination r6134), (by unfold Seg11.relationRow6135 at r6135; linear_combination r6135), (by unfold Seg11.relationRow6136 at r6136; linear_combination r6136), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg4
    refine ⟨rho 7721, rho 7722, rho 7723, rho 7724, rho 7725,
      (by unfold Seg11.relationRow6137 at r6137; linear_combination r6137), (by unfold Seg11.relationRow6138 at r6138; linear_combination r6138), (by unfold Seg11.relationRow6139 at r6139; linear_combination r6139), (by unfold Seg11.relationRow6140 at r6140; linear_combination r6140), (by unfold Seg11.relationRow6141 at r6141; linear_combination r6141), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg5
    refine ⟨rho 7726, rho 7727, rho 7728, rho 7729, rho 7730,
      (by unfold Seg11.relationRow6142 at r6142; linear_combination r6142), (by unfold Seg11.relationRow6143 at r6143; linear_combination r6143), (by unfold Seg11.relationRow6144 at r6144; linear_combination r6144), (by unfold Seg11.relationRow6145 at r6145; linear_combination r6145), (by unfold Seg11.relationRow6146 at r6146; linear_combination r6146), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg6
    refine ⟨rho 7731, rho 7732, rho 7733, rho 7734, rho 7735,
      (by unfold Seg11.relationRow6147 at r6147; linear_combination r6147), (by unfold Seg11.relationRow6148 at r6148; linear_combination r6148), (by unfold Seg11.relationRow6149 at r6149; linear_combination r6149), (by unfold Seg11.relationRow6150 at r6150; linear_combination r6150), (by unfold Seg11.relationRow6151 at r6151; linear_combination r6151), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg7
    refine ⟨rho 7736, rho 7737, rho 7738, rho 7739, rho 7740,
      (by unfold Seg11.relationRow6152 at r6152; linear_combination r6152), (by unfold Seg11.relationRow6153 at r6153; linear_combination r6153), (by unfold Seg11.relationRow6154 at r6154; linear_combination r6154), (by unfold Seg11.relationRow6155 at r6155; linear_combination r6155), (by unfold Seg11.relationRow6156 at r6156; linear_combination r6156), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg8
    refine ⟨rho 7741, rho 7742, rho 7743, rho 7744, rho 7745,
      (by unfold Seg11.relationRow6157 at r6157; linear_combination r6157), (by unfold Seg11.relationRow6158 at r6158; linear_combination r6158), (by unfold Seg11.relationRow6159 at r6159; linear_combination r6159), (by unfold Seg11.relationRow6160 at r6160; linear_combination r6160), (by unfold Seg11.relationRow6161 at r6161; linear_combination r6161), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg9
    refine ⟨rho 7746, rho 7747, rho 7748, rho 7749, rho 7750,
      (by unfold Seg11.relationRow6162 at r6162; linear_combination r6162), (by unfold Seg11.relationRow6163 at r6163; linear_combination r6163), (by unfold Seg11.relationRow6164 at r6164; linear_combination r6164), (by unfold Seg11.relationRow6165 at r6165; linear_combination r6165), (by unfold Seg11.relationRow6166 at r6166; linear_combination r6166), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg10
    refine ⟨rho 7751, rho 7752, rho 7753, rho 7754, rho 7755,
      (by unfold Seg11.relationRow6167 at r6167; linear_combination r6167), (by unfold Seg11.relationRow6168 at r6168; linear_combination r6168), (by unfold Seg11.relationRow6169 at r6169; linear_combination r6169), (by unfold Seg11.relationRow6170 at r6170; linear_combination r6170), (by unfold Seg11.relationRow6171 at r6171; linear_combination r6171), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg11
    refine ⟨rho 7756, rho 7757, rho 7758, rho 7759, rho 7760,
      (by unfold Seg11.relationRow6172 at r6172; linear_combination r6172), (by unfold Seg11.relationRow6173 at r6173; linear_combination r6173), (by unfold Seg11.relationRow6174 at r6174; linear_combination r6174), (by unfold Seg11.relationRow6175 at r6175; linear_combination r6175), (by unfold Seg11.relationRow6176 at r6176; linear_combination r6176), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg12
    refine ⟨rho 7761, rho 7762, rho 7763, rho 7764, rho 7765,
      (by unfold Seg11.relationRow6177 at r6177; linear_combination r6177), (by unfold Seg11.relationRow6178 at r6178; linear_combination r6178), (by unfold Seg11.relationRow6179 at r6179; linear_combination r6179), (by unfold Seg11.relationRow6180 at r6180; linear_combination r6180), (by unfold Seg11.relationRow6181 at r6181; linear_combination r6181), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg13
    refine ⟨rho 7766, rho 7767, rho 7768, rho 7769, rho 7770,
      (by unfold Seg11.relationRow6182 at r6182; linear_combination r6182), (by unfold Seg11.relationRow6183 at r6183; linear_combination r6183), (by unfold Seg11.relationRow6184 at r6184; linear_combination r6184), (by unfold Seg11.relationRow6185 at r6185; linear_combination r6185), (by unfold Seg11.relationRow6186 at r6186; linear_combination r6186), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg14
    refine ⟨rho 7771, rho 7772, rho 7773, rho 7774, rho 7775,
      (by unfold Seg11.relationRow6187 at r6187; linear_combination r6187), (by unfold Seg11.relationRow6188 at r6188; linear_combination r6188), (by unfold Seg11.relationRow6189 at r6189; linear_combination r6189), (by unfold Seg11.relationRow6190 at r6190; linear_combination r6190), (by unfold Seg11.relationRow6191 at r6191; linear_combination r6191), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg15
    refine ⟨rho 7776, rho 7777, rho 7778, rho 7779, rho 7780,
      (by unfold Seg11.relationRow6192 at r6192; linear_combination r6192), (by unfold Seg11.relationRow6193 at r6193; linear_combination r6193), (by unfold Seg11.relationRow6194 at r6194; linear_combination r6194), (by unfold Seg11.relationRow6195 at r6195; linear_combination r6195), (by unfold Seg11.relationRow6196 at r6196; linear_combination r6196), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg16
    refine ⟨rho 7781, rho 7782, rho 7783, rho 7784, rho 7785,
      (by unfold Seg11.relationRow6197 at r6197; linear_combination r6197), (by unfold Seg11.relationRow6198 at r6198; linear_combination r6198), (by unfold Seg11.relationRow6199 at r6199; linear_combination r6199), (by unfold Seg11.relationRow6200 at r6200; linear_combination r6200), (by unfold Seg11.relationRow6201 at r6201; linear_combination r6201), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg17
    refine ⟨rho 7786, rho 7787, rho 7788, rho 7789, rho 7790,
      (by unfold Seg11.relationRow6202 at r6202; linear_combination r6202), (by unfold Seg11.relationRow6203 at r6203; linear_combination r6203), (by unfold Seg11.relationRow6204 at r6204; linear_combination r6204), (by unfold Seg11.relationRow6205 at r6205; linear_combination r6205), (by unfold Seg11.relationRow6206 at r6206; linear_combination r6206), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg18
    refine ⟨rho 7791, rho 7792, rho 7793, rho 7794, rho 7795,
      (by unfold Seg11.relationRow6207 at r6207; linear_combination r6207), (by unfold Seg11.relationRow6208 at r6208; linear_combination r6208), (by unfold Seg11.relationRow6209 at r6209; linear_combination r6209), (by unfold Seg11.relationRow6210 at r6210; linear_combination r6210), (by unfold Seg11.relationRow6211 at r6211; linear_combination r6211), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg19
    refine ⟨rho 7796, rho 7797, rho 7798, rho 7799, rho 7800,
      (by unfold Seg11.relationRow6212 at r6212; linear_combination r6212), (by unfold Seg11.relationRow6213 at r6213; linear_combination r6213), (by unfold Seg11.relationRow6214 at r6214; linear_combination r6214), (by unfold Seg11.relationRow6215 at r6215; linear_combination r6215), (by unfold Seg11.relationRow6216 at r6216; linear_combination r6216), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg20
    refine ⟨rho 7801, rho 7802, rho 7803, rho 7804, rho 7805,
      (by unfold Seg11.relationRow6217 at r6217; linear_combination r6217), (by unfold Seg11.relationRow6218 at r6218; linear_combination r6218), (by unfold Seg11.relationRow6219 at r6219; linear_combination r6219), (by unfold Seg11.relationRow6220 at r6220; linear_combination r6220), (by unfold Seg11.relationRow6221 at r6221; linear_combination r6221), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg21
    refine ⟨rho 7806, rho 7807, rho 7808, rho 7809, rho 7810,
      (by unfold Seg11.relationRow6222 at r6222; linear_combination r6222), (by unfold Seg11.relationRow6223 at r6223; linear_combination r6223), (by unfold Seg11.relationRow6224 at r6224; linear_combination r6224), (by unfold Seg11.relationRow6225 at r6225; linear_combination r6225), (by unfold Seg11.relationRow6226 at r6226; linear_combination r6226), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg22
    refine ⟨rho 7811, rho 7812, rho 7813, rho 7814, rho 7815,
      (by unfold Seg11.relationRow6227 at r6227; linear_combination r6227), (by unfold Seg11.relationRow6228 at r6228; linear_combination r6228), (by unfold Seg11.relationRow6229 at r6229; linear_combination r6229), (by unfold Seg11.relationRow6230 at r6230; linear_combination r6230), (by unfold Seg11.relationRow6231 at r6231; linear_combination r6231), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg23
    refine ⟨rho 7816, rho 7817, rho 7818, rho 7819, rho 7820,
      (by unfold Seg11.relationRow6232 at r6232; linear_combination r6232), (by unfold Seg11.relationRow6233 at r6233; linear_combination r6233), (by unfold Seg11.relationRow6234 at r6234; linear_combination r6234), (by unfold Seg11.relationRow6235 at r6235; linear_combination r6235), (by unfold Seg11.relationRow6236 at r6236; linear_combination r6236), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg24
    refine ⟨rho 7821, rho 7822, rho 7823, rho 7824, rho 7825,
      (by unfold Seg11.relationRow6237 at r6237; linear_combination r6237), (by unfold Seg11.relationRow6238 at r6238; linear_combination r6238), (by unfold Seg11.relationRow6239 at r6239; linear_combination r6239), (by unfold Seg11.relationRow6240 at r6240; linear_combination r6240), (by unfold Seg11.relationRow6241 at r6241; linear_combination r6241), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg25
    refine ⟨rho 7826, rho 7827, rho 7828, rho 7829, rho 7830,
      (by unfold Seg11.relationRow6242 at r6242; linear_combination r6242), (by unfold Seg11.relationRow6243 at r6243; linear_combination r6243), (by unfold Seg11.relationRow6244 at r6244; linear_combination r6244), (by unfold Seg11.relationRow6245 at r6245; linear_combination r6245), (by unfold Seg11.relationRow6246 at r6246; linear_combination r6246), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg26
    refine ⟨rho 7831, rho 7832, rho 7833, rho 7834, rho 7835,
      (by unfold Seg11.relationRow6247 at r6247; linear_combination r6247), (by unfold Seg11.relationRow6248 at r6248; linear_combination r6248), (by unfold Seg11.relationRow6249 at r6249; linear_combination r6249), (by unfold Seg11.relationRow6250 at r6250; linear_combination r6250), (by unfold Seg11.relationRow6251 at r6251; linear_combination r6251), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg27
    refine ⟨rho 7836, rho 7837, rho 7838, rho 7839, rho 7840,
      (by unfold Seg11.relationRow6252 at r6252; linear_combination r6252), (by unfold Seg11.relationRow6253 at r6253; linear_combination r6253), (by unfold Seg11.relationRow6254 at r6254; linear_combination r6254), (by unfold Seg11.relationRow6255 at r6255; linear_combination r6255), (by unfold Seg11.relationRow6256 at r6256; linear_combination r6256), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg28
    refine ⟨rho 7841, rho 7842, rho 7843, rho 7844, rho 7845,
      (by unfold Seg11.relationRow6257 at r6257; linear_combination r6257), (by unfold Seg11.relationRow6258 at r6258; linear_combination r6258), (by unfold Seg11.relationRow6259 at r6259; linear_combination r6259), (by unfold Seg11.relationRow6260 at r6260; linear_combination r6260), (by unfold Seg11.relationRow6261 at r6261; linear_combination r6261), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg29
    refine ⟨rho 7846, rho 7847, rho 7848, rho 7849, rho 7850,
      (by unfold Seg11.relationRow6262 at r6262; linear_combination r6262), (by unfold Seg11.relationRow6263 at r6263; linear_combination r6263), (by unfold Seg11.relationRow6264 at r6264; linear_combination r6264), (by unfold Seg11.relationRow6265 at r6265; linear_combination r6265), (by unfold Seg11.relationRow6266 at r6266; linear_combination r6266), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg30
    refine ⟨rho 7851, rho 7852, rho 7853, rho 7854, rho 7855,
      (by unfold Seg11.relationRow6267 at r6267; linear_combination r6267), (by unfold Seg11.relationRow6268 at r6268; linear_combination r6268), (by unfold Seg11.relationRow6269 at r6269; linear_combination r6269), (by unfold Seg11.relationRow6270 at r6270; linear_combination r6270), (by unfold Seg11.relationRow6271 at r6271; linear_combination r6271), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg31
    refine ⟨rho 7856, rho 7857, rho 7858, rho 7859, rho 7860,
      (by unfold Seg11.relationRow6272 at r6272; linear_combination r6272), (by unfold Seg11.relationRow6273 at r6273; linear_combination r6273), (by unfold Seg11.relationRow6274 at r6274; linear_combination r6274), (by unfold Seg11.relationRow6275 at r6275; linear_combination r6275), (by unfold Seg11.relationRow6276 at r6276; linear_combination r6276), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg32
    refine ⟨rho 7861, rho 7862, rho 7863, rho 7864, rho 7865,
      (by unfold Seg11.relationRow6277 at r6277; linear_combination r6277), (by unfold Seg11.relationRow6278 at r6278; linear_combination r6278), (by unfold Seg11.relationRow6279 at r6279; linear_combination r6279), (by unfold Seg11.relationRow6280 at r6280; linear_combination r6280), (by unfold Seg11.relationRow6281 at r6281; linear_combination r6281), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg33
    refine ⟨rho 7866, rho 7867, rho 7868, rho 7869, rho 7870,
      (by unfold Seg11.relationRow6282 at r6282; linear_combination r6282), (by unfold Seg11.relationRow6283 at r6283; linear_combination r6283), (by unfold Seg11.relationRow6284 at r6284; linear_combination r6284), (by unfold Seg11.relationRow6285 at r6285; linear_combination r6285), (by unfold Seg11.relationRow6286 at r6286; linear_combination r6286), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg34
    refine ⟨rho 7871, rho 7872, rho 7873, rho 7874, rho 7875,
      (by unfold Seg11.relationRow6287 at r6287; linear_combination r6287), (by unfold Seg11.relationRow6288 at r6288; linear_combination r6288), (by unfold Seg11.relationRow6289 at r6289; linear_combination r6289), (by unfold Seg11.relationRow6290 at r6290; linear_combination r6290), (by unfold Seg11.relationRow6291 at r6291; linear_combination r6291), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg35
    refine ⟨rho 7876, rho 7877, rho 7878, rho 7879, rho 7880,
      (by unfold Seg11.relationRow6292 at r6292; linear_combination r6292), (by unfold Seg11.relationRow6293 at r6293; linear_combination r6293), (by unfold Seg11.relationRow6294 at r6294; linear_combination r6294), (by unfold Seg11.relationRow6295 at r6295; linear_combination r6295), (by unfold Seg11.relationRow6296 at r6296; linear_combination r6296), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg36
    refine ⟨rho 7881, rho 7882, rho 7883, rho 7884, rho 7885,
      (by unfold Seg11.relationRow6297 at r6297; linear_combination r6297), (by unfold Seg11.relationRow6298 at r6298; linear_combination r6298), (by unfold Seg11.relationRow6299 at r6299; linear_combination r6299), (by unfold Seg11.relationRow6300 at r6300; linear_combination r6300), (by unfold Seg11.relationRow6301 at r6301; linear_combination r6301), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg37
    refine ⟨rho 7886, rho 7887, rho 7888, rho 7889, rho 7890,
      (by unfold Seg11.relationRow6302 at r6302; linear_combination r6302), (by unfold Seg11.relationRow6303 at r6303; linear_combination r6303), (by unfold Seg11.relationRow6304 at r6304; linear_combination r6304), (by unfold Seg11.relationRow6305 at r6305; linear_combination r6305), (by unfold Seg11.relationRow6306 at r6306; linear_combination r6306), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg38
    refine ⟨rho 7891, rho 7892, rho 7893, rho 7894, rho 7895,
      (by unfold Seg11.relationRow6307 at r6307; linear_combination r6307), (by unfold Seg11.relationRow6308 at r6308; linear_combination r6308), (by unfold Seg11.relationRow6309 at r6309; linear_combination r6309), (by unfold Seg11.relationRow6310 at r6310; linear_combination r6310), (by unfold Seg11.relationRow6311 at r6311; linear_combination r6311), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg39
    refine ⟨rho 7896, rho 7897, rho 7898, rho 7899, rho 7900,
      (by unfold Seg11.relationRow6312 at r6312; linear_combination r6312), (by unfold Seg11.relationRow6313 at r6313; linear_combination r6313), (by unfold Seg11.relationRow6314 at r6314; linear_combination r6314), (by unfold Seg11.relationRow6315 at r6315; linear_combination r6315), (by unfold Seg11.relationRow6316 at r6316; linear_combination r6316), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg40
    refine ⟨rho 7901, rho 7902, rho 7903, rho 7904, rho 7905,
      (by unfold Seg11.relationRow6317 at r6317; linear_combination r6317), (by unfold Seg11.relationRow6318 at r6318; linear_combination r6318), (by unfold Seg11.relationRow6319 at r6319; linear_combination r6319), (by unfold Seg11.relationRow6320 at r6320; linear_combination r6320), (by unfold Seg11.relationRow6321 at r6321; linear_combination r6321), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg41
    refine ⟨rho 7906, rho 7907, rho 7908, rho 7909, rho 7910,
      (by unfold Seg11.relationRow6322 at r6322; linear_combination r6322), (by unfold Seg11.relationRow6323 at r6323; linear_combination r6323), (by unfold Seg11.relationRow6324 at r6324; linear_combination r6324), (by unfold Seg11.relationRow6325 at r6325; linear_combination r6325), (by unfold Seg11.relationRow6326 at r6326; linear_combination r6326), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg42
    refine ⟨rho 7911, rho 7912, rho 7913, rho 7914, rho 7915,
      (by unfold Seg11.relationRow6327 at r6327; linear_combination r6327), (by unfold Seg11.relationRow6328 at r6328; linear_combination r6328), (by unfold Seg11.relationRow6329 at r6329; linear_combination r6329), (by unfold Seg11.relationRow6330 at r6330; linear_combination r6330), (by unfold Seg11.relationRow6331 at r6331; linear_combination r6331), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg43
    refine ⟨rho 7916, rho 7917, rho 7918, rho 7919, rho 7920,
      (by unfold Seg11.relationRow6332 at r6332; linear_combination r6332), (by unfold Seg11.relationRow6333 at r6333; linear_combination r6333), (by unfold Seg11.relationRow6334 at r6334; linear_combination r6334), (by unfold Seg11.relationRow6335 at r6335; linear_combination r6335), (by unfold Seg11.relationRow6336 at r6336; linear_combination r6336), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg44
    refine ⟨rho 7921, rho 7922, rho 7923, rho 7924, rho 7925,
      (by unfold Seg11.relationRow6337 at r6337; linear_combination r6337), (by unfold Seg11.relationRow6338 at r6338; linear_combination r6338), (by unfold Seg11.relationRow6339 at r6339; linear_combination r6339), (by unfold Seg11.relationRow6340 at r6340; linear_combination r6340), (by unfold Seg11.relationRow6341 at r6341; linear_combination r6341), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg45
    refine ⟨rho 7926, rho 7927, rho 7928, rho 7929, rho 7930,
      (by unfold Seg11.relationRow6342 at r6342; linear_combination r6342), (by unfold Seg11.relationRow6343 at r6343; linear_combination r6343), (by unfold Seg11.relationRow6344 at r6344; linear_combination r6344), (by unfold Seg11.relationRow6345 at r6345; linear_combination r6345), (by unfold Seg11.relationRow6346 at r6346; linear_combination r6346), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg46
    refine ⟨rho 7931, rho 7932, rho 7933, rho 7934, rho 7935,
      (by unfold Seg11.relationRow6347 at r6347; linear_combination r6347), (by unfold Seg11.relationRow6348 at r6348; linear_combination r6348), (by unfold Seg11.relationRow6349 at r6349; linear_combination r6349), (by unfold Seg11.relationRow6350 at r6350; linear_combination r6350), (by unfold Seg11.relationRow6351 at r6351; linear_combination r6351), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg47
    refine ⟨rho 7936, rho 7937, rho 7938, rho 7939, rho 7940,
      (by unfold Seg11.relationRow6352 at r6352; linear_combination r6352), (by unfold Seg11.relationRow6353 at r6353; linear_combination r6353), (by unfold Seg11.relationRow6354 at r6354; linear_combination r6354), (by unfold Seg11.relationRow6355 at r6355; linear_combination r6355), (by unfold Seg11.relationRow6356 at r6356; linear_combination r6356), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg48
    refine ⟨rho 7941, rho 7942, rho 7943, rho 7944, rho 7945,
      (by unfold Seg11.relationRow6357 at r6357; linear_combination r6357), (by unfold Seg11.relationRow6358 at r6358; linear_combination r6358), (by unfold Seg11.relationRow6359 at r6359; linear_combination r6359), (by unfold Seg11.relationRow6360 at r6360; linear_combination r6360), (by unfold Seg11.relationRow6361 at r6361; linear_combination r6361), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg49
    refine ⟨rho 7946, rho 7947, rho 7948, rho 7949, rho 7950,
      (by unfold Seg11.relationRow6362 at r6362; linear_combination r6362), (by unfold Seg11.relationRow6363 at r6363; linear_combination r6363), (by unfold Seg11.relationRow6364 at r6364; linear_combination r6364), (by unfold Seg11.relationRow6365 at r6365; linear_combination r6365), (by unfold Seg11.relationRow6366 at r6366; linear_combination r6366), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg50
    refine ⟨rho 7951, rho 7952, rho 7953, rho 7954, rho 7955,
      (by unfold Seg11.relationRow6367 at r6367; linear_combination r6367), (by unfold Seg11.relationRow6368 at r6368; linear_combination r6368), (by unfold Seg11.relationRow6369 at r6369; linear_combination r6369), (by unfold Seg11.relationRow6370 at r6370; linear_combination r6370), (by unfold Seg11.relationRow6371 at r6371; linear_combination r6371), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg51
    refine ⟨rho 7956, rho 7957, rho 7958, rho 7959, rho 7960,
      (by unfold Seg11.relationRow6372 at r6372; linear_combination r6372), (by unfold Seg11.relationRow6373 at r6373; linear_combination r6373), (by unfold Seg11.relationRow6374 at r6374; linear_combination r6374), (by unfold Seg11.relationRow6375 at r6375; linear_combination r6375), (by unfold Seg11.relationRow6376 at r6376; linear_combination r6376), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg52
    refine ⟨rho 7961, rho 7962, rho 7963, rho 7964, rho 7965,
      (by unfold Seg11.relationRow6377 at r6377; linear_combination r6377), (by unfold Seg11.relationRow6378 at r6378; linear_combination r6378), (by unfold Seg11.relationRow6379 at r6379; linear_combination r6379), (by unfold Seg11.relationRow6380 at r6380; linear_combination r6380), (by unfold Seg11.relationRow6381 at r6381; linear_combination r6381), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg53
    refine ⟨rho 7966, rho 7967, rho 7968, rho 7969, rho 7970,
      (by unfold Seg11.relationRow6382 at r6382; linear_combination r6382), (by unfold Seg11.relationRow6383 at r6383; linear_combination r6383), (by unfold Seg11.relationRow6384 at r6384; linear_combination r6384), (by unfold Seg11.relationRow6385 at r6385; linear_combination r6385), (by unfold Seg11.relationRow6386 at r6386; linear_combination r6386), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg54
    refine ⟨rho 7971, rho 7972, rho 7973, rho 7974, rho 7975,
      (by unfold Seg11.relationRow6387 at r6387; linear_combination r6387), (by unfold Seg11.relationRow6388 at r6388; linear_combination r6388), (by unfold Seg11.relationRow6389 at r6389; linear_combination r6389), (by unfold Seg11.relationRow6390 at r6390; linear_combination r6390), (by unfold Seg11.relationRow6391 at r6391; linear_combination r6391), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg55
    refine ⟨rho 7976, rho 7977, rho 7978, rho 7979, rho 7980,
      (by unfold Seg11.relationRow6392 at r6392; linear_combination r6392), (by unfold Seg11.relationRow6393 at r6393; linear_combination r6393), (by unfold Seg11.relationRow6394 at r6394; linear_combination r6394), (by unfold Seg11.relationRow6395 at r6395; linear_combination r6395), (by unfold Seg11.relationRow6396 at r6396; linear_combination r6396), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg56
    refine ⟨rho 7981, rho 7982, rho 7983, rho 7984, rho 7985,
      (by unfold Seg11.relationRow6397 at r6397; linear_combination r6397), (by unfold Seg11.relationRow6398 at r6398; linear_combination r6398), (by unfold Seg11.relationRow6399 at r6399; linear_combination r6399), (by unfold Seg11.relationRow6400 at r6400; linear_combination r6400), (by unfold Seg11.relationRow6401 at r6401; linear_combination r6401), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg57
    refine ⟨rho 7986, rho 7987, rho 7988, rho 7989, rho 7990,
      (by unfold Seg11.relationRow6402 at r6402; linear_combination r6402), (by unfold Seg11.relationRow6403 at r6403; linear_combination r6403), (by unfold Seg11.relationRow6404 at r6404; linear_combination r6404), (by unfold Seg11.relationRow6405 at r6405; linear_combination r6405), (by unfold Seg11.relationRow6406 at r6406; linear_combination r6406), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg58
    refine ⟨rho 7991, rho 7992, rho 7993, rho 7994, rho 7995,
      (by unfold Seg11.relationRow6407 at r6407; linear_combination r6407), (by unfold Seg11.relationRow6408 at r6408; linear_combination r6408), (by unfold Seg11.relationRow6409 at r6409; linear_combination r6409), (by unfold Seg11.relationRow6410 at r6410; linear_combination r6410), (by unfold Seg11.relationRow6411 at r6411; linear_combination r6411), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg59
    refine ⟨rho 7996, rho 7997, rho 7998, rho 7999, rho 8000,
      (by unfold Seg11.relationRow6412 at r6412; linear_combination r6412), (by unfold Seg11.relationRow6413 at r6413; linear_combination r6413), (by unfold Seg11.relationRow6414 at r6414; linear_combination r6414), (by unfold Seg11.relationRow6415 at r6415; linear_combination r6415), (by unfold Seg11.relationRow6416 at r6416; linear_combination r6416), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg60
    refine ⟨rho 8001, rho 8002, rho 8003, rho 8004, rho 8005,
      (by unfold Seg11.relationRow6417 at r6417; linear_combination r6417), (by unfold Seg11.relationRow6418 at r6418; linear_combination r6418), (by unfold Seg11.relationRow6419 at r6419; linear_combination r6419), (by unfold Seg11.relationRow6420 at r6420; linear_combination r6420), (by unfold Seg11.relationRow6421 at r6421; linear_combination r6421), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg61
    refine ⟨rho 8006, rho 8007, rho 8008, rho 8009, rho 8010,
      (by unfold Seg11.relationRow6422 at r6422; linear_combination r6422), (by unfold Seg11.relationRow6423 at r6423; linear_combination r6423), (by unfold Seg11.relationRow6424 at r6424; linear_combination r6424), (by unfold Seg11.relationRow6425 at r6425; linear_combination r6425), (by unfold Seg11.relationRow6426 at r6426; linear_combination r6426), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg62
    refine ⟨rho 8011, rho 8012, rho 8013, rho 8014, rho 8015,
      (by unfold Seg11.relationRow6427 at r6427; linear_combination r6427), (by unfold Seg11.relationRow6428 at r6428; linear_combination r6428), (by unfold Seg11.relationRow6429 at r6429; linear_combination r6429), (by unfold Seg11.relationRow6430 at r6430; linear_combination r6430), (by unfold Seg11.relationRow6431 at r6431; linear_combination r6431), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg63
    refine ⟨rho 8016, rho 8017, rho 8018, rho 8019, rho 8020,
      (by unfold Seg11.relationRow6432 at r6432; linear_combination r6432), (by unfold Seg11.relationRow6433 at r6433; linear_combination r6433), (by unfold Seg11.relationRow6434 at r6434; linear_combination r6434), (by unfold Seg11.relationRow6435 at r6435; linear_combination r6435), (by unfold Seg11.relationRow6436 at r6436; linear_combination r6436), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg64
    refine ⟨rho 8021, rho 8022, rho 8023, rho 8024, rho 8025,
      (by unfold Seg11.relationRow6437 at r6437; linear_combination r6437), (by unfold Seg11.relationRow6438 at r6438; linear_combination r6438), (by unfold Seg11.relationRow6439 at r6439; linear_combination r6439), (by unfold Seg11.relationRow6440 at r6440; linear_combination r6440), (by unfold Seg11.relationRow6441 at r6441; linear_combination r6441), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg65
    refine ⟨rho 8026, rho 8027, rho 8028, rho 8029, rho 8030,
      (by unfold Seg11.relationRow6442 at r6442; linear_combination r6442), (by unfold Seg11.relationRow6443 at r6443; linear_combination r6443), (by unfold Seg11.relationRow6444 at r6444; linear_combination r6444), (by unfold Seg11.relationRow6445 at r6445; linear_combination r6445), (by unfold Seg11.relationRow6446 at r6446; linear_combination r6446), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg66
    refine ⟨rho 8031, rho 8032, rho 8033, rho 8034, rho 8035,
      (by unfold Seg11.relationRow6447 at r6447; linear_combination r6447), (by unfold Seg11.relationRow6448 at r6448; linear_combination r6448), (by unfold Seg11.relationRow6449 at r6449; linear_combination r6449), (by unfold Seg11.relationRow6450 at r6450; linear_combination r6450), (by unfold Seg11.relationRow6451 at r6451; linear_combination r6451), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg67
    refine ⟨rho 8036, rho 8037, rho 8038, rho 8039, rho 8040,
      (by unfold Seg11.relationRow6452 at r6452; linear_combination r6452), (by unfold Seg11.relationRow6453 at r6453; linear_combination r6453), (by unfold Seg11.relationRow6454 at r6454; linear_combination r6454), (by unfold Seg11.relationRow6455 at r6455; linear_combination r6455), (by unfold Seg11.relationRow6456 at r6456; linear_combination r6456), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg68
    refine ⟨rho 8041, rho 8042, rho 8043, rho 8044, rho 8045,
      (by unfold Seg11.relationRow6457 at r6457; linear_combination r6457), (by unfold Seg11.relationRow6458 at r6458; linear_combination r6458), (by unfold Seg11.relationRow6459 at r6459; linear_combination r6459), (by unfold Seg11.relationRow6460 at r6460; linear_combination r6460), (by unfold Seg11.relationRow6461 at r6461; linear_combination r6461), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg69
    refine ⟨rho 8046, rho 8047, rho 8048, rho 8049, rho 8050,
      (by unfold Seg11.relationRow6462 at r6462; linear_combination r6462), (by unfold Seg11.relationRow6463 at r6463; linear_combination r6463), (by unfold Seg11.relationRow6464 at r6464; linear_combination r6464), (by unfold Seg11.relationRow6465 at r6465; linear_combination r6465), (by unfold Seg11.relationRow6466 at r6466; linear_combination r6466), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.relation_sound_permSpec (rho 46) (rho 47) (rho 48) (rho 7695) (rho 7696) (rho 7697) (rho 7698) (rho 7699) (rho 7700) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.tctNode17DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) + (17 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg11ScpNode16Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

