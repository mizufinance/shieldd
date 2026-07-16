import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) (rho 432) (rho 437)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart0 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) (rho 6)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 2), (rho 3), (rho 4), (rho 5), (rho 6), h0, h1, h2, h3, h4, hk⟩

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart1 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) (rho 6) (rho 12)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) (rho 6) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 8), (rho 9), (rho 10), (rho 11), (rho 12), h0, h1, h2, h3, h4, hk⟩

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart2 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 26) (rho 32) (rho 19) (rho 20) (rho 6) (rho 12) (rho 18)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) (rho 6) (rho 12) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 14), (rho 15), (rho 16), (rho 17), (rho 18), h0, h1, h2, h3, h4, hk⟩

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart3 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 26) (rho 32) (rho 6) (rho 12) (rho 18) (rho 25)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 26) (rho 32) (rho 19) (rho 20) (rho 6) (rho 12) (rho 18) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 21), (rho 22), (rho 23), (rho 24), (rho 25), h0, h1, h2, h3, h4, hk⟩

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart4 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 32) (rho 6) (rho 12) (rho 18) (rho 25) (rho 31)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 26) (rho 32) (rho 6) (rho 12) (rho 18) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 27), (rho 28), (rho 29), (rho 30), (rho 31), h0, h1, h2, h3, h4, hk⟩

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 32) (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 33), (rho 34), (rho 35), (rho 36), (rho 37), h0, h1, h2, h3, h4, hk⟩

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 38), (rho 39), (rho 40), (rho 41), (rho 42), h0, h1, h2, h3, h4, hk⟩

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 43), (rho 44), (rho 45), (rho 46), (rho 47), h0, h1, h2, h3, h4, hk⟩

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 48), (rho 49), (rho 50), (rho 51), (rho 52), h0, h1, h2, h3, h4, hk⟩

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 53), (rho 54), (rho 55), (rho 56), (rho 57), h0, h1, h2, h3, h4, hk⟩

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart10 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 58), (rho 59), (rho 60), (rho 61), (rho 62), h0, h1, h2, h3, h4, hk⟩

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart11 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 63), (rho 64), (rho 65), (rho 66), (rho 67), h0, h1, h2, h3, h4, hk⟩

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart12 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 68), (rho 69), (rho 70), (rho 71), (rho 72), h0, h1, h2, h3, h4, hk⟩

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 73), (rho 74), (rho 75), (rho 76), (rho 77), h0, h1, h2, h3, h4, hk⟩

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 78), (rho 79), (rho 80), (rho 81), (rho 82), h0, h1, h2, h3, h4, hk⟩

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 83), (rho 84), (rho 85), (rho 86), (rho 87), h0, h1, h2, h3, h4, hk⟩

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart16 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 88), (rho 89), (rho 90), (rho 91), (rho 92), h0, h1, h2, h3, h4, hk⟩

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart17 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 93), (rho 94), (rho 95), (rho 96), (rho 97), h0, h1, h2, h3, h4, hk⟩

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 98), (rho 99), (rho 100), (rho 101), (rho 102), h0, h1, h2, h3, h4, hk⟩

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart19 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 103), (rho 104), (rho 105), (rho 106), (rho 107), h0, h1, h2, h3, h4, hk⟩

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 108), (rho 109), (rho 110), (rho 111), (rho 112), h0, h1, h2, h3, h4, hk⟩

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 113), (rho 114), (rho 115), (rho 116), (rho 117), h0, h1, h2, h3, h4, hk⟩

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart22 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 118), (rho 119), (rho 120), (rho 121), (rho 122), h0, h1, h2, h3, h4, hk⟩

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart23 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 123), (rho 124), (rho 125), (rho 126), (rho 127), h0, h1, h2, h3, h4, hk⟩

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 128), (rho 129), (rho 130), (rho 131), (rho 132), h0, h1, h2, h3, h4, hk⟩

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 133), (rho 134), (rho 135), (rho 136), (rho 137), h0, h1, h2, h3, h4, hk⟩

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart26 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 138), (rho 139), (rho 140), (rho 141), (rho 142), h0, h1, h2, h3, h4, hk⟩

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 143), (rho 144), (rho 145), (rho 146), (rho 147), h0, h1, h2, h3, h4, hk⟩

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 148), (rho 149), (rho 150), (rho 151), (rho 152), h0, h1, h2, h3, h4, hk⟩

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 153), (rho 154), (rho 155), (rho 156), (rho 157), h0, h1, h2, h3, h4, hk⟩

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 158), (rho 159), (rho 160), (rho 161), (rho 162), h0, h1, h2, h3, h4, hk⟩

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 163), (rho 164), (rho 165), (rho 166), (rho 167), h0, h1, h2, h3, h4, hk⟩

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 168), (rho 169), (rho 170), (rho 171), (rho 172), h0, h1, h2, h3, h4, hk⟩

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 173), (rho 174), (rho 175), (rho 176), (rho 177), h0, h1, h2, h3, h4, hk⟩

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 178), (rho 179), (rho 180), (rho 181), (rho 182), h0, h1, h2, h3, h4, hk⟩

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 183), (rho 184), (rho 185), (rho 186), (rho 187), h0, h1, h2, h3, h4, hk⟩

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 188), (rho 189), (rho 190), (rho 191), (rho 192), h0, h1, h2, h3, h4, hk⟩

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 193), (rho 194), (rho 195), (rho 196), (rho 197), h0, h1, h2, h3, h4, hk⟩

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 198), (rho 199), (rho 200), (rho 201), (rho 202), h0, h1, h2, h3, h4, hk⟩

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 203), (rho 204), (rho 205), (rho 206), (rho 207), h0, h1, h2, h3, h4, hk⟩

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 208), (rho 209), (rho 210), (rho 211), (rho 212), h0, h1, h2, h3, h4, hk⟩

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 213), (rho 214), (rho 215), (rho 216), (rho 217), h0, h1, h2, h3, h4, hk⟩

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 218), (rho 219), (rho 220), (rho 221), (rho 222), h0, h1, h2, h3, h4, hk⟩

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 223), (rho 224), (rho 225), (rho 226), (rho 227), h0, h1, h2, h3, h4, hk⟩

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 228), (rho 229), (rho 230), (rho 231), (rho 232), h0, h1, h2, h3, h4, hk⟩

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 233), (rho 234), (rho 235), (rho 236), (rho 237), h0, h1, h2, h3, h4, hk⟩

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 238), (rho 239), (rho 240), (rho 241), (rho 242), h0, h1, h2, h3, h4, hk⟩

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 243), (rho 244), (rho 245), (rho 246), (rho 247), h0, h1, h2, h3, h4, hk⟩

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 248), (rho 249), (rho 250), (rho 251), (rho 252), h0, h1, h2, h3, h4, hk⟩

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 253), (rho 254), (rho 255), (rho 256), (rho 257), h0, h1, h2, h3, h4, hk⟩

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 258), (rho 259), (rho 260), (rho 261), (rho 262), h0, h1, h2, h3, h4, hk⟩

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 263), (rho 264), (rho 265), (rho 266), (rho 267), h0, h1, h2, h3, h4, hk⟩

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 268), (rho 269), (rho 270), (rho 271), (rho 272), h0, h1, h2, h3, h4, hk⟩

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 273), (rho 274), (rho 275), (rho 276), (rho 277), h0, h1, h2, h3, h4, hk⟩

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 278), (rho 279), (rho 280), (rho 281), (rho 282), h0, h1, h2, h3, h4, hk⟩

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 283), (rho 284), (rho 285), (rho 286), (rho 287), h0, h1, h2, h3, h4, hk⟩

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 288), (rho 289), (rho 290), (rho 291), (rho 292), h0, h1, h2, h3, h4, hk⟩

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 293), (rho 294), (rho 295), (rho 296), (rho 297), h0, h1, h2, h3, h4, hk⟩

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 298), (rho 299), (rho 300), (rho 301), (rho 302), h0, h1, h2, h3, h4, hk⟩

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart59 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 303), (rho 304), (rho 305), (rho 306), (rho 307), h0, h1, h2, h3, h4, hk⟩

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart60 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 308), (rho 309), (rho 310), (rho 311), (rho 312), h0, h1, h2, h3, h4, hk⟩

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 313), (rho 314), (rho 315), (rho 316), (rho 317), h0, h1, h2, h3, h4, hk⟩

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 318), (rho 319), (rho 320), (rho 321), (rho 322), h0, h1, h2, h3, h4, hk⟩

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 323), (rho 324), (rho 325), (rho 326), (rho 327), h0, h1, h2, h3, h4, hk⟩

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart64 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 328), (rho 329), (rho 330), (rho 331), (rho 332), h0, h1, h2, h3, h4, hk⟩

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart65 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 333), (rho 334), (rho 335), (rho 336), (rho 337), h0, h1, h2, h3, h4, hk⟩

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart66 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 338), (rho 339), (rho 340), (rho 341), (rho 342), h0, h1, h2, h3, h4, hk⟩

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 343), (rho 344), (rho 345), (rho 346), (rho 347), h0, h1, h2, h3, h4, hk⟩

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 348), (rho 349), (rho 350), (rho 351), (rho 352), h0, h1, h2, h3, h4, hk⟩

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 353), (rho 354), (rho 355), (rho 356), (rho 357), h0, h1, h2, h3, h4, hk⟩

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 358), (rho 359), (rho 360), (rho 361), (rho 362), h0, h1, h2, h3, h4, hk⟩

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart71 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 363), (rho 364), (rho 365), (rho 366), (rho 367), h0, h1, h2, h3, h4, hk⟩

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart72 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 368), (rho 369), (rho 370), (rho 371), (rho 372), h0, h1, h2, h3, h4, hk⟩

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 373), (rho 374), (rho 375), (rho 376), (rho 377), h0, h1, h2, h3, h4, hk⟩

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 378), (rho 379), (rho 380), (rho 381), (rho 382), h0, h1, h2, h3, h4, hk⟩

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 383), (rho 384), (rho 385), (rho 386), (rho 387), h0, h1, h2, h3, h4, hk⟩

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) (rho 392)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 388), (rho 389), (rho 390), (rho 391), (rho 392), h0, h1, h2, h3, h4, hk⟩

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart77 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 393), (rho 394), (rho 395), (rho 396), (rho 397), h0, h1, h2, h3, h4, hk⟩

theorem template_part78_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart78 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow390 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow391 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow392 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow393 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 398), (rho 399), (rho 400), (rho 401), (rho 402), h0, h1, h2, h3, h4, hk⟩

theorem template_part79_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart79 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart79 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow395 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow396 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow397 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow398 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 403), (rho 404), (rho 405), (rho 406), (rho 407), h0, h1, h2, h3, h4, hk⟩

theorem template_part80_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart80 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow400 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow401 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow402 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow403 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 408), (rho 409), (rho 410), (rho 411), (rho 412), h0, h1, h2, h3, h4, hk⟩

theorem template_part81_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart81 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow405 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow406 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow407 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow408 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 413), (rho 414), (rho 415), (rho 416), (rho 417), h0, h1, h2, h3, h4, hk⟩

theorem template_part82_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart82 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow410 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow411 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow412 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow413 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 418), (rho 419), (rho 420), (rho 421), (rho 422), h0, h1, h2, h3, h4, hk⟩

theorem template_part83_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart83 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) (rho 427)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow415 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow416 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow417 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow418 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 423), (rho 424), (rho 425), (rho 426), (rho 427), h0, h1, h2, h3, h4, hk⟩

theorem template_part84_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart84 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) (rho 432)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart84 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow420 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow421 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow422 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow423 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 428), (rho 429), (rho 430), (rho 431), (rho 432), h0, h1, h2, h3, h4, hk⟩

theorem template_part85_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart85 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) (rho 432) (rho 437)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) (rho 432) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow425 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow426 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow427 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow428 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 433), (rho 434), (rho 435), (rho 436), (rho 437), h0, h1, h2, h3, h4, hk⟩


def templateNotePrefix (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) (fun w15 w16 w19 w22 w572 w912 w917 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 w15 w16 w19 w22 w572 w912 w917 (fun w16 w19 w22 w572 w912 w917 w922 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 w16 w19 w22 w572 w912 w917 w922 (fun w19 w22 w572 w912 w917 w922 w927 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 w19 w22 w572 w912 w917 w922 w927 (fun w19 w22 w917 w922 w927 w932 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 w19 w22 w917 w922 w927 w932 (fun w22 w917 w922 w927 w932 w937 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 w22 w917 w922 w927 w932 w937 (fun w917 w922 w927 w932 w937 w942 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 w917 w922 w927 w932 w937 w942 (fun w917 w922 w927 w932 w937 w942 w947 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 w917 w922 w927 w932 w937 w942 w947 (fun w917 w922 w927 w932 w937 w942 w947 w952 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 w917 w922 w927 w932 w937 w942 w947 w952 (fun w917 w922 w927 w932 w937 w942 w947 w952 w957 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 w917 w922 w927 w932 w937 w942 w947 w952 w957 (fun w917 w922 w927 w932 w937 w942 w947 w952 w957 w962 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 w917 w922 w927 w932 w937 w942 w947 w952 w957 w962 (fun w917 w922 w927 w932 w937 w942 w947 w952 w957 w962 w967 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 w917 w922 w927 w932 w937 w942 w947 w952 w957 w962 w967 (fun w917 w922 w927 w932 w937 w942 w947 w952 w957 w962 w967 w972 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 w917 w922 w927 w932 w937 w942 w947 w952 w957 w962 w967 w972 (fun w947 w952 w957 w962 w967 w972 w977 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 w947 w952 w957 w962 w967 w972 w977 (fun w947 w952 w957 w962 w967 w972 w977 w982 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 w947 w952 w957 w962 w967 w972 w977 w982 (fun w947 w952 w957 w962 w967 w972 w977 w982 w987 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 w947 w952 w957 w962 w967 w972 w977 w982 w987 (fun w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 (fun w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 w997 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 w997 (fun w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 (fun w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 w947 w952 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 (fun w982 w987 w992 w997 w1002 w1007 w1012 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 w982 w987 w992 w997 w1002 w1007 w1012 (fun w982 w987 w992 w997 w1002 w1007 w1012 w1017 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 w982 w987 w992 w997 w1002 w1007 w1012 w1017 (fun w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 (fun w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 (fun w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 (fun w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 (fun w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 w1017 w1022 w1027 w1032 w1037 w1042 w1047 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 w1222 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 w1222 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 w1222 w1227 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 w1222 w1227 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 w1222 w1227 w1232 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 w1207 w1212 w1217 w1222 w1227 w1232 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 w1207 w1212 w1217 w1222 w1227 w1232 w1237 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 w1257 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 w1257 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 w1257 w1262 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 w1257 w1262 (fun w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 w1257 w1262 w1267 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 w1207 w1212 w1217 w1222 w1227 w1232 w1237 w1242 w1247 w1252 w1257 w1262 w1267 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 w1242 w1247 w1252 w1257 w1262 w1267 w1272 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 w1292 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 w1292 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 w1292 w1297 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 w1292 w1297 (fun w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 w1292 w1297 w1302 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 w1242 w1247 w1252 w1257 w1262 w1267 w1272 w1277 w1282 w1287 w1292 w1297 w1302 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 w1277 w1282 w1287 w1292 w1297 w1302 w1307 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 w1327 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 w1327 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 w1327 w1332 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 w1327 w1332 (fun w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 w1327 w1332 w1337 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 w1277 w1282 w1287 w1292 w1297 w1302 w1307 w1312 w1317 w1322 w1327 w1332 w1337 (fun w1312 w1317 w1322 w1327 w1332 w1337 w1342 =>
  w1312 = (rho 407) ∧ w1317 = (rho 412) ∧ w1322 = (rho 417) ∧ w1327 = (rho 422) ∧ w1332 = (rho 427) ∧ w1337 = (rho 432) ∧ w1342 = (rho 437)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem template_relation_to_note_prefix (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relation rho) : templateNotePrefix rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61, p62, p63,
    p64, p65, p66, p67, p68, p69, p70, p71,
    p72, p73, p74, p75, p76, p77, p78, p79,
    p80, p81, p82, p83, p84, p85
  ⟩
  unfold templateNotePrefix
  apply template_part0_to_extracted rho p0
  apply template_part1_to_extracted rho p1
  apply template_part2_to_extracted rho p2
  apply template_part3_to_extracted rho p3
  apply template_part4_to_extracted rho p4
  apply template_part5_to_extracted rho p5
  apply template_part6_to_extracted rho p6
  apply template_part7_to_extracted rho p7
  apply template_part8_to_extracted rho p8
  apply template_part9_to_extracted rho p9
  apply template_part10_to_extracted rho p10
  apply template_part11_to_extracted rho p11
  apply template_part12_to_extracted rho p12
  apply template_part13_to_extracted rho p13
  apply template_part14_to_extracted rho p14
  apply template_part15_to_extracted rho p15
  apply template_part16_to_extracted rho p16
  apply template_part17_to_extracted rho p17
  apply template_part18_to_extracted rho p18
  apply template_part19_to_extracted rho p19
  apply template_part20_to_extracted rho p20
  apply template_part21_to_extracted rho p21
  apply template_part22_to_extracted rho p22
  apply template_part23_to_extracted rho p23
  apply template_part24_to_extracted rho p24
  apply template_part25_to_extracted rho p25
  apply template_part26_to_extracted rho p26
  apply template_part27_to_extracted rho p27
  apply template_part28_to_extracted rho p28
  apply template_part29_to_extracted rho p29
  apply template_part30_to_extracted rho p30
  apply template_part31_to_extracted rho p31
  apply template_part32_to_extracted rho p32
  apply template_part33_to_extracted rho p33
  apply template_part34_to_extracted rho p34
  apply template_part35_to_extracted rho p35
  apply template_part36_to_extracted rho p36
  apply template_part37_to_extracted rho p37
  apply template_part38_to_extracted rho p38
  apply template_part39_to_extracted rho p39
  apply template_part40_to_extracted rho p40
  apply template_part41_to_extracted rho p41
  apply template_part42_to_extracted rho p42
  apply template_part43_to_extracted rho p43
  apply template_part44_to_extracted rho p44
  apply template_part45_to_extracted rho p45
  apply template_part46_to_extracted rho p46
  apply template_part47_to_extracted rho p47
  apply template_part48_to_extracted rho p48
  apply template_part49_to_extracted rho p49
  apply template_part50_to_extracted rho p50
  apply template_part51_to_extracted rho p51
  apply template_part52_to_extracted rho p52
  apply template_part53_to_extracted rho p53
  apply template_part54_to_extracted rho p54
  apply template_part55_to_extracted rho p55
  apply template_part56_to_extracted rho p56
  apply template_part57_to_extracted rho p57
  apply template_part58_to_extracted rho p58
  apply template_part59_to_extracted rho p59
  apply template_part60_to_extracted rho p60
  apply template_part61_to_extracted rho p61
  apply template_part62_to_extracted rho p62
  apply template_part63_to_extracted rho p63
  apply template_part64_to_extracted rho p64
  apply template_part65_to_extracted rho p65
  apply template_part66_to_extracted rho p66
  apply template_part67_to_extracted rho p67
  apply template_part68_to_extracted rho p68
  apply template_part69_to_extracted rho p69
  apply template_part70_to_extracted rho p70
  apply template_part71_to_extracted rho p71
  apply template_part72_to_extracted rho p72
  apply template_part73_to_extracted rho p73
  apply template_part74_to_extracted rho p74
  apply template_part75_to_extracted rho p75
  apply template_part76_to_extracted rho p76
  apply template_part77_to_extracted rho p77
  apply template_part78_to_extracted rho p78
  apply template_part79_to_extracted rho p79
  apply template_part80_to_extracted rho p80
  apply template_part81_to_extracted rho p81
  apply template_part82_to_extracted rho p82
  apply template_part83_to_extracted rho p83
  apply template_part84_to_extracted rho p84
  apply template_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem sound (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relation rho) : spec rho := by
  have hPrefix := template_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 1) (rho 7) (rho 13) (rho 26) (rho 32) (rho 19) (rho 20) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [spec, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
