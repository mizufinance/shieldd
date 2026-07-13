import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode16.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

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
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg0
    refine ⟨rho 25447, rho 25448, rho 25449, rho 25450, rho 25451,
      (by unfold Seg28.relationRow6117 at r6117; linear_combination r6117), (by unfold Seg28.relationRow6118 at r6118; linear_combination r6118), (by unfold Seg28.relationRow6119 at r6119; linear_combination r6119), (by unfold Seg28.relationRow6120 at r6120; linear_combination r6120), (by unfold Seg28.relationRow6121 at r6121; linear_combination r6121), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg1
    refine ⟨rho 25452, rho 25453, rho 25454, rho 25455, rho 25456,
      (by unfold Seg28.relationRow6122 at r6122; linear_combination r6122), (by unfold Seg28.relationRow6123 at r6123; linear_combination r6123), (by unfold Seg28.relationRow6124 at r6124; linear_combination r6124), (by unfold Seg28.relationRow6125 at r6125; linear_combination r6125), (by unfold Seg28.relationRow6126 at r6126; linear_combination r6126), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg2
    refine ⟨rho 25457, rho 25458, rho 25459, rho 25460, rho 25461,
      (by unfold Seg28.relationRow6127 at r6127; linear_combination r6127), (by unfold Seg28.relationRow6128 at r6128; linear_combination r6128), (by unfold Seg28.relationRow6129 at r6129; linear_combination r6129), (by unfold Seg28.relationRow6130 at r6130; linear_combination r6130), (by unfold Seg28.relationRow6131 at r6131; linear_combination r6131), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg3
    refine ⟨rho 25462, rho 25463, rho 25464, rho 25465, rho 25466,
      (by unfold Seg28.relationRow6132 at r6132; linear_combination r6132), (by unfold Seg28.relationRow6133 at r6133; linear_combination r6133), (by unfold Seg28.relationRow6134 at r6134; linear_combination r6134), (by unfold Seg28.relationRow6135 at r6135; linear_combination r6135), (by unfold Seg28.relationRow6136 at r6136; linear_combination r6136), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg4
    refine ⟨rho 25467, rho 25468, rho 25469, rho 25470, rho 25471,
      (by unfold Seg28.relationRow6137 at r6137; linear_combination r6137), (by unfold Seg28.relationRow6138 at r6138; linear_combination r6138), (by unfold Seg28.relationRow6139 at r6139; linear_combination r6139), (by unfold Seg28.relationRow6140 at r6140; linear_combination r6140), (by unfold Seg28.relationRow6141 at r6141; linear_combination r6141), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg5
    refine ⟨rho 25472, rho 25473, rho 25474, rho 25475, rho 25476,
      (by unfold Seg28.relationRow6142 at r6142; linear_combination r6142), (by unfold Seg28.relationRow6143 at r6143; linear_combination r6143), (by unfold Seg28.relationRow6144 at r6144; linear_combination r6144), (by unfold Seg28.relationRow6145 at r6145; linear_combination r6145), (by unfold Seg28.relationRow6146 at r6146; linear_combination r6146), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg6
    refine ⟨rho 25477, rho 25478, rho 25479, rho 25480, rho 25481,
      (by unfold Seg28.relationRow6147 at r6147; linear_combination r6147), (by unfold Seg28.relationRow6148 at r6148; linear_combination r6148), (by unfold Seg28.relationRow6149 at r6149; linear_combination r6149), (by unfold Seg28.relationRow6150 at r6150; linear_combination r6150), (by unfold Seg28.relationRow6151 at r6151; linear_combination r6151), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg7
    refine ⟨rho 25482, rho 25483, rho 25484, rho 25485, rho 25486,
      (by unfold Seg28.relationRow6152 at r6152; linear_combination r6152), (by unfold Seg28.relationRow6153 at r6153; linear_combination r6153), (by unfold Seg28.relationRow6154 at r6154; linear_combination r6154), (by unfold Seg28.relationRow6155 at r6155; linear_combination r6155), (by unfold Seg28.relationRow6156 at r6156; linear_combination r6156), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg8
    refine ⟨rho 25487, rho 25488, rho 25489, rho 25490, rho 25491,
      (by unfold Seg28.relationRow6157 at r6157; linear_combination r6157), (by unfold Seg28.relationRow6158 at r6158; linear_combination r6158), (by unfold Seg28.relationRow6159 at r6159; linear_combination r6159), (by unfold Seg28.relationRow6160 at r6160; linear_combination r6160), (by unfold Seg28.relationRow6161 at r6161; linear_combination r6161), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg9
    refine ⟨rho 25492, rho 25493, rho 25494, rho 25495, rho 25496,
      (by unfold Seg28.relationRow6162 at r6162; linear_combination r6162), (by unfold Seg28.relationRow6163 at r6163; linear_combination r6163), (by unfold Seg28.relationRow6164 at r6164; linear_combination r6164), (by unfold Seg28.relationRow6165 at r6165; linear_combination r6165), (by unfold Seg28.relationRow6166 at r6166; linear_combination r6166), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg10
    refine ⟨rho 25497, rho 25498, rho 25499, rho 25500, rho 25501,
      (by unfold Seg28.relationRow6167 at r6167; linear_combination r6167), (by unfold Seg28.relationRow6168 at r6168; linear_combination r6168), (by unfold Seg28.relationRow6169 at r6169; linear_combination r6169), (by unfold Seg28.relationRow6170 at r6170; linear_combination r6170), (by unfold Seg28.relationRow6171 at r6171; linear_combination r6171), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg11
    refine ⟨rho 25502, rho 25503, rho 25504, rho 25505, rho 25506,
      (by unfold Seg28.relationRow6172 at r6172; linear_combination r6172), (by unfold Seg28.relationRow6173 at r6173; linear_combination r6173), (by unfold Seg28.relationRow6174 at r6174; linear_combination r6174), (by unfold Seg28.relationRow6175 at r6175; linear_combination r6175), (by unfold Seg28.relationRow6176 at r6176; linear_combination r6176), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg12
    refine ⟨rho 25507, rho 25508, rho 25509, rho 25510, rho 25511,
      (by unfold Seg28.relationRow6177 at r6177; linear_combination r6177), (by unfold Seg28.relationRow6178 at r6178; linear_combination r6178), (by unfold Seg28.relationRow6179 at r6179; linear_combination r6179), (by unfold Seg28.relationRow6180 at r6180; linear_combination r6180), (by unfold Seg28.relationRow6181 at r6181; linear_combination r6181), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg13
    refine ⟨rho 25512, rho 25513, rho 25514, rho 25515, rho 25516,
      (by unfold Seg28.relationRow6182 at r6182; linear_combination r6182), (by unfold Seg28.relationRow6183 at r6183; linear_combination r6183), (by unfold Seg28.relationRow6184 at r6184; linear_combination r6184), (by unfold Seg28.relationRow6185 at r6185; linear_combination r6185), (by unfold Seg28.relationRow6186 at r6186; linear_combination r6186), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg14
    refine ⟨rho 25517, rho 25518, rho 25519, rho 25520, rho 25521,
      (by unfold Seg28.relationRow6187 at r6187; linear_combination r6187), (by unfold Seg28.relationRow6188 at r6188; linear_combination r6188), (by unfold Seg28.relationRow6189 at r6189; linear_combination r6189), (by unfold Seg28.relationRow6190 at r6190; linear_combination r6190), (by unfold Seg28.relationRow6191 at r6191; linear_combination r6191), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg15
    refine ⟨rho 25522, rho 25523, rho 25524, rho 25525, rho 25526,
      (by unfold Seg28.relationRow6192 at r6192; linear_combination r6192), (by unfold Seg28.relationRow6193 at r6193; linear_combination r6193), (by unfold Seg28.relationRow6194 at r6194; linear_combination r6194), (by unfold Seg28.relationRow6195 at r6195; linear_combination r6195), (by unfold Seg28.relationRow6196 at r6196; linear_combination r6196), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg16
    refine ⟨rho 25527, rho 25528, rho 25529, rho 25530, rho 25531,
      (by unfold Seg28.relationRow6197 at r6197; linear_combination r6197), (by unfold Seg28.relationRow6198 at r6198; linear_combination r6198), (by unfold Seg28.relationRow6199 at r6199; linear_combination r6199), (by unfold Seg28.relationRow6200 at r6200; linear_combination r6200), (by unfold Seg28.relationRow6201 at r6201; linear_combination r6201), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg17
    refine ⟨rho 25532, rho 25533, rho 25534, rho 25535, rho 25536,
      (by unfold Seg28.relationRow6202 at r6202; linear_combination r6202), (by unfold Seg28.relationRow6203 at r6203; linear_combination r6203), (by unfold Seg28.relationRow6204 at r6204; linear_combination r6204), (by unfold Seg28.relationRow6205 at r6205; linear_combination r6205), (by unfold Seg28.relationRow6206 at r6206; linear_combination r6206), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg18
    refine ⟨rho 25537, rho 25538, rho 25539, rho 25540, rho 25541,
      (by unfold Seg28.relationRow6207 at r6207; linear_combination r6207), (by unfold Seg28.relationRow6208 at r6208; linear_combination r6208), (by unfold Seg28.relationRow6209 at r6209; linear_combination r6209), (by unfold Seg28.relationRow6210 at r6210; linear_combination r6210), (by unfold Seg28.relationRow6211 at r6211; linear_combination r6211), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg19
    refine ⟨rho 25542, rho 25543, rho 25544, rho 25545, rho 25546,
      (by unfold Seg28.relationRow6212 at r6212; linear_combination r6212), (by unfold Seg28.relationRow6213 at r6213; linear_combination r6213), (by unfold Seg28.relationRow6214 at r6214; linear_combination r6214), (by unfold Seg28.relationRow6215 at r6215; linear_combination r6215), (by unfold Seg28.relationRow6216 at r6216; linear_combination r6216), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg20
    refine ⟨rho 25547, rho 25548, rho 25549, rho 25550, rho 25551,
      (by unfold Seg28.relationRow6217 at r6217; linear_combination r6217), (by unfold Seg28.relationRow6218 at r6218; linear_combination r6218), (by unfold Seg28.relationRow6219 at r6219; linear_combination r6219), (by unfold Seg28.relationRow6220 at r6220; linear_combination r6220), (by unfold Seg28.relationRow6221 at r6221; linear_combination r6221), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg21
    refine ⟨rho 25552, rho 25553, rho 25554, rho 25555, rho 25556,
      (by unfold Seg28.relationRow6222 at r6222; linear_combination r6222), (by unfold Seg28.relationRow6223 at r6223; linear_combination r6223), (by unfold Seg28.relationRow6224 at r6224; linear_combination r6224), (by unfold Seg28.relationRow6225 at r6225; linear_combination r6225), (by unfold Seg28.relationRow6226 at r6226; linear_combination r6226), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg22
    refine ⟨rho 25557, rho 25558, rho 25559, rho 25560, rho 25561,
      (by unfold Seg28.relationRow6227 at r6227; linear_combination r6227), (by unfold Seg28.relationRow6228 at r6228; linear_combination r6228), (by unfold Seg28.relationRow6229 at r6229; linear_combination r6229), (by unfold Seg28.relationRow6230 at r6230; linear_combination r6230), (by unfold Seg28.relationRow6231 at r6231; linear_combination r6231), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg23
    refine ⟨rho 25562, rho 25563, rho 25564, rho 25565, rho 25566,
      (by unfold Seg28.relationRow6232 at r6232; linear_combination r6232), (by unfold Seg28.relationRow6233 at r6233; linear_combination r6233), (by unfold Seg28.relationRow6234 at r6234; linear_combination r6234), (by unfold Seg28.relationRow6235 at r6235; linear_combination r6235), (by unfold Seg28.relationRow6236 at r6236; linear_combination r6236), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg24
    refine ⟨rho 25567, rho 25568, rho 25569, rho 25570, rho 25571,
      (by unfold Seg28.relationRow6237 at r6237; linear_combination r6237), (by unfold Seg28.relationRow6238 at r6238; linear_combination r6238), (by unfold Seg28.relationRow6239 at r6239; linear_combination r6239), (by unfold Seg28.relationRow6240 at r6240; linear_combination r6240), (by unfold Seg28.relationRow6241 at r6241; linear_combination r6241), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg25
    refine ⟨rho 25572, rho 25573, rho 25574, rho 25575, rho 25576,
      (by unfold Seg28.relationRow6242 at r6242; linear_combination r6242), (by unfold Seg28.relationRow6243 at r6243; linear_combination r6243), (by unfold Seg28.relationRow6244 at r6244; linear_combination r6244), (by unfold Seg28.relationRow6245 at r6245; linear_combination r6245), (by unfold Seg28.relationRow6246 at r6246; linear_combination r6246), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg26
    refine ⟨rho 25577, rho 25578, rho 25579, rho 25580, rho 25581,
      (by unfold Seg28.relationRow6247 at r6247; linear_combination r6247), (by unfold Seg28.relationRow6248 at r6248; linear_combination r6248), (by unfold Seg28.relationRow6249 at r6249; linear_combination r6249), (by unfold Seg28.relationRow6250 at r6250; linear_combination r6250), (by unfold Seg28.relationRow6251 at r6251; linear_combination r6251), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg27
    refine ⟨rho 25582, rho 25583, rho 25584, rho 25585, rho 25586,
      (by unfold Seg28.relationRow6252 at r6252; linear_combination r6252), (by unfold Seg28.relationRow6253 at r6253; linear_combination r6253), (by unfold Seg28.relationRow6254 at r6254; linear_combination r6254), (by unfold Seg28.relationRow6255 at r6255; linear_combination r6255), (by unfold Seg28.relationRow6256 at r6256; linear_combination r6256), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg28
    refine ⟨rho 25587, rho 25588, rho 25589, rho 25590, rho 25591,
      (by unfold Seg28.relationRow6257 at r6257; linear_combination r6257), (by unfold Seg28.relationRow6258 at r6258; linear_combination r6258), (by unfold Seg28.relationRow6259 at r6259; linear_combination r6259), (by unfold Seg28.relationRow6260 at r6260; linear_combination r6260), (by unfold Seg28.relationRow6261 at r6261; linear_combination r6261), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg29
    refine ⟨rho 25592, rho 25593, rho 25594, rho 25595, rho 25596,
      (by unfold Seg28.relationRow6262 at r6262; linear_combination r6262), (by unfold Seg28.relationRow6263 at r6263; linear_combination r6263), (by unfold Seg28.relationRow6264 at r6264; linear_combination r6264), (by unfold Seg28.relationRow6265 at r6265; linear_combination r6265), (by unfold Seg28.relationRow6266 at r6266; linear_combination r6266), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg30
    refine ⟨rho 25597, rho 25598, rho 25599, rho 25600, rho 25601,
      (by unfold Seg28.relationRow6267 at r6267; linear_combination r6267), (by unfold Seg28.relationRow6268 at r6268; linear_combination r6268), (by unfold Seg28.relationRow6269 at r6269; linear_combination r6269), (by unfold Seg28.relationRow6270 at r6270; linear_combination r6270), (by unfold Seg28.relationRow6271 at r6271; linear_combination r6271), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg31
    refine ⟨rho 25602, rho 25603, rho 25604, rho 25605, rho 25606,
      (by unfold Seg28.relationRow6272 at r6272; linear_combination r6272), (by unfold Seg28.relationRow6273 at r6273; linear_combination r6273), (by unfold Seg28.relationRow6274 at r6274; linear_combination r6274), (by unfold Seg28.relationRow6275 at r6275; linear_combination r6275), (by unfold Seg28.relationRow6276 at r6276; linear_combination r6276), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg32
    refine ⟨rho 25607, rho 25608, rho 25609, rho 25610, rho 25611,
      (by unfold Seg28.relationRow6277 at r6277; linear_combination r6277), (by unfold Seg28.relationRow6278 at r6278; linear_combination r6278), (by unfold Seg28.relationRow6279 at r6279; linear_combination r6279), (by unfold Seg28.relationRow6280 at r6280; linear_combination r6280), (by unfold Seg28.relationRow6281 at r6281; linear_combination r6281), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg33
    refine ⟨rho 25612, rho 25613, rho 25614, rho 25615, rho 25616,
      (by unfold Seg28.relationRow6282 at r6282; linear_combination r6282), (by unfold Seg28.relationRow6283 at r6283; linear_combination r6283), (by unfold Seg28.relationRow6284 at r6284; linear_combination r6284), (by unfold Seg28.relationRow6285 at r6285; linear_combination r6285), (by unfold Seg28.relationRow6286 at r6286; linear_combination r6286), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg34
    refine ⟨rho 25617, rho 25618, rho 25619, rho 25620, rho 25621,
      (by unfold Seg28.relationRow6287 at r6287; linear_combination r6287), (by unfold Seg28.relationRow6288 at r6288; linear_combination r6288), (by unfold Seg28.relationRow6289 at r6289; linear_combination r6289), (by unfold Seg28.relationRow6290 at r6290; linear_combination r6290), (by unfold Seg28.relationRow6291 at r6291; linear_combination r6291), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg35
    refine ⟨rho 25622, rho 25623, rho 25624, rho 25625, rho 25626,
      (by unfold Seg28.relationRow6292 at r6292; linear_combination r6292), (by unfold Seg28.relationRow6293 at r6293; linear_combination r6293), (by unfold Seg28.relationRow6294 at r6294; linear_combination r6294), (by unfold Seg28.relationRow6295 at r6295; linear_combination r6295), (by unfold Seg28.relationRow6296 at r6296; linear_combination r6296), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg36
    refine ⟨rho 25627, rho 25628, rho 25629, rho 25630, rho 25631,
      (by unfold Seg28.relationRow6297 at r6297; linear_combination r6297), (by unfold Seg28.relationRow6298 at r6298; linear_combination r6298), (by unfold Seg28.relationRow6299 at r6299; linear_combination r6299), (by unfold Seg28.relationRow6300 at r6300; linear_combination r6300), (by unfold Seg28.relationRow6301 at r6301; linear_combination r6301), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg37
    refine ⟨rho 25632, rho 25633, rho 25634, rho 25635, rho 25636,
      (by unfold Seg28.relationRow6302 at r6302; linear_combination r6302), (by unfold Seg28.relationRow6303 at r6303; linear_combination r6303), (by unfold Seg28.relationRow6304 at r6304; linear_combination r6304), (by unfold Seg28.relationRow6305 at r6305; linear_combination r6305), (by unfold Seg28.relationRow6306 at r6306; linear_combination r6306), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg38
    refine ⟨rho 25637, rho 25638, rho 25639, rho 25640, rho 25641,
      (by unfold Seg28.relationRow6307 at r6307; linear_combination r6307), (by unfold Seg28.relationRow6308 at r6308; linear_combination r6308), (by unfold Seg28.relationRow6309 at r6309; linear_combination r6309), (by unfold Seg28.relationRow6310 at r6310; linear_combination r6310), (by unfold Seg28.relationRow6311 at r6311; linear_combination r6311), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg39
    refine ⟨rho 25642, rho 25643, rho 25644, rho 25645, rho 25646,
      (by unfold Seg28.relationRow6312 at r6312; linear_combination r6312), (by unfold Seg28.relationRow6313 at r6313; linear_combination r6313), (by unfold Seg28.relationRow6314 at r6314; linear_combination r6314), (by unfold Seg28.relationRow6315 at r6315; linear_combination r6315), (by unfold Seg28.relationRow6316 at r6316; linear_combination r6316), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg40
    refine ⟨rho 25647, rho 25648, rho 25649, rho 25650, rho 25651,
      (by unfold Seg28.relationRow6317 at r6317; linear_combination r6317), (by unfold Seg28.relationRow6318 at r6318; linear_combination r6318), (by unfold Seg28.relationRow6319 at r6319; linear_combination r6319), (by unfold Seg28.relationRow6320 at r6320; linear_combination r6320), (by unfold Seg28.relationRow6321 at r6321; linear_combination r6321), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg41
    refine ⟨rho 25652, rho 25653, rho 25654, rho 25655, rho 25656,
      (by unfold Seg28.relationRow6322 at r6322; linear_combination r6322), (by unfold Seg28.relationRow6323 at r6323; linear_combination r6323), (by unfold Seg28.relationRow6324 at r6324; linear_combination r6324), (by unfold Seg28.relationRow6325 at r6325; linear_combination r6325), (by unfold Seg28.relationRow6326 at r6326; linear_combination r6326), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg42
    refine ⟨rho 25657, rho 25658, rho 25659, rho 25660, rho 25661,
      (by unfold Seg28.relationRow6327 at r6327; linear_combination r6327), (by unfold Seg28.relationRow6328 at r6328; linear_combination r6328), (by unfold Seg28.relationRow6329 at r6329; linear_combination r6329), (by unfold Seg28.relationRow6330 at r6330; linear_combination r6330), (by unfold Seg28.relationRow6331 at r6331; linear_combination r6331), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg43
    refine ⟨rho 25662, rho 25663, rho 25664, rho 25665, rho 25666,
      (by unfold Seg28.relationRow6332 at r6332; linear_combination r6332), (by unfold Seg28.relationRow6333 at r6333; linear_combination r6333), (by unfold Seg28.relationRow6334 at r6334; linear_combination r6334), (by unfold Seg28.relationRow6335 at r6335; linear_combination r6335), (by unfold Seg28.relationRow6336 at r6336; linear_combination r6336), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg44
    refine ⟨rho 25667, rho 25668, rho 25669, rho 25670, rho 25671,
      (by unfold Seg28.relationRow6337 at r6337; linear_combination r6337), (by unfold Seg28.relationRow6338 at r6338; linear_combination r6338), (by unfold Seg28.relationRow6339 at r6339; linear_combination r6339), (by unfold Seg28.relationRow6340 at r6340; linear_combination r6340), (by unfold Seg28.relationRow6341 at r6341; linear_combination r6341), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg45
    refine ⟨rho 25672, rho 25673, rho 25674, rho 25675, rho 25676,
      (by unfold Seg28.relationRow6342 at r6342; linear_combination r6342), (by unfold Seg28.relationRow6343 at r6343; linear_combination r6343), (by unfold Seg28.relationRow6344 at r6344; linear_combination r6344), (by unfold Seg28.relationRow6345 at r6345; linear_combination r6345), (by unfold Seg28.relationRow6346 at r6346; linear_combination r6346), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg46
    refine ⟨rho 25677, rho 25678, rho 25679, rho 25680, rho 25681,
      (by unfold Seg28.relationRow6347 at r6347; linear_combination r6347), (by unfold Seg28.relationRow6348 at r6348; linear_combination r6348), (by unfold Seg28.relationRow6349 at r6349; linear_combination r6349), (by unfold Seg28.relationRow6350 at r6350; linear_combination r6350), (by unfold Seg28.relationRow6351 at r6351; linear_combination r6351), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg47
    refine ⟨rho 25682, rho 25683, rho 25684, rho 25685, rho 25686,
      (by unfold Seg28.relationRow6352 at r6352; linear_combination r6352), (by unfold Seg28.relationRow6353 at r6353; linear_combination r6353), (by unfold Seg28.relationRow6354 at r6354; linear_combination r6354), (by unfold Seg28.relationRow6355 at r6355; linear_combination r6355), (by unfold Seg28.relationRow6356 at r6356; linear_combination r6356), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg48
    refine ⟨rho 25687, rho 25688, rho 25689, rho 25690, rho 25691,
      (by unfold Seg28.relationRow6357 at r6357; linear_combination r6357), (by unfold Seg28.relationRow6358 at r6358; linear_combination r6358), (by unfold Seg28.relationRow6359 at r6359; linear_combination r6359), (by unfold Seg28.relationRow6360 at r6360; linear_combination r6360), (by unfold Seg28.relationRow6361 at r6361; linear_combination r6361), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg49
    refine ⟨rho 25692, rho 25693, rho 25694, rho 25695, rho 25696,
      (by unfold Seg28.relationRow6362 at r6362; linear_combination r6362), (by unfold Seg28.relationRow6363 at r6363; linear_combination r6363), (by unfold Seg28.relationRow6364 at r6364; linear_combination r6364), (by unfold Seg28.relationRow6365 at r6365; linear_combination r6365), (by unfold Seg28.relationRow6366 at r6366; linear_combination r6366), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg50
    refine ⟨rho 25697, rho 25698, rho 25699, rho 25700, rho 25701,
      (by unfold Seg28.relationRow6367 at r6367; linear_combination r6367), (by unfold Seg28.relationRow6368 at r6368; linear_combination r6368), (by unfold Seg28.relationRow6369 at r6369; linear_combination r6369), (by unfold Seg28.relationRow6370 at r6370; linear_combination r6370), (by unfold Seg28.relationRow6371 at r6371; linear_combination r6371), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg51
    refine ⟨rho 25702, rho 25703, rho 25704, rho 25705, rho 25706,
      (by unfold Seg28.relationRow6372 at r6372; linear_combination r6372), (by unfold Seg28.relationRow6373 at r6373; linear_combination r6373), (by unfold Seg28.relationRow6374 at r6374; linear_combination r6374), (by unfold Seg28.relationRow6375 at r6375; linear_combination r6375), (by unfold Seg28.relationRow6376 at r6376; linear_combination r6376), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg52
    refine ⟨rho 25707, rho 25708, rho 25709, rho 25710, rho 25711,
      (by unfold Seg28.relationRow6377 at r6377; linear_combination r6377), (by unfold Seg28.relationRow6378 at r6378; linear_combination r6378), (by unfold Seg28.relationRow6379 at r6379; linear_combination r6379), (by unfold Seg28.relationRow6380 at r6380; linear_combination r6380), (by unfold Seg28.relationRow6381 at r6381; linear_combination r6381), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg53
    refine ⟨rho 25712, rho 25713, rho 25714, rho 25715, rho 25716,
      (by unfold Seg28.relationRow6382 at r6382; linear_combination r6382), (by unfold Seg28.relationRow6383 at r6383; linear_combination r6383), (by unfold Seg28.relationRow6384 at r6384; linear_combination r6384), (by unfold Seg28.relationRow6385 at r6385; linear_combination r6385), (by unfold Seg28.relationRow6386 at r6386; linear_combination r6386), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg54
    refine ⟨rho 25717, rho 25718, rho 25719, rho 25720, rho 25721,
      (by unfold Seg28.relationRow6387 at r6387; linear_combination r6387), (by unfold Seg28.relationRow6388 at r6388; linear_combination r6388), (by unfold Seg28.relationRow6389 at r6389; linear_combination r6389), (by unfold Seg28.relationRow6390 at r6390; linear_combination r6390), (by unfold Seg28.relationRow6391 at r6391; linear_combination r6391), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg55
    refine ⟨rho 25722, rho 25723, rho 25724, rho 25725, rho 25726,
      (by unfold Seg28.relationRow6392 at r6392; linear_combination r6392), (by unfold Seg28.relationRow6393 at r6393; linear_combination r6393), (by unfold Seg28.relationRow6394 at r6394; linear_combination r6394), (by unfold Seg28.relationRow6395 at r6395; linear_combination r6395), (by unfold Seg28.relationRow6396 at r6396; linear_combination r6396), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg56
    refine ⟨rho 25727, rho 25728, rho 25729, rho 25730, rho 25731,
      (by unfold Seg28.relationRow6397 at r6397; linear_combination r6397), (by unfold Seg28.relationRow6398 at r6398; linear_combination r6398), (by unfold Seg28.relationRow6399 at r6399; linear_combination r6399), (by unfold Seg28.relationRow6400 at r6400; linear_combination r6400), (by unfold Seg28.relationRow6401 at r6401; linear_combination r6401), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg57
    refine ⟨rho 25732, rho 25733, rho 25734, rho 25735, rho 25736,
      (by unfold Seg28.relationRow6402 at r6402; linear_combination r6402), (by unfold Seg28.relationRow6403 at r6403; linear_combination r6403), (by unfold Seg28.relationRow6404 at r6404; linear_combination r6404), (by unfold Seg28.relationRow6405 at r6405; linear_combination r6405), (by unfold Seg28.relationRow6406 at r6406; linear_combination r6406), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg58
    refine ⟨rho 25737, rho 25738, rho 25739, rho 25740, rho 25741,
      (by unfold Seg28.relationRow6407 at r6407; linear_combination r6407), (by unfold Seg28.relationRow6408 at r6408; linear_combination r6408), (by unfold Seg28.relationRow6409 at r6409; linear_combination r6409), (by unfold Seg28.relationRow6410 at r6410; linear_combination r6410), (by unfold Seg28.relationRow6411 at r6411; linear_combination r6411), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg59
    refine ⟨rho 25742, rho 25743, rho 25744, rho 25745, rho 25746,
      (by unfold Seg28.relationRow6412 at r6412; linear_combination r6412), (by unfold Seg28.relationRow6413 at r6413; linear_combination r6413), (by unfold Seg28.relationRow6414 at r6414; linear_combination r6414), (by unfold Seg28.relationRow6415 at r6415; linear_combination r6415), (by unfold Seg28.relationRow6416 at r6416; linear_combination r6416), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg60
    refine ⟨rho 25747, rho 25748, rho 25749, rho 25750, rho 25751,
      (by unfold Seg28.relationRow6417 at r6417; linear_combination r6417), (by unfold Seg28.relationRow6418 at r6418; linear_combination r6418), (by unfold Seg28.relationRow6419 at r6419; linear_combination r6419), (by unfold Seg28.relationRow6420 at r6420; linear_combination r6420), (by unfold Seg28.relationRow6421 at r6421; linear_combination r6421), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg61
    refine ⟨rho 25752, rho 25753, rho 25754, rho 25755, rho 25756,
      (by unfold Seg28.relationRow6422 at r6422; linear_combination r6422), (by unfold Seg28.relationRow6423 at r6423; linear_combination r6423), (by unfold Seg28.relationRow6424 at r6424; linear_combination r6424), (by unfold Seg28.relationRow6425 at r6425; linear_combination r6425), (by unfold Seg28.relationRow6426 at r6426; linear_combination r6426), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg62
    refine ⟨rho 25757, rho 25758, rho 25759, rho 25760, rho 25761,
      (by unfold Seg28.relationRow6427 at r6427; linear_combination r6427), (by unfold Seg28.relationRow6428 at r6428; linear_combination r6428), (by unfold Seg28.relationRow6429 at r6429; linear_combination r6429), (by unfold Seg28.relationRow6430 at r6430; linear_combination r6430), (by unfold Seg28.relationRow6431 at r6431; linear_combination r6431), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg63
    refine ⟨rho 25762, rho 25763, rho 25764, rho 25765, rho 25766,
      (by unfold Seg28.relationRow6432 at r6432; linear_combination r6432), (by unfold Seg28.relationRow6433 at r6433; linear_combination r6433), (by unfold Seg28.relationRow6434 at r6434; linear_combination r6434), (by unfold Seg28.relationRow6435 at r6435; linear_combination r6435), (by unfold Seg28.relationRow6436 at r6436; linear_combination r6436), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg64
    refine ⟨rho 25767, rho 25768, rho 25769, rho 25770, rho 25771,
      (by unfold Seg28.relationRow6437 at r6437; linear_combination r6437), (by unfold Seg28.relationRow6438 at r6438; linear_combination r6438), (by unfold Seg28.relationRow6439 at r6439; linear_combination r6439), (by unfold Seg28.relationRow6440 at r6440; linear_combination r6440), (by unfold Seg28.relationRow6441 at r6441; linear_combination r6441), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg65
    refine ⟨rho 25772, rho 25773, rho 25774, rho 25775, rho 25776,
      (by unfold Seg28.relationRow6442 at r6442; linear_combination r6442), (by unfold Seg28.relationRow6443 at r6443; linear_combination r6443), (by unfold Seg28.relationRow6444 at r6444; linear_combination r6444), (by unfold Seg28.relationRow6445 at r6445; linear_combination r6445), (by unfold Seg28.relationRow6446 at r6446; linear_combination r6446), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg66
    refine ⟨rho 25777, rho 25778, rho 25779, rho 25780, rho 25781,
      (by unfold Seg28.relationRow6447 at r6447; linear_combination r6447), (by unfold Seg28.relationRow6448 at r6448; linear_combination r6448), (by unfold Seg28.relationRow6449 at r6449; linear_combination r6449), (by unfold Seg28.relationRow6450 at r6450; linear_combination r6450), (by unfold Seg28.relationRow6451 at r6451; linear_combination r6451), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg67
    refine ⟨rho 25782, rho 25783, rho 25784, rho 25785, rho 25786,
      (by unfold Seg28.relationRow6452 at r6452; linear_combination r6452), (by unfold Seg28.relationRow6453 at r6453; linear_combination r6453), (by unfold Seg28.relationRow6454 at r6454; linear_combination r6454), (by unfold Seg28.relationRow6455 at r6455; linear_combination r6455), (by unfold Seg28.relationRow6456 at r6456; linear_combination r6456), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg68
    refine ⟨rho 25787, rho 25788, rho 25789, rho 25790, rho 25791,
      (by unfold Seg28.relationRow6457 at r6457; linear_combination r6457), (by unfold Seg28.relationRow6458 at r6458; linear_combination r6458), (by unfold Seg28.relationRow6459 at r6459; linear_combination r6459), (by unfold Seg28.relationRow6460 at r6460; linear_combination r6460), (by unfold Seg28.relationRow6461 at r6461; linear_combination r6461), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_072852.seg69
    refine ⟨rho 25792, rho 25793, rho 25794, rho 25795, rho 25796,
      (by unfold Seg28.relationRow6462 at r6462; linear_combination r6462), (by unfold Seg28.relationRow6463 at r6463; linear_combination r6463), (by unfold Seg28.relationRow6464 at r6464; linear_combination r6464), (by unfold Seg28.relationRow6465 at r6465; linear_combination r6465), (by unfold Seg28.relationRow6466 at r6466; linear_combination r6466), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.relation_sound_permSpec (rho 136) (rho 137) (rho 138) (rho 25441) (rho 25442) (rho 25443) (rho 25444) (rho 25445) (rho 25446) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.tctNode17DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) + (17 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode16Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode16.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

