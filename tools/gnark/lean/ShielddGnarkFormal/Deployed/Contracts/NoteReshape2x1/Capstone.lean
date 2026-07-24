import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Bounds

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev DeployedF := ZMod Order

def relationAll (rho : Nat → DeployedF) : Prop :=
  Seg2.contract.relation rho ∧
  Seg3.contract.relation rho ∧
  Seg4.contract.relation rho ∧
  Seg5.contract.relation rho ∧
  Seg6.contract.relation rho ∧
  Seg7.contract.relation rho ∧
  Seg9.contract.relation rho ∧
  Seg10.contract.relation rho ∧
  Seg11.contract.relation rho ∧
  Seg12.contract.relation rho ∧
  Seg13.contract.relation rho ∧
  Seg14.contract.relation rho ∧
  Seg15.contract.relation rho ∧
  Seg16.contract.relation rho ∧
  Seg17.contract.relation rho ∧
  Seg18.contract.relation rho ∧
  Seg19.contract.relation rho ∧
  Seg20.contract.relation rho ∧
  Seg21.contract.relation rho ∧
  Seg24.contract.relation rho ∧
  Seg25.contract.relation rho ∧
  Seg26.contract.relation rho ∧
  Seg27.contract.relation rho ∧
  Seg28.contract.relation rho ∧
  Seg29.contract.relation rho ∧
  Seg30.contract.relation rho ∧
  Seg31.contract.relation rho ∧
  Seg32.contract.relation rho ∧
  Seg33.contract.relation rho ∧
  Seg34.contract.relation rho ∧
  Seg35.contract.relation rho ∧
  Seg36.contract.relation rho ∧
  Seg39.contract.relation rho ∧
  Seg40.contract.relation rho ∧
  Seg41.contract.relation rho ∧
  Seg42.contract.relation rho ∧
  Seg43.contract.relation rho ∧
  Seg44.contract.relation rho ∧
  Seg46.contract.relation rho ∧
  Seg47.contract.relation rho ∧
  Seg48.contract.relation rho ∧
  Seg53.contract.relation rho ∧
  Seg54.contract.relation rho

def specAll (rho : Nat → DeployedF) : Prop :=
  Seg2.contract.spec rho ∧
  Seg3.contract.spec rho ∧
  Seg4.contract.spec rho ∧
  Seg5.contract.spec rho ∧
  Seg6.contract.spec rho ∧
  Seg7.contract.spec rho ∧
  Seg9.contract.spec rho ∧
  Seg10.contract.spec rho ∧
  Seg11.contract.spec rho ∧
  Seg12.contract.spec rho ∧
  Seg13.contract.spec rho ∧
  Seg14.contract.spec rho ∧
  Seg15.contract.spec rho ∧
  Seg16.contract.spec rho ∧
  Seg17.contract.spec rho ∧
  Seg18.contract.spec rho ∧
  Seg19.contract.spec rho ∧
  Seg20.contract.spec rho ∧
  Seg21.contract.spec rho ∧
  Seg24.contract.spec rho ∧
  Seg25.contract.spec rho ∧
  Seg26.contract.spec rho ∧
  Seg27.contract.spec rho ∧
  Seg28.contract.spec rho ∧
  Seg29.contract.spec rho ∧
  Seg30.contract.spec rho ∧
  Seg31.contract.spec rho ∧
  Seg32.contract.spec rho ∧
  Seg33.contract.spec rho ∧
  Seg34.contract.spec rho ∧
  Seg35.contract.spec rho ∧
  Seg36.contract.spec rho ∧
  Seg39.contract.spec rho ∧
  Seg40.contract.spec rho ∧
  Seg41.contract.spec rho ∧
  Seg42.contract.spec rho ∧
  Seg43.contract.spec rho ∧
  Seg44.contract.spec rho ∧
  Seg46.contract.spec rho ∧
  Seg47.contract.spec rho ∧
  Seg48.contract.spec rho ∧
  Seg53.contract.spec rho ∧
  Seg54.contract.spec rho

theorem note_reshape2x1_deployed_sound :
    ∀ rho, relationAll rho → specAll rho := by
  intro rho h
  obtain ⟨h2, h3, h4, h5, h6, h7, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h24, h25, h26, h27, h28, h29, h30, h31, h32, h33, h34, h35, h36, h39, h40, h41, h42, h43, h44, h46, h47, h48, h53, h54⟩ := h
  exact ⟨inst2_bound.2.2 rho h2,
    inst3_bound.2.2 rho h3,
    inst4_bound.2.2 rho h4,
    inst5_bound.2.2 rho h5,
    inst6_bound.2.2 rho h6,
    inst7_bound.2.2 rho h7,
    inst9_bound.2.2 rho h9,
    inst10_bound.2.2 rho h10,
    inst11_bound.2.2 rho h11,
    inst12_bound.2.2 rho h12,
    inst13_bound.2.2 rho h13,
    inst14_bound.2.2 rho h14,
    inst15_bound.2.2 rho h15,
    inst16_bound.2.2 rho h16,
    inst17_bound.2.2 rho h17,
    inst18_bound.2.2 rho h18,
    inst19_bound.2.2 rho h19,
    inst20_bound.2.2 rho h20,
    inst21_bound.2.2 rho h21,
    inst24_bound.2.2 rho h24,
    inst25_bound.2.2 rho h25,
    inst26_bound.2.2 rho h26,
    inst27_bound.2.2 rho h27,
    inst28_bound.2.2 rho h28,
    inst29_bound.2.2 rho h29,
    inst30_bound.2.2 rho h30,
    inst31_bound.2.2 rho h31,
    inst32_bound.2.2 rho h32,
    inst33_bound.2.2 rho h33,
    inst34_bound.2.2 rho h34,
    inst35_bound.2.2 rho h35,
    inst36_bound.2.2 rho h36,
    inst39_bound.2.2 rho h39,
    inst40_bound.2.2 rho h40,
    inst41_bound.2.2 rho h41,
    inst42_bound.2.2 rho h42,
    inst43_bound.2.2 rho h43,
    inst44_bound.2.2 rho h44,
    inst46_bound.2.2 rho h46,
    inst47_bound.2.2 rho h47,
    inst48_bound.2.2 rho h48,
    inst53_bound.2.2 rho h53,
    inst54_bound.2.2 rho h54⟩

theorem specOf2 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg2.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).1 :)

theorem specOf3 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg3.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.1 :)

theorem specOf4 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg4.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.1 :)

theorem specOf5 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg5.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.1 :)

theorem specOf6 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg6.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.1 :)

theorem specOf7 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg7.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.1 :)

theorem specOf9 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg9.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.1 :)

theorem specOf10 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg10.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.1 :)

theorem specOf11 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg11.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.1 :)

theorem specOf12 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg12.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.1 :)

theorem specOf13 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg13.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf14 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg14.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf15 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg15.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf16 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg16.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf17 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg17.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf18 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg18.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf19 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg19.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf20 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg20.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf21 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg21.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf24 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg24.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf25 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg25.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf26 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg26.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf27 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg27.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf28 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg28.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf29 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg29.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf30 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg30.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf31 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg31.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf32 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg32.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf33 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg33.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf34 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg34.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf35 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg35.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf36 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg36.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf39 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg39.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf40 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg40.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf41 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg41.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf42 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg42.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf43 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg43.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf44 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg44.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf46 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg46.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf47 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg47.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf48 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg48.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf53 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg53.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 :)

theorem specOf54 (rho : Nat → DeployedF) (h : relationAll rho) :
    Seg54.contract.spec rho :=
  ((note_reshape2x1_deployed_sound rho h).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2 :)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
