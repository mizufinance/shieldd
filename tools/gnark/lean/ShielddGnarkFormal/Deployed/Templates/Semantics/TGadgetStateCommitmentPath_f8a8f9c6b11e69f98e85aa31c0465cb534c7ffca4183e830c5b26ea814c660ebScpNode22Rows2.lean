import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node22_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8401 rho)
    (r8402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8402 rho)
    (r8403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8403 rho)
    (r8404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8404 rho)
    (r8405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8405 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg20 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) next := by
  exact ⟨rho 8380, rho 8381, rho 8382, rho 8383, rho 8384, r8401, r8402, r8403, r8404, r8405, tail⟩

theorem template_scp_node22_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8406 rho)
    (r8407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8407 rho)
    (r8408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8408 rho)
    (r8409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8409 rho)
    (r8410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8410 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg21 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) next := by
  exact ⟨rho 8385, rho 8386, rho 8387, rho 8388, rho 8389, r8406, r8407, r8408, r8409, r8410, tail⟩

theorem template_scp_node22_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8411 rho)
    (r8412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8412 rho)
    (r8413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8413 rho)
    (r8414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8414 rho)
    (r8415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8415 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg22 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) next := by
  exact ⟨rho 8390, rho 8391, rho 8392, rho 8393, rho 8394, r8411, r8412, r8413, r8414, r8415, tail⟩

theorem template_scp_node22_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r8416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8416 rho)
    (r8417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8417 rho)
    (r8418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8418 rho)
    (r8419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8419 rho)
    (r8420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8420 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg23 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) next := by
  exact ⟨rho 8395, rho 8396, rho 8397, rho 8398, rho 8399, r8416, r8417, r8418, r8419, r8420, tail⟩

theorem template_scp_node22_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8421 rho)
    (r8422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8422 rho)
    (r8423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8423 rho)
    (r8424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8424 rho)
    (r8425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8425 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg24 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) next := by
  exact ⟨rho 8400, rho 8401, rho 8402, rho 8403, rho 8404, r8421, r8422, r8423, r8424, r8425, tail⟩

theorem template_scp_node22_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8426 rho)
    (r8427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8427 rho)
    (r8428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8428 rho)
    (r8429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8429 rho)
    (r8430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8430 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg25 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) next := by
  exact ⟨rho 8405, rho 8406, rho 8407, rho 8408, rho 8409, r8426, r8427, r8428, r8429, r8430, tail⟩

theorem template_scp_node22_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8431 rho)
    (r8432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8432 rho)
    (r8433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8433 rho)
    (r8434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8434 rho)
    (r8435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8435 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg26 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) next := by
  exact ⟨rho 8410, rho 8411, rho 8412, rho 8413, rho 8414, r8431, r8432, r8433, r8434, r8435, tail⟩

theorem template_scp_node22_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8436 rho)
    (r8437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8437 rho)
    (r8438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8438 rho)
    (r8439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8439 rho)
    (r8440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8440 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg27 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) next := by
  exact ⟨rho 8415, rho 8416, rho 8417, rho 8418, rho 8419, r8436, r8437, r8438, r8439, r8440, tail⟩

theorem template_scp_node22_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8441 rho)
    (r8442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8442 rho)
    (r8443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8443 rho)
    (r8444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8444 rho)
    (r8445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8445 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg28 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) next := by
  exact ⟨rho 8420, rho 8421, rho 8422, rho 8423, rho 8424, r8441, r8442, r8443, r8444, r8445, tail⟩

theorem template_scp_node22_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8446 rho)
    (r8447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8447 rho)
    (r8448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8448 rho)
    (r8449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8449 rho)
    (r8450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8450 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg29 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) next := by
  exact ⟨rho 8425, rho 8426, rho 8427, rho 8428, rho 8429, r8446, r8447, r8448, r8449, r8450, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

