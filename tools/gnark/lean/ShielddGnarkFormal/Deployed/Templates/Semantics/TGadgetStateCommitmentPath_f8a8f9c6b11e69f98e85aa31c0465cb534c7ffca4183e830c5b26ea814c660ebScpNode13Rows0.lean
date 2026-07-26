import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node13_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5025 rho)
    (r5026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5026 rho)
    (r5027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5027 rho)
    (r5028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5028 rho)
    (r5029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5029 rho)
    (tail : next (rho 5006) (rho 5009) (rho 5007) (rho 5008) (rho 5010) (rho 5011) (rho 5012) (rho 5017)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg0 (rho 5004) (rho 5006) (rho 5009) (rho 5005) (rho 5007) (rho 5008) (rho 5010) (rho 5011) (rho 5012) next := by
  exact ⟨rho 5013, rho 5014, rho 5015, rho 5016, rho 5017, r5025, r5026, r5027, r5028, r5029, tail⟩

theorem template_scp_node13_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5030 rho)
    (r5031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5031 rho)
    (r5032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5032 rho)
    (r5033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5033 rho)
    (r5034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5034 rho)
    (tail : next (rho 5006) (rho 5009) (rho 5010) (rho 5011) (rho 5012) (rho 5017) (rho 5022)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg1 (rho 5006) (rho 5009) (rho 5007) (rho 5008) (rho 5010) (rho 5011) (rho 5012) (rho 5017) next := by
  exact ⟨rho 5018, rho 5019, rho 5020, rho 5021, rho 5022, r5030, r5031, r5032, r5033, r5034, tail⟩

theorem template_scp_node13_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5035 rho)
    (r5036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5036 rho)
    (r5037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5037 rho)
    (r5038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5038 rho)
    (r5039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5039 rho)
    (tail : next (rho 5009) (rho 5012) (rho 5017) (rho 5022) (rho 5027)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg2 (rho 5006) (rho 5009) (rho 5010) (rho 5011) (rho 5012) (rho 5017) (rho 5022) next := by
  exact ⟨rho 5023, rho 5024, rho 5025, rho 5026, rho 5027, r5035, r5036, r5037, r5038, r5039, tail⟩

theorem template_scp_node13_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r5040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5040 rho)
    (r5041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5041 rho)
    (r5042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5042 rho)
    (r5043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5043 rho)
    (r5044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5044 rho)
    (tail : next (rho 5017) (rho 5022) (rho 5027) (rho 5032)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg3 (rho 5009) (rho 5012) (rho 5017) (rho 5022) (rho 5027) next := by
  exact ⟨rho 5028, rho 5029, rho 5030, rho 5031, rho 5032, r5040, r5041, r5042, r5043, r5044, tail⟩

theorem template_scp_node13_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5045 rho)
    (r5046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5046 rho)
    (r5047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5047 rho)
    (r5048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5048 rho)
    (r5049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5049 rho)
    (tail : next (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg4 (rho 5017) (rho 5022) (rho 5027) (rho 5032) next := by
  exact ⟨rho 5033, rho 5034, rho 5035, rho 5036, rho 5037, r5045, r5046, r5047, r5048, r5049, tail⟩

theorem template_scp_node13_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5050 rho)
    (r5051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5051 rho)
    (r5052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5052 rho)
    (r5053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5053 rho)
    (r5054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5054 rho)
    (tail : next (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) (rho 5042)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg5 (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) next := by
  exact ⟨rho 5038, rho 5039, rho 5040, rho 5041, rho 5042, r5050, r5051, r5052, r5053, r5054, tail⟩

theorem template_scp_node13_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5055 rho)
    (r5056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5056 rho)
    (r5057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5057 rho)
    (r5058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5058 rho)
    (r5059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5059 rho)
    (tail : next (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) (rho 5042) (rho 5047)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg6 (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) (rho 5042) next := by
  exact ⟨rho 5043, rho 5044, rho 5045, rho 5046, rho 5047, r5055, r5056, r5057, r5058, r5059, tail⟩

theorem template_scp_node13_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5060 rho)
    (r5061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5061 rho)
    (r5062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5062 rho)
    (r5063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5063 rho)
    (r5064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5064 rho)
    (tail : next (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) (rho 5042) (rho 5047) (rho 5052)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg7 (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) (rho 5042) (rho 5047) next := by
  exact ⟨rho 5048, rho 5049, rho 5050, rho 5051, rho 5052, r5060, r5061, r5062, r5063, r5064, tail⟩

theorem template_scp_node13_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5065 rho)
    (r5066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5066 rho)
    (r5067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5067 rho)
    (r5068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5068 rho)
    (r5069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5069 rho)
    (tail : next (rho 5037) (rho 5042) (rho 5047) (rho 5052) (rho 5057)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg8 (rho 5017) (rho 5022) (rho 5027) (rho 5032) (rho 5037) (rho 5042) (rho 5047) (rho 5052) next := by
  exact ⟨rho 5053, rho 5054, rho 5055, rho 5056, rho 5057, r5065, r5066, r5067, r5068, r5069, tail⟩

theorem template_scp_node13_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5070 rho)
    (r5071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5071 rho)
    (r5072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5072 rho)
    (r5073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5073 rho)
    (r5074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5074 rho)
    (tail : next (rho 5037) (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg9 (rho 5037) (rho 5042) (rho 5047) (rho 5052) (rho 5057) next := by
  exact ⟨rho 5058, rho 5059, rho 5060, rho 5061, rho 5062, r5070, r5071, r5072, r5073, r5074, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

