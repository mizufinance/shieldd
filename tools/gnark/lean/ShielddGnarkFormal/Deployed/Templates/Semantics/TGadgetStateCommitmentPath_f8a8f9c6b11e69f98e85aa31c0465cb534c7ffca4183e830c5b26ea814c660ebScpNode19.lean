import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode19Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode19.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node19_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg13ScpNode19Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (20 : F))
        (rho 7182 + rho 7183) (rho 7184 + rho 7185 + rho 7186)
        (rho 7184 + rho 7188 + rho 7189) (rho 7187 + rho 7190) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart90 at p90
  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, r7209, r7210, r7211, r7212, r7213, r7214, r7215, r7216, r7217, r7218, r7219, r7220, r7221, r7222, r7223, r7224, r7225, r7226, r7227, r7228, r7229, r7230, r7231, r7232, r7233, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273, r7274, r7275, r7276, r7277, r7278, r7279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart91 at p91
  rcases p91 with ⟨r7280, r7281, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313, r7314, r7315, r7316, r7317, r7318, r7319, r7320, r7321, r7322, r7323, r7324, r7325, r7326, r7327, r7328, r7329, r7330, r7331, r7332, r7333, r7334, r7335, r7336, r7337, r7338, r7339, r7340, r7341, r7342, r7343, r7344, r7345, r7346, r7347, r7348, r7349, r7350, r7351, r7352, r7353, r7354, r7355, r7356, r7357, r7358, r7359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart92 at p92
  rcases p92 with ⟨r7360, r7361, r7362, r7363, r7364, r7365, r7366, r7367, r7368, r7369, r7370, r7371, r7372, r7373, r7374, r7375, r7376, r7377, r7378, r7379, r7380, r7381, r7382, r7383, r7384, r7385, r7386, r7387, r7388, r7389, r7390, r7391, r7392, r7393, r7394, r7395, r7396, r7397, r7398, r7399, r7400, r7401, r7402, r7403, r7404, r7405, r7406, r7407, r7408, r7409, r7410, r7411, r7412, r7413, r7414, r7415, r7416, r7417, r7418, r7419, r7420, r7421, r7422, r7423, r7424, r7425, r7426, r7427, r7428, r7429, r7430, r7431, r7432, r7433, r7434, r7435, r7436, r7437, r7438, r7439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart93 at p93
  rcases p93 with ⟨r7440, r7441, r7442, r7443, r7444, r7445, r7446, r7447, r7448, r7449, r7450, r7451, r7452, r7453, r7454, r7455, r7456, r7457, r7458, r7459, r7460, r7461, r7462, r7463, r7464, r7465, r7466, r7467, r7468, r7469, r7470, r7471, r7472, r7473, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513, r7514, r7515, r7516, r7517, r7518, r7519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart94 at p94
  rcases p94 with ⟨r7520, r7521, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553, r7554, r7555, r7556, r7557, r7558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.relation (rho 7182) (rho 7184) (rho 7187) (rho 7183) (rho 7185) (rho 7186) (rho 7188) (rho 7189) (rho 7190)
      (fun o0 o1 o2 o3 o4 => o0 = rho 7520 ∧ o1 = rho 7525 ∧ o2 = rho 7530 ∧ o3 = rho 7535 ∧ o4 = rho 7540) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.relation
    exact template_scp_node19_seg0 rho _ r7209 r7210 r7211 r7212 r7213 (template_scp_node19_seg1 rho _ r7214 r7215 r7216 r7217 r7218 (template_scp_node19_seg2 rho _ r7219 r7220 r7221 r7222 r7223 (template_scp_node19_seg3 rho _ r7224 r7225 r7226 r7227 r7228 (template_scp_node19_seg4 rho _ r7229 r7230 r7231 r7232 r7233 (template_scp_node19_seg5 rho _ r7234 r7235 r7236 r7237 r7238 (template_scp_node19_seg6 rho _ r7239 r7240 r7241 r7242 r7243 (template_scp_node19_seg7 rho _ r7244 r7245 r7246 r7247 r7248 (template_scp_node19_seg8 rho _ r7249 r7250 r7251 r7252 r7253 (template_scp_node19_seg9 rho _ r7254 r7255 r7256 r7257 r7258 (template_scp_node19_seg10 rho _ r7259 r7260 r7261 r7262 r7263 (template_scp_node19_seg11 rho _ r7264 r7265 r7266 r7267 r7268 (template_scp_node19_seg12 rho _ r7269 r7270 r7271 r7272 r7273 (template_scp_node19_template rho _ r7274 r7275 r7276 r7277 r7278 (template_scp_node19_seg14 rho _ r7279 r7280 r7281 r7282 r7283 (template_scp_node19_seg15 rho _ r7284 r7285 r7286 r7287 r7288 (template_scp_node19_seg16 rho _ r7289 r7290 r7291 r7292 r7293 (template_scp_node19_seg17 rho _ r7294 r7295 r7296 r7297 r7298 (template_scp_node19_seg18 rho _ r7299 r7300 r7301 r7302 r7303 (template_scp_node19_seg19 rho _ r7304 r7305 r7306 r7307 r7308 (template_scp_node19_seg20 rho _ r7309 r7310 r7311 r7312 r7313 (template_scp_node19_seg21 rho _ r7314 r7315 r7316 r7317 r7318 (template_scp_node19_seg22 rho _ r7319 r7320 r7321 r7322 r7323 (template_scp_node19_seg23 rho _ r7324 r7325 r7326 r7327 r7328 (template_scp_node19_seg24 rho _ r7329 r7330 r7331 r7332 r7333 (template_scp_node19_seg25 rho _ r7334 r7335 r7336 r7337 r7338 (template_scp_node19_seg26 rho _ r7339 r7340 r7341 r7342 r7343 (template_scp_node19_seg27 rho _ r7344 r7345 r7346 r7347 r7348 (template_scp_node19_seg28 rho _ r7349 r7350 r7351 r7352 r7353 (template_scp_node19_seg29 rho _ r7354 r7355 r7356 r7357 r7358 (template_scp_node19_seg30 rho _ r7359 r7360 r7361 r7362 r7363 (template_scp_node19_seg31 rho _ r7364 r7365 r7366 r7367 r7368 (template_scp_node19_seg32 rho _ r7369 r7370 r7371 r7372 r7373 (template_scp_node19_seg33 rho _ r7374 r7375 r7376 r7377 r7378 (template_scp_node19_seg34 rho _ r7379 r7380 r7381 r7382 r7383 (template_scp_node19_seg35 rho _ r7384 r7385 r7386 r7387 r7388 (template_scp_node19_seg36 rho _ r7389 r7390 r7391 r7392 r7393 (template_scp_node19_seg37 rho _ r7394 r7395 r7396 r7397 r7398 (template_scp_node19_seg38 rho _ r7399 r7400 r7401 r7402 r7403 (template_scp_node19_seg39 rho _ r7404 r7405 r7406 r7407 r7408 (template_scp_node19_seg40 rho _ r7409 r7410 r7411 r7412 r7413 (template_scp_node19_seg41 rho _ r7414 r7415 r7416 r7417 r7418 (template_scp_node19_seg42 rho _ r7419 r7420 r7421 r7422 r7423 (template_scp_node19_seg43 rho _ r7424 r7425 r7426 r7427 r7428 (template_scp_node19_seg44 rho _ r7429 r7430 r7431 r7432 r7433 (template_scp_node19_seg45 rho _ r7434 r7435 r7436 r7437 r7438 (template_scp_node19_seg46 rho _ r7439 r7440 r7441 r7442 r7443 (template_scp_node19_seg47 rho _ r7444 r7445 r7446 r7447 r7448 (template_scp_node19_seg48 rho _ r7449 r7450 r7451 r7452 r7453 (template_scp_node19_seg49 rho _ r7454 r7455 r7456 r7457 r7458 (template_scp_node19_seg50 rho _ r7459 r7460 r7461 r7462 r7463 (template_scp_node19_seg51 rho _ r7464 r7465 r7466 r7467 r7468 (template_scp_node19_seg52 rho _ r7469 r7470 r7471 r7472 r7473 (template_scp_node19_seg53 rho _ r7474 r7475 r7476 r7477 r7478 (template_scp_node19_seg54 rho _ r7479 r7480 r7481 r7482 r7483 (template_scp_node19_seg55 rho _ r7484 r7485 r7486 r7487 r7488 (template_scp_node19_seg56 rho _ r7489 r7490 r7491 r7492 r7493 (template_scp_node19_seg57 rho _ r7494 r7495 r7496 r7497 r7498 (template_scp_node19_seg58 rho _ r7499 r7500 r7501 r7502 r7503 (template_scp_node19_seg59 rho _ r7504 r7505 r7506 r7507 r7508 (template_scp_node19_seg60 rho _ r7509 r7510 r7511 r7512 r7513 (template_scp_node19_seg61 rho _ r7514 r7515 r7516 r7517 r7518 (template_scp_node19_seg62 rho _ r7519 r7520 r7521 r7522 r7523 (template_scp_node19_seg63 rho _ r7524 r7525 r7526 r7527 r7528 (template_scp_node19_seg64 rho _ r7529 r7530 r7531 r7532 r7533 (template_scp_node19_seg65 rho _ r7534 r7535 r7536 r7537 r7538 (template_scp_node19_seg66 rho _ r7539 r7540 r7541 r7542 r7543 (template_scp_node19_seg67 rho _ r7544 r7545 r7546 r7547 r7548 (template_scp_node19_seg68 rho _ r7549 r7550 r7551 r7552 r7553 (template_scp_node19_seg69 rho _ r7554 r7555 r7556 r7557 r7558 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.relation_sound_permSpec (rho 7182) (rho 7184) (rho 7187) (rho 7183) (rho 7185) (rho 7186) (rho 7188) (rho 7189) (rho 7190) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.tctNode20DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.F) + (20 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode19Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode19.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

