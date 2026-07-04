import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode19.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node19_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode19Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (20 : Seg29.F))
        (rho 127 + rho 27475) (rho 128 + rho 27476 + rho 27477)
        (rho 128 + rho 27478 + rho 27479) (rho 129 + rho 27480) := by
  unfold Seg29.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p90, p91, p92, p93, p94, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg29.relationPart90 at p90
  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, r7209, r7210, r7211, r7212, r7213, r7214, r7215, r7216, r7217, r7218, r7219, r7220, r7221, r7222, r7223, r7224, r7225, r7226, r7227, r7228, r7229, r7230, r7231, r7232, r7233, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273, r7274, r7275, r7276, r7277, r7278, r7279⟩
  unfold Seg29.relationPart91 at p91
  rcases p91 with ⟨r7280, r7281, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313, r7314, r7315, r7316, r7317, r7318, r7319, r7320, r7321, r7322, r7323, r7324, r7325, r7326, r7327, r7328, r7329, r7330, r7331, r7332, r7333, r7334, r7335, r7336, r7337, r7338, r7339, r7340, r7341, r7342, r7343, r7344, r7345, r7346, r7347, r7348, r7349, r7350, r7351, r7352, r7353, r7354, r7355, r7356, r7357, r7358, r7359⟩
  unfold Seg29.relationPart92 at p92
  rcases p92 with ⟨r7360, r7361, r7362, r7363, r7364, r7365, r7366, r7367, r7368, r7369, r7370, r7371, r7372, r7373, r7374, r7375, r7376, r7377, r7378, r7379, r7380, r7381, r7382, r7383, r7384, r7385, r7386, r7387, r7388, r7389, r7390, r7391, r7392, r7393, r7394, r7395, r7396, r7397, r7398, r7399, r7400, r7401, r7402, r7403, r7404, r7405, r7406, r7407, r7408, r7409, r7410, r7411, r7412, r7413, r7414, r7415, r7416, r7417, r7418, r7419, r7420, r7421, r7422, r7423, r7424, r7425, r7426, r7427, r7428, r7429, r7430, r7431, r7432, r7433, r7434, r7435, r7436, r7437, r7438, r7439⟩
  unfold Seg29.relationPart93 at p93
  rcases p93 with ⟨r7440, r7441, r7442, r7443, r7444, r7445, r7446, r7447, r7448, r7449, r7450, r7451, r7452, r7453, r7454, r7455, r7456, r7457, r7458, r7459, r7460, r7461, r7462, r7463, r7464, r7465, r7466, r7467, r7468, r7469, r7470, r7471, r7472, r7473, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513, r7514, r7515, r7516, r7517, r7518, r7519⟩
  unfold Seg29.relationPart94 at p94
  rcases p94 with ⟨r7520, r7521, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553, r7554, r7555, r7556, r7557, r7558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.relation (rho 127) (rho 128) (rho 129) (rho 27475) (rho 27476) (rho 27477) (rho 27478) (rho 27479) (rho 27480)
      (fun o0 o1 o2 o3 o4 => o0 = rho 27810 ∧ o1 = rho 27815 ∧ o2 = rho 27820 ∧ o3 = rho 27825 ∧ o4 = rho 27830) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg0
    refine ⟨rho 27481, rho 27482, rho 27483, rho 27484, rho 27485,
      (by unfold Seg29.relationRow7209 at r7209; linear_combination r7209), (by unfold Seg29.relationRow7210 at r7210; linear_combination r7210), (by unfold Seg29.relationRow7211 at r7211; linear_combination r7211), (by unfold Seg29.relationRow7212 at r7212; linear_combination r7212), (by unfold Seg29.relationRow7213 at r7213; linear_combination r7213), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg1
    refine ⟨rho 27486, rho 27487, rho 27488, rho 27489, rho 27490,
      (by unfold Seg29.relationRow7214 at r7214; linear_combination r7214), (by unfold Seg29.relationRow7215 at r7215; linear_combination r7215), (by unfold Seg29.relationRow7216 at r7216; linear_combination r7216), (by unfold Seg29.relationRow7217 at r7217; linear_combination r7217), (by unfold Seg29.relationRow7218 at r7218; linear_combination r7218), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg2
    refine ⟨rho 27491, rho 27492, rho 27493, rho 27494, rho 27495,
      (by unfold Seg29.relationRow7219 at r7219; linear_combination r7219), (by unfold Seg29.relationRow7220 at r7220; linear_combination r7220), (by unfold Seg29.relationRow7221 at r7221; linear_combination r7221), (by unfold Seg29.relationRow7222 at r7222; linear_combination r7222), (by unfold Seg29.relationRow7223 at r7223; linear_combination r7223), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg3
    refine ⟨rho 27496, rho 27497, rho 27498, rho 27499, rho 27500,
      (by unfold Seg29.relationRow7224 at r7224; linear_combination r7224), (by unfold Seg29.relationRow7225 at r7225; linear_combination r7225), (by unfold Seg29.relationRow7226 at r7226; linear_combination r7226), (by unfold Seg29.relationRow7227 at r7227; linear_combination r7227), (by unfold Seg29.relationRow7228 at r7228; linear_combination r7228), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg4
    refine ⟨rho 27501, rho 27502, rho 27503, rho 27504, rho 27505,
      (by unfold Seg29.relationRow7229 at r7229; linear_combination r7229), (by unfold Seg29.relationRow7230 at r7230; linear_combination r7230), (by unfold Seg29.relationRow7231 at r7231; linear_combination r7231), (by unfold Seg29.relationRow7232 at r7232; linear_combination r7232), (by unfold Seg29.relationRow7233 at r7233; linear_combination r7233), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg5
    refine ⟨rho 27506, rho 27507, rho 27508, rho 27509, rho 27510,
      (by unfold Seg29.relationRow7234 at r7234; linear_combination r7234), (by unfold Seg29.relationRow7235 at r7235; linear_combination r7235), (by unfold Seg29.relationRow7236 at r7236; linear_combination r7236), (by unfold Seg29.relationRow7237 at r7237; linear_combination r7237), (by unfold Seg29.relationRow7238 at r7238; linear_combination r7238), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg6
    refine ⟨rho 27511, rho 27512, rho 27513, rho 27514, rho 27515,
      (by unfold Seg29.relationRow7239 at r7239; linear_combination r7239), (by unfold Seg29.relationRow7240 at r7240; linear_combination r7240), (by unfold Seg29.relationRow7241 at r7241; linear_combination r7241), (by unfold Seg29.relationRow7242 at r7242; linear_combination r7242), (by unfold Seg29.relationRow7243 at r7243; linear_combination r7243), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg7
    refine ⟨rho 27516, rho 27517, rho 27518, rho 27519, rho 27520,
      (by unfold Seg29.relationRow7244 at r7244; linear_combination r7244), (by unfold Seg29.relationRow7245 at r7245; linear_combination r7245), (by unfold Seg29.relationRow7246 at r7246; linear_combination r7246), (by unfold Seg29.relationRow7247 at r7247; linear_combination r7247), (by unfold Seg29.relationRow7248 at r7248; linear_combination r7248), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg8
    refine ⟨rho 27521, rho 27522, rho 27523, rho 27524, rho 27525,
      (by unfold Seg29.relationRow7249 at r7249; linear_combination r7249), (by unfold Seg29.relationRow7250 at r7250; linear_combination r7250), (by unfold Seg29.relationRow7251 at r7251; linear_combination r7251), (by unfold Seg29.relationRow7252 at r7252; linear_combination r7252), (by unfold Seg29.relationRow7253 at r7253; linear_combination r7253), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg9
    refine ⟨rho 27526, rho 27527, rho 27528, rho 27529, rho 27530,
      (by unfold Seg29.relationRow7254 at r7254; linear_combination r7254), (by unfold Seg29.relationRow7255 at r7255; linear_combination r7255), (by unfold Seg29.relationRow7256 at r7256; linear_combination r7256), (by unfold Seg29.relationRow7257 at r7257; linear_combination r7257), (by unfold Seg29.relationRow7258 at r7258; linear_combination r7258), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg10
    refine ⟨rho 27531, rho 27532, rho 27533, rho 27534, rho 27535,
      (by unfold Seg29.relationRow7259 at r7259; linear_combination r7259), (by unfold Seg29.relationRow7260 at r7260; linear_combination r7260), (by unfold Seg29.relationRow7261 at r7261; linear_combination r7261), (by unfold Seg29.relationRow7262 at r7262; linear_combination r7262), (by unfold Seg29.relationRow7263 at r7263; linear_combination r7263), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg11
    refine ⟨rho 27536, rho 27537, rho 27538, rho 27539, rho 27540,
      (by unfold Seg29.relationRow7264 at r7264; linear_combination r7264), (by unfold Seg29.relationRow7265 at r7265; linear_combination r7265), (by unfold Seg29.relationRow7266 at r7266; linear_combination r7266), (by unfold Seg29.relationRow7267 at r7267; linear_combination r7267), (by unfold Seg29.relationRow7268 at r7268; linear_combination r7268), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg12
    refine ⟨rho 27541, rho 27542, rho 27543, rho 27544, rho 27545,
      (by unfold Seg29.relationRow7269 at r7269; linear_combination r7269), (by unfold Seg29.relationRow7270 at r7270; linear_combination r7270), (by unfold Seg29.relationRow7271 at r7271; linear_combination r7271), (by unfold Seg29.relationRow7272 at r7272; linear_combination r7272), (by unfold Seg29.relationRow7273 at r7273; linear_combination r7273), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg13
    refine ⟨rho 27546, rho 27547, rho 27548, rho 27549, rho 27550,
      (by unfold Seg29.relationRow7274 at r7274; linear_combination r7274), (by unfold Seg29.relationRow7275 at r7275; linear_combination r7275), (by unfold Seg29.relationRow7276 at r7276; linear_combination r7276), (by unfold Seg29.relationRow7277 at r7277; linear_combination r7277), (by unfold Seg29.relationRow7278 at r7278; linear_combination r7278), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg14
    refine ⟨rho 27551, rho 27552, rho 27553, rho 27554, rho 27555,
      (by unfold Seg29.relationRow7279 at r7279; linear_combination r7279), (by unfold Seg29.relationRow7280 at r7280; linear_combination r7280), (by unfold Seg29.relationRow7281 at r7281; linear_combination r7281), (by unfold Seg29.relationRow7282 at r7282; linear_combination r7282), (by unfold Seg29.relationRow7283 at r7283; linear_combination r7283), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg15
    refine ⟨rho 27556, rho 27557, rho 27558, rho 27559, rho 27560,
      (by unfold Seg29.relationRow7284 at r7284; linear_combination r7284), (by unfold Seg29.relationRow7285 at r7285; linear_combination r7285), (by unfold Seg29.relationRow7286 at r7286; linear_combination r7286), (by unfold Seg29.relationRow7287 at r7287; linear_combination r7287), (by unfold Seg29.relationRow7288 at r7288; linear_combination r7288), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg16
    refine ⟨rho 27561, rho 27562, rho 27563, rho 27564, rho 27565,
      (by unfold Seg29.relationRow7289 at r7289; linear_combination r7289), (by unfold Seg29.relationRow7290 at r7290; linear_combination r7290), (by unfold Seg29.relationRow7291 at r7291; linear_combination r7291), (by unfold Seg29.relationRow7292 at r7292; linear_combination r7292), (by unfold Seg29.relationRow7293 at r7293; linear_combination r7293), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg17
    refine ⟨rho 27566, rho 27567, rho 27568, rho 27569, rho 27570,
      (by unfold Seg29.relationRow7294 at r7294; linear_combination r7294), (by unfold Seg29.relationRow7295 at r7295; linear_combination r7295), (by unfold Seg29.relationRow7296 at r7296; linear_combination r7296), (by unfold Seg29.relationRow7297 at r7297; linear_combination r7297), (by unfold Seg29.relationRow7298 at r7298; linear_combination r7298), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg18
    refine ⟨rho 27571, rho 27572, rho 27573, rho 27574, rho 27575,
      (by unfold Seg29.relationRow7299 at r7299; linear_combination r7299), (by unfold Seg29.relationRow7300 at r7300; linear_combination r7300), (by unfold Seg29.relationRow7301 at r7301; linear_combination r7301), (by unfold Seg29.relationRow7302 at r7302; linear_combination r7302), (by unfold Seg29.relationRow7303 at r7303; linear_combination r7303), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg19
    refine ⟨rho 27576, rho 27577, rho 27578, rho 27579, rho 27580,
      (by unfold Seg29.relationRow7304 at r7304; linear_combination r7304), (by unfold Seg29.relationRow7305 at r7305; linear_combination r7305), (by unfold Seg29.relationRow7306 at r7306; linear_combination r7306), (by unfold Seg29.relationRow7307 at r7307; linear_combination r7307), (by unfold Seg29.relationRow7308 at r7308; linear_combination r7308), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg20
    refine ⟨rho 27581, rho 27582, rho 27583, rho 27584, rho 27585,
      (by unfold Seg29.relationRow7309 at r7309; linear_combination r7309), (by unfold Seg29.relationRow7310 at r7310; linear_combination r7310), (by unfold Seg29.relationRow7311 at r7311; linear_combination r7311), (by unfold Seg29.relationRow7312 at r7312; linear_combination r7312), (by unfold Seg29.relationRow7313 at r7313; linear_combination r7313), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg21
    refine ⟨rho 27586, rho 27587, rho 27588, rho 27589, rho 27590,
      (by unfold Seg29.relationRow7314 at r7314; linear_combination r7314), (by unfold Seg29.relationRow7315 at r7315; linear_combination r7315), (by unfold Seg29.relationRow7316 at r7316; linear_combination r7316), (by unfold Seg29.relationRow7317 at r7317; linear_combination r7317), (by unfold Seg29.relationRow7318 at r7318; linear_combination r7318), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg22
    refine ⟨rho 27591, rho 27592, rho 27593, rho 27594, rho 27595,
      (by unfold Seg29.relationRow7319 at r7319; linear_combination r7319), (by unfold Seg29.relationRow7320 at r7320; linear_combination r7320), (by unfold Seg29.relationRow7321 at r7321; linear_combination r7321), (by unfold Seg29.relationRow7322 at r7322; linear_combination r7322), (by unfold Seg29.relationRow7323 at r7323; linear_combination r7323), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg23
    refine ⟨rho 27596, rho 27597, rho 27598, rho 27599, rho 27600,
      (by unfold Seg29.relationRow7324 at r7324; linear_combination r7324), (by unfold Seg29.relationRow7325 at r7325; linear_combination r7325), (by unfold Seg29.relationRow7326 at r7326; linear_combination r7326), (by unfold Seg29.relationRow7327 at r7327; linear_combination r7327), (by unfold Seg29.relationRow7328 at r7328; linear_combination r7328), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg24
    refine ⟨rho 27601, rho 27602, rho 27603, rho 27604, rho 27605,
      (by unfold Seg29.relationRow7329 at r7329; linear_combination r7329), (by unfold Seg29.relationRow7330 at r7330; linear_combination r7330), (by unfold Seg29.relationRow7331 at r7331; linear_combination r7331), (by unfold Seg29.relationRow7332 at r7332; linear_combination r7332), (by unfold Seg29.relationRow7333 at r7333; linear_combination r7333), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg25
    refine ⟨rho 27606, rho 27607, rho 27608, rho 27609, rho 27610,
      (by unfold Seg29.relationRow7334 at r7334; linear_combination r7334), (by unfold Seg29.relationRow7335 at r7335; linear_combination r7335), (by unfold Seg29.relationRow7336 at r7336; linear_combination r7336), (by unfold Seg29.relationRow7337 at r7337; linear_combination r7337), (by unfold Seg29.relationRow7338 at r7338; linear_combination r7338), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg26
    refine ⟨rho 27611, rho 27612, rho 27613, rho 27614, rho 27615,
      (by unfold Seg29.relationRow7339 at r7339; linear_combination r7339), (by unfold Seg29.relationRow7340 at r7340; linear_combination r7340), (by unfold Seg29.relationRow7341 at r7341; linear_combination r7341), (by unfold Seg29.relationRow7342 at r7342; linear_combination r7342), (by unfold Seg29.relationRow7343 at r7343; linear_combination r7343), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg27
    refine ⟨rho 27616, rho 27617, rho 27618, rho 27619, rho 27620,
      (by unfold Seg29.relationRow7344 at r7344; linear_combination r7344), (by unfold Seg29.relationRow7345 at r7345; linear_combination r7345), (by unfold Seg29.relationRow7346 at r7346; linear_combination r7346), (by unfold Seg29.relationRow7347 at r7347; linear_combination r7347), (by unfold Seg29.relationRow7348 at r7348; linear_combination r7348), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg28
    refine ⟨rho 27621, rho 27622, rho 27623, rho 27624, rho 27625,
      (by unfold Seg29.relationRow7349 at r7349; linear_combination r7349), (by unfold Seg29.relationRow7350 at r7350; linear_combination r7350), (by unfold Seg29.relationRow7351 at r7351; linear_combination r7351), (by unfold Seg29.relationRow7352 at r7352; linear_combination r7352), (by unfold Seg29.relationRow7353 at r7353; linear_combination r7353), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg29
    refine ⟨rho 27626, rho 27627, rho 27628, rho 27629, rho 27630,
      (by unfold Seg29.relationRow7354 at r7354; linear_combination r7354), (by unfold Seg29.relationRow7355 at r7355; linear_combination r7355), (by unfold Seg29.relationRow7356 at r7356; linear_combination r7356), (by unfold Seg29.relationRow7357 at r7357; linear_combination r7357), (by unfold Seg29.relationRow7358 at r7358; linear_combination r7358), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg30
    refine ⟨rho 27631, rho 27632, rho 27633, rho 27634, rho 27635,
      (by unfold Seg29.relationRow7359 at r7359; linear_combination r7359), (by unfold Seg29.relationRow7360 at r7360; linear_combination r7360), (by unfold Seg29.relationRow7361 at r7361; linear_combination r7361), (by unfold Seg29.relationRow7362 at r7362; linear_combination r7362), (by unfold Seg29.relationRow7363 at r7363; linear_combination r7363), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg31
    refine ⟨rho 27636, rho 27637, rho 27638, rho 27639, rho 27640,
      (by unfold Seg29.relationRow7364 at r7364; linear_combination r7364), (by unfold Seg29.relationRow7365 at r7365; linear_combination r7365), (by unfold Seg29.relationRow7366 at r7366; linear_combination r7366), (by unfold Seg29.relationRow7367 at r7367; linear_combination r7367), (by unfold Seg29.relationRow7368 at r7368; linear_combination r7368), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg32
    refine ⟨rho 27641, rho 27642, rho 27643, rho 27644, rho 27645,
      (by unfold Seg29.relationRow7369 at r7369; linear_combination r7369), (by unfold Seg29.relationRow7370 at r7370; linear_combination r7370), (by unfold Seg29.relationRow7371 at r7371; linear_combination r7371), (by unfold Seg29.relationRow7372 at r7372; linear_combination r7372), (by unfold Seg29.relationRow7373 at r7373; linear_combination r7373), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg33
    refine ⟨rho 27646, rho 27647, rho 27648, rho 27649, rho 27650,
      (by unfold Seg29.relationRow7374 at r7374; linear_combination r7374), (by unfold Seg29.relationRow7375 at r7375; linear_combination r7375), (by unfold Seg29.relationRow7376 at r7376; linear_combination r7376), (by unfold Seg29.relationRow7377 at r7377; linear_combination r7377), (by unfold Seg29.relationRow7378 at r7378; linear_combination r7378), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg34
    refine ⟨rho 27651, rho 27652, rho 27653, rho 27654, rho 27655,
      (by unfold Seg29.relationRow7379 at r7379; linear_combination r7379), (by unfold Seg29.relationRow7380 at r7380; linear_combination r7380), (by unfold Seg29.relationRow7381 at r7381; linear_combination r7381), (by unfold Seg29.relationRow7382 at r7382; linear_combination r7382), (by unfold Seg29.relationRow7383 at r7383; linear_combination r7383), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg35
    refine ⟨rho 27656, rho 27657, rho 27658, rho 27659, rho 27660,
      (by unfold Seg29.relationRow7384 at r7384; linear_combination r7384), (by unfold Seg29.relationRow7385 at r7385; linear_combination r7385), (by unfold Seg29.relationRow7386 at r7386; linear_combination r7386), (by unfold Seg29.relationRow7387 at r7387; linear_combination r7387), (by unfold Seg29.relationRow7388 at r7388; linear_combination r7388), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg36
    refine ⟨rho 27661, rho 27662, rho 27663, rho 27664, rho 27665,
      (by unfold Seg29.relationRow7389 at r7389; linear_combination r7389), (by unfold Seg29.relationRow7390 at r7390; linear_combination r7390), (by unfold Seg29.relationRow7391 at r7391; linear_combination r7391), (by unfold Seg29.relationRow7392 at r7392; linear_combination r7392), (by unfold Seg29.relationRow7393 at r7393; linear_combination r7393), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg37
    refine ⟨rho 27666, rho 27667, rho 27668, rho 27669, rho 27670,
      (by unfold Seg29.relationRow7394 at r7394; linear_combination r7394), (by unfold Seg29.relationRow7395 at r7395; linear_combination r7395), (by unfold Seg29.relationRow7396 at r7396; linear_combination r7396), (by unfold Seg29.relationRow7397 at r7397; linear_combination r7397), (by unfold Seg29.relationRow7398 at r7398; linear_combination r7398), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg38
    refine ⟨rho 27671, rho 27672, rho 27673, rho 27674, rho 27675,
      (by unfold Seg29.relationRow7399 at r7399; linear_combination r7399), (by unfold Seg29.relationRow7400 at r7400; linear_combination r7400), (by unfold Seg29.relationRow7401 at r7401; linear_combination r7401), (by unfold Seg29.relationRow7402 at r7402; linear_combination r7402), (by unfold Seg29.relationRow7403 at r7403; linear_combination r7403), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg39
    refine ⟨rho 27676, rho 27677, rho 27678, rho 27679, rho 27680,
      (by unfold Seg29.relationRow7404 at r7404; linear_combination r7404), (by unfold Seg29.relationRow7405 at r7405; linear_combination r7405), (by unfold Seg29.relationRow7406 at r7406; linear_combination r7406), (by unfold Seg29.relationRow7407 at r7407; linear_combination r7407), (by unfold Seg29.relationRow7408 at r7408; linear_combination r7408), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg40
    refine ⟨rho 27681, rho 27682, rho 27683, rho 27684, rho 27685,
      (by unfold Seg29.relationRow7409 at r7409; linear_combination r7409), (by unfold Seg29.relationRow7410 at r7410; linear_combination r7410), (by unfold Seg29.relationRow7411 at r7411; linear_combination r7411), (by unfold Seg29.relationRow7412 at r7412; linear_combination r7412), (by unfold Seg29.relationRow7413 at r7413; linear_combination r7413), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg41
    refine ⟨rho 27686, rho 27687, rho 27688, rho 27689, rho 27690,
      (by unfold Seg29.relationRow7414 at r7414; linear_combination r7414), (by unfold Seg29.relationRow7415 at r7415; linear_combination r7415), (by unfold Seg29.relationRow7416 at r7416; linear_combination r7416), (by unfold Seg29.relationRow7417 at r7417; linear_combination r7417), (by unfold Seg29.relationRow7418 at r7418; linear_combination r7418), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg42
    refine ⟨rho 27691, rho 27692, rho 27693, rho 27694, rho 27695,
      (by unfold Seg29.relationRow7419 at r7419; linear_combination r7419), (by unfold Seg29.relationRow7420 at r7420; linear_combination r7420), (by unfold Seg29.relationRow7421 at r7421; linear_combination r7421), (by unfold Seg29.relationRow7422 at r7422; linear_combination r7422), (by unfold Seg29.relationRow7423 at r7423; linear_combination r7423), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg43
    refine ⟨rho 27696, rho 27697, rho 27698, rho 27699, rho 27700,
      (by unfold Seg29.relationRow7424 at r7424; linear_combination r7424), (by unfold Seg29.relationRow7425 at r7425; linear_combination r7425), (by unfold Seg29.relationRow7426 at r7426; linear_combination r7426), (by unfold Seg29.relationRow7427 at r7427; linear_combination r7427), (by unfold Seg29.relationRow7428 at r7428; linear_combination r7428), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg44
    refine ⟨rho 27701, rho 27702, rho 27703, rho 27704, rho 27705,
      (by unfold Seg29.relationRow7429 at r7429; linear_combination r7429), (by unfold Seg29.relationRow7430 at r7430; linear_combination r7430), (by unfold Seg29.relationRow7431 at r7431; linear_combination r7431), (by unfold Seg29.relationRow7432 at r7432; linear_combination r7432), (by unfold Seg29.relationRow7433 at r7433; linear_combination r7433), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg45
    refine ⟨rho 27706, rho 27707, rho 27708, rho 27709, rho 27710,
      (by unfold Seg29.relationRow7434 at r7434; linear_combination r7434), (by unfold Seg29.relationRow7435 at r7435; linear_combination r7435), (by unfold Seg29.relationRow7436 at r7436; linear_combination r7436), (by unfold Seg29.relationRow7437 at r7437; linear_combination r7437), (by unfold Seg29.relationRow7438 at r7438; linear_combination r7438), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg46
    refine ⟨rho 27711, rho 27712, rho 27713, rho 27714, rho 27715,
      (by unfold Seg29.relationRow7439 at r7439; linear_combination r7439), (by unfold Seg29.relationRow7440 at r7440; linear_combination r7440), (by unfold Seg29.relationRow7441 at r7441; linear_combination r7441), (by unfold Seg29.relationRow7442 at r7442; linear_combination r7442), (by unfold Seg29.relationRow7443 at r7443; linear_combination r7443), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg47
    refine ⟨rho 27716, rho 27717, rho 27718, rho 27719, rho 27720,
      (by unfold Seg29.relationRow7444 at r7444; linear_combination r7444), (by unfold Seg29.relationRow7445 at r7445; linear_combination r7445), (by unfold Seg29.relationRow7446 at r7446; linear_combination r7446), (by unfold Seg29.relationRow7447 at r7447; linear_combination r7447), (by unfold Seg29.relationRow7448 at r7448; linear_combination r7448), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg48
    refine ⟨rho 27721, rho 27722, rho 27723, rho 27724, rho 27725,
      (by unfold Seg29.relationRow7449 at r7449; linear_combination r7449), (by unfold Seg29.relationRow7450 at r7450; linear_combination r7450), (by unfold Seg29.relationRow7451 at r7451; linear_combination r7451), (by unfold Seg29.relationRow7452 at r7452; linear_combination r7452), (by unfold Seg29.relationRow7453 at r7453; linear_combination r7453), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg49
    refine ⟨rho 27726, rho 27727, rho 27728, rho 27729, rho 27730,
      (by unfold Seg29.relationRow7454 at r7454; linear_combination r7454), (by unfold Seg29.relationRow7455 at r7455; linear_combination r7455), (by unfold Seg29.relationRow7456 at r7456; linear_combination r7456), (by unfold Seg29.relationRow7457 at r7457; linear_combination r7457), (by unfold Seg29.relationRow7458 at r7458; linear_combination r7458), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg50
    refine ⟨rho 27731, rho 27732, rho 27733, rho 27734, rho 27735,
      (by unfold Seg29.relationRow7459 at r7459; linear_combination r7459), (by unfold Seg29.relationRow7460 at r7460; linear_combination r7460), (by unfold Seg29.relationRow7461 at r7461; linear_combination r7461), (by unfold Seg29.relationRow7462 at r7462; linear_combination r7462), (by unfold Seg29.relationRow7463 at r7463; linear_combination r7463), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg51
    refine ⟨rho 27736, rho 27737, rho 27738, rho 27739, rho 27740,
      (by unfold Seg29.relationRow7464 at r7464; linear_combination r7464), (by unfold Seg29.relationRow7465 at r7465; linear_combination r7465), (by unfold Seg29.relationRow7466 at r7466; linear_combination r7466), (by unfold Seg29.relationRow7467 at r7467; linear_combination r7467), (by unfold Seg29.relationRow7468 at r7468; linear_combination r7468), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg52
    refine ⟨rho 27741, rho 27742, rho 27743, rho 27744, rho 27745,
      (by unfold Seg29.relationRow7469 at r7469; linear_combination r7469), (by unfold Seg29.relationRow7470 at r7470; linear_combination r7470), (by unfold Seg29.relationRow7471 at r7471; linear_combination r7471), (by unfold Seg29.relationRow7472 at r7472; linear_combination r7472), (by unfold Seg29.relationRow7473 at r7473; linear_combination r7473), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg53
    refine ⟨rho 27746, rho 27747, rho 27748, rho 27749, rho 27750,
      (by unfold Seg29.relationRow7474 at r7474; linear_combination r7474), (by unfold Seg29.relationRow7475 at r7475; linear_combination r7475), (by unfold Seg29.relationRow7476 at r7476; linear_combination r7476), (by unfold Seg29.relationRow7477 at r7477; linear_combination r7477), (by unfold Seg29.relationRow7478 at r7478; linear_combination r7478), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg54
    refine ⟨rho 27751, rho 27752, rho 27753, rho 27754, rho 27755,
      (by unfold Seg29.relationRow7479 at r7479; linear_combination r7479), (by unfold Seg29.relationRow7480 at r7480; linear_combination r7480), (by unfold Seg29.relationRow7481 at r7481; linear_combination r7481), (by unfold Seg29.relationRow7482 at r7482; linear_combination r7482), (by unfold Seg29.relationRow7483 at r7483; linear_combination r7483), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg55
    refine ⟨rho 27756, rho 27757, rho 27758, rho 27759, rho 27760,
      (by unfold Seg29.relationRow7484 at r7484; linear_combination r7484), (by unfold Seg29.relationRow7485 at r7485; linear_combination r7485), (by unfold Seg29.relationRow7486 at r7486; linear_combination r7486), (by unfold Seg29.relationRow7487 at r7487; linear_combination r7487), (by unfold Seg29.relationRow7488 at r7488; linear_combination r7488), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg56
    refine ⟨rho 27761, rho 27762, rho 27763, rho 27764, rho 27765,
      (by unfold Seg29.relationRow7489 at r7489; linear_combination r7489), (by unfold Seg29.relationRow7490 at r7490; linear_combination r7490), (by unfold Seg29.relationRow7491 at r7491; linear_combination r7491), (by unfold Seg29.relationRow7492 at r7492; linear_combination r7492), (by unfold Seg29.relationRow7493 at r7493; linear_combination r7493), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg57
    refine ⟨rho 27766, rho 27767, rho 27768, rho 27769, rho 27770,
      (by unfold Seg29.relationRow7494 at r7494; linear_combination r7494), (by unfold Seg29.relationRow7495 at r7495; linear_combination r7495), (by unfold Seg29.relationRow7496 at r7496; linear_combination r7496), (by unfold Seg29.relationRow7497 at r7497; linear_combination r7497), (by unfold Seg29.relationRow7498 at r7498; linear_combination r7498), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg58
    refine ⟨rho 27771, rho 27772, rho 27773, rho 27774, rho 27775,
      (by unfold Seg29.relationRow7499 at r7499; linear_combination r7499), (by unfold Seg29.relationRow7500 at r7500; linear_combination r7500), (by unfold Seg29.relationRow7501 at r7501; linear_combination r7501), (by unfold Seg29.relationRow7502 at r7502; linear_combination r7502), (by unfold Seg29.relationRow7503 at r7503; linear_combination r7503), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg59
    refine ⟨rho 27776, rho 27777, rho 27778, rho 27779, rho 27780,
      (by unfold Seg29.relationRow7504 at r7504; linear_combination r7504), (by unfold Seg29.relationRow7505 at r7505; linear_combination r7505), (by unfold Seg29.relationRow7506 at r7506; linear_combination r7506), (by unfold Seg29.relationRow7507 at r7507; linear_combination r7507), (by unfold Seg29.relationRow7508 at r7508; linear_combination r7508), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg60
    refine ⟨rho 27781, rho 27782, rho 27783, rho 27784, rho 27785,
      (by unfold Seg29.relationRow7509 at r7509; linear_combination r7509), (by unfold Seg29.relationRow7510 at r7510; linear_combination r7510), (by unfold Seg29.relationRow7511 at r7511; linear_combination r7511), (by unfold Seg29.relationRow7512 at r7512; linear_combination r7512), (by unfold Seg29.relationRow7513 at r7513; linear_combination r7513), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg61
    refine ⟨rho 27786, rho 27787, rho 27788, rho 27789, rho 27790,
      (by unfold Seg29.relationRow7514 at r7514; linear_combination r7514), (by unfold Seg29.relationRow7515 at r7515; linear_combination r7515), (by unfold Seg29.relationRow7516 at r7516; linear_combination r7516), (by unfold Seg29.relationRow7517 at r7517; linear_combination r7517), (by unfold Seg29.relationRow7518 at r7518; linear_combination r7518), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg62
    refine ⟨rho 27791, rho 27792, rho 27793, rho 27794, rho 27795,
      (by unfold Seg29.relationRow7519 at r7519; linear_combination r7519), (by unfold Seg29.relationRow7520 at r7520; linear_combination r7520), (by unfold Seg29.relationRow7521 at r7521; linear_combination r7521), (by unfold Seg29.relationRow7522 at r7522; linear_combination r7522), (by unfold Seg29.relationRow7523 at r7523; linear_combination r7523), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg63
    refine ⟨rho 27796, rho 27797, rho 27798, rho 27799, rho 27800,
      (by unfold Seg29.relationRow7524 at r7524; linear_combination r7524), (by unfold Seg29.relationRow7525 at r7525; linear_combination r7525), (by unfold Seg29.relationRow7526 at r7526; linear_combination r7526), (by unfold Seg29.relationRow7527 at r7527; linear_combination r7527), (by unfold Seg29.relationRow7528 at r7528; linear_combination r7528), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg64
    refine ⟨rho 27801, rho 27802, rho 27803, rho 27804, rho 27805,
      (by unfold Seg29.relationRow7529 at r7529; linear_combination r7529), (by unfold Seg29.relationRow7530 at r7530; linear_combination r7530), (by unfold Seg29.relationRow7531 at r7531; linear_combination r7531), (by unfold Seg29.relationRow7532 at r7532; linear_combination r7532), (by unfold Seg29.relationRow7533 at r7533; linear_combination r7533), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg65
    refine ⟨rho 27806, rho 27807, rho 27808, rho 27809, rho 27810,
      (by unfold Seg29.relationRow7534 at r7534; linear_combination r7534), (by unfold Seg29.relationRow7535 at r7535; linear_combination r7535), (by unfold Seg29.relationRow7536 at r7536; linear_combination r7536), (by unfold Seg29.relationRow7537 at r7537; linear_combination r7537), (by unfold Seg29.relationRow7538 at r7538; linear_combination r7538), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg66
    refine ⟨rho 27811, rho 27812, rho 27813, rho 27814, rho 27815,
      (by unfold Seg29.relationRow7539 at r7539; linear_combination r7539), (by unfold Seg29.relationRow7540 at r7540; linear_combination r7540), (by unfold Seg29.relationRow7541 at r7541; linear_combination r7541), (by unfold Seg29.relationRow7542 at r7542; linear_combination r7542), (by unfold Seg29.relationRow7543 at r7543; linear_combination r7543), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg67
    refine ⟨rho 27816, rho 27817, rho 27818, rho 27819, rho 27820,
      (by unfold Seg29.relationRow7544 at r7544; linear_combination r7544), (by unfold Seg29.relationRow7545 at r7545; linear_combination r7545), (by unfold Seg29.relationRow7546 at r7546; linear_combination r7546), (by unfold Seg29.relationRow7547 at r7547; linear_combination r7547), (by unfold Seg29.relationRow7548 at r7548; linear_combination r7548), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg68
    refine ⟨rho 27821, rho 27822, rho 27823, rho 27824, rho 27825,
      (by unfold Seg29.relationRow7549 at r7549; linear_combination r7549), (by unfold Seg29.relationRow7550 at r7550; linear_combination r7550), (by unfold Seg29.relationRow7551 at r7551; linear_combination r7551), (by unfold Seg29.relationRow7552 at r7552; linear_combination r7552), (by unfold Seg29.relationRow7553 at r7553; linear_combination r7553), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg69
    refine ⟨rho 27826, rho 27827, rho 27828, rho 27829, rho 27830,
      (by unfold Seg29.relationRow7554 at r7554; linear_combination r7554), (by unfold Seg29.relationRow7555 at r7555; linear_combination r7555), (by unfold Seg29.relationRow7556 at r7556; linear_combination r7556), (by unfold Seg29.relationRow7557 at r7557; linear_combination r7557), (by unfold Seg29.relationRow7558 at r7558; linear_combination r7558), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.relation_sound_permSpec (rho 127) (rho 128) (rho 129) (rho 27475) (rho 27476) (rho 27477) (rho 27478) (rho 27479) (rho 27480) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.tctNode20DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.F) + (20 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode19Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

