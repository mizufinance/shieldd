import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode16.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node16_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode16Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (17 : Seg13.F))
        (rho 46 + rho 13260) (rho 47 + rho 13261 + rho 13262)
        (rho 47 + rho 13263 + rho 13264) (rho 48 + rho 13265) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6117, r6118, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg13.relationPart77 at p77
  rcases p77 with ⟨r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg13.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg13.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340, r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353, r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366, r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379, r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392, r6393, r6394, r6395, r6396, r6397, r6398, r6399⟩
  unfold Seg13.relationPart80 at p80
  rcases p80 with ⟨r6400, r6401, r6402, r6403, r6404, r6405, r6406, r6407, r6408, r6409, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418, r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431, r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444, r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, r6453, r6454, r6455, r6456, r6457, r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.relation (rho 46) (rho 47) (rho 48) (rho 13260) (rho 13261) (rho 13262) (rho 13263) (rho 13264) (rho 13265)
      (fun o0 o1 o2 o3 o4 => o0 = rho 13595 ∧ o1 = rho 13600 ∧ o2 = rho 13605 ∧ o3 = rho 13610 ∧ o4 = rho 13615) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg0
    refine ⟨rho 13266, rho 13267, rho 13268, rho 13269, rho 13270,
      (by unfold Seg13.relationRow6117 at r6117; linear_combination r6117), (by unfold Seg13.relationRow6118 at r6118; linear_combination r6118), (by unfold Seg13.relationRow6119 at r6119; linear_combination r6119), (by unfold Seg13.relationRow6120 at r6120; linear_combination r6120), (by unfold Seg13.relationRow6121 at r6121; linear_combination r6121), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg1
    refine ⟨rho 13271, rho 13272, rho 13273, rho 13274, rho 13275,
      (by unfold Seg13.relationRow6122 at r6122; linear_combination r6122), (by unfold Seg13.relationRow6123 at r6123; linear_combination r6123), (by unfold Seg13.relationRow6124 at r6124; linear_combination r6124), (by unfold Seg13.relationRow6125 at r6125; linear_combination r6125), (by unfold Seg13.relationRow6126 at r6126; linear_combination r6126), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg2
    refine ⟨rho 13276, rho 13277, rho 13278, rho 13279, rho 13280,
      (by unfold Seg13.relationRow6127 at r6127; linear_combination r6127), (by unfold Seg13.relationRow6128 at r6128; linear_combination r6128), (by unfold Seg13.relationRow6129 at r6129; linear_combination r6129), (by unfold Seg13.relationRow6130 at r6130; linear_combination r6130), (by unfold Seg13.relationRow6131 at r6131; linear_combination r6131), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg3
    refine ⟨rho 13281, rho 13282, rho 13283, rho 13284, rho 13285,
      (by unfold Seg13.relationRow6132 at r6132; linear_combination r6132), (by unfold Seg13.relationRow6133 at r6133; linear_combination r6133), (by unfold Seg13.relationRow6134 at r6134; linear_combination r6134), (by unfold Seg13.relationRow6135 at r6135; linear_combination r6135), (by unfold Seg13.relationRow6136 at r6136; linear_combination r6136), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg4
    refine ⟨rho 13286, rho 13287, rho 13288, rho 13289, rho 13290,
      (by unfold Seg13.relationRow6137 at r6137; linear_combination r6137), (by unfold Seg13.relationRow6138 at r6138; linear_combination r6138), (by unfold Seg13.relationRow6139 at r6139; linear_combination r6139), (by unfold Seg13.relationRow6140 at r6140; linear_combination r6140), (by unfold Seg13.relationRow6141 at r6141; linear_combination r6141), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg5
    refine ⟨rho 13291, rho 13292, rho 13293, rho 13294, rho 13295,
      (by unfold Seg13.relationRow6142 at r6142; linear_combination r6142), (by unfold Seg13.relationRow6143 at r6143; linear_combination r6143), (by unfold Seg13.relationRow6144 at r6144; linear_combination r6144), (by unfold Seg13.relationRow6145 at r6145; linear_combination r6145), (by unfold Seg13.relationRow6146 at r6146; linear_combination r6146), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg6
    refine ⟨rho 13296, rho 13297, rho 13298, rho 13299, rho 13300,
      (by unfold Seg13.relationRow6147 at r6147; linear_combination r6147), (by unfold Seg13.relationRow6148 at r6148; linear_combination r6148), (by unfold Seg13.relationRow6149 at r6149; linear_combination r6149), (by unfold Seg13.relationRow6150 at r6150; linear_combination r6150), (by unfold Seg13.relationRow6151 at r6151; linear_combination r6151), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg7
    refine ⟨rho 13301, rho 13302, rho 13303, rho 13304, rho 13305,
      (by unfold Seg13.relationRow6152 at r6152; linear_combination r6152), (by unfold Seg13.relationRow6153 at r6153; linear_combination r6153), (by unfold Seg13.relationRow6154 at r6154; linear_combination r6154), (by unfold Seg13.relationRow6155 at r6155; linear_combination r6155), (by unfold Seg13.relationRow6156 at r6156; linear_combination r6156), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg8
    refine ⟨rho 13306, rho 13307, rho 13308, rho 13309, rho 13310,
      (by unfold Seg13.relationRow6157 at r6157; linear_combination r6157), (by unfold Seg13.relationRow6158 at r6158; linear_combination r6158), (by unfold Seg13.relationRow6159 at r6159; linear_combination r6159), (by unfold Seg13.relationRow6160 at r6160; linear_combination r6160), (by unfold Seg13.relationRow6161 at r6161; linear_combination r6161), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg9
    refine ⟨rho 13311, rho 13312, rho 13313, rho 13314, rho 13315,
      (by unfold Seg13.relationRow6162 at r6162; linear_combination r6162), (by unfold Seg13.relationRow6163 at r6163; linear_combination r6163), (by unfold Seg13.relationRow6164 at r6164; linear_combination r6164), (by unfold Seg13.relationRow6165 at r6165; linear_combination r6165), (by unfold Seg13.relationRow6166 at r6166; linear_combination r6166), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg10
    refine ⟨rho 13316, rho 13317, rho 13318, rho 13319, rho 13320,
      (by unfold Seg13.relationRow6167 at r6167; linear_combination r6167), (by unfold Seg13.relationRow6168 at r6168; linear_combination r6168), (by unfold Seg13.relationRow6169 at r6169; linear_combination r6169), (by unfold Seg13.relationRow6170 at r6170; linear_combination r6170), (by unfold Seg13.relationRow6171 at r6171; linear_combination r6171), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg11
    refine ⟨rho 13321, rho 13322, rho 13323, rho 13324, rho 13325,
      (by unfold Seg13.relationRow6172 at r6172; linear_combination r6172), (by unfold Seg13.relationRow6173 at r6173; linear_combination r6173), (by unfold Seg13.relationRow6174 at r6174; linear_combination r6174), (by unfold Seg13.relationRow6175 at r6175; linear_combination r6175), (by unfold Seg13.relationRow6176 at r6176; linear_combination r6176), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg12
    refine ⟨rho 13326, rho 13327, rho 13328, rho 13329, rho 13330,
      (by unfold Seg13.relationRow6177 at r6177; linear_combination r6177), (by unfold Seg13.relationRow6178 at r6178; linear_combination r6178), (by unfold Seg13.relationRow6179 at r6179; linear_combination r6179), (by unfold Seg13.relationRow6180 at r6180; linear_combination r6180), (by unfold Seg13.relationRow6181 at r6181; linear_combination r6181), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg13
    refine ⟨rho 13331, rho 13332, rho 13333, rho 13334, rho 13335,
      (by unfold Seg13.relationRow6182 at r6182; linear_combination r6182), (by unfold Seg13.relationRow6183 at r6183; linear_combination r6183), (by unfold Seg13.relationRow6184 at r6184; linear_combination r6184), (by unfold Seg13.relationRow6185 at r6185; linear_combination r6185), (by unfold Seg13.relationRow6186 at r6186; linear_combination r6186), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg14
    refine ⟨rho 13336, rho 13337, rho 13338, rho 13339, rho 13340,
      (by unfold Seg13.relationRow6187 at r6187; linear_combination r6187), (by unfold Seg13.relationRow6188 at r6188; linear_combination r6188), (by unfold Seg13.relationRow6189 at r6189; linear_combination r6189), (by unfold Seg13.relationRow6190 at r6190; linear_combination r6190), (by unfold Seg13.relationRow6191 at r6191; linear_combination r6191), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg15
    refine ⟨rho 13341, rho 13342, rho 13343, rho 13344, rho 13345,
      (by unfold Seg13.relationRow6192 at r6192; linear_combination r6192), (by unfold Seg13.relationRow6193 at r6193; linear_combination r6193), (by unfold Seg13.relationRow6194 at r6194; linear_combination r6194), (by unfold Seg13.relationRow6195 at r6195; linear_combination r6195), (by unfold Seg13.relationRow6196 at r6196; linear_combination r6196), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg16
    refine ⟨rho 13346, rho 13347, rho 13348, rho 13349, rho 13350,
      (by unfold Seg13.relationRow6197 at r6197; linear_combination r6197), (by unfold Seg13.relationRow6198 at r6198; linear_combination r6198), (by unfold Seg13.relationRow6199 at r6199; linear_combination r6199), (by unfold Seg13.relationRow6200 at r6200; linear_combination r6200), (by unfold Seg13.relationRow6201 at r6201; linear_combination r6201), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg17
    refine ⟨rho 13351, rho 13352, rho 13353, rho 13354, rho 13355,
      (by unfold Seg13.relationRow6202 at r6202; linear_combination r6202), (by unfold Seg13.relationRow6203 at r6203; linear_combination r6203), (by unfold Seg13.relationRow6204 at r6204; linear_combination r6204), (by unfold Seg13.relationRow6205 at r6205; linear_combination r6205), (by unfold Seg13.relationRow6206 at r6206; linear_combination r6206), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg18
    refine ⟨rho 13356, rho 13357, rho 13358, rho 13359, rho 13360,
      (by unfold Seg13.relationRow6207 at r6207; linear_combination r6207), (by unfold Seg13.relationRow6208 at r6208; linear_combination r6208), (by unfold Seg13.relationRow6209 at r6209; linear_combination r6209), (by unfold Seg13.relationRow6210 at r6210; linear_combination r6210), (by unfold Seg13.relationRow6211 at r6211; linear_combination r6211), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg19
    refine ⟨rho 13361, rho 13362, rho 13363, rho 13364, rho 13365,
      (by unfold Seg13.relationRow6212 at r6212; linear_combination r6212), (by unfold Seg13.relationRow6213 at r6213; linear_combination r6213), (by unfold Seg13.relationRow6214 at r6214; linear_combination r6214), (by unfold Seg13.relationRow6215 at r6215; linear_combination r6215), (by unfold Seg13.relationRow6216 at r6216; linear_combination r6216), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg20
    refine ⟨rho 13366, rho 13367, rho 13368, rho 13369, rho 13370,
      (by unfold Seg13.relationRow6217 at r6217; linear_combination r6217), (by unfold Seg13.relationRow6218 at r6218; linear_combination r6218), (by unfold Seg13.relationRow6219 at r6219; linear_combination r6219), (by unfold Seg13.relationRow6220 at r6220; linear_combination r6220), (by unfold Seg13.relationRow6221 at r6221; linear_combination r6221), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg21
    refine ⟨rho 13371, rho 13372, rho 13373, rho 13374, rho 13375,
      (by unfold Seg13.relationRow6222 at r6222; linear_combination r6222), (by unfold Seg13.relationRow6223 at r6223; linear_combination r6223), (by unfold Seg13.relationRow6224 at r6224; linear_combination r6224), (by unfold Seg13.relationRow6225 at r6225; linear_combination r6225), (by unfold Seg13.relationRow6226 at r6226; linear_combination r6226), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg22
    refine ⟨rho 13376, rho 13377, rho 13378, rho 13379, rho 13380,
      (by unfold Seg13.relationRow6227 at r6227; linear_combination r6227), (by unfold Seg13.relationRow6228 at r6228; linear_combination r6228), (by unfold Seg13.relationRow6229 at r6229; linear_combination r6229), (by unfold Seg13.relationRow6230 at r6230; linear_combination r6230), (by unfold Seg13.relationRow6231 at r6231; linear_combination r6231), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg23
    refine ⟨rho 13381, rho 13382, rho 13383, rho 13384, rho 13385,
      (by unfold Seg13.relationRow6232 at r6232; linear_combination r6232), (by unfold Seg13.relationRow6233 at r6233; linear_combination r6233), (by unfold Seg13.relationRow6234 at r6234; linear_combination r6234), (by unfold Seg13.relationRow6235 at r6235; linear_combination r6235), (by unfold Seg13.relationRow6236 at r6236; linear_combination r6236), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg24
    refine ⟨rho 13386, rho 13387, rho 13388, rho 13389, rho 13390,
      (by unfold Seg13.relationRow6237 at r6237; linear_combination r6237), (by unfold Seg13.relationRow6238 at r6238; linear_combination r6238), (by unfold Seg13.relationRow6239 at r6239; linear_combination r6239), (by unfold Seg13.relationRow6240 at r6240; linear_combination r6240), (by unfold Seg13.relationRow6241 at r6241; linear_combination r6241), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg25
    refine ⟨rho 13391, rho 13392, rho 13393, rho 13394, rho 13395,
      (by unfold Seg13.relationRow6242 at r6242; linear_combination r6242), (by unfold Seg13.relationRow6243 at r6243; linear_combination r6243), (by unfold Seg13.relationRow6244 at r6244; linear_combination r6244), (by unfold Seg13.relationRow6245 at r6245; linear_combination r6245), (by unfold Seg13.relationRow6246 at r6246; linear_combination r6246), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg26
    refine ⟨rho 13396, rho 13397, rho 13398, rho 13399, rho 13400,
      (by unfold Seg13.relationRow6247 at r6247; linear_combination r6247), (by unfold Seg13.relationRow6248 at r6248; linear_combination r6248), (by unfold Seg13.relationRow6249 at r6249; linear_combination r6249), (by unfold Seg13.relationRow6250 at r6250; linear_combination r6250), (by unfold Seg13.relationRow6251 at r6251; linear_combination r6251), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg27
    refine ⟨rho 13401, rho 13402, rho 13403, rho 13404, rho 13405,
      (by unfold Seg13.relationRow6252 at r6252; linear_combination r6252), (by unfold Seg13.relationRow6253 at r6253; linear_combination r6253), (by unfold Seg13.relationRow6254 at r6254; linear_combination r6254), (by unfold Seg13.relationRow6255 at r6255; linear_combination r6255), (by unfold Seg13.relationRow6256 at r6256; linear_combination r6256), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg28
    refine ⟨rho 13406, rho 13407, rho 13408, rho 13409, rho 13410,
      (by unfold Seg13.relationRow6257 at r6257; linear_combination r6257), (by unfold Seg13.relationRow6258 at r6258; linear_combination r6258), (by unfold Seg13.relationRow6259 at r6259; linear_combination r6259), (by unfold Seg13.relationRow6260 at r6260; linear_combination r6260), (by unfold Seg13.relationRow6261 at r6261; linear_combination r6261), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg29
    refine ⟨rho 13411, rho 13412, rho 13413, rho 13414, rho 13415,
      (by unfold Seg13.relationRow6262 at r6262; linear_combination r6262), (by unfold Seg13.relationRow6263 at r6263; linear_combination r6263), (by unfold Seg13.relationRow6264 at r6264; linear_combination r6264), (by unfold Seg13.relationRow6265 at r6265; linear_combination r6265), (by unfold Seg13.relationRow6266 at r6266; linear_combination r6266), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg30
    refine ⟨rho 13416, rho 13417, rho 13418, rho 13419, rho 13420,
      (by unfold Seg13.relationRow6267 at r6267; linear_combination r6267), (by unfold Seg13.relationRow6268 at r6268; linear_combination r6268), (by unfold Seg13.relationRow6269 at r6269; linear_combination r6269), (by unfold Seg13.relationRow6270 at r6270; linear_combination r6270), (by unfold Seg13.relationRow6271 at r6271; linear_combination r6271), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg31
    refine ⟨rho 13421, rho 13422, rho 13423, rho 13424, rho 13425,
      (by unfold Seg13.relationRow6272 at r6272; linear_combination r6272), (by unfold Seg13.relationRow6273 at r6273; linear_combination r6273), (by unfold Seg13.relationRow6274 at r6274; linear_combination r6274), (by unfold Seg13.relationRow6275 at r6275; linear_combination r6275), (by unfold Seg13.relationRow6276 at r6276; linear_combination r6276), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg32
    refine ⟨rho 13426, rho 13427, rho 13428, rho 13429, rho 13430,
      (by unfold Seg13.relationRow6277 at r6277; linear_combination r6277), (by unfold Seg13.relationRow6278 at r6278; linear_combination r6278), (by unfold Seg13.relationRow6279 at r6279; linear_combination r6279), (by unfold Seg13.relationRow6280 at r6280; linear_combination r6280), (by unfold Seg13.relationRow6281 at r6281; linear_combination r6281), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg33
    refine ⟨rho 13431, rho 13432, rho 13433, rho 13434, rho 13435,
      (by unfold Seg13.relationRow6282 at r6282; linear_combination r6282), (by unfold Seg13.relationRow6283 at r6283; linear_combination r6283), (by unfold Seg13.relationRow6284 at r6284; linear_combination r6284), (by unfold Seg13.relationRow6285 at r6285; linear_combination r6285), (by unfold Seg13.relationRow6286 at r6286; linear_combination r6286), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg34
    refine ⟨rho 13436, rho 13437, rho 13438, rho 13439, rho 13440,
      (by unfold Seg13.relationRow6287 at r6287; linear_combination r6287), (by unfold Seg13.relationRow6288 at r6288; linear_combination r6288), (by unfold Seg13.relationRow6289 at r6289; linear_combination r6289), (by unfold Seg13.relationRow6290 at r6290; linear_combination r6290), (by unfold Seg13.relationRow6291 at r6291; linear_combination r6291), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg35
    refine ⟨rho 13441, rho 13442, rho 13443, rho 13444, rho 13445,
      (by unfold Seg13.relationRow6292 at r6292; linear_combination r6292), (by unfold Seg13.relationRow6293 at r6293; linear_combination r6293), (by unfold Seg13.relationRow6294 at r6294; linear_combination r6294), (by unfold Seg13.relationRow6295 at r6295; linear_combination r6295), (by unfold Seg13.relationRow6296 at r6296; linear_combination r6296), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg36
    refine ⟨rho 13446, rho 13447, rho 13448, rho 13449, rho 13450,
      (by unfold Seg13.relationRow6297 at r6297; linear_combination r6297), (by unfold Seg13.relationRow6298 at r6298; linear_combination r6298), (by unfold Seg13.relationRow6299 at r6299; linear_combination r6299), (by unfold Seg13.relationRow6300 at r6300; linear_combination r6300), (by unfold Seg13.relationRow6301 at r6301; linear_combination r6301), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg37
    refine ⟨rho 13451, rho 13452, rho 13453, rho 13454, rho 13455,
      (by unfold Seg13.relationRow6302 at r6302; linear_combination r6302), (by unfold Seg13.relationRow6303 at r6303; linear_combination r6303), (by unfold Seg13.relationRow6304 at r6304; linear_combination r6304), (by unfold Seg13.relationRow6305 at r6305; linear_combination r6305), (by unfold Seg13.relationRow6306 at r6306; linear_combination r6306), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg38
    refine ⟨rho 13456, rho 13457, rho 13458, rho 13459, rho 13460,
      (by unfold Seg13.relationRow6307 at r6307; linear_combination r6307), (by unfold Seg13.relationRow6308 at r6308; linear_combination r6308), (by unfold Seg13.relationRow6309 at r6309; linear_combination r6309), (by unfold Seg13.relationRow6310 at r6310; linear_combination r6310), (by unfold Seg13.relationRow6311 at r6311; linear_combination r6311), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg39
    refine ⟨rho 13461, rho 13462, rho 13463, rho 13464, rho 13465,
      (by unfold Seg13.relationRow6312 at r6312; linear_combination r6312), (by unfold Seg13.relationRow6313 at r6313; linear_combination r6313), (by unfold Seg13.relationRow6314 at r6314; linear_combination r6314), (by unfold Seg13.relationRow6315 at r6315; linear_combination r6315), (by unfold Seg13.relationRow6316 at r6316; linear_combination r6316), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg40
    refine ⟨rho 13466, rho 13467, rho 13468, rho 13469, rho 13470,
      (by unfold Seg13.relationRow6317 at r6317; linear_combination r6317), (by unfold Seg13.relationRow6318 at r6318; linear_combination r6318), (by unfold Seg13.relationRow6319 at r6319; linear_combination r6319), (by unfold Seg13.relationRow6320 at r6320; linear_combination r6320), (by unfold Seg13.relationRow6321 at r6321; linear_combination r6321), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg41
    refine ⟨rho 13471, rho 13472, rho 13473, rho 13474, rho 13475,
      (by unfold Seg13.relationRow6322 at r6322; linear_combination r6322), (by unfold Seg13.relationRow6323 at r6323; linear_combination r6323), (by unfold Seg13.relationRow6324 at r6324; linear_combination r6324), (by unfold Seg13.relationRow6325 at r6325; linear_combination r6325), (by unfold Seg13.relationRow6326 at r6326; linear_combination r6326), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg42
    refine ⟨rho 13476, rho 13477, rho 13478, rho 13479, rho 13480,
      (by unfold Seg13.relationRow6327 at r6327; linear_combination r6327), (by unfold Seg13.relationRow6328 at r6328; linear_combination r6328), (by unfold Seg13.relationRow6329 at r6329; linear_combination r6329), (by unfold Seg13.relationRow6330 at r6330; linear_combination r6330), (by unfold Seg13.relationRow6331 at r6331; linear_combination r6331), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg43
    refine ⟨rho 13481, rho 13482, rho 13483, rho 13484, rho 13485,
      (by unfold Seg13.relationRow6332 at r6332; linear_combination r6332), (by unfold Seg13.relationRow6333 at r6333; linear_combination r6333), (by unfold Seg13.relationRow6334 at r6334; linear_combination r6334), (by unfold Seg13.relationRow6335 at r6335; linear_combination r6335), (by unfold Seg13.relationRow6336 at r6336; linear_combination r6336), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg44
    refine ⟨rho 13486, rho 13487, rho 13488, rho 13489, rho 13490,
      (by unfold Seg13.relationRow6337 at r6337; linear_combination r6337), (by unfold Seg13.relationRow6338 at r6338; linear_combination r6338), (by unfold Seg13.relationRow6339 at r6339; linear_combination r6339), (by unfold Seg13.relationRow6340 at r6340; linear_combination r6340), (by unfold Seg13.relationRow6341 at r6341; linear_combination r6341), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg45
    refine ⟨rho 13491, rho 13492, rho 13493, rho 13494, rho 13495,
      (by unfold Seg13.relationRow6342 at r6342; linear_combination r6342), (by unfold Seg13.relationRow6343 at r6343; linear_combination r6343), (by unfold Seg13.relationRow6344 at r6344; linear_combination r6344), (by unfold Seg13.relationRow6345 at r6345; linear_combination r6345), (by unfold Seg13.relationRow6346 at r6346; linear_combination r6346), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg46
    refine ⟨rho 13496, rho 13497, rho 13498, rho 13499, rho 13500,
      (by unfold Seg13.relationRow6347 at r6347; linear_combination r6347), (by unfold Seg13.relationRow6348 at r6348; linear_combination r6348), (by unfold Seg13.relationRow6349 at r6349; linear_combination r6349), (by unfold Seg13.relationRow6350 at r6350; linear_combination r6350), (by unfold Seg13.relationRow6351 at r6351; linear_combination r6351), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg47
    refine ⟨rho 13501, rho 13502, rho 13503, rho 13504, rho 13505,
      (by unfold Seg13.relationRow6352 at r6352; linear_combination r6352), (by unfold Seg13.relationRow6353 at r6353; linear_combination r6353), (by unfold Seg13.relationRow6354 at r6354; linear_combination r6354), (by unfold Seg13.relationRow6355 at r6355; linear_combination r6355), (by unfold Seg13.relationRow6356 at r6356; linear_combination r6356), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg48
    refine ⟨rho 13506, rho 13507, rho 13508, rho 13509, rho 13510,
      (by unfold Seg13.relationRow6357 at r6357; linear_combination r6357), (by unfold Seg13.relationRow6358 at r6358; linear_combination r6358), (by unfold Seg13.relationRow6359 at r6359; linear_combination r6359), (by unfold Seg13.relationRow6360 at r6360; linear_combination r6360), (by unfold Seg13.relationRow6361 at r6361; linear_combination r6361), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg49
    refine ⟨rho 13511, rho 13512, rho 13513, rho 13514, rho 13515,
      (by unfold Seg13.relationRow6362 at r6362; linear_combination r6362), (by unfold Seg13.relationRow6363 at r6363; linear_combination r6363), (by unfold Seg13.relationRow6364 at r6364; linear_combination r6364), (by unfold Seg13.relationRow6365 at r6365; linear_combination r6365), (by unfold Seg13.relationRow6366 at r6366; linear_combination r6366), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg50
    refine ⟨rho 13516, rho 13517, rho 13518, rho 13519, rho 13520,
      (by unfold Seg13.relationRow6367 at r6367; linear_combination r6367), (by unfold Seg13.relationRow6368 at r6368; linear_combination r6368), (by unfold Seg13.relationRow6369 at r6369; linear_combination r6369), (by unfold Seg13.relationRow6370 at r6370; linear_combination r6370), (by unfold Seg13.relationRow6371 at r6371; linear_combination r6371), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg51
    refine ⟨rho 13521, rho 13522, rho 13523, rho 13524, rho 13525,
      (by unfold Seg13.relationRow6372 at r6372; linear_combination r6372), (by unfold Seg13.relationRow6373 at r6373; linear_combination r6373), (by unfold Seg13.relationRow6374 at r6374; linear_combination r6374), (by unfold Seg13.relationRow6375 at r6375; linear_combination r6375), (by unfold Seg13.relationRow6376 at r6376; linear_combination r6376), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg52
    refine ⟨rho 13526, rho 13527, rho 13528, rho 13529, rho 13530,
      (by unfold Seg13.relationRow6377 at r6377; linear_combination r6377), (by unfold Seg13.relationRow6378 at r6378; linear_combination r6378), (by unfold Seg13.relationRow6379 at r6379; linear_combination r6379), (by unfold Seg13.relationRow6380 at r6380; linear_combination r6380), (by unfold Seg13.relationRow6381 at r6381; linear_combination r6381), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg53
    refine ⟨rho 13531, rho 13532, rho 13533, rho 13534, rho 13535,
      (by unfold Seg13.relationRow6382 at r6382; linear_combination r6382), (by unfold Seg13.relationRow6383 at r6383; linear_combination r6383), (by unfold Seg13.relationRow6384 at r6384; linear_combination r6384), (by unfold Seg13.relationRow6385 at r6385; linear_combination r6385), (by unfold Seg13.relationRow6386 at r6386; linear_combination r6386), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg54
    refine ⟨rho 13536, rho 13537, rho 13538, rho 13539, rho 13540,
      (by unfold Seg13.relationRow6387 at r6387; linear_combination r6387), (by unfold Seg13.relationRow6388 at r6388; linear_combination r6388), (by unfold Seg13.relationRow6389 at r6389; linear_combination r6389), (by unfold Seg13.relationRow6390 at r6390; linear_combination r6390), (by unfold Seg13.relationRow6391 at r6391; linear_combination r6391), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg55
    refine ⟨rho 13541, rho 13542, rho 13543, rho 13544, rho 13545,
      (by unfold Seg13.relationRow6392 at r6392; linear_combination r6392), (by unfold Seg13.relationRow6393 at r6393; linear_combination r6393), (by unfold Seg13.relationRow6394 at r6394; linear_combination r6394), (by unfold Seg13.relationRow6395 at r6395; linear_combination r6395), (by unfold Seg13.relationRow6396 at r6396; linear_combination r6396), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg56
    refine ⟨rho 13546, rho 13547, rho 13548, rho 13549, rho 13550,
      (by unfold Seg13.relationRow6397 at r6397; linear_combination r6397), (by unfold Seg13.relationRow6398 at r6398; linear_combination r6398), (by unfold Seg13.relationRow6399 at r6399; linear_combination r6399), (by unfold Seg13.relationRow6400 at r6400; linear_combination r6400), (by unfold Seg13.relationRow6401 at r6401; linear_combination r6401), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg57
    refine ⟨rho 13551, rho 13552, rho 13553, rho 13554, rho 13555,
      (by unfold Seg13.relationRow6402 at r6402; linear_combination r6402), (by unfold Seg13.relationRow6403 at r6403; linear_combination r6403), (by unfold Seg13.relationRow6404 at r6404; linear_combination r6404), (by unfold Seg13.relationRow6405 at r6405; linear_combination r6405), (by unfold Seg13.relationRow6406 at r6406; linear_combination r6406), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg58
    refine ⟨rho 13556, rho 13557, rho 13558, rho 13559, rho 13560,
      (by unfold Seg13.relationRow6407 at r6407; linear_combination r6407), (by unfold Seg13.relationRow6408 at r6408; linear_combination r6408), (by unfold Seg13.relationRow6409 at r6409; linear_combination r6409), (by unfold Seg13.relationRow6410 at r6410; linear_combination r6410), (by unfold Seg13.relationRow6411 at r6411; linear_combination r6411), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg59
    refine ⟨rho 13561, rho 13562, rho 13563, rho 13564, rho 13565,
      (by unfold Seg13.relationRow6412 at r6412; linear_combination r6412), (by unfold Seg13.relationRow6413 at r6413; linear_combination r6413), (by unfold Seg13.relationRow6414 at r6414; linear_combination r6414), (by unfold Seg13.relationRow6415 at r6415; linear_combination r6415), (by unfold Seg13.relationRow6416 at r6416; linear_combination r6416), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg60
    refine ⟨rho 13566, rho 13567, rho 13568, rho 13569, rho 13570,
      (by unfold Seg13.relationRow6417 at r6417; linear_combination r6417), (by unfold Seg13.relationRow6418 at r6418; linear_combination r6418), (by unfold Seg13.relationRow6419 at r6419; linear_combination r6419), (by unfold Seg13.relationRow6420 at r6420; linear_combination r6420), (by unfold Seg13.relationRow6421 at r6421; linear_combination r6421), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg61
    refine ⟨rho 13571, rho 13572, rho 13573, rho 13574, rho 13575,
      (by unfold Seg13.relationRow6422 at r6422; linear_combination r6422), (by unfold Seg13.relationRow6423 at r6423; linear_combination r6423), (by unfold Seg13.relationRow6424 at r6424; linear_combination r6424), (by unfold Seg13.relationRow6425 at r6425; linear_combination r6425), (by unfold Seg13.relationRow6426 at r6426; linear_combination r6426), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg62
    refine ⟨rho 13576, rho 13577, rho 13578, rho 13579, rho 13580,
      (by unfold Seg13.relationRow6427 at r6427; linear_combination r6427), (by unfold Seg13.relationRow6428 at r6428; linear_combination r6428), (by unfold Seg13.relationRow6429 at r6429; linear_combination r6429), (by unfold Seg13.relationRow6430 at r6430; linear_combination r6430), (by unfold Seg13.relationRow6431 at r6431; linear_combination r6431), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg63
    refine ⟨rho 13581, rho 13582, rho 13583, rho 13584, rho 13585,
      (by unfold Seg13.relationRow6432 at r6432; linear_combination r6432), (by unfold Seg13.relationRow6433 at r6433; linear_combination r6433), (by unfold Seg13.relationRow6434 at r6434; linear_combination r6434), (by unfold Seg13.relationRow6435 at r6435; linear_combination r6435), (by unfold Seg13.relationRow6436 at r6436; linear_combination r6436), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg64
    refine ⟨rho 13586, rho 13587, rho 13588, rho 13589, rho 13590,
      (by unfold Seg13.relationRow6437 at r6437; linear_combination r6437), (by unfold Seg13.relationRow6438 at r6438; linear_combination r6438), (by unfold Seg13.relationRow6439 at r6439; linear_combination r6439), (by unfold Seg13.relationRow6440 at r6440; linear_combination r6440), (by unfold Seg13.relationRow6441 at r6441; linear_combination r6441), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg65
    refine ⟨rho 13591, rho 13592, rho 13593, rho 13594, rho 13595,
      (by unfold Seg13.relationRow6442 at r6442; linear_combination r6442), (by unfold Seg13.relationRow6443 at r6443; linear_combination r6443), (by unfold Seg13.relationRow6444 at r6444; linear_combination r6444), (by unfold Seg13.relationRow6445 at r6445; linear_combination r6445), (by unfold Seg13.relationRow6446 at r6446; linear_combination r6446), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg66
    refine ⟨rho 13596, rho 13597, rho 13598, rho 13599, rho 13600,
      (by unfold Seg13.relationRow6447 at r6447; linear_combination r6447), (by unfold Seg13.relationRow6448 at r6448; linear_combination r6448), (by unfold Seg13.relationRow6449 at r6449; linear_combination r6449), (by unfold Seg13.relationRow6450 at r6450; linear_combination r6450), (by unfold Seg13.relationRow6451 at r6451; linear_combination r6451), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg67
    refine ⟨rho 13601, rho 13602, rho 13603, rho 13604, rho 13605,
      (by unfold Seg13.relationRow6452 at r6452; linear_combination r6452), (by unfold Seg13.relationRow6453 at r6453; linear_combination r6453), (by unfold Seg13.relationRow6454 at r6454; linear_combination r6454), (by unfold Seg13.relationRow6455 at r6455; linear_combination r6455), (by unfold Seg13.relationRow6456 at r6456; linear_combination r6456), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg68
    refine ⟨rho 13606, rho 13607, rho 13608, rho 13609, rho 13610,
      (by unfold Seg13.relationRow6457 at r6457; linear_combination r6457), (by unfold Seg13.relationRow6458 at r6458; linear_combination r6458), (by unfold Seg13.relationRow6459 at r6459; linear_combination r6459), (by unfold Seg13.relationRow6460 at r6460; linear_combination r6460), (by unfold Seg13.relationRow6461 at r6461; linear_combination r6461), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg69
    refine ⟨rho 13611, rho 13612, rho 13613, rho 13614, rho 13615,
      (by unfold Seg13.relationRow6462 at r6462; linear_combination r6462), (by unfold Seg13.relationRow6463 at r6463; linear_combination r6463), (by unfold Seg13.relationRow6464 at r6464; linear_combination r6464), (by unfold Seg13.relationRow6465 at r6465; linear_combination r6465), (by unfold Seg13.relationRow6466 at r6466; linear_combination r6466), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.relation_sound_permSpec (rho 46) (rho 47) (rho 48) (rho 13260) (rho 13261) (rho 13262) (rho 13263) (rho 13264) (rho 13265) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.tctNode17DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) + (17 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode16Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

