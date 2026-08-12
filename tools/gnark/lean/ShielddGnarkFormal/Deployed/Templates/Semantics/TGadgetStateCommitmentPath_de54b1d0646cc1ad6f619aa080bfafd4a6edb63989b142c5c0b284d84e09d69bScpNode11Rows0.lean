import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node11_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4297 rho)
    (r4298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4298 rho)
    (r4299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4299 rho)
    (r4300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4300 rho)
    (r4301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4301 rho)
    (tail : next (rho 4285) (rho 4288) (rho 4286) (rho 4287) (rho 4289) (rho 4290) (rho 4291) (rho 4296)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg0 (rho 4283) (rho 4285) (rho 4288) (rho 4284) (rho 4286) (rho 4287) (rho 4289) (rho 4290) (rho 4291) next := by
  exact ⟨rho 4292, rho 4293, rho 4294, rho 4295, rho 4296, r4297, r4298, r4299, r4300, r4301, tail⟩

theorem template_scp_node11_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4302 rho)
    (r4303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4303 rho)
    (r4304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4304 rho)
    (r4305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4305 rho)
    (r4306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4306 rho)
    (tail : next (rho 4285) (rho 4288) (rho 4289) (rho 4290) (rho 4291) (rho 4296) (rho 4301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg1 (rho 4285) (rho 4288) (rho 4286) (rho 4287) (rho 4289) (rho 4290) (rho 4291) (rho 4296) next := by
  exact ⟨rho 4297, rho 4298, rho 4299, rho 4300, rho 4301, r4302, r4303, r4304, r4305, r4306, tail⟩

theorem template_scp_node11_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4307 rho)
    (r4308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4308 rho)
    (r4309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4309 rho)
    (r4310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4310 rho)
    (r4311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4311 rho)
    (tail : next (rho 4288) (rho 4291) (rho 4296) (rho 4301) (rho 4306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg2 (rho 4285) (rho 4288) (rho 4289) (rho 4290) (rho 4291) (rho 4296) (rho 4301) next := by
  exact ⟨rho 4302, rho 4303, rho 4304, rho 4305, rho 4306, r4307, r4308, r4309, r4310, r4311, tail⟩

theorem template_scp_node11_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r4312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4312 rho)
    (r4313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4313 rho)
    (r4314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4314 rho)
    (r4315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4315 rho)
    (r4316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4316 rho)
    (tail : next (rho 4296) (rho 4301) (rho 4306) (rho 4311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg3 (rho 4288) (rho 4291) (rho 4296) (rho 4301) (rho 4306) next := by
  exact ⟨rho 4307, rho 4308, rho 4309, rho 4310, rho 4311, r4312, r4313, r4314, r4315, r4316, tail⟩

theorem template_scp_node11_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4317 rho)
    (r4318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4318 rho)
    (r4319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4319 rho)
    (r4320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4320 rho)
    (r4321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4321 rho)
    (tail : next (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg4 (rho 4296) (rho 4301) (rho 4306) (rho 4311) next := by
  exact ⟨rho 4312, rho 4313, rho 4314, rho 4315, rho 4316, r4317, r4318, r4319, r4320, r4321, tail⟩

theorem template_scp_node11_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4322 rho)
    (r4323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4323 rho)
    (r4324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4324 rho)
    (r4325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4325 rho)
    (r4326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4326 rho)
    (tail : next (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) (rho 4321)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg5 (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) next := by
  exact ⟨rho 4317, rho 4318, rho 4319, rho 4320, rho 4321, r4322, r4323, r4324, r4325, r4326, tail⟩

theorem template_scp_node11_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4327 rho)
    (r4328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4328 rho)
    (r4329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4329 rho)
    (r4330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4330 rho)
    (r4331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4331 rho)
    (tail : next (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) (rho 4321) (rho 4326)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg6 (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) (rho 4321) next := by
  exact ⟨rho 4322, rho 4323, rho 4324, rho 4325, rho 4326, r4327, r4328, r4329, r4330, r4331, tail⟩

theorem template_scp_node11_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4332 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4332 rho)
    (r4333 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4333 rho)
    (r4334 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4334 rho)
    (r4335 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4335 rho)
    (r4336 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4336 rho)
    (tail : next (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) (rho 4321) (rho 4326) (rho 4331)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg7 (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) (rho 4321) (rho 4326) next := by
  exact ⟨rho 4327, rho 4328, rho 4329, rho 4330, rho 4331, r4332, r4333, r4334, r4335, r4336, tail⟩

theorem template_scp_node11_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4337 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4337 rho)
    (r4338 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4338 rho)
    (r4339 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4339 rho)
    (r4340 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4340 rho)
    (r4341 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4341 rho)
    (tail : next (rho 4316) (rho 4321) (rho 4326) (rho 4331) (rho 4336)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg8 (rho 4296) (rho 4301) (rho 4306) (rho 4311) (rho 4316) (rho 4321) (rho 4326) (rho 4331) next := by
  exact ⟨rho 4332, rho 4333, rho 4334, rho 4335, rho 4336, r4337, r4338, r4339, r4340, r4341, tail⟩

theorem template_scp_node11_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4342 rho)
    (r4343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4343 rho)
    (r4344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4344 rho)
    (r4345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4345 rho)
    (r4346 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4346 rho)
    (tail : next (rho 4316) (rho 4321) (rho 4326) (rho 4331) (rho 4336) (rho 4341)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg9 (rho 4316) (rho 4321) (rho 4326) (rho 4331) (rho 4336) next := by
  exact ⟨rho 4337, rho 4338, rho 4339, rho 4340, rho 4341, r4342, r4343, r4344, r4345, r4346, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
