import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode22.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node22_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode22Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (23 : Seg29.F))
        (rho 118 + rho 28555) (rho 119 + rho 28556 + rho 28557)
        (rho 119 + rho 28558 + rho 28559) (rho 120 + rho 28560) := by
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p103, p104, p105, p106, p107, p108, _,
    _, _, _
  ⟩
  unfold Seg29.relationPart103 at p103
  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8301, r8302, r8303, r8304, r8305, r8306, r8307, r8308, r8309, r8310, r8311, r8312, r8313, r8314, r8315, r8316, r8317, r8318, r8319⟩
  unfold Seg29.relationPart104 at p104
  rcases p104 with ⟨r8320, r8321, r8322, r8323, r8324, r8325, r8326, r8327, r8328, r8329, r8330, r8331, r8332, r8333, r8334, r8335, r8336, r8337, r8338, r8339, r8340, r8341, r8342, r8343, r8344, r8345, r8346, r8347, r8348, r8349, r8350, r8351, r8352, r8353, r8354, r8355, r8356, r8357, r8358, r8359, r8360, r8361, r8362, r8363, r8364, r8365, r8366, r8367, r8368, r8369, r8370, r8371, r8372, r8373, r8374, r8375, r8376, r8377, r8378, r8379, r8380, r8381, r8382, r8383, r8384, r8385, r8386, r8387, r8388, r8389, r8390, r8391, r8392, r8393, r8394, r8395, r8396, r8397, r8398, r8399⟩
  unfold Seg29.relationPart105 at p105
  rcases p105 with ⟨r8400, r8401, r8402, r8403, r8404, r8405, r8406, r8407, r8408, r8409, r8410, r8411, r8412, r8413, r8414, r8415, r8416, r8417, r8418, r8419, r8420, r8421, r8422, r8423, r8424, r8425, r8426, r8427, r8428, r8429, r8430, r8431, r8432, r8433, r8434, r8435, r8436, r8437, r8438, r8439, r8440, r8441, r8442, r8443, r8444, r8445, r8446, r8447, r8448, r8449, r8450, r8451, r8452, r8453, r8454, r8455, r8456, r8457, r8458, r8459, r8460, r8461, r8462, r8463, r8464, r8465, r8466, r8467, r8468, r8469, r8470, r8471, r8472, r8473, r8474, r8475, r8476, r8477, r8478, r8479⟩
  unfold Seg29.relationPart106 at p106
  rcases p106 with ⟨r8480, r8481, r8482, r8483, r8484, r8485, r8486, r8487, r8488, r8489, r8490, r8491, r8492, r8493, r8494, r8495, r8496, r8497, r8498, r8499, r8500, r8501, r8502, r8503, r8504, r8505, r8506, r8507, r8508, r8509, r8510, r8511, r8512, r8513, r8514, r8515, r8516, r8517, r8518, r8519, r8520, r8521, r8522, r8523, r8524, r8525, r8526, r8527, r8528, r8529, r8530, r8531, r8532, r8533, r8534, r8535, r8536, r8537, r8538, r8539, r8540, r8541, r8542, r8543, r8544, r8545, r8546, r8547, r8548, r8549, r8550, r8551, r8552, r8553, r8554, r8555, r8556, r8557, r8558, r8559⟩
  unfold Seg29.relationPart107 at p107
  rcases p107 with ⟨r8560, r8561, r8562, r8563, r8564, r8565, r8566, r8567, r8568, r8569, r8570, r8571, r8572, r8573, r8574, r8575, r8576, r8577, r8578, r8579, r8580, r8581, r8582, r8583, r8584, r8585, r8586, r8587, r8588, r8589, r8590, r8591, r8592, r8593, r8594, r8595, r8596, r8597, r8598, r8599, r8600, r8601, r8602, r8603, r8604, r8605, r8606, r8607, r8608, r8609, r8610, r8611, r8612, r8613, r8614, r8615, r8616, r8617, r8618, r8619, r8620, r8621, r8622, r8623, r8624, r8625, r8626, r8627, r8628, r8629, r8630, r8631, r8632, r8633, r8634, r8635, r8636, r8637, r8638, r8639⟩
  unfold Seg29.relationPart108 at p108
  rcases p108 with ⟨r8640, r8641, r8642, r8643, r8644, r8645, r8646, r8647, r8648, r8649, r8650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.relation (rho 118) (rho 119) (rho 120) (rho 28555) (rho 28556) (rho 28557) (rho 28558) (rho 28559) (rho 28560)
      (fun o0 o1 o2 o3 o4 => o0 = rho 28890 ∧ o1 = rho 28895 ∧ o2 = rho 28900 ∧ o3 = rho 28905 ∧ o4 = rho 28910) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg0
    refine ⟨rho 28561, rho 28562, rho 28563, rho 28564, rho 28565,
      (by unfold Seg29.relationRow8301 at r8301; linear_combination r8301), (by unfold Seg29.relationRow8302 at r8302; linear_combination r8302), (by unfold Seg29.relationRow8303 at r8303; linear_combination r8303), (by unfold Seg29.relationRow8304 at r8304; linear_combination r8304), (by unfold Seg29.relationRow8305 at r8305; linear_combination r8305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg1
    refine ⟨rho 28566, rho 28567, rho 28568, rho 28569, rho 28570,
      (by unfold Seg29.relationRow8306 at r8306; linear_combination r8306), (by unfold Seg29.relationRow8307 at r8307; linear_combination r8307), (by unfold Seg29.relationRow8308 at r8308; linear_combination r8308), (by unfold Seg29.relationRow8309 at r8309; linear_combination r8309), (by unfold Seg29.relationRow8310 at r8310; linear_combination r8310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg2
    refine ⟨rho 28571, rho 28572, rho 28573, rho 28574, rho 28575,
      (by unfold Seg29.relationRow8311 at r8311; linear_combination r8311), (by unfold Seg29.relationRow8312 at r8312; linear_combination r8312), (by unfold Seg29.relationRow8313 at r8313; linear_combination r8313), (by unfold Seg29.relationRow8314 at r8314; linear_combination r8314), (by unfold Seg29.relationRow8315 at r8315; linear_combination r8315), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg3
    refine ⟨rho 28576, rho 28577, rho 28578, rho 28579, rho 28580,
      (by unfold Seg29.relationRow8316 at r8316; linear_combination r8316), (by unfold Seg29.relationRow8317 at r8317; linear_combination r8317), (by unfold Seg29.relationRow8318 at r8318; linear_combination r8318), (by unfold Seg29.relationRow8319 at r8319; linear_combination r8319), (by unfold Seg29.relationRow8320 at r8320; linear_combination r8320), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg4
    refine ⟨rho 28581, rho 28582, rho 28583, rho 28584, rho 28585,
      (by unfold Seg29.relationRow8321 at r8321; linear_combination r8321), (by unfold Seg29.relationRow8322 at r8322; linear_combination r8322), (by unfold Seg29.relationRow8323 at r8323; linear_combination r8323), (by unfold Seg29.relationRow8324 at r8324; linear_combination r8324), (by unfold Seg29.relationRow8325 at r8325; linear_combination r8325), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg5
    refine ⟨rho 28586, rho 28587, rho 28588, rho 28589, rho 28590,
      (by unfold Seg29.relationRow8326 at r8326; linear_combination r8326), (by unfold Seg29.relationRow8327 at r8327; linear_combination r8327), (by unfold Seg29.relationRow8328 at r8328; linear_combination r8328), (by unfold Seg29.relationRow8329 at r8329; linear_combination r8329), (by unfold Seg29.relationRow8330 at r8330; linear_combination r8330), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg6
    refine ⟨rho 28591, rho 28592, rho 28593, rho 28594, rho 28595,
      (by unfold Seg29.relationRow8331 at r8331; linear_combination r8331), (by unfold Seg29.relationRow8332 at r8332; linear_combination r8332), (by unfold Seg29.relationRow8333 at r8333; linear_combination r8333), (by unfold Seg29.relationRow8334 at r8334; linear_combination r8334), (by unfold Seg29.relationRow8335 at r8335; linear_combination r8335), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg7
    refine ⟨rho 28596, rho 28597, rho 28598, rho 28599, rho 28600,
      (by unfold Seg29.relationRow8336 at r8336; linear_combination r8336), (by unfold Seg29.relationRow8337 at r8337; linear_combination r8337), (by unfold Seg29.relationRow8338 at r8338; linear_combination r8338), (by unfold Seg29.relationRow8339 at r8339; linear_combination r8339), (by unfold Seg29.relationRow8340 at r8340; linear_combination r8340), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg8
    refine ⟨rho 28601, rho 28602, rho 28603, rho 28604, rho 28605,
      (by unfold Seg29.relationRow8341 at r8341; linear_combination r8341), (by unfold Seg29.relationRow8342 at r8342; linear_combination r8342), (by unfold Seg29.relationRow8343 at r8343; linear_combination r8343), (by unfold Seg29.relationRow8344 at r8344; linear_combination r8344), (by unfold Seg29.relationRow8345 at r8345; linear_combination r8345), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg9
    refine ⟨rho 28606, rho 28607, rho 28608, rho 28609, rho 28610,
      (by unfold Seg29.relationRow8346 at r8346; linear_combination r8346), (by unfold Seg29.relationRow8347 at r8347; linear_combination r8347), (by unfold Seg29.relationRow8348 at r8348; linear_combination r8348), (by unfold Seg29.relationRow8349 at r8349; linear_combination r8349), (by unfold Seg29.relationRow8350 at r8350; linear_combination r8350), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg10
    refine ⟨rho 28611, rho 28612, rho 28613, rho 28614, rho 28615,
      (by unfold Seg29.relationRow8351 at r8351; linear_combination r8351), (by unfold Seg29.relationRow8352 at r8352; linear_combination r8352), (by unfold Seg29.relationRow8353 at r8353; linear_combination r8353), (by unfold Seg29.relationRow8354 at r8354; linear_combination r8354), (by unfold Seg29.relationRow8355 at r8355; linear_combination r8355), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg11
    refine ⟨rho 28616, rho 28617, rho 28618, rho 28619, rho 28620,
      (by unfold Seg29.relationRow8356 at r8356; linear_combination r8356), (by unfold Seg29.relationRow8357 at r8357; linear_combination r8357), (by unfold Seg29.relationRow8358 at r8358; linear_combination r8358), (by unfold Seg29.relationRow8359 at r8359; linear_combination r8359), (by unfold Seg29.relationRow8360 at r8360; linear_combination r8360), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg12
    refine ⟨rho 28621, rho 28622, rho 28623, rho 28624, rho 28625,
      (by unfold Seg29.relationRow8361 at r8361; linear_combination r8361), (by unfold Seg29.relationRow8362 at r8362; linear_combination r8362), (by unfold Seg29.relationRow8363 at r8363; linear_combination r8363), (by unfold Seg29.relationRow8364 at r8364; linear_combination r8364), (by unfold Seg29.relationRow8365 at r8365; linear_combination r8365), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg13
    refine ⟨rho 28626, rho 28627, rho 28628, rho 28629, rho 28630,
      (by unfold Seg29.relationRow8366 at r8366; linear_combination r8366), (by unfold Seg29.relationRow8367 at r8367; linear_combination r8367), (by unfold Seg29.relationRow8368 at r8368; linear_combination r8368), (by unfold Seg29.relationRow8369 at r8369; linear_combination r8369), (by unfold Seg29.relationRow8370 at r8370; linear_combination r8370), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg14
    refine ⟨rho 28631, rho 28632, rho 28633, rho 28634, rho 28635,
      (by unfold Seg29.relationRow8371 at r8371; linear_combination r8371), (by unfold Seg29.relationRow8372 at r8372; linear_combination r8372), (by unfold Seg29.relationRow8373 at r8373; linear_combination r8373), (by unfold Seg29.relationRow8374 at r8374; linear_combination r8374), (by unfold Seg29.relationRow8375 at r8375; linear_combination r8375), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg15
    refine ⟨rho 28636, rho 28637, rho 28638, rho 28639, rho 28640,
      (by unfold Seg29.relationRow8376 at r8376; linear_combination r8376), (by unfold Seg29.relationRow8377 at r8377; linear_combination r8377), (by unfold Seg29.relationRow8378 at r8378; linear_combination r8378), (by unfold Seg29.relationRow8379 at r8379; linear_combination r8379), (by unfold Seg29.relationRow8380 at r8380; linear_combination r8380), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg16
    refine ⟨rho 28641, rho 28642, rho 28643, rho 28644, rho 28645,
      (by unfold Seg29.relationRow8381 at r8381; linear_combination r8381), (by unfold Seg29.relationRow8382 at r8382; linear_combination r8382), (by unfold Seg29.relationRow8383 at r8383; linear_combination r8383), (by unfold Seg29.relationRow8384 at r8384; linear_combination r8384), (by unfold Seg29.relationRow8385 at r8385; linear_combination r8385), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg17
    refine ⟨rho 28646, rho 28647, rho 28648, rho 28649, rho 28650,
      (by unfold Seg29.relationRow8386 at r8386; linear_combination r8386), (by unfold Seg29.relationRow8387 at r8387; linear_combination r8387), (by unfold Seg29.relationRow8388 at r8388; linear_combination r8388), (by unfold Seg29.relationRow8389 at r8389; linear_combination r8389), (by unfold Seg29.relationRow8390 at r8390; linear_combination r8390), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg18
    refine ⟨rho 28651, rho 28652, rho 28653, rho 28654, rho 28655,
      (by unfold Seg29.relationRow8391 at r8391; linear_combination r8391), (by unfold Seg29.relationRow8392 at r8392; linear_combination r8392), (by unfold Seg29.relationRow8393 at r8393; linear_combination r8393), (by unfold Seg29.relationRow8394 at r8394; linear_combination r8394), (by unfold Seg29.relationRow8395 at r8395; linear_combination r8395), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg19
    refine ⟨rho 28656, rho 28657, rho 28658, rho 28659, rho 28660,
      (by unfold Seg29.relationRow8396 at r8396; linear_combination r8396), (by unfold Seg29.relationRow8397 at r8397; linear_combination r8397), (by unfold Seg29.relationRow8398 at r8398; linear_combination r8398), (by unfold Seg29.relationRow8399 at r8399; linear_combination r8399), (by unfold Seg29.relationRow8400 at r8400; linear_combination r8400), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg20
    refine ⟨rho 28661, rho 28662, rho 28663, rho 28664, rho 28665,
      (by unfold Seg29.relationRow8401 at r8401; linear_combination r8401), (by unfold Seg29.relationRow8402 at r8402; linear_combination r8402), (by unfold Seg29.relationRow8403 at r8403; linear_combination r8403), (by unfold Seg29.relationRow8404 at r8404; linear_combination r8404), (by unfold Seg29.relationRow8405 at r8405; linear_combination r8405), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg21
    refine ⟨rho 28666, rho 28667, rho 28668, rho 28669, rho 28670,
      (by unfold Seg29.relationRow8406 at r8406; linear_combination r8406), (by unfold Seg29.relationRow8407 at r8407; linear_combination r8407), (by unfold Seg29.relationRow8408 at r8408; linear_combination r8408), (by unfold Seg29.relationRow8409 at r8409; linear_combination r8409), (by unfold Seg29.relationRow8410 at r8410; linear_combination r8410), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg22
    refine ⟨rho 28671, rho 28672, rho 28673, rho 28674, rho 28675,
      (by unfold Seg29.relationRow8411 at r8411; linear_combination r8411), (by unfold Seg29.relationRow8412 at r8412; linear_combination r8412), (by unfold Seg29.relationRow8413 at r8413; linear_combination r8413), (by unfold Seg29.relationRow8414 at r8414; linear_combination r8414), (by unfold Seg29.relationRow8415 at r8415; linear_combination r8415), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg23
    refine ⟨rho 28676, rho 28677, rho 28678, rho 28679, rho 28680,
      (by unfold Seg29.relationRow8416 at r8416; linear_combination r8416), (by unfold Seg29.relationRow8417 at r8417; linear_combination r8417), (by unfold Seg29.relationRow8418 at r8418; linear_combination r8418), (by unfold Seg29.relationRow8419 at r8419; linear_combination r8419), (by unfold Seg29.relationRow8420 at r8420; linear_combination r8420), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg24
    refine ⟨rho 28681, rho 28682, rho 28683, rho 28684, rho 28685,
      (by unfold Seg29.relationRow8421 at r8421; linear_combination r8421), (by unfold Seg29.relationRow8422 at r8422; linear_combination r8422), (by unfold Seg29.relationRow8423 at r8423; linear_combination r8423), (by unfold Seg29.relationRow8424 at r8424; linear_combination r8424), (by unfold Seg29.relationRow8425 at r8425; linear_combination r8425), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg25
    refine ⟨rho 28686, rho 28687, rho 28688, rho 28689, rho 28690,
      (by unfold Seg29.relationRow8426 at r8426; linear_combination r8426), (by unfold Seg29.relationRow8427 at r8427; linear_combination r8427), (by unfold Seg29.relationRow8428 at r8428; linear_combination r8428), (by unfold Seg29.relationRow8429 at r8429; linear_combination r8429), (by unfold Seg29.relationRow8430 at r8430; linear_combination r8430), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg26
    refine ⟨rho 28691, rho 28692, rho 28693, rho 28694, rho 28695,
      (by unfold Seg29.relationRow8431 at r8431; linear_combination r8431), (by unfold Seg29.relationRow8432 at r8432; linear_combination r8432), (by unfold Seg29.relationRow8433 at r8433; linear_combination r8433), (by unfold Seg29.relationRow8434 at r8434; linear_combination r8434), (by unfold Seg29.relationRow8435 at r8435; linear_combination r8435), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg27
    refine ⟨rho 28696, rho 28697, rho 28698, rho 28699, rho 28700,
      (by unfold Seg29.relationRow8436 at r8436; linear_combination r8436), (by unfold Seg29.relationRow8437 at r8437; linear_combination r8437), (by unfold Seg29.relationRow8438 at r8438; linear_combination r8438), (by unfold Seg29.relationRow8439 at r8439; linear_combination r8439), (by unfold Seg29.relationRow8440 at r8440; linear_combination r8440), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg28
    refine ⟨rho 28701, rho 28702, rho 28703, rho 28704, rho 28705,
      (by unfold Seg29.relationRow8441 at r8441; linear_combination r8441), (by unfold Seg29.relationRow8442 at r8442; linear_combination r8442), (by unfold Seg29.relationRow8443 at r8443; linear_combination r8443), (by unfold Seg29.relationRow8444 at r8444; linear_combination r8444), (by unfold Seg29.relationRow8445 at r8445; linear_combination r8445), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg29
    refine ⟨rho 28706, rho 28707, rho 28708, rho 28709, rho 28710,
      (by unfold Seg29.relationRow8446 at r8446; linear_combination r8446), (by unfold Seg29.relationRow8447 at r8447; linear_combination r8447), (by unfold Seg29.relationRow8448 at r8448; linear_combination r8448), (by unfold Seg29.relationRow8449 at r8449; linear_combination r8449), (by unfold Seg29.relationRow8450 at r8450; linear_combination r8450), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg30
    refine ⟨rho 28711, rho 28712, rho 28713, rho 28714, rho 28715,
      (by unfold Seg29.relationRow8451 at r8451; linear_combination r8451), (by unfold Seg29.relationRow8452 at r8452; linear_combination r8452), (by unfold Seg29.relationRow8453 at r8453; linear_combination r8453), (by unfold Seg29.relationRow8454 at r8454; linear_combination r8454), (by unfold Seg29.relationRow8455 at r8455; linear_combination r8455), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg31
    refine ⟨rho 28716, rho 28717, rho 28718, rho 28719, rho 28720,
      (by unfold Seg29.relationRow8456 at r8456; linear_combination r8456), (by unfold Seg29.relationRow8457 at r8457; linear_combination r8457), (by unfold Seg29.relationRow8458 at r8458; linear_combination r8458), (by unfold Seg29.relationRow8459 at r8459; linear_combination r8459), (by unfold Seg29.relationRow8460 at r8460; linear_combination r8460), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg32
    refine ⟨rho 28721, rho 28722, rho 28723, rho 28724, rho 28725,
      (by unfold Seg29.relationRow8461 at r8461; linear_combination r8461), (by unfold Seg29.relationRow8462 at r8462; linear_combination r8462), (by unfold Seg29.relationRow8463 at r8463; linear_combination r8463), (by unfold Seg29.relationRow8464 at r8464; linear_combination r8464), (by unfold Seg29.relationRow8465 at r8465; linear_combination r8465), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg33
    refine ⟨rho 28726, rho 28727, rho 28728, rho 28729, rho 28730,
      (by unfold Seg29.relationRow8466 at r8466; linear_combination r8466), (by unfold Seg29.relationRow8467 at r8467; linear_combination r8467), (by unfold Seg29.relationRow8468 at r8468; linear_combination r8468), (by unfold Seg29.relationRow8469 at r8469; linear_combination r8469), (by unfold Seg29.relationRow8470 at r8470; linear_combination r8470), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg34
    refine ⟨rho 28731, rho 28732, rho 28733, rho 28734, rho 28735,
      (by unfold Seg29.relationRow8471 at r8471; linear_combination r8471), (by unfold Seg29.relationRow8472 at r8472; linear_combination r8472), (by unfold Seg29.relationRow8473 at r8473; linear_combination r8473), (by unfold Seg29.relationRow8474 at r8474; linear_combination r8474), (by unfold Seg29.relationRow8475 at r8475; linear_combination r8475), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg35
    refine ⟨rho 28736, rho 28737, rho 28738, rho 28739, rho 28740,
      (by unfold Seg29.relationRow8476 at r8476; linear_combination r8476), (by unfold Seg29.relationRow8477 at r8477; linear_combination r8477), (by unfold Seg29.relationRow8478 at r8478; linear_combination r8478), (by unfold Seg29.relationRow8479 at r8479; linear_combination r8479), (by unfold Seg29.relationRow8480 at r8480; linear_combination r8480), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg36
    refine ⟨rho 28741, rho 28742, rho 28743, rho 28744, rho 28745,
      (by unfold Seg29.relationRow8481 at r8481; linear_combination r8481), (by unfold Seg29.relationRow8482 at r8482; linear_combination r8482), (by unfold Seg29.relationRow8483 at r8483; linear_combination r8483), (by unfold Seg29.relationRow8484 at r8484; linear_combination r8484), (by unfold Seg29.relationRow8485 at r8485; linear_combination r8485), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg37
    refine ⟨rho 28746, rho 28747, rho 28748, rho 28749, rho 28750,
      (by unfold Seg29.relationRow8486 at r8486; linear_combination r8486), (by unfold Seg29.relationRow8487 at r8487; linear_combination r8487), (by unfold Seg29.relationRow8488 at r8488; linear_combination r8488), (by unfold Seg29.relationRow8489 at r8489; linear_combination r8489), (by unfold Seg29.relationRow8490 at r8490; linear_combination r8490), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg38
    refine ⟨rho 28751, rho 28752, rho 28753, rho 28754, rho 28755,
      (by unfold Seg29.relationRow8491 at r8491; linear_combination r8491), (by unfold Seg29.relationRow8492 at r8492; linear_combination r8492), (by unfold Seg29.relationRow8493 at r8493; linear_combination r8493), (by unfold Seg29.relationRow8494 at r8494; linear_combination r8494), (by unfold Seg29.relationRow8495 at r8495; linear_combination r8495), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg39
    refine ⟨rho 28756, rho 28757, rho 28758, rho 28759, rho 28760,
      (by unfold Seg29.relationRow8496 at r8496; linear_combination r8496), (by unfold Seg29.relationRow8497 at r8497; linear_combination r8497), (by unfold Seg29.relationRow8498 at r8498; linear_combination r8498), (by unfold Seg29.relationRow8499 at r8499; linear_combination r8499), (by unfold Seg29.relationRow8500 at r8500; linear_combination r8500), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg40
    refine ⟨rho 28761, rho 28762, rho 28763, rho 28764, rho 28765,
      (by unfold Seg29.relationRow8501 at r8501; linear_combination r8501), (by unfold Seg29.relationRow8502 at r8502; linear_combination r8502), (by unfold Seg29.relationRow8503 at r8503; linear_combination r8503), (by unfold Seg29.relationRow8504 at r8504; linear_combination r8504), (by unfold Seg29.relationRow8505 at r8505; linear_combination r8505), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg41
    refine ⟨rho 28766, rho 28767, rho 28768, rho 28769, rho 28770,
      (by unfold Seg29.relationRow8506 at r8506; linear_combination r8506), (by unfold Seg29.relationRow8507 at r8507; linear_combination r8507), (by unfold Seg29.relationRow8508 at r8508; linear_combination r8508), (by unfold Seg29.relationRow8509 at r8509; linear_combination r8509), (by unfold Seg29.relationRow8510 at r8510; linear_combination r8510), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg42
    refine ⟨rho 28771, rho 28772, rho 28773, rho 28774, rho 28775,
      (by unfold Seg29.relationRow8511 at r8511; linear_combination r8511), (by unfold Seg29.relationRow8512 at r8512; linear_combination r8512), (by unfold Seg29.relationRow8513 at r8513; linear_combination r8513), (by unfold Seg29.relationRow8514 at r8514; linear_combination r8514), (by unfold Seg29.relationRow8515 at r8515; linear_combination r8515), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg43
    refine ⟨rho 28776, rho 28777, rho 28778, rho 28779, rho 28780,
      (by unfold Seg29.relationRow8516 at r8516; linear_combination r8516), (by unfold Seg29.relationRow8517 at r8517; linear_combination r8517), (by unfold Seg29.relationRow8518 at r8518; linear_combination r8518), (by unfold Seg29.relationRow8519 at r8519; linear_combination r8519), (by unfold Seg29.relationRow8520 at r8520; linear_combination r8520), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg44
    refine ⟨rho 28781, rho 28782, rho 28783, rho 28784, rho 28785,
      (by unfold Seg29.relationRow8521 at r8521; linear_combination r8521), (by unfold Seg29.relationRow8522 at r8522; linear_combination r8522), (by unfold Seg29.relationRow8523 at r8523; linear_combination r8523), (by unfold Seg29.relationRow8524 at r8524; linear_combination r8524), (by unfold Seg29.relationRow8525 at r8525; linear_combination r8525), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg45
    refine ⟨rho 28786, rho 28787, rho 28788, rho 28789, rho 28790,
      (by unfold Seg29.relationRow8526 at r8526; linear_combination r8526), (by unfold Seg29.relationRow8527 at r8527; linear_combination r8527), (by unfold Seg29.relationRow8528 at r8528; linear_combination r8528), (by unfold Seg29.relationRow8529 at r8529; linear_combination r8529), (by unfold Seg29.relationRow8530 at r8530; linear_combination r8530), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg46
    refine ⟨rho 28791, rho 28792, rho 28793, rho 28794, rho 28795,
      (by unfold Seg29.relationRow8531 at r8531; linear_combination r8531), (by unfold Seg29.relationRow8532 at r8532; linear_combination r8532), (by unfold Seg29.relationRow8533 at r8533; linear_combination r8533), (by unfold Seg29.relationRow8534 at r8534; linear_combination r8534), (by unfold Seg29.relationRow8535 at r8535; linear_combination r8535), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg47
    refine ⟨rho 28796, rho 28797, rho 28798, rho 28799, rho 28800,
      (by unfold Seg29.relationRow8536 at r8536; linear_combination r8536), (by unfold Seg29.relationRow8537 at r8537; linear_combination r8537), (by unfold Seg29.relationRow8538 at r8538; linear_combination r8538), (by unfold Seg29.relationRow8539 at r8539; linear_combination r8539), (by unfold Seg29.relationRow8540 at r8540; linear_combination r8540), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg48
    refine ⟨rho 28801, rho 28802, rho 28803, rho 28804, rho 28805,
      (by unfold Seg29.relationRow8541 at r8541; linear_combination r8541), (by unfold Seg29.relationRow8542 at r8542; linear_combination r8542), (by unfold Seg29.relationRow8543 at r8543; linear_combination r8543), (by unfold Seg29.relationRow8544 at r8544; linear_combination r8544), (by unfold Seg29.relationRow8545 at r8545; linear_combination r8545), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg49
    refine ⟨rho 28806, rho 28807, rho 28808, rho 28809, rho 28810,
      (by unfold Seg29.relationRow8546 at r8546; linear_combination r8546), (by unfold Seg29.relationRow8547 at r8547; linear_combination r8547), (by unfold Seg29.relationRow8548 at r8548; linear_combination r8548), (by unfold Seg29.relationRow8549 at r8549; linear_combination r8549), (by unfold Seg29.relationRow8550 at r8550; linear_combination r8550), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg50
    refine ⟨rho 28811, rho 28812, rho 28813, rho 28814, rho 28815,
      (by unfold Seg29.relationRow8551 at r8551; linear_combination r8551), (by unfold Seg29.relationRow8552 at r8552; linear_combination r8552), (by unfold Seg29.relationRow8553 at r8553; linear_combination r8553), (by unfold Seg29.relationRow8554 at r8554; linear_combination r8554), (by unfold Seg29.relationRow8555 at r8555; linear_combination r8555), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg51
    refine ⟨rho 28816, rho 28817, rho 28818, rho 28819, rho 28820,
      (by unfold Seg29.relationRow8556 at r8556; linear_combination r8556), (by unfold Seg29.relationRow8557 at r8557; linear_combination r8557), (by unfold Seg29.relationRow8558 at r8558; linear_combination r8558), (by unfold Seg29.relationRow8559 at r8559; linear_combination r8559), (by unfold Seg29.relationRow8560 at r8560; linear_combination r8560), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg52
    refine ⟨rho 28821, rho 28822, rho 28823, rho 28824, rho 28825,
      (by unfold Seg29.relationRow8561 at r8561; linear_combination r8561), (by unfold Seg29.relationRow8562 at r8562; linear_combination r8562), (by unfold Seg29.relationRow8563 at r8563; linear_combination r8563), (by unfold Seg29.relationRow8564 at r8564; linear_combination r8564), (by unfold Seg29.relationRow8565 at r8565; linear_combination r8565), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg53
    refine ⟨rho 28826, rho 28827, rho 28828, rho 28829, rho 28830,
      (by unfold Seg29.relationRow8566 at r8566; linear_combination r8566), (by unfold Seg29.relationRow8567 at r8567; linear_combination r8567), (by unfold Seg29.relationRow8568 at r8568; linear_combination r8568), (by unfold Seg29.relationRow8569 at r8569; linear_combination r8569), (by unfold Seg29.relationRow8570 at r8570; linear_combination r8570), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg54
    refine ⟨rho 28831, rho 28832, rho 28833, rho 28834, rho 28835,
      (by unfold Seg29.relationRow8571 at r8571; linear_combination r8571), (by unfold Seg29.relationRow8572 at r8572; linear_combination r8572), (by unfold Seg29.relationRow8573 at r8573; linear_combination r8573), (by unfold Seg29.relationRow8574 at r8574; linear_combination r8574), (by unfold Seg29.relationRow8575 at r8575; linear_combination r8575), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg55
    refine ⟨rho 28836, rho 28837, rho 28838, rho 28839, rho 28840,
      (by unfold Seg29.relationRow8576 at r8576; linear_combination r8576), (by unfold Seg29.relationRow8577 at r8577; linear_combination r8577), (by unfold Seg29.relationRow8578 at r8578; linear_combination r8578), (by unfold Seg29.relationRow8579 at r8579; linear_combination r8579), (by unfold Seg29.relationRow8580 at r8580; linear_combination r8580), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg56
    refine ⟨rho 28841, rho 28842, rho 28843, rho 28844, rho 28845,
      (by unfold Seg29.relationRow8581 at r8581; linear_combination r8581), (by unfold Seg29.relationRow8582 at r8582; linear_combination r8582), (by unfold Seg29.relationRow8583 at r8583; linear_combination r8583), (by unfold Seg29.relationRow8584 at r8584; linear_combination r8584), (by unfold Seg29.relationRow8585 at r8585; linear_combination r8585), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg57
    refine ⟨rho 28846, rho 28847, rho 28848, rho 28849, rho 28850,
      (by unfold Seg29.relationRow8586 at r8586; linear_combination r8586), (by unfold Seg29.relationRow8587 at r8587; linear_combination r8587), (by unfold Seg29.relationRow8588 at r8588; linear_combination r8588), (by unfold Seg29.relationRow8589 at r8589; linear_combination r8589), (by unfold Seg29.relationRow8590 at r8590; linear_combination r8590), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg58
    refine ⟨rho 28851, rho 28852, rho 28853, rho 28854, rho 28855,
      (by unfold Seg29.relationRow8591 at r8591; linear_combination r8591), (by unfold Seg29.relationRow8592 at r8592; linear_combination r8592), (by unfold Seg29.relationRow8593 at r8593; linear_combination r8593), (by unfold Seg29.relationRow8594 at r8594; linear_combination r8594), (by unfold Seg29.relationRow8595 at r8595; linear_combination r8595), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg59
    refine ⟨rho 28856, rho 28857, rho 28858, rho 28859, rho 28860,
      (by unfold Seg29.relationRow8596 at r8596; linear_combination r8596), (by unfold Seg29.relationRow8597 at r8597; linear_combination r8597), (by unfold Seg29.relationRow8598 at r8598; linear_combination r8598), (by unfold Seg29.relationRow8599 at r8599; linear_combination r8599), (by unfold Seg29.relationRow8600 at r8600; linear_combination r8600), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg60
    refine ⟨rho 28861, rho 28862, rho 28863, rho 28864, rho 28865,
      (by unfold Seg29.relationRow8601 at r8601; linear_combination r8601), (by unfold Seg29.relationRow8602 at r8602; linear_combination r8602), (by unfold Seg29.relationRow8603 at r8603; linear_combination r8603), (by unfold Seg29.relationRow8604 at r8604; linear_combination r8604), (by unfold Seg29.relationRow8605 at r8605; linear_combination r8605), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg61
    refine ⟨rho 28866, rho 28867, rho 28868, rho 28869, rho 28870,
      (by unfold Seg29.relationRow8606 at r8606; linear_combination r8606), (by unfold Seg29.relationRow8607 at r8607; linear_combination r8607), (by unfold Seg29.relationRow8608 at r8608; linear_combination r8608), (by unfold Seg29.relationRow8609 at r8609; linear_combination r8609), (by unfold Seg29.relationRow8610 at r8610; linear_combination r8610), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg62
    refine ⟨rho 28871, rho 28872, rho 28873, rho 28874, rho 28875,
      (by unfold Seg29.relationRow8611 at r8611; linear_combination r8611), (by unfold Seg29.relationRow8612 at r8612; linear_combination r8612), (by unfold Seg29.relationRow8613 at r8613; linear_combination r8613), (by unfold Seg29.relationRow8614 at r8614; linear_combination r8614), (by unfold Seg29.relationRow8615 at r8615; linear_combination r8615), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg63
    refine ⟨rho 28876, rho 28877, rho 28878, rho 28879, rho 28880,
      (by unfold Seg29.relationRow8616 at r8616; linear_combination r8616), (by unfold Seg29.relationRow8617 at r8617; linear_combination r8617), (by unfold Seg29.relationRow8618 at r8618; linear_combination r8618), (by unfold Seg29.relationRow8619 at r8619; linear_combination r8619), (by unfold Seg29.relationRow8620 at r8620; linear_combination r8620), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg64
    refine ⟨rho 28881, rho 28882, rho 28883, rho 28884, rho 28885,
      (by unfold Seg29.relationRow8621 at r8621; linear_combination r8621), (by unfold Seg29.relationRow8622 at r8622; linear_combination r8622), (by unfold Seg29.relationRow8623 at r8623; linear_combination r8623), (by unfold Seg29.relationRow8624 at r8624; linear_combination r8624), (by unfold Seg29.relationRow8625 at r8625; linear_combination r8625), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg65
    refine ⟨rho 28886, rho 28887, rho 28888, rho 28889, rho 28890,
      (by unfold Seg29.relationRow8626 at r8626; linear_combination r8626), (by unfold Seg29.relationRow8627 at r8627; linear_combination r8627), (by unfold Seg29.relationRow8628 at r8628; linear_combination r8628), (by unfold Seg29.relationRow8629 at r8629; linear_combination r8629), (by unfold Seg29.relationRow8630 at r8630; linear_combination r8630), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg66
    refine ⟨rho 28891, rho 28892, rho 28893, rho 28894, rho 28895,
      (by unfold Seg29.relationRow8631 at r8631; linear_combination r8631), (by unfold Seg29.relationRow8632 at r8632; linear_combination r8632), (by unfold Seg29.relationRow8633 at r8633; linear_combination r8633), (by unfold Seg29.relationRow8634 at r8634; linear_combination r8634), (by unfold Seg29.relationRow8635 at r8635; linear_combination r8635), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg67
    refine ⟨rho 28896, rho 28897, rho 28898, rho 28899, rho 28900,
      (by unfold Seg29.relationRow8636 at r8636; linear_combination r8636), (by unfold Seg29.relationRow8637 at r8637; linear_combination r8637), (by unfold Seg29.relationRow8638 at r8638; linear_combination r8638), (by unfold Seg29.relationRow8639 at r8639; linear_combination r8639), (by unfold Seg29.relationRow8640 at r8640; linear_combination r8640), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg68
    refine ⟨rho 28901, rho 28902, rho 28903, rho 28904, rho 28905,
      (by unfold Seg29.relationRow8641 at r8641; linear_combination r8641), (by unfold Seg29.relationRow8642 at r8642; linear_combination r8642), (by unfold Seg29.relationRow8643 at r8643; linear_combination r8643), (by unfold Seg29.relationRow8644 at r8644; linear_combination r8644), (by unfold Seg29.relationRow8645 at r8645; linear_combination r8645), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg69
    refine ⟨rho 28906, rho 28907, rho 28908, rho 28909, rho 28910,
      (by unfold Seg29.relationRow8646 at r8646; linear_combination r8646), (by unfold Seg29.relationRow8647 at r8647; linear_combination r8647), (by unfold Seg29.relationRow8648 at r8648; linear_combination r8648), (by unfold Seg29.relationRow8649 at r8649; linear_combination r8649), (by unfold Seg29.relationRow8650 at r8650; linear_combination r8650), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.relation_sound_permSpec (rho 118) (rho 119) (rho 120) (rho 28555) (rho 28556) (rho 28557) (rho 28558) (rho 28559) (rho 28560) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.tctNode23DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.F) + (23 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode22Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

