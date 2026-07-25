import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode22.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node22_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode22Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (23 : Seg13.F))
        (rho 28 + rho 15420) (rho 29 + rho 15421 + rho 15422)
        (rho 29 + rho 15423 + rho 15424) (rho 30 + rho 15425) := by
  unfold Seg13.relation at h
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p103, p104, p105, p106, p107, p108, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart103 at p103
  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8301, r8302, r8303, r8304, r8305, r8306, r8307, r8308, r8309, r8310, r8311, r8312, r8313, r8314, r8315, r8316, r8317, r8318, r8319⟩
  unfold Seg13.relationPart104 at p104
  rcases p104 with ⟨r8320, r8321, r8322, r8323, r8324, r8325, r8326, r8327, r8328, r8329, r8330, r8331, r8332, r8333, r8334, r8335, r8336, r8337, r8338, r8339, r8340, r8341, r8342, r8343, r8344, r8345, r8346, r8347, r8348, r8349, r8350, r8351, r8352, r8353, r8354, r8355, r8356, r8357, r8358, r8359, r8360, r8361, r8362, r8363, r8364, r8365, r8366, r8367, r8368, r8369, r8370, r8371, r8372, r8373, r8374, r8375, r8376, r8377, r8378, r8379, r8380, r8381, r8382, r8383, r8384, r8385, r8386, r8387, r8388, r8389, r8390, r8391, r8392, r8393, r8394, r8395, r8396, r8397, r8398, r8399⟩
  unfold Seg13.relationPart105 at p105
  rcases p105 with ⟨r8400, r8401, r8402, r8403, r8404, r8405, r8406, r8407, r8408, r8409, r8410, r8411, r8412, r8413, r8414, r8415, r8416, r8417, r8418, r8419, r8420, r8421, r8422, r8423, r8424, r8425, r8426, r8427, r8428, r8429, r8430, r8431, r8432, r8433, r8434, r8435, r8436, r8437, r8438, r8439, r8440, r8441, r8442, r8443, r8444, r8445, r8446, r8447, r8448, r8449, r8450, r8451, r8452, r8453, r8454, r8455, r8456, r8457, r8458, r8459, r8460, r8461, r8462, r8463, r8464, r8465, r8466, r8467, r8468, r8469, r8470, r8471, r8472, r8473, r8474, r8475, r8476, r8477, r8478, r8479⟩
  unfold Seg13.relationPart106 at p106
  rcases p106 with ⟨r8480, r8481, r8482, r8483, r8484, r8485, r8486, r8487, r8488, r8489, r8490, r8491, r8492, r8493, r8494, r8495, r8496, r8497, r8498, r8499, r8500, r8501, r8502, r8503, r8504, r8505, r8506, r8507, r8508, r8509, r8510, r8511, r8512, r8513, r8514, r8515, r8516, r8517, r8518, r8519, r8520, r8521, r8522, r8523, r8524, r8525, r8526, r8527, r8528, r8529, r8530, r8531, r8532, r8533, r8534, r8535, r8536, r8537, r8538, r8539, r8540, r8541, r8542, r8543, r8544, r8545, r8546, r8547, r8548, r8549, r8550, r8551, r8552, r8553, r8554, r8555, r8556, r8557, r8558, r8559⟩
  unfold Seg13.relationPart107 at p107
  rcases p107 with ⟨r8560, r8561, r8562, r8563, r8564, r8565, r8566, r8567, r8568, r8569, r8570, r8571, r8572, r8573, r8574, r8575, r8576, r8577, r8578, r8579, r8580, r8581, r8582, r8583, r8584, r8585, r8586, r8587, r8588, r8589, r8590, r8591, r8592, r8593, r8594, r8595, r8596, r8597, r8598, r8599, r8600, r8601, r8602, r8603, r8604, r8605, r8606, r8607, r8608, r8609, r8610, r8611, r8612, r8613, r8614, r8615, r8616, r8617, r8618, r8619, r8620, r8621, r8622, r8623, r8624, r8625, r8626, r8627, r8628, r8629, r8630, r8631, r8632, r8633, r8634, r8635, r8636, r8637, r8638, r8639⟩
  unfold Seg13.relationPart108 at p108
  rcases p108 with ⟨r8640, r8641, r8642, r8643, r8644, r8645, r8646, r8647, r8648, r8649, r8650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.relation (rho 28) (rho 29) (rho 30) (rho 15420) (rho 15421) (rho 15422) (rho 15423) (rho 15424) (rho 15425)
      (fun o0 o1 o2 o3 o4 => o0 = rho 15755 ∧ o1 = rho 15760 ∧ o2 = rho 15765 ∧ o3 = rho 15770 ∧ o4 = rho 15775) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg0
    refine ⟨rho 15426, rho 15427, rho 15428, rho 15429, rho 15430,
      (by unfold Seg13.relationRow8301 at r8301; linear_combination r8301), (by unfold Seg13.relationRow8302 at r8302; linear_combination r8302), (by unfold Seg13.relationRow8303 at r8303; linear_combination r8303), (by unfold Seg13.relationRow8304 at r8304; linear_combination r8304), (by unfold Seg13.relationRow8305 at r8305; linear_combination r8305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg1
    refine ⟨rho 15431, rho 15432, rho 15433, rho 15434, rho 15435,
      (by unfold Seg13.relationRow8306 at r8306; linear_combination r8306), (by unfold Seg13.relationRow8307 at r8307; linear_combination r8307), (by unfold Seg13.relationRow8308 at r8308; linear_combination r8308), (by unfold Seg13.relationRow8309 at r8309; linear_combination r8309), (by unfold Seg13.relationRow8310 at r8310; linear_combination r8310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg2
    refine ⟨rho 15436, rho 15437, rho 15438, rho 15439, rho 15440,
      (by unfold Seg13.relationRow8311 at r8311; linear_combination r8311), (by unfold Seg13.relationRow8312 at r8312; linear_combination r8312), (by unfold Seg13.relationRow8313 at r8313; linear_combination r8313), (by unfold Seg13.relationRow8314 at r8314; linear_combination r8314), (by unfold Seg13.relationRow8315 at r8315; linear_combination r8315), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg3
    refine ⟨rho 15441, rho 15442, rho 15443, rho 15444, rho 15445,
      (by unfold Seg13.relationRow8316 at r8316; linear_combination r8316), (by unfold Seg13.relationRow8317 at r8317; linear_combination r8317), (by unfold Seg13.relationRow8318 at r8318; linear_combination r8318), (by unfold Seg13.relationRow8319 at r8319; linear_combination r8319), (by unfold Seg13.relationRow8320 at r8320; linear_combination r8320), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg4
    refine ⟨rho 15446, rho 15447, rho 15448, rho 15449, rho 15450,
      (by unfold Seg13.relationRow8321 at r8321; linear_combination r8321), (by unfold Seg13.relationRow8322 at r8322; linear_combination r8322), (by unfold Seg13.relationRow8323 at r8323; linear_combination r8323), (by unfold Seg13.relationRow8324 at r8324; linear_combination r8324), (by unfold Seg13.relationRow8325 at r8325; linear_combination r8325), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg5
    refine ⟨rho 15451, rho 15452, rho 15453, rho 15454, rho 15455,
      (by unfold Seg13.relationRow8326 at r8326; linear_combination r8326), (by unfold Seg13.relationRow8327 at r8327; linear_combination r8327), (by unfold Seg13.relationRow8328 at r8328; linear_combination r8328), (by unfold Seg13.relationRow8329 at r8329; linear_combination r8329), (by unfold Seg13.relationRow8330 at r8330; linear_combination r8330), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg6
    refine ⟨rho 15456, rho 15457, rho 15458, rho 15459, rho 15460,
      (by unfold Seg13.relationRow8331 at r8331; linear_combination r8331), (by unfold Seg13.relationRow8332 at r8332; linear_combination r8332), (by unfold Seg13.relationRow8333 at r8333; linear_combination r8333), (by unfold Seg13.relationRow8334 at r8334; linear_combination r8334), (by unfold Seg13.relationRow8335 at r8335; linear_combination r8335), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg7
    refine ⟨rho 15461, rho 15462, rho 15463, rho 15464, rho 15465,
      (by unfold Seg13.relationRow8336 at r8336; linear_combination r8336), (by unfold Seg13.relationRow8337 at r8337; linear_combination r8337), (by unfold Seg13.relationRow8338 at r8338; linear_combination r8338), (by unfold Seg13.relationRow8339 at r8339; linear_combination r8339), (by unfold Seg13.relationRow8340 at r8340; linear_combination r8340), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg8
    refine ⟨rho 15466, rho 15467, rho 15468, rho 15469, rho 15470,
      (by unfold Seg13.relationRow8341 at r8341; linear_combination r8341), (by unfold Seg13.relationRow8342 at r8342; linear_combination r8342), (by unfold Seg13.relationRow8343 at r8343; linear_combination r8343), (by unfold Seg13.relationRow8344 at r8344; linear_combination r8344), (by unfold Seg13.relationRow8345 at r8345; linear_combination r8345), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg9
    refine ⟨rho 15471, rho 15472, rho 15473, rho 15474, rho 15475,
      (by unfold Seg13.relationRow8346 at r8346; linear_combination r8346), (by unfold Seg13.relationRow8347 at r8347; linear_combination r8347), (by unfold Seg13.relationRow8348 at r8348; linear_combination r8348), (by unfold Seg13.relationRow8349 at r8349; linear_combination r8349), (by unfold Seg13.relationRow8350 at r8350; linear_combination r8350), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg10
    refine ⟨rho 15476, rho 15477, rho 15478, rho 15479, rho 15480,
      (by unfold Seg13.relationRow8351 at r8351; linear_combination r8351), (by unfold Seg13.relationRow8352 at r8352; linear_combination r8352), (by unfold Seg13.relationRow8353 at r8353; linear_combination r8353), (by unfold Seg13.relationRow8354 at r8354; linear_combination r8354), (by unfold Seg13.relationRow8355 at r8355; linear_combination r8355), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg11
    refine ⟨rho 15481, rho 15482, rho 15483, rho 15484, rho 15485,
      (by unfold Seg13.relationRow8356 at r8356; linear_combination r8356), (by unfold Seg13.relationRow8357 at r8357; linear_combination r8357), (by unfold Seg13.relationRow8358 at r8358; linear_combination r8358), (by unfold Seg13.relationRow8359 at r8359; linear_combination r8359), (by unfold Seg13.relationRow8360 at r8360; linear_combination r8360), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg12
    refine ⟨rho 15486, rho 15487, rho 15488, rho 15489, rho 15490,
      (by unfold Seg13.relationRow8361 at r8361; linear_combination r8361), (by unfold Seg13.relationRow8362 at r8362; linear_combination r8362), (by unfold Seg13.relationRow8363 at r8363; linear_combination r8363), (by unfold Seg13.relationRow8364 at r8364; linear_combination r8364), (by unfold Seg13.relationRow8365 at r8365; linear_combination r8365), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg13
    refine ⟨rho 15491, rho 15492, rho 15493, rho 15494, rho 15495,
      (by unfold Seg13.relationRow8366 at r8366; linear_combination r8366), (by unfold Seg13.relationRow8367 at r8367; linear_combination r8367), (by unfold Seg13.relationRow8368 at r8368; linear_combination r8368), (by unfold Seg13.relationRow8369 at r8369; linear_combination r8369), (by unfold Seg13.relationRow8370 at r8370; linear_combination r8370), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg14
    refine ⟨rho 15496, rho 15497, rho 15498, rho 15499, rho 15500,
      (by unfold Seg13.relationRow8371 at r8371; linear_combination r8371), (by unfold Seg13.relationRow8372 at r8372; linear_combination r8372), (by unfold Seg13.relationRow8373 at r8373; linear_combination r8373), (by unfold Seg13.relationRow8374 at r8374; linear_combination r8374), (by unfold Seg13.relationRow8375 at r8375; linear_combination r8375), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg15
    refine ⟨rho 15501, rho 15502, rho 15503, rho 15504, rho 15505,
      (by unfold Seg13.relationRow8376 at r8376; linear_combination r8376), (by unfold Seg13.relationRow8377 at r8377; linear_combination r8377), (by unfold Seg13.relationRow8378 at r8378; linear_combination r8378), (by unfold Seg13.relationRow8379 at r8379; linear_combination r8379), (by unfold Seg13.relationRow8380 at r8380; linear_combination r8380), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg16
    refine ⟨rho 15506, rho 15507, rho 15508, rho 15509, rho 15510,
      (by unfold Seg13.relationRow8381 at r8381; linear_combination r8381), (by unfold Seg13.relationRow8382 at r8382; linear_combination r8382), (by unfold Seg13.relationRow8383 at r8383; linear_combination r8383), (by unfold Seg13.relationRow8384 at r8384; linear_combination r8384), (by unfold Seg13.relationRow8385 at r8385; linear_combination r8385), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg17
    refine ⟨rho 15511, rho 15512, rho 15513, rho 15514, rho 15515,
      (by unfold Seg13.relationRow8386 at r8386; linear_combination r8386), (by unfold Seg13.relationRow8387 at r8387; linear_combination r8387), (by unfold Seg13.relationRow8388 at r8388; linear_combination r8388), (by unfold Seg13.relationRow8389 at r8389; linear_combination r8389), (by unfold Seg13.relationRow8390 at r8390; linear_combination r8390), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg18
    refine ⟨rho 15516, rho 15517, rho 15518, rho 15519, rho 15520,
      (by unfold Seg13.relationRow8391 at r8391; linear_combination r8391), (by unfold Seg13.relationRow8392 at r8392; linear_combination r8392), (by unfold Seg13.relationRow8393 at r8393; linear_combination r8393), (by unfold Seg13.relationRow8394 at r8394; linear_combination r8394), (by unfold Seg13.relationRow8395 at r8395; linear_combination r8395), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg19
    refine ⟨rho 15521, rho 15522, rho 15523, rho 15524, rho 15525,
      (by unfold Seg13.relationRow8396 at r8396; linear_combination r8396), (by unfold Seg13.relationRow8397 at r8397; linear_combination r8397), (by unfold Seg13.relationRow8398 at r8398; linear_combination r8398), (by unfold Seg13.relationRow8399 at r8399; linear_combination r8399), (by unfold Seg13.relationRow8400 at r8400; linear_combination r8400), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg20
    refine ⟨rho 15526, rho 15527, rho 15528, rho 15529, rho 15530,
      (by unfold Seg13.relationRow8401 at r8401; linear_combination r8401), (by unfold Seg13.relationRow8402 at r8402; linear_combination r8402), (by unfold Seg13.relationRow8403 at r8403; linear_combination r8403), (by unfold Seg13.relationRow8404 at r8404; linear_combination r8404), (by unfold Seg13.relationRow8405 at r8405; linear_combination r8405), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg21
    refine ⟨rho 15531, rho 15532, rho 15533, rho 15534, rho 15535,
      (by unfold Seg13.relationRow8406 at r8406; linear_combination r8406), (by unfold Seg13.relationRow8407 at r8407; linear_combination r8407), (by unfold Seg13.relationRow8408 at r8408; linear_combination r8408), (by unfold Seg13.relationRow8409 at r8409; linear_combination r8409), (by unfold Seg13.relationRow8410 at r8410; linear_combination r8410), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg22
    refine ⟨rho 15536, rho 15537, rho 15538, rho 15539, rho 15540,
      (by unfold Seg13.relationRow8411 at r8411; linear_combination r8411), (by unfold Seg13.relationRow8412 at r8412; linear_combination r8412), (by unfold Seg13.relationRow8413 at r8413; linear_combination r8413), (by unfold Seg13.relationRow8414 at r8414; linear_combination r8414), (by unfold Seg13.relationRow8415 at r8415; linear_combination r8415), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg23
    refine ⟨rho 15541, rho 15542, rho 15543, rho 15544, rho 15545,
      (by unfold Seg13.relationRow8416 at r8416; linear_combination r8416), (by unfold Seg13.relationRow8417 at r8417; linear_combination r8417), (by unfold Seg13.relationRow8418 at r8418; linear_combination r8418), (by unfold Seg13.relationRow8419 at r8419; linear_combination r8419), (by unfold Seg13.relationRow8420 at r8420; linear_combination r8420), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg24
    refine ⟨rho 15546, rho 15547, rho 15548, rho 15549, rho 15550,
      (by unfold Seg13.relationRow8421 at r8421; linear_combination r8421), (by unfold Seg13.relationRow8422 at r8422; linear_combination r8422), (by unfold Seg13.relationRow8423 at r8423; linear_combination r8423), (by unfold Seg13.relationRow8424 at r8424; linear_combination r8424), (by unfold Seg13.relationRow8425 at r8425; linear_combination r8425), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg25
    refine ⟨rho 15551, rho 15552, rho 15553, rho 15554, rho 15555,
      (by unfold Seg13.relationRow8426 at r8426; linear_combination r8426), (by unfold Seg13.relationRow8427 at r8427; linear_combination r8427), (by unfold Seg13.relationRow8428 at r8428; linear_combination r8428), (by unfold Seg13.relationRow8429 at r8429; linear_combination r8429), (by unfold Seg13.relationRow8430 at r8430; linear_combination r8430), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg26
    refine ⟨rho 15556, rho 15557, rho 15558, rho 15559, rho 15560,
      (by unfold Seg13.relationRow8431 at r8431; linear_combination r8431), (by unfold Seg13.relationRow8432 at r8432; linear_combination r8432), (by unfold Seg13.relationRow8433 at r8433; linear_combination r8433), (by unfold Seg13.relationRow8434 at r8434; linear_combination r8434), (by unfold Seg13.relationRow8435 at r8435; linear_combination r8435), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg27
    refine ⟨rho 15561, rho 15562, rho 15563, rho 15564, rho 15565,
      (by unfold Seg13.relationRow8436 at r8436; linear_combination r8436), (by unfold Seg13.relationRow8437 at r8437; linear_combination r8437), (by unfold Seg13.relationRow8438 at r8438; linear_combination r8438), (by unfold Seg13.relationRow8439 at r8439; linear_combination r8439), (by unfold Seg13.relationRow8440 at r8440; linear_combination r8440), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg28
    refine ⟨rho 15566, rho 15567, rho 15568, rho 15569, rho 15570,
      (by unfold Seg13.relationRow8441 at r8441; linear_combination r8441), (by unfold Seg13.relationRow8442 at r8442; linear_combination r8442), (by unfold Seg13.relationRow8443 at r8443; linear_combination r8443), (by unfold Seg13.relationRow8444 at r8444; linear_combination r8444), (by unfold Seg13.relationRow8445 at r8445; linear_combination r8445), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg29
    refine ⟨rho 15571, rho 15572, rho 15573, rho 15574, rho 15575,
      (by unfold Seg13.relationRow8446 at r8446; linear_combination r8446), (by unfold Seg13.relationRow8447 at r8447; linear_combination r8447), (by unfold Seg13.relationRow8448 at r8448; linear_combination r8448), (by unfold Seg13.relationRow8449 at r8449; linear_combination r8449), (by unfold Seg13.relationRow8450 at r8450; linear_combination r8450), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg30
    refine ⟨rho 15576, rho 15577, rho 15578, rho 15579, rho 15580,
      (by unfold Seg13.relationRow8451 at r8451; linear_combination r8451), (by unfold Seg13.relationRow8452 at r8452; linear_combination r8452), (by unfold Seg13.relationRow8453 at r8453; linear_combination r8453), (by unfold Seg13.relationRow8454 at r8454; linear_combination r8454), (by unfold Seg13.relationRow8455 at r8455; linear_combination r8455), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg31
    refine ⟨rho 15581, rho 15582, rho 15583, rho 15584, rho 15585,
      (by unfold Seg13.relationRow8456 at r8456; linear_combination r8456), (by unfold Seg13.relationRow8457 at r8457; linear_combination r8457), (by unfold Seg13.relationRow8458 at r8458; linear_combination r8458), (by unfold Seg13.relationRow8459 at r8459; linear_combination r8459), (by unfold Seg13.relationRow8460 at r8460; linear_combination r8460), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg32
    refine ⟨rho 15586, rho 15587, rho 15588, rho 15589, rho 15590,
      (by unfold Seg13.relationRow8461 at r8461; linear_combination r8461), (by unfold Seg13.relationRow8462 at r8462; linear_combination r8462), (by unfold Seg13.relationRow8463 at r8463; linear_combination r8463), (by unfold Seg13.relationRow8464 at r8464; linear_combination r8464), (by unfold Seg13.relationRow8465 at r8465; linear_combination r8465), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg33
    refine ⟨rho 15591, rho 15592, rho 15593, rho 15594, rho 15595,
      (by unfold Seg13.relationRow8466 at r8466; linear_combination r8466), (by unfold Seg13.relationRow8467 at r8467; linear_combination r8467), (by unfold Seg13.relationRow8468 at r8468; linear_combination r8468), (by unfold Seg13.relationRow8469 at r8469; linear_combination r8469), (by unfold Seg13.relationRow8470 at r8470; linear_combination r8470), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg34
    refine ⟨rho 15596, rho 15597, rho 15598, rho 15599, rho 15600,
      (by unfold Seg13.relationRow8471 at r8471; linear_combination r8471), (by unfold Seg13.relationRow8472 at r8472; linear_combination r8472), (by unfold Seg13.relationRow8473 at r8473; linear_combination r8473), (by unfold Seg13.relationRow8474 at r8474; linear_combination r8474), (by unfold Seg13.relationRow8475 at r8475; linear_combination r8475), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg35
    refine ⟨rho 15601, rho 15602, rho 15603, rho 15604, rho 15605,
      (by unfold Seg13.relationRow8476 at r8476; linear_combination r8476), (by unfold Seg13.relationRow8477 at r8477; linear_combination r8477), (by unfold Seg13.relationRow8478 at r8478; linear_combination r8478), (by unfold Seg13.relationRow8479 at r8479; linear_combination r8479), (by unfold Seg13.relationRow8480 at r8480; linear_combination r8480), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg36
    refine ⟨rho 15606, rho 15607, rho 15608, rho 15609, rho 15610,
      (by unfold Seg13.relationRow8481 at r8481; linear_combination r8481), (by unfold Seg13.relationRow8482 at r8482; linear_combination r8482), (by unfold Seg13.relationRow8483 at r8483; linear_combination r8483), (by unfold Seg13.relationRow8484 at r8484; linear_combination r8484), (by unfold Seg13.relationRow8485 at r8485; linear_combination r8485), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg37
    refine ⟨rho 15611, rho 15612, rho 15613, rho 15614, rho 15615,
      (by unfold Seg13.relationRow8486 at r8486; linear_combination r8486), (by unfold Seg13.relationRow8487 at r8487; linear_combination r8487), (by unfold Seg13.relationRow8488 at r8488; linear_combination r8488), (by unfold Seg13.relationRow8489 at r8489; linear_combination r8489), (by unfold Seg13.relationRow8490 at r8490; linear_combination r8490), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg38
    refine ⟨rho 15616, rho 15617, rho 15618, rho 15619, rho 15620,
      (by unfold Seg13.relationRow8491 at r8491; linear_combination r8491), (by unfold Seg13.relationRow8492 at r8492; linear_combination r8492), (by unfold Seg13.relationRow8493 at r8493; linear_combination r8493), (by unfold Seg13.relationRow8494 at r8494; linear_combination r8494), (by unfold Seg13.relationRow8495 at r8495; linear_combination r8495), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg39
    refine ⟨rho 15621, rho 15622, rho 15623, rho 15624, rho 15625,
      (by unfold Seg13.relationRow8496 at r8496; linear_combination r8496), (by unfold Seg13.relationRow8497 at r8497; linear_combination r8497), (by unfold Seg13.relationRow8498 at r8498; linear_combination r8498), (by unfold Seg13.relationRow8499 at r8499; linear_combination r8499), (by unfold Seg13.relationRow8500 at r8500; linear_combination r8500), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg40
    refine ⟨rho 15626, rho 15627, rho 15628, rho 15629, rho 15630,
      (by unfold Seg13.relationRow8501 at r8501; linear_combination r8501), (by unfold Seg13.relationRow8502 at r8502; linear_combination r8502), (by unfold Seg13.relationRow8503 at r8503; linear_combination r8503), (by unfold Seg13.relationRow8504 at r8504; linear_combination r8504), (by unfold Seg13.relationRow8505 at r8505; linear_combination r8505), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg41
    refine ⟨rho 15631, rho 15632, rho 15633, rho 15634, rho 15635,
      (by unfold Seg13.relationRow8506 at r8506; linear_combination r8506), (by unfold Seg13.relationRow8507 at r8507; linear_combination r8507), (by unfold Seg13.relationRow8508 at r8508; linear_combination r8508), (by unfold Seg13.relationRow8509 at r8509; linear_combination r8509), (by unfold Seg13.relationRow8510 at r8510; linear_combination r8510), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg42
    refine ⟨rho 15636, rho 15637, rho 15638, rho 15639, rho 15640,
      (by unfold Seg13.relationRow8511 at r8511; linear_combination r8511), (by unfold Seg13.relationRow8512 at r8512; linear_combination r8512), (by unfold Seg13.relationRow8513 at r8513; linear_combination r8513), (by unfold Seg13.relationRow8514 at r8514; linear_combination r8514), (by unfold Seg13.relationRow8515 at r8515; linear_combination r8515), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg43
    refine ⟨rho 15641, rho 15642, rho 15643, rho 15644, rho 15645,
      (by unfold Seg13.relationRow8516 at r8516; linear_combination r8516), (by unfold Seg13.relationRow8517 at r8517; linear_combination r8517), (by unfold Seg13.relationRow8518 at r8518; linear_combination r8518), (by unfold Seg13.relationRow8519 at r8519; linear_combination r8519), (by unfold Seg13.relationRow8520 at r8520; linear_combination r8520), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg44
    refine ⟨rho 15646, rho 15647, rho 15648, rho 15649, rho 15650,
      (by unfold Seg13.relationRow8521 at r8521; linear_combination r8521), (by unfold Seg13.relationRow8522 at r8522; linear_combination r8522), (by unfold Seg13.relationRow8523 at r8523; linear_combination r8523), (by unfold Seg13.relationRow8524 at r8524; linear_combination r8524), (by unfold Seg13.relationRow8525 at r8525; linear_combination r8525), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg45
    refine ⟨rho 15651, rho 15652, rho 15653, rho 15654, rho 15655,
      (by unfold Seg13.relationRow8526 at r8526; linear_combination r8526), (by unfold Seg13.relationRow8527 at r8527; linear_combination r8527), (by unfold Seg13.relationRow8528 at r8528; linear_combination r8528), (by unfold Seg13.relationRow8529 at r8529; linear_combination r8529), (by unfold Seg13.relationRow8530 at r8530; linear_combination r8530), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg46
    refine ⟨rho 15656, rho 15657, rho 15658, rho 15659, rho 15660,
      (by unfold Seg13.relationRow8531 at r8531; linear_combination r8531), (by unfold Seg13.relationRow8532 at r8532; linear_combination r8532), (by unfold Seg13.relationRow8533 at r8533; linear_combination r8533), (by unfold Seg13.relationRow8534 at r8534; linear_combination r8534), (by unfold Seg13.relationRow8535 at r8535; linear_combination r8535), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg47
    refine ⟨rho 15661, rho 15662, rho 15663, rho 15664, rho 15665,
      (by unfold Seg13.relationRow8536 at r8536; linear_combination r8536), (by unfold Seg13.relationRow8537 at r8537; linear_combination r8537), (by unfold Seg13.relationRow8538 at r8538; linear_combination r8538), (by unfold Seg13.relationRow8539 at r8539; linear_combination r8539), (by unfold Seg13.relationRow8540 at r8540; linear_combination r8540), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg48
    refine ⟨rho 15666, rho 15667, rho 15668, rho 15669, rho 15670,
      (by unfold Seg13.relationRow8541 at r8541; linear_combination r8541), (by unfold Seg13.relationRow8542 at r8542; linear_combination r8542), (by unfold Seg13.relationRow8543 at r8543; linear_combination r8543), (by unfold Seg13.relationRow8544 at r8544; linear_combination r8544), (by unfold Seg13.relationRow8545 at r8545; linear_combination r8545), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg49
    refine ⟨rho 15671, rho 15672, rho 15673, rho 15674, rho 15675,
      (by unfold Seg13.relationRow8546 at r8546; linear_combination r8546), (by unfold Seg13.relationRow8547 at r8547; linear_combination r8547), (by unfold Seg13.relationRow8548 at r8548; linear_combination r8548), (by unfold Seg13.relationRow8549 at r8549; linear_combination r8549), (by unfold Seg13.relationRow8550 at r8550; linear_combination r8550), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg50
    refine ⟨rho 15676, rho 15677, rho 15678, rho 15679, rho 15680,
      (by unfold Seg13.relationRow8551 at r8551; linear_combination r8551), (by unfold Seg13.relationRow8552 at r8552; linear_combination r8552), (by unfold Seg13.relationRow8553 at r8553; linear_combination r8553), (by unfold Seg13.relationRow8554 at r8554; linear_combination r8554), (by unfold Seg13.relationRow8555 at r8555; linear_combination r8555), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg51
    refine ⟨rho 15681, rho 15682, rho 15683, rho 15684, rho 15685,
      (by unfold Seg13.relationRow8556 at r8556; linear_combination r8556), (by unfold Seg13.relationRow8557 at r8557; linear_combination r8557), (by unfold Seg13.relationRow8558 at r8558; linear_combination r8558), (by unfold Seg13.relationRow8559 at r8559; linear_combination r8559), (by unfold Seg13.relationRow8560 at r8560; linear_combination r8560), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg52
    refine ⟨rho 15686, rho 15687, rho 15688, rho 15689, rho 15690,
      (by unfold Seg13.relationRow8561 at r8561; linear_combination r8561), (by unfold Seg13.relationRow8562 at r8562; linear_combination r8562), (by unfold Seg13.relationRow8563 at r8563; linear_combination r8563), (by unfold Seg13.relationRow8564 at r8564; linear_combination r8564), (by unfold Seg13.relationRow8565 at r8565; linear_combination r8565), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg53
    refine ⟨rho 15691, rho 15692, rho 15693, rho 15694, rho 15695,
      (by unfold Seg13.relationRow8566 at r8566; linear_combination r8566), (by unfold Seg13.relationRow8567 at r8567; linear_combination r8567), (by unfold Seg13.relationRow8568 at r8568; linear_combination r8568), (by unfold Seg13.relationRow8569 at r8569; linear_combination r8569), (by unfold Seg13.relationRow8570 at r8570; linear_combination r8570), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg54
    refine ⟨rho 15696, rho 15697, rho 15698, rho 15699, rho 15700,
      (by unfold Seg13.relationRow8571 at r8571; linear_combination r8571), (by unfold Seg13.relationRow8572 at r8572; linear_combination r8572), (by unfold Seg13.relationRow8573 at r8573; linear_combination r8573), (by unfold Seg13.relationRow8574 at r8574; linear_combination r8574), (by unfold Seg13.relationRow8575 at r8575; linear_combination r8575), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg55
    refine ⟨rho 15701, rho 15702, rho 15703, rho 15704, rho 15705,
      (by unfold Seg13.relationRow8576 at r8576; linear_combination r8576), (by unfold Seg13.relationRow8577 at r8577; linear_combination r8577), (by unfold Seg13.relationRow8578 at r8578; linear_combination r8578), (by unfold Seg13.relationRow8579 at r8579; linear_combination r8579), (by unfold Seg13.relationRow8580 at r8580; linear_combination r8580), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg56
    refine ⟨rho 15706, rho 15707, rho 15708, rho 15709, rho 15710,
      (by unfold Seg13.relationRow8581 at r8581; linear_combination r8581), (by unfold Seg13.relationRow8582 at r8582; linear_combination r8582), (by unfold Seg13.relationRow8583 at r8583; linear_combination r8583), (by unfold Seg13.relationRow8584 at r8584; linear_combination r8584), (by unfold Seg13.relationRow8585 at r8585; linear_combination r8585), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg57
    refine ⟨rho 15711, rho 15712, rho 15713, rho 15714, rho 15715,
      (by unfold Seg13.relationRow8586 at r8586; linear_combination r8586), (by unfold Seg13.relationRow8587 at r8587; linear_combination r8587), (by unfold Seg13.relationRow8588 at r8588; linear_combination r8588), (by unfold Seg13.relationRow8589 at r8589; linear_combination r8589), (by unfold Seg13.relationRow8590 at r8590; linear_combination r8590), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg58
    refine ⟨rho 15716, rho 15717, rho 15718, rho 15719, rho 15720,
      (by unfold Seg13.relationRow8591 at r8591; linear_combination r8591), (by unfold Seg13.relationRow8592 at r8592; linear_combination r8592), (by unfold Seg13.relationRow8593 at r8593; linear_combination r8593), (by unfold Seg13.relationRow8594 at r8594; linear_combination r8594), (by unfold Seg13.relationRow8595 at r8595; linear_combination r8595), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg59
    refine ⟨rho 15721, rho 15722, rho 15723, rho 15724, rho 15725,
      (by unfold Seg13.relationRow8596 at r8596; linear_combination r8596), (by unfold Seg13.relationRow8597 at r8597; linear_combination r8597), (by unfold Seg13.relationRow8598 at r8598; linear_combination r8598), (by unfold Seg13.relationRow8599 at r8599; linear_combination r8599), (by unfold Seg13.relationRow8600 at r8600; linear_combination r8600), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg60
    refine ⟨rho 15726, rho 15727, rho 15728, rho 15729, rho 15730,
      (by unfold Seg13.relationRow8601 at r8601; linear_combination r8601), (by unfold Seg13.relationRow8602 at r8602; linear_combination r8602), (by unfold Seg13.relationRow8603 at r8603; linear_combination r8603), (by unfold Seg13.relationRow8604 at r8604; linear_combination r8604), (by unfold Seg13.relationRow8605 at r8605; linear_combination r8605), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg61
    refine ⟨rho 15731, rho 15732, rho 15733, rho 15734, rho 15735,
      (by unfold Seg13.relationRow8606 at r8606; linear_combination r8606), (by unfold Seg13.relationRow8607 at r8607; linear_combination r8607), (by unfold Seg13.relationRow8608 at r8608; linear_combination r8608), (by unfold Seg13.relationRow8609 at r8609; linear_combination r8609), (by unfold Seg13.relationRow8610 at r8610; linear_combination r8610), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg62
    refine ⟨rho 15736, rho 15737, rho 15738, rho 15739, rho 15740,
      (by unfold Seg13.relationRow8611 at r8611; linear_combination r8611), (by unfold Seg13.relationRow8612 at r8612; linear_combination r8612), (by unfold Seg13.relationRow8613 at r8613; linear_combination r8613), (by unfold Seg13.relationRow8614 at r8614; linear_combination r8614), (by unfold Seg13.relationRow8615 at r8615; linear_combination r8615), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg63
    refine ⟨rho 15741, rho 15742, rho 15743, rho 15744, rho 15745,
      (by unfold Seg13.relationRow8616 at r8616; linear_combination r8616), (by unfold Seg13.relationRow8617 at r8617; linear_combination r8617), (by unfold Seg13.relationRow8618 at r8618; linear_combination r8618), (by unfold Seg13.relationRow8619 at r8619; linear_combination r8619), (by unfold Seg13.relationRow8620 at r8620; linear_combination r8620), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg64
    refine ⟨rho 15746, rho 15747, rho 15748, rho 15749, rho 15750,
      (by unfold Seg13.relationRow8621 at r8621; linear_combination r8621), (by unfold Seg13.relationRow8622 at r8622; linear_combination r8622), (by unfold Seg13.relationRow8623 at r8623; linear_combination r8623), (by unfold Seg13.relationRow8624 at r8624; linear_combination r8624), (by unfold Seg13.relationRow8625 at r8625; linear_combination r8625), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg65
    refine ⟨rho 15751, rho 15752, rho 15753, rho 15754, rho 15755,
      (by unfold Seg13.relationRow8626 at r8626; linear_combination r8626), (by unfold Seg13.relationRow8627 at r8627; linear_combination r8627), (by unfold Seg13.relationRow8628 at r8628; linear_combination r8628), (by unfold Seg13.relationRow8629 at r8629; linear_combination r8629), (by unfold Seg13.relationRow8630 at r8630; linear_combination r8630), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg66
    refine ⟨rho 15756, rho 15757, rho 15758, rho 15759, rho 15760,
      (by unfold Seg13.relationRow8631 at r8631; linear_combination r8631), (by unfold Seg13.relationRow8632 at r8632; linear_combination r8632), (by unfold Seg13.relationRow8633 at r8633; linear_combination r8633), (by unfold Seg13.relationRow8634 at r8634; linear_combination r8634), (by unfold Seg13.relationRow8635 at r8635; linear_combination r8635), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg67
    refine ⟨rho 15761, rho 15762, rho 15763, rho 15764, rho 15765,
      (by unfold Seg13.relationRow8636 at r8636; linear_combination r8636), (by unfold Seg13.relationRow8637 at r8637; linear_combination r8637), (by unfold Seg13.relationRow8638 at r8638; linear_combination r8638), (by unfold Seg13.relationRow8639 at r8639; linear_combination r8639), (by unfold Seg13.relationRow8640 at r8640; linear_combination r8640), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg68
    refine ⟨rho 15766, rho 15767, rho 15768, rho 15769, rho 15770,
      (by unfold Seg13.relationRow8641 at r8641; linear_combination r8641), (by unfold Seg13.relationRow8642 at r8642; linear_combination r8642), (by unfold Seg13.relationRow8643 at r8643; linear_combination r8643), (by unfold Seg13.relationRow8644 at r8644; linear_combination r8644), (by unfold Seg13.relationRow8645 at r8645; linear_combination r8645), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg69
    refine ⟨rho 15771, rho 15772, rho 15773, rho 15774, rho 15775,
      (by unfold Seg13.relationRow8646 at r8646; linear_combination r8646), (by unfold Seg13.relationRow8647 at r8647; linear_combination r8647), (by unfold Seg13.relationRow8648 at r8648; linear_combination r8648), (by unfold Seg13.relationRow8649 at r8649; linear_combination r8649), (by unfold Seg13.relationRow8650 at r8650; linear_combination r8650), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.relation_sound_permSpec (rho 28) (rho 29) (rho 30) (rho 15420) (rho 15421) (rho 15422) (rho 15423) (rho 15424) (rho 15425) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.tctNode23DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.F) + (23 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode22Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

