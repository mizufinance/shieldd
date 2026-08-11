import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node22_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8551 rho)
    (r8552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8552 rho)
    (r8553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8553 rho)
    (r8554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8554 rho)
    (r8555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8555 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg50 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) next := by
  exact ⟨rho 8530, rho 8531, rho 8532, rho 8533, rho 8534, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8551 at r8551; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc206, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc206Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc206Part1] at r8551; linear_combination r8551), r8552, r8553, r8554, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8555 at r8555; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc206, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc206Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc206Part1] at r8555; linear_combination r8555), tail⟩

theorem template_scp_node22_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8556 rho)
    (r8557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8557 rho)
    (r8558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8558 rho)
    (r8559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8559 rho)
    (r8560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8560 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg51 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) next := by
  exact ⟨rho 8535, rho 8536, rho 8537, rho 8538, rho 8539, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8556 at r8556; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc207, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc207Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc207Part1] at r8556; linear_combination r8556), r8557, r8558, r8559, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8560 at r8560; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc207, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc207Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc207Part1] at r8560; linear_combination r8560), tail⟩

theorem template_scp_node22_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8561 rho)
    (r8562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8562 rho)
    (r8563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8563 rho)
    (r8564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8564 rho)
    (r8565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8565 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg52 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539) next := by
  exact ⟨rho 8540, rho 8541, rho 8542, rho 8543, rho 8544, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8561 at r8561; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc208, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc208Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc208Part1] at r8561; linear_combination r8561), r8562, r8563, r8564, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8565 at r8565; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc208, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc208Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc208Part1] at r8565; linear_combination r8565), tail⟩

theorem template_scp_node22_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8566 rho)
    (r8567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8567 rho)
    (r8568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8568 rho)
    (r8569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8569 rho)
    (r8570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8570 rho)
    (tail : next (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg53 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) next := by
  exact ⟨rho 8545, rho 8546, rho 8547, rho 8548, rho 8549, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8566 at r8566; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc209, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc209Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc209Part1] at r8566; linear_combination r8566), r8567, r8568, r8569, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8570 at r8570; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc209, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc209Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc209Part1] at r8570; linear_combination r8570), tail⟩

theorem template_scp_node22_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8571 rho)
    (r8572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8572 rho)
    (r8573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8573 rho)
    (r8574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8574 rho)
    (r8575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8575 rho)
    (tail : next (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg54 (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) next := by
  exact ⟨rho 8550, rho 8551, rho 8552, rho 8553, rho 8554, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8571 at r8571; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc210, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc210Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc210Part1] at r8571; linear_combination r8571), r8572, r8573, r8574, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8575 at r8575; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc210, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc210Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc210Part1] at r8575; linear_combination r8575), tail⟩

theorem template_scp_node22_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8576 rho)
    (r8577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8577 rho)
    (r8578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8578 rho)
    (r8579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8579 rho)
    (r8580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8580 rho)
    (tail : next (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg55 (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) next := by
  exact ⟨rho 8555, rho 8556, rho 8557, rho 8558, rho 8559, r8576, r8577, r8578, r8579, r8580, tail⟩

theorem template_scp_node22_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8581 rho)
    (r8582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8582 rho)
    (r8583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8583 rho)
    (r8584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8584 rho)
    (r8585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8585 rho)
    (tail : next (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg56 (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) next := by
  exact ⟨rho 8560, rho 8561, rho 8562, rho 8563, rho 8564, r8581, r8582, r8583, r8584, r8585, tail⟩

theorem template_scp_node22_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8586 rho)
    (r8587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8587 rho)
    (r8588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8588 rho)
    (r8589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8589 rho)
    (r8590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8590 rho)
    (tail : next (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564) (rho 8569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg57 (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564) next := by
  exact ⟨rho 8565, rho 8566, rho 8567, rho 8568, rho 8569, r8586, r8587, r8588, r8589, r8590, tail⟩

theorem template_scp_node22_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8591 rho)
    (r8592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8592 rho)
    (r8593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8593 rho)
    (r8594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8594 rho)
    (r8595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8595 rho)
    (tail : next (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564) (rho 8569) (rho 8574)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg58 (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564) (rho 8569) next := by
  exact ⟨rho 8570, rho 8571, rho 8572, rho 8573, rho 8574, r8591, r8592, r8593, r8594, r8595, tail⟩

theorem template_scp_node22_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8596 rho)
    (r8597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8597 rho)
    (r8598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8598 rho)
    (r8599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8599 rho)
    (r8600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8600 rho)
    (tail : next (rho 8559) (rho 8564) (rho 8569) (rho 8574) (rho 8579)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg59 (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564) (rho 8569) (rho 8574) next := by
  exact ⟨rho 8575, rho 8576, rho 8577, rho 8578, rho 8579, r8596, r8597, r8598, r8599, r8600, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
