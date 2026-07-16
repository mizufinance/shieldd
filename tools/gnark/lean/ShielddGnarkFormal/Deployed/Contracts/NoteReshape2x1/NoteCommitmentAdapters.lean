import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg9
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg24
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg39
import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg9_part0_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart0 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 6482)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) k := by
  unfold Seg9.relationPart0 Seg9.relationRow0 Seg9.relationRow1 Seg9.relationRow2 Seg9.relationRow3 Seg9.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 6478), (rho 6479), (rho 6480), (rho 6481), (rho 6482), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part1_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart1 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 6482) (rho 6487)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 6482) k := by
  unfold Seg9.relationPart1 Seg9.relationRow5 Seg9.relationRow6 Seg9.relationRow7 Seg9.relationRow8 Seg9.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 6483), (rho 6484), (rho 6485), (rho 6486), (rho 6487), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part2_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart2 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 19) (rho 22) (rho 572) (rho 912) (rho 6482) (rho 6487) (rho 6492)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 6482) (rho 6487) k := by
  unfold Seg9.relationPart2 Seg9.relationRow10 Seg9.relationRow11 Seg9.relationRow12 Seg9.relationRow13 Seg9.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 6488), (rho 6489), (rho 6490), (rho 6491), (rho 6492), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part3_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart3 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 19) (rho 22) (rho 6482) (rho 6487) (rho 6492) (rho 6497)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 19) (rho 22) (rho 572) (rho 912) (rho 6482) (rho 6487) (rho 6492) k := by
  unfold Seg9.relationPart3 Seg9.relationRow15 Seg9.relationRow16 Seg9.relationRow17 Seg9.relationRow18 Seg9.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 6493), (rho 6494), (rho 6495), (rho 6496), (rho 6497), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part4_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart4 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 22) (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 19) (rho 22) (rho 6482) (rho 6487) (rho 6492) (rho 6497) k := by
  unfold Seg9.relationPart4 Seg9.relationRow20 Seg9.relationRow21 Seg9.relationRow22 Seg9.relationRow23 Seg9.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 6498), (rho 6499), (rho 6500), (rho 6501), (rho 6502), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part5_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart5 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 22) (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) k := by
  unfold Seg9.relationPart5 Seg9.relationRow25 Seg9.relationRow26 Seg9.relationRow27 Seg9.relationRow28 Seg9.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 6503), (rho 6504), (rho 6505), (rho 6506), (rho 6507), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part6_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart6 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) k := by
  unfold Seg9.relationPart6 Seg9.relationRow30 Seg9.relationRow31 Seg9.relationRow32 Seg9.relationRow33 Seg9.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 6508), (rho 6509), (rho 6510), (rho 6511), (rho 6512), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part7_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart7 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) k := by
  unfold Seg9.relationPart7 Seg9.relationRow35 Seg9.relationRow36 Seg9.relationRow37 Seg9.relationRow38 Seg9.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 6513), (rho 6514), (rho 6515), (rho 6516), (rho 6517), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part8_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart8 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) k := by
  unfold Seg9.relationPart8 Seg9.relationRow40 Seg9.relationRow41 Seg9.relationRow42 Seg9.relationRow43 Seg9.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 6518), (rho 6519), (rho 6520), (rho 6521), (rho 6522), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part9_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart9 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) (rho 6527)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) k := by
  unfold Seg9.relationPart9 Seg9.relationRow45 Seg9.relationRow46 Seg9.relationRow47 Seg9.relationRow48 Seg9.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 6523), (rho 6524), (rho 6525), (rho 6526), (rho 6527), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part10_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart10 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) (rho 6527) k := by
  unfold Seg9.relationPart10 Seg9.relationRow50 Seg9.relationRow51 Seg9.relationRow52 Seg9.relationRow53 Seg9.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 6528), (rho 6529), (rho 6530), (rho 6531), (rho 6532), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part11_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart11 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) k := by
  unfold Seg9.relationPart11 Seg9.relationRow55 Seg9.relationRow56 Seg9.relationRow57 Seg9.relationRow58 Seg9.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 6533), (rho 6534), (rho 6535), (rho 6536), (rho 6537), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part12_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart12 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 6482) (rho 6487) (rho 6492) (rho 6497) (rho 6502) (rho 6507) (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) k := by
  unfold Seg9.relationPart12 Seg9.relationRow60 Seg9.relationRow61 Seg9.relationRow62 Seg9.relationRow63 Seg9.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 6538), (rho 6539), (rho 6540), (rho 6541), (rho 6542), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part13_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart13 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) k := by
  unfold Seg9.relationPart13 Seg9.relationRow65 Seg9.relationRow66 Seg9.relationRow67 Seg9.relationRow68 Seg9.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 6543), (rho 6544), (rho 6545), (rho 6546), (rho 6547), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part14_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart14 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) k := by
  unfold Seg9.relationPart14 Seg9.relationRow70 Seg9.relationRow71 Seg9.relationRow72 Seg9.relationRow73 Seg9.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 6548), (rho 6549), (rho 6550), (rho 6551), (rho 6552), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part15_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart15 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) k := by
  unfold Seg9.relationPart15 Seg9.relationRow75 Seg9.relationRow76 Seg9.relationRow77 Seg9.relationRow78 Seg9.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 6553), (rho 6554), (rho 6555), (rho 6556), (rho 6557), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part16_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart16 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) (rho 6562)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) k := by
  unfold Seg9.relationPart16 Seg9.relationRow80 Seg9.relationRow81 Seg9.relationRow82 Seg9.relationRow83 Seg9.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 6558), (rho 6559), (rho 6560), (rho 6561), (rho 6562), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part17_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart17 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) (rho 6562) k := by
  unfold Seg9.relationPart17 Seg9.relationRow85 Seg9.relationRow86 Seg9.relationRow87 Seg9.relationRow88 Seg9.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 6563), (rho 6564), (rho 6565), (rho 6566), (rho 6567), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part18_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart18 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) k := by
  unfold Seg9.relationPart18 Seg9.relationRow90 Seg9.relationRow91 Seg9.relationRow92 Seg9.relationRow93 Seg9.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 6568), (rho 6569), (rho 6570), (rho 6571), (rho 6572), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part19_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart19 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 6512) (rho 6517) (rho 6522) (rho 6527) (rho 6532) (rho 6537) (rho 6542) (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) k := by
  unfold Seg9.relationPart19 Seg9.relationRow95 Seg9.relationRow96 Seg9.relationRow97 Seg9.relationRow98 Seg9.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 6573), (rho 6574), (rho 6575), (rho 6576), (rho 6577), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part20_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart20 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) k := by
  unfold Seg9.relationPart20 Seg9.relationRow100 Seg9.relationRow101 Seg9.relationRow102 Seg9.relationRow103 Seg9.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 6578), (rho 6579), (rho 6580), (rho 6581), (rho 6582), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part21_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart21 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) k := by
  unfold Seg9.relationPart21 Seg9.relationRow105 Seg9.relationRow106 Seg9.relationRow107 Seg9.relationRow108 Seg9.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 6583), (rho 6584), (rho 6585), (rho 6586), (rho 6587), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part22_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart22 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) k := by
  unfold Seg9.relationPart22 Seg9.relationRow110 Seg9.relationRow111 Seg9.relationRow112 Seg9.relationRow113 Seg9.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 6588), (rho 6589), (rho 6590), (rho 6591), (rho 6592), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part23_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart23 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) (rho 6597)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) k := by
  unfold Seg9.relationPart23 Seg9.relationRow115 Seg9.relationRow116 Seg9.relationRow117 Seg9.relationRow118 Seg9.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 6593), (rho 6594), (rho 6595), (rho 6596), (rho 6597), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part24_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart24 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) (rho 6597) k := by
  unfold Seg9.relationPart24 Seg9.relationRow120 Seg9.relationRow121 Seg9.relationRow122 Seg9.relationRow123 Seg9.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 6598), (rho 6599), (rho 6600), (rho 6601), (rho 6602), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part25_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart25 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) k := by
  unfold Seg9.relationPart25 Seg9.relationRow125 Seg9.relationRow126 Seg9.relationRow127 Seg9.relationRow128 Seg9.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 6603), (rho 6604), (rho 6605), (rho 6606), (rho 6607), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part26_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart26 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 6547) (rho 6552) (rho 6557) (rho 6562) (rho 6567) (rho 6572) (rho 6577) (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) k := by
  unfold Seg9.relationPart26 Seg9.relationRow130 Seg9.relationRow131 Seg9.relationRow132 Seg9.relationRow133 Seg9.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 6608), (rho 6609), (rho 6610), (rho 6611), (rho 6612), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part27_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart27 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) k := by
  unfold Seg9.relationPart27 Seg9.relationRow135 Seg9.relationRow136 Seg9.relationRow137 Seg9.relationRow138 Seg9.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 6613), (rho 6614), (rho 6615), (rho 6616), (rho 6617), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part28_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart28 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) k := by
  unfold Seg9.relationPart28 Seg9.relationRow140 Seg9.relationRow141 Seg9.relationRow142 Seg9.relationRow143 Seg9.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 6618), (rho 6619), (rho 6620), (rho 6621), (rho 6622), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part29_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart29 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) k := by
  unfold Seg9.relationPart29 Seg9.relationRow145 Seg9.relationRow146 Seg9.relationRow147 Seg9.relationRow148 Seg9.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 6623), (rho 6624), (rho 6625), (rho 6626), (rho 6627), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part30_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart30 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) k := by
  unfold Seg9.relationPart30 Seg9.relationRow150 Seg9.relationRow151 Seg9.relationRow152 Seg9.relationRow153 Seg9.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 6628), (rho 6629), (rho 6630), (rho 6631), (rho 6632), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part31_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart31 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) k := by
  unfold Seg9.relationPart31 Seg9.relationRow155 Seg9.relationRow156 Seg9.relationRow157 Seg9.relationRow158 Seg9.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 6633), (rho 6634), (rho 6635), (rho 6636), (rho 6637), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part32_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart32 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) k := by
  unfold Seg9.relationPart32 Seg9.relationRow160 Seg9.relationRow161 Seg9.relationRow162 Seg9.relationRow163 Seg9.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 6638), (rho 6639), (rho 6640), (rho 6641), (rho 6642), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part33_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart33 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) k := by
  unfold Seg9.relationPart33 Seg9.relationRow165 Seg9.relationRow166 Seg9.relationRow167 Seg9.relationRow168 Seg9.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 6643), (rho 6644), (rho 6645), (rho 6646), (rho 6647), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part34_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart34 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) k := by
  unfold Seg9.relationPart34 Seg9.relationRow170 Seg9.relationRow171 Seg9.relationRow172 Seg9.relationRow173 Seg9.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 6648), (rho 6649), (rho 6650), (rho 6651), (rho 6652), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part35_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart35 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) k := by
  unfold Seg9.relationPart35 Seg9.relationRow175 Seg9.relationRow176 Seg9.relationRow177 Seg9.relationRow178 Seg9.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 6653), (rho 6654), (rho 6655), (rho 6656), (rho 6657), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part36_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart36 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) k := by
  unfold Seg9.relationPart36 Seg9.relationRow180 Seg9.relationRow181 Seg9.relationRow182 Seg9.relationRow183 Seg9.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 6658), (rho 6659), (rho 6660), (rho 6661), (rho 6662), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part37_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart37 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) k := by
  unfold Seg9.relationPart37 Seg9.relationRow185 Seg9.relationRow186 Seg9.relationRow187 Seg9.relationRow188 Seg9.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 6663), (rho 6664), (rho 6665), (rho 6666), (rho 6667), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part38_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart38 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) k := by
  unfold Seg9.relationPart38 Seg9.relationRow190 Seg9.relationRow191 Seg9.relationRow192 Seg9.relationRow193 Seg9.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 6668), (rho 6669), (rho 6670), (rho 6671), (rho 6672), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part39_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart39 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) k := by
  unfold Seg9.relationPart39 Seg9.relationRow195 Seg9.relationRow196 Seg9.relationRow197 Seg9.relationRow198 Seg9.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 6673), (rho 6674), (rho 6675), (rho 6676), (rho 6677), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part40_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart40 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) k := by
  unfold Seg9.relationPart40 Seg9.relationRow200 Seg9.relationRow201 Seg9.relationRow202 Seg9.relationRow203 Seg9.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 6678), (rho 6679), (rho 6680), (rho 6681), (rho 6682), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part41_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart41 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) k := by
  unfold Seg9.relationPart41 Seg9.relationRow205 Seg9.relationRow206 Seg9.relationRow207 Seg9.relationRow208 Seg9.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 6683), (rho 6684), (rho 6685), (rho 6686), (rho 6687), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part42_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart42 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) k := by
  unfold Seg9.relationPart42 Seg9.relationRow210 Seg9.relationRow211 Seg9.relationRow212 Seg9.relationRow213 Seg9.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 6688), (rho 6689), (rho 6690), (rho 6691), (rho 6692), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part43_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart43 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) k := by
  unfold Seg9.relationPart43 Seg9.relationRow215 Seg9.relationRow216 Seg9.relationRow217 Seg9.relationRow218 Seg9.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 6693), (rho 6694), (rho 6695), (rho 6696), (rho 6697), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part44_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart44 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) k := by
  unfold Seg9.relationPart44 Seg9.relationRow220 Seg9.relationRow221 Seg9.relationRow222 Seg9.relationRow223 Seg9.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 6698), (rho 6699), (rho 6700), (rho 6701), (rho 6702), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part45_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart45 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) k := by
  unfold Seg9.relationPart45 Seg9.relationRow225 Seg9.relationRow226 Seg9.relationRow227 Seg9.relationRow228 Seg9.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 6703), (rho 6704), (rho 6705), (rho 6706), (rho 6707), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part46_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart46 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) k := by
  unfold Seg9.relationPart46 Seg9.relationRow230 Seg9.relationRow231 Seg9.relationRow232 Seg9.relationRow233 Seg9.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 6708), (rho 6709), (rho 6710), (rho 6711), (rho 6712), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part47_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart47 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) k := by
  unfold Seg9.relationPart47 Seg9.relationRow235 Seg9.relationRow236 Seg9.relationRow237 Seg9.relationRow238 Seg9.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 6713), (rho 6714), (rho 6715), (rho 6716), (rho 6717), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part48_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart48 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) k := by
  unfold Seg9.relationPart48 Seg9.relationRow240 Seg9.relationRow241 Seg9.relationRow242 Seg9.relationRow243 Seg9.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 6718), (rho 6719), (rho 6720), (rho 6721), (rho 6722), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part49_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart49 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) k := by
  unfold Seg9.relationPart49 Seg9.relationRow245 Seg9.relationRow246 Seg9.relationRow247 Seg9.relationRow248 Seg9.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 6723), (rho 6724), (rho 6725), (rho 6726), (rho 6727), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part50_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart50 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) k := by
  unfold Seg9.relationPart50 Seg9.relationRow250 Seg9.relationRow251 Seg9.relationRow252 Seg9.relationRow253 Seg9.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 6728), (rho 6729), (rho 6730), (rho 6731), (rho 6732), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part51_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart51 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) k := by
  unfold Seg9.relationPart51 Seg9.relationRow255 Seg9.relationRow256 Seg9.relationRow257 Seg9.relationRow258 Seg9.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 6733), (rho 6734), (rho 6735), (rho 6736), (rho 6737), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part52_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart52 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) k := by
  unfold Seg9.relationPart52 Seg9.relationRow260 Seg9.relationRow261 Seg9.relationRow262 Seg9.relationRow263 Seg9.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 6738), (rho 6739), (rho 6740), (rho 6741), (rho 6742), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part53_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart53 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) k := by
  unfold Seg9.relationPart53 Seg9.relationRow265 Seg9.relationRow266 Seg9.relationRow267 Seg9.relationRow268 Seg9.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 6743), (rho 6744), (rho 6745), (rho 6746), (rho 6747), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part54_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart54 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) k := by
  unfold Seg9.relationPart54 Seg9.relationRow270 Seg9.relationRow271 Seg9.relationRow272 Seg9.relationRow273 Seg9.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 6748), (rho 6749), (rho 6750), (rho 6751), (rho 6752), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part55_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart55 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) k := by
  unfold Seg9.relationPart55 Seg9.relationRow275 Seg9.relationRow276 Seg9.relationRow277 Seg9.relationRow278 Seg9.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 6753), (rho 6754), (rho 6755), (rho 6756), (rho 6757), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part56_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart56 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) k := by
  unfold Seg9.relationPart56 Seg9.relationRow280 Seg9.relationRow281 Seg9.relationRow282 Seg9.relationRow283 Seg9.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 6758), (rho 6759), (rho 6760), (rho 6761), (rho 6762), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part57_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart57 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) k := by
  unfold Seg9.relationPart57 Seg9.relationRow285 Seg9.relationRow286 Seg9.relationRow287 Seg9.relationRow288 Seg9.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 6763), (rho 6764), (rho 6765), (rho 6766), (rho 6767), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part58_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart58 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) k := by
  unfold Seg9.relationPart58 Seg9.relationRow290 Seg9.relationRow291 Seg9.relationRow292 Seg9.relationRow293 Seg9.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 6768), (rho 6769), (rho 6770), (rho 6771), (rho 6772), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part59_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart59 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) k := by
  unfold Seg9.relationPart59 Seg9.relationRow295 Seg9.relationRow296 Seg9.relationRow297 Seg9.relationRow298 Seg9.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 6773), (rho 6774), (rho 6775), (rho 6776), (rho 6777), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part60_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart60 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) k := by
  unfold Seg9.relationPart60 Seg9.relationRow300 Seg9.relationRow301 Seg9.relationRow302 Seg9.relationRow303 Seg9.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 6778), (rho 6779), (rho 6780), (rho 6781), (rho 6782), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part61_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart61 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) (rho 6787)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) k := by
  unfold Seg9.relationPart61 Seg9.relationRow305 Seg9.relationRow306 Seg9.relationRow307 Seg9.relationRow308 Seg9.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 6783), (rho 6784), (rho 6785), (rho 6786), (rho 6787), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part62_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart62 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) (rho 6787) k := by
  unfold Seg9.relationPart62 Seg9.relationRow310 Seg9.relationRow311 Seg9.relationRow312 Seg9.relationRow313 Seg9.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 6788), (rho 6789), (rho 6790), (rho 6791), (rho 6792), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part63_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart63 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) k := by
  unfold Seg9.relationPart63 Seg9.relationRow315 Seg9.relationRow316 Seg9.relationRow317 Seg9.relationRow318 Seg9.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 6793), (rho 6794), (rho 6795), (rho 6796), (rho 6797), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part64_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart64 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 6582) (rho 6587) (rho 6592) (rho 6597) (rho 6602) (rho 6607) (rho 6612) (rho 6617) (rho 6622) (rho 6627) (rho 6632) (rho 6637) (rho 6642) (rho 6647) (rho 6652) (rho 6657) (rho 6662) (rho 6667) (rho 6672) (rho 6677) (rho 6682) (rho 6687) (rho 6692) (rho 6697) (rho 6702) (rho 6707) (rho 6712) (rho 6717) (rho 6722) (rho 6727) (rho 6732) (rho 6737) (rho 6742) (rho 6747) (rho 6752) (rho 6757) (rho 6762) (rho 6767) (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) k := by
  unfold Seg9.relationPart64 Seg9.relationRow320 Seg9.relationRow321 Seg9.relationRow322 Seg9.relationRow323 Seg9.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 6798), (rho 6799), (rho 6800), (rho 6801), (rho 6802), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part65_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart65 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) k := by
  unfold Seg9.relationPart65 Seg9.relationRow325 Seg9.relationRow326 Seg9.relationRow327 Seg9.relationRow328 Seg9.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 6803), (rho 6804), (rho 6805), (rho 6806), (rho 6807), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part66_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart66 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) k := by
  unfold Seg9.relationPart66 Seg9.relationRow330 Seg9.relationRow331 Seg9.relationRow332 Seg9.relationRow333 Seg9.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 6808), (rho 6809), (rho 6810), (rho 6811), (rho 6812), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part67_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart67 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) k := by
  unfold Seg9.relationPart67 Seg9.relationRow335 Seg9.relationRow336 Seg9.relationRow337 Seg9.relationRow338 Seg9.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 6813), (rho 6814), (rho 6815), (rho 6816), (rho 6817), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part68_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart68 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) (rho 6822)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) k := by
  unfold Seg9.relationPart68 Seg9.relationRow340 Seg9.relationRow341 Seg9.relationRow342 Seg9.relationRow343 Seg9.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 6818), (rho 6819), (rho 6820), (rho 6821), (rho 6822), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part69_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart69 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) (rho 6822) k := by
  unfold Seg9.relationPart69 Seg9.relationRow345 Seg9.relationRow346 Seg9.relationRow347 Seg9.relationRow348 Seg9.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 6823), (rho 6824), (rho 6825), (rho 6826), (rho 6827), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part70_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart70 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) k := by
  unfold Seg9.relationPart70 Seg9.relationRow350 Seg9.relationRow351 Seg9.relationRow352 Seg9.relationRow353 Seg9.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 6828), (rho 6829), (rho 6830), (rho 6831), (rho 6832), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part71_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart71 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 6772) (rho 6777) (rho 6782) (rho 6787) (rho 6792) (rho 6797) (rho 6802) (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) k := by
  unfold Seg9.relationPart71 Seg9.relationRow355 Seg9.relationRow356 Seg9.relationRow357 Seg9.relationRow358 Seg9.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 6833), (rho 6834), (rho 6835), (rho 6836), (rho 6837), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part72_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart72 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) k := by
  unfold Seg9.relationPart72 Seg9.relationRow360 Seg9.relationRow361 Seg9.relationRow362 Seg9.relationRow363 Seg9.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 6838), (rho 6839), (rho 6840), (rho 6841), (rho 6842), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part73_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart73 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) k := by
  unfold Seg9.relationPart73 Seg9.relationRow365 Seg9.relationRow366 Seg9.relationRow367 Seg9.relationRow368 Seg9.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 6843), (rho 6844), (rho 6845), (rho 6846), (rho 6847), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part74_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart74 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) k := by
  unfold Seg9.relationPart74 Seg9.relationRow370 Seg9.relationRow371 Seg9.relationRow372 Seg9.relationRow373 Seg9.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 6848), (rho 6849), (rho 6850), (rho 6851), (rho 6852), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part75_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart75 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) k := by
  unfold Seg9.relationPart75 Seg9.relationRow375 Seg9.relationRow376 Seg9.relationRow377 Seg9.relationRow378 Seg9.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 6853), (rho 6854), (rho 6855), (rho 6856), (rho 6857), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part76_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart76 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) k := by
  unfold Seg9.relationPart76 Seg9.relationRow380 Seg9.relationRow381 Seg9.relationRow382 Seg9.relationRow383 Seg9.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 6858), (rho 6859), (rho 6860), (rho 6861), (rho 6862), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part77_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart77 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) k := by
  unfold Seg9.relationPart77 Seg9.relationRow385 Seg9.relationRow386 Seg9.relationRow387 Seg9.relationRow388 Seg9.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 6863), (rho 6864), (rho 6865), (rho 6866), (rho 6867), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part78_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart78 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 6807) (rho 6812) (rho 6817) (rho 6822) (rho 6827) (rho 6832) (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) k := by
  unfold Seg9.relationPart78 Seg9.relationRow390 Seg9.relationRow391 Seg9.relationRow392 Seg9.relationRow393 Seg9.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 6868), (rho 6869), (rho 6870), (rho 6871), (rho 6872), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part79_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart79 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) k := by
  unfold Seg9.relationPart79 Seg9.relationRow395 Seg9.relationRow396 Seg9.relationRow397 Seg9.relationRow398 Seg9.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 6873), (rho 6874), (rho 6875), (rho 6876), (rho 6877), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part80_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart80 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) k := by
  unfold Seg9.relationPart80 Seg9.relationRow400 Seg9.relationRow401 Seg9.relationRow402 Seg9.relationRow403 Seg9.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 6878), (rho 6879), (rho 6880), (rho 6881), (rho 6882), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part81_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart81 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) k := by
  unfold Seg9.relationPart81 Seg9.relationRow405 Seg9.relationRow406 Seg9.relationRow407 Seg9.relationRow408 Seg9.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 6883), (rho 6884), (rho 6885), (rho 6886), (rho 6887), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part82_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart82 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) (rho 6892)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) k := by
  unfold Seg9.relationPart82 Seg9.relationRow410 Seg9.relationRow411 Seg9.relationRow412 Seg9.relationRow413 Seg9.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 6888), (rho 6889), (rho 6890), (rho 6891), (rho 6892), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part83_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart83 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) (rho 6892) (rho 6897)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) (rho 6892) k := by
  unfold Seg9.relationPart83 Seg9.relationRow415 Seg9.relationRow416 Seg9.relationRow417 Seg9.relationRow418 Seg9.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 6893), (rho 6894), (rho 6895), (rho 6896), (rho 6897), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part84_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart84 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) (rho 6892) (rho 6897) (rho 6902)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) (rho 6892) (rho 6897) k := by
  unfold Seg9.relationPart84 Seg9.relationRow420 Seg9.relationRow421 Seg9.relationRow422 Seg9.relationRow423 Seg9.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 6898), (rho 6899), (rho 6900), (rho 6901), (rho 6902), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part85_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart85 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6877) (rho 6882) (rho 6887) (rho 6892) (rho 6897) (rho 6902) (rho 6907)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882) (rho 6887) (rho 6892) (rho 6897) (rho 6902) k := by
  unfold Seg9.relationPart85 Seg9.relationRow425 Seg9.relationRow426 Seg9.relationRow427 Seg9.relationRow428 Seg9.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 6903), (rho 6904), (rho 6905), (rho 6906), (rho 6907), h0, h1, h2, h3, h4, hk⟩

def seg9NotePrefix (rho : Nat → Seg9.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (fun w15 w16 w19 w22 w572 w912 w917 =>
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
  w1312 = (rho 6877) ∧ w1317 = (rho 6882) ∧ w1322 = (rho 6887) ∧ w1327 = (rho 6892) ∧ w1332 = (rho 6897) ∧ w1337 = (rho 6902) ∧ w1342 = (rho 6907)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg9_relation_to_note_prefix (rho : Nat → Seg9.F)
    (h : Seg9.relation rho) : seg9NotePrefix rho := by
  unfold Seg9.relation at h
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
  unfold seg9NotePrefix
  apply seg9_part0_to_extracted rho p0
  apply seg9_part1_to_extracted rho p1
  apply seg9_part2_to_extracted rho p2
  apply seg9_part3_to_extracted rho p3
  apply seg9_part4_to_extracted rho p4
  apply seg9_part5_to_extracted rho p5
  apply seg9_part6_to_extracted rho p6
  apply seg9_part7_to_extracted rho p7
  apply seg9_part8_to_extracted rho p8
  apply seg9_part9_to_extracted rho p9
  apply seg9_part10_to_extracted rho p10
  apply seg9_part11_to_extracted rho p11
  apply seg9_part12_to_extracted rho p12
  apply seg9_part13_to_extracted rho p13
  apply seg9_part14_to_extracted rho p14
  apply seg9_part15_to_extracted rho p15
  apply seg9_part16_to_extracted rho p16
  apply seg9_part17_to_extracted rho p17
  apply seg9_part18_to_extracted rho p18
  apply seg9_part19_to_extracted rho p19
  apply seg9_part20_to_extracted rho p20
  apply seg9_part21_to_extracted rho p21
  apply seg9_part22_to_extracted rho p22
  apply seg9_part23_to_extracted rho p23
  apply seg9_part24_to_extracted rho p24
  apply seg9_part25_to_extracted rho p25
  apply seg9_part26_to_extracted rho p26
  apply seg9_part27_to_extracted rho p27
  apply seg9_part28_to_extracted rho p28
  apply seg9_part29_to_extracted rho p29
  apply seg9_part30_to_extracted rho p30
  apply seg9_part31_to_extracted rho p31
  apply seg9_part32_to_extracted rho p32
  apply seg9_part33_to_extracted rho p33
  apply seg9_part34_to_extracted rho p34
  apply seg9_part35_to_extracted rho p35
  apply seg9_part36_to_extracted rho p36
  apply seg9_part37_to_extracted rho p37
  apply seg9_part38_to_extracted rho p38
  apply seg9_part39_to_extracted rho p39
  apply seg9_part40_to_extracted rho p40
  apply seg9_part41_to_extracted rho p41
  apply seg9_part42_to_extracted rho p42
  apply seg9_part43_to_extracted rho p43
  apply seg9_part44_to_extracted rho p44
  apply seg9_part45_to_extracted rho p45
  apply seg9_part46_to_extracted rho p46
  apply seg9_part47_to_extracted rho p47
  apply seg9_part48_to_extracted rho p48
  apply seg9_part49_to_extracted rho p49
  apply seg9_part50_to_extracted rho p50
  apply seg9_part51_to_extracted rho p51
  apply seg9_part52_to_extracted rho p52
  apply seg9_part53_to_extracted rho p53
  apply seg9_part54_to_extracted rho p54
  apply seg9_part55_to_extracted rho p55
  apply seg9_part56_to_extracted rho p56
  apply seg9_part57_to_extracted rho p57
  apply seg9_part58_to_extracted rho p58
  apply seg9_part59_to_extracted rho p59
  apply seg9_part60_to_extracted rho p60
  apply seg9_part61_to_extracted rho p61
  apply seg9_part62_to_extracted rho p62
  apply seg9_part63_to_extracted rho p63
  apply seg9_part64_to_extracted rho p64
  apply seg9_part65_to_extracted rho p65
  apply seg9_part66_to_extracted rho p66
  apply seg9_part67_to_extracted rho p67
  apply seg9_part68_to_extracted rho p68
  apply seg9_part69_to_extracted rho p69
  apply seg9_part70_to_extracted rho p70
  apply seg9_part71_to_extracted rho p71
  apply seg9_part72_to_extracted rho p72
  apply seg9_part73_to_extracted rho p73
  apply seg9_part74_to_extracted rho p74
  apply seg9_part75_to_extracted rho p75
  apply seg9_part76_to_extracted rho p76
  apply seg9_part77_to_extracted rho p77
  apply seg9_part78_to_extracted rho p78
  apply seg9_part79_to_extracted rho p79
  apply seg9_part80_to_extracted rho p80
  apply seg9_part81_to_extracted rho p81
  apply seg9_part82_to_extracted rho p82
  apply seg9_part83_to_extracted rho p83
  apply seg9_part84_to_extracted rho p84
  apply seg9_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg9_sound (rho : Nat → Seg9.F) (h : Seg9.relation rho) : Seg9.spec rho := by
  have hPrefix := seg9_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg9.spec, Specs.deployedSpec9, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

theorem seg24_part0_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart0 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) (rho 18663)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) k := by
  unfold Seg24.relationPart0 Seg24.relationRow0 Seg24.relationRow1 Seg24.relationRow2 Seg24.relationRow3 Seg24.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 18659), (rho 18660), (rho 18661), (rho 18662), (rho 18663), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part1_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart1 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) (rho 18663) (rho 18668)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) (rho 18663) k := by
  unfold Seg24.relationPart1 Seg24.relationRow5 Seg24.relationRow6 Seg24.relationRow7 Seg24.relationRow8 Seg24.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 18664), (rho 18665), (rho 18666), (rho 18667), (rho 18668), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part2_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart2 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 109) (rho 112) (rho 572) (rho 912) (rho 18663) (rho 18668) (rho 18673)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) (rho 18663) (rho 18668) k := by
  unfold Seg24.relationPart2 Seg24.relationRow10 Seg24.relationRow11 Seg24.relationRow12 Seg24.relationRow13 Seg24.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 18669), (rho 18670), (rho 18671), (rho 18672), (rho 18673), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part3_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart3 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 109) (rho 112) (rho 18663) (rho 18668) (rho 18673) (rho 18678)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 109) (rho 112) (rho 572) (rho 912) (rho 18663) (rho 18668) (rho 18673) k := by
  unfold Seg24.relationPart3 Seg24.relationRow15 Seg24.relationRow16 Seg24.relationRow17 Seg24.relationRow18 Seg24.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 18674), (rho 18675), (rho 18676), (rho 18677), (rho 18678), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part4_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart4 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 112) (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 109) (rho 112) (rho 18663) (rho 18668) (rho 18673) (rho 18678) k := by
  unfold Seg24.relationPart4 Seg24.relationRow20 Seg24.relationRow21 Seg24.relationRow22 Seg24.relationRow23 Seg24.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 18679), (rho 18680), (rho 18681), (rho 18682), (rho 18683), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part5_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart5 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 112) (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) k := by
  unfold Seg24.relationPart5 Seg24.relationRow25 Seg24.relationRow26 Seg24.relationRow27 Seg24.relationRow28 Seg24.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 18684), (rho 18685), (rho 18686), (rho 18687), (rho 18688), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part6_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart6 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) k := by
  unfold Seg24.relationPart6 Seg24.relationRow30 Seg24.relationRow31 Seg24.relationRow32 Seg24.relationRow33 Seg24.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 18689), (rho 18690), (rho 18691), (rho 18692), (rho 18693), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part7_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart7 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) k := by
  unfold Seg24.relationPart7 Seg24.relationRow35 Seg24.relationRow36 Seg24.relationRow37 Seg24.relationRow38 Seg24.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 18694), (rho 18695), (rho 18696), (rho 18697), (rho 18698), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part8_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart8 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) k := by
  unfold Seg24.relationPart8 Seg24.relationRow40 Seg24.relationRow41 Seg24.relationRow42 Seg24.relationRow43 Seg24.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 18699), (rho 18700), (rho 18701), (rho 18702), (rho 18703), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part9_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart9 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) (rho 18708)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) k := by
  unfold Seg24.relationPart9 Seg24.relationRow45 Seg24.relationRow46 Seg24.relationRow47 Seg24.relationRow48 Seg24.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 18704), (rho 18705), (rho 18706), (rho 18707), (rho 18708), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part10_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart10 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) (rho 18708) k := by
  unfold Seg24.relationPart10 Seg24.relationRow50 Seg24.relationRow51 Seg24.relationRow52 Seg24.relationRow53 Seg24.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 18709), (rho 18710), (rho 18711), (rho 18712), (rho 18713), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part11_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart11 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) k := by
  unfold Seg24.relationPart11 Seg24.relationRow55 Seg24.relationRow56 Seg24.relationRow57 Seg24.relationRow58 Seg24.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 18714), (rho 18715), (rho 18716), (rho 18717), (rho 18718), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part12_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart12 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 18663) (rho 18668) (rho 18673) (rho 18678) (rho 18683) (rho 18688) (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) k := by
  unfold Seg24.relationPart12 Seg24.relationRow60 Seg24.relationRow61 Seg24.relationRow62 Seg24.relationRow63 Seg24.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 18719), (rho 18720), (rho 18721), (rho 18722), (rho 18723), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part13_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart13 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) k := by
  unfold Seg24.relationPart13 Seg24.relationRow65 Seg24.relationRow66 Seg24.relationRow67 Seg24.relationRow68 Seg24.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 18724), (rho 18725), (rho 18726), (rho 18727), (rho 18728), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part14_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart14 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) k := by
  unfold Seg24.relationPart14 Seg24.relationRow70 Seg24.relationRow71 Seg24.relationRow72 Seg24.relationRow73 Seg24.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 18729), (rho 18730), (rho 18731), (rho 18732), (rho 18733), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part15_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart15 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) k := by
  unfold Seg24.relationPart15 Seg24.relationRow75 Seg24.relationRow76 Seg24.relationRow77 Seg24.relationRow78 Seg24.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 18734), (rho 18735), (rho 18736), (rho 18737), (rho 18738), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part16_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart16 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) (rho 18743)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) k := by
  unfold Seg24.relationPart16 Seg24.relationRow80 Seg24.relationRow81 Seg24.relationRow82 Seg24.relationRow83 Seg24.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 18739), (rho 18740), (rho 18741), (rho 18742), (rho 18743), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part17_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart17 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) (rho 18743) k := by
  unfold Seg24.relationPart17 Seg24.relationRow85 Seg24.relationRow86 Seg24.relationRow87 Seg24.relationRow88 Seg24.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 18744), (rho 18745), (rho 18746), (rho 18747), (rho 18748), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part18_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart18 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) k := by
  unfold Seg24.relationPart18 Seg24.relationRow90 Seg24.relationRow91 Seg24.relationRow92 Seg24.relationRow93 Seg24.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 18749), (rho 18750), (rho 18751), (rho 18752), (rho 18753), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part19_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart19 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 18693) (rho 18698) (rho 18703) (rho 18708) (rho 18713) (rho 18718) (rho 18723) (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) k := by
  unfold Seg24.relationPart19 Seg24.relationRow95 Seg24.relationRow96 Seg24.relationRow97 Seg24.relationRow98 Seg24.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 18754), (rho 18755), (rho 18756), (rho 18757), (rho 18758), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part20_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart20 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) k := by
  unfold Seg24.relationPart20 Seg24.relationRow100 Seg24.relationRow101 Seg24.relationRow102 Seg24.relationRow103 Seg24.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 18759), (rho 18760), (rho 18761), (rho 18762), (rho 18763), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part21_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart21 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) k := by
  unfold Seg24.relationPart21 Seg24.relationRow105 Seg24.relationRow106 Seg24.relationRow107 Seg24.relationRow108 Seg24.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 18764), (rho 18765), (rho 18766), (rho 18767), (rho 18768), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part22_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart22 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) k := by
  unfold Seg24.relationPart22 Seg24.relationRow110 Seg24.relationRow111 Seg24.relationRow112 Seg24.relationRow113 Seg24.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 18769), (rho 18770), (rho 18771), (rho 18772), (rho 18773), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part23_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart23 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) (rho 18778)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) k := by
  unfold Seg24.relationPart23 Seg24.relationRow115 Seg24.relationRow116 Seg24.relationRow117 Seg24.relationRow118 Seg24.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 18774), (rho 18775), (rho 18776), (rho 18777), (rho 18778), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part24_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart24 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) (rho 18778) k := by
  unfold Seg24.relationPart24 Seg24.relationRow120 Seg24.relationRow121 Seg24.relationRow122 Seg24.relationRow123 Seg24.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 18779), (rho 18780), (rho 18781), (rho 18782), (rho 18783), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part25_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart25 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) k := by
  unfold Seg24.relationPart25 Seg24.relationRow125 Seg24.relationRow126 Seg24.relationRow127 Seg24.relationRow128 Seg24.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 18784), (rho 18785), (rho 18786), (rho 18787), (rho 18788), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part26_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart26 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 18728) (rho 18733) (rho 18738) (rho 18743) (rho 18748) (rho 18753) (rho 18758) (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) k := by
  unfold Seg24.relationPart26 Seg24.relationRow130 Seg24.relationRow131 Seg24.relationRow132 Seg24.relationRow133 Seg24.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 18789), (rho 18790), (rho 18791), (rho 18792), (rho 18793), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part27_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart27 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) k := by
  unfold Seg24.relationPart27 Seg24.relationRow135 Seg24.relationRow136 Seg24.relationRow137 Seg24.relationRow138 Seg24.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 18794), (rho 18795), (rho 18796), (rho 18797), (rho 18798), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part28_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart28 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) k := by
  unfold Seg24.relationPart28 Seg24.relationRow140 Seg24.relationRow141 Seg24.relationRow142 Seg24.relationRow143 Seg24.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 18799), (rho 18800), (rho 18801), (rho 18802), (rho 18803), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part29_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart29 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) k := by
  unfold Seg24.relationPart29 Seg24.relationRow145 Seg24.relationRow146 Seg24.relationRow147 Seg24.relationRow148 Seg24.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 18804), (rho 18805), (rho 18806), (rho 18807), (rho 18808), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part30_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart30 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) k := by
  unfold Seg24.relationPart30 Seg24.relationRow150 Seg24.relationRow151 Seg24.relationRow152 Seg24.relationRow153 Seg24.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 18809), (rho 18810), (rho 18811), (rho 18812), (rho 18813), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part31_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart31 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) k := by
  unfold Seg24.relationPart31 Seg24.relationRow155 Seg24.relationRow156 Seg24.relationRow157 Seg24.relationRow158 Seg24.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 18814), (rho 18815), (rho 18816), (rho 18817), (rho 18818), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part32_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart32 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) k := by
  unfold Seg24.relationPart32 Seg24.relationRow160 Seg24.relationRow161 Seg24.relationRow162 Seg24.relationRow163 Seg24.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 18819), (rho 18820), (rho 18821), (rho 18822), (rho 18823), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part33_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart33 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) k := by
  unfold Seg24.relationPart33 Seg24.relationRow165 Seg24.relationRow166 Seg24.relationRow167 Seg24.relationRow168 Seg24.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 18824), (rho 18825), (rho 18826), (rho 18827), (rho 18828), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part34_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart34 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) k := by
  unfold Seg24.relationPart34 Seg24.relationRow170 Seg24.relationRow171 Seg24.relationRow172 Seg24.relationRow173 Seg24.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 18829), (rho 18830), (rho 18831), (rho 18832), (rho 18833), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part35_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart35 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) k := by
  unfold Seg24.relationPart35 Seg24.relationRow175 Seg24.relationRow176 Seg24.relationRow177 Seg24.relationRow178 Seg24.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 18834), (rho 18835), (rho 18836), (rho 18837), (rho 18838), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part36_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart36 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) k := by
  unfold Seg24.relationPart36 Seg24.relationRow180 Seg24.relationRow181 Seg24.relationRow182 Seg24.relationRow183 Seg24.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 18839), (rho 18840), (rho 18841), (rho 18842), (rho 18843), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part37_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart37 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) k := by
  unfold Seg24.relationPart37 Seg24.relationRow185 Seg24.relationRow186 Seg24.relationRow187 Seg24.relationRow188 Seg24.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 18844), (rho 18845), (rho 18846), (rho 18847), (rho 18848), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part38_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart38 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) k := by
  unfold Seg24.relationPart38 Seg24.relationRow190 Seg24.relationRow191 Seg24.relationRow192 Seg24.relationRow193 Seg24.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 18849), (rho 18850), (rho 18851), (rho 18852), (rho 18853), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part39_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart39 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) k := by
  unfold Seg24.relationPart39 Seg24.relationRow195 Seg24.relationRow196 Seg24.relationRow197 Seg24.relationRow198 Seg24.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 18854), (rho 18855), (rho 18856), (rho 18857), (rho 18858), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part40_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart40 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) k := by
  unfold Seg24.relationPart40 Seg24.relationRow200 Seg24.relationRow201 Seg24.relationRow202 Seg24.relationRow203 Seg24.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 18859), (rho 18860), (rho 18861), (rho 18862), (rho 18863), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part41_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart41 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) k := by
  unfold Seg24.relationPart41 Seg24.relationRow205 Seg24.relationRow206 Seg24.relationRow207 Seg24.relationRow208 Seg24.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 18864), (rho 18865), (rho 18866), (rho 18867), (rho 18868), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part42_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart42 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) k := by
  unfold Seg24.relationPart42 Seg24.relationRow210 Seg24.relationRow211 Seg24.relationRow212 Seg24.relationRow213 Seg24.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 18869), (rho 18870), (rho 18871), (rho 18872), (rho 18873), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part43_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart43 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) k := by
  unfold Seg24.relationPart43 Seg24.relationRow215 Seg24.relationRow216 Seg24.relationRow217 Seg24.relationRow218 Seg24.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 18874), (rho 18875), (rho 18876), (rho 18877), (rho 18878), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part44_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart44 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) k := by
  unfold Seg24.relationPart44 Seg24.relationRow220 Seg24.relationRow221 Seg24.relationRow222 Seg24.relationRow223 Seg24.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 18879), (rho 18880), (rho 18881), (rho 18882), (rho 18883), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part45_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart45 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) k := by
  unfold Seg24.relationPart45 Seg24.relationRow225 Seg24.relationRow226 Seg24.relationRow227 Seg24.relationRow228 Seg24.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 18884), (rho 18885), (rho 18886), (rho 18887), (rho 18888), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part46_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart46 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) k := by
  unfold Seg24.relationPart46 Seg24.relationRow230 Seg24.relationRow231 Seg24.relationRow232 Seg24.relationRow233 Seg24.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 18889), (rho 18890), (rho 18891), (rho 18892), (rho 18893), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part47_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart47 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) k := by
  unfold Seg24.relationPart47 Seg24.relationRow235 Seg24.relationRow236 Seg24.relationRow237 Seg24.relationRow238 Seg24.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 18894), (rho 18895), (rho 18896), (rho 18897), (rho 18898), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part48_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart48 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) k := by
  unfold Seg24.relationPart48 Seg24.relationRow240 Seg24.relationRow241 Seg24.relationRow242 Seg24.relationRow243 Seg24.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 18899), (rho 18900), (rho 18901), (rho 18902), (rho 18903), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part49_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart49 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) k := by
  unfold Seg24.relationPart49 Seg24.relationRow245 Seg24.relationRow246 Seg24.relationRow247 Seg24.relationRow248 Seg24.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 18904), (rho 18905), (rho 18906), (rho 18907), (rho 18908), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part50_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart50 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) k := by
  unfold Seg24.relationPart50 Seg24.relationRow250 Seg24.relationRow251 Seg24.relationRow252 Seg24.relationRow253 Seg24.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 18909), (rho 18910), (rho 18911), (rho 18912), (rho 18913), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part51_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart51 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) k := by
  unfold Seg24.relationPart51 Seg24.relationRow255 Seg24.relationRow256 Seg24.relationRow257 Seg24.relationRow258 Seg24.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 18914), (rho 18915), (rho 18916), (rho 18917), (rho 18918), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part52_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart52 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) k := by
  unfold Seg24.relationPart52 Seg24.relationRow260 Seg24.relationRow261 Seg24.relationRow262 Seg24.relationRow263 Seg24.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 18919), (rho 18920), (rho 18921), (rho 18922), (rho 18923), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part53_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart53 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) k := by
  unfold Seg24.relationPart53 Seg24.relationRow265 Seg24.relationRow266 Seg24.relationRow267 Seg24.relationRow268 Seg24.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 18924), (rho 18925), (rho 18926), (rho 18927), (rho 18928), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part54_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart54 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) k := by
  unfold Seg24.relationPart54 Seg24.relationRow270 Seg24.relationRow271 Seg24.relationRow272 Seg24.relationRow273 Seg24.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 18929), (rho 18930), (rho 18931), (rho 18932), (rho 18933), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part55_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart55 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) k := by
  unfold Seg24.relationPart55 Seg24.relationRow275 Seg24.relationRow276 Seg24.relationRow277 Seg24.relationRow278 Seg24.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 18934), (rho 18935), (rho 18936), (rho 18937), (rho 18938), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part56_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart56 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) k := by
  unfold Seg24.relationPart56 Seg24.relationRow280 Seg24.relationRow281 Seg24.relationRow282 Seg24.relationRow283 Seg24.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 18939), (rho 18940), (rho 18941), (rho 18942), (rho 18943), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part57_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart57 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) k := by
  unfold Seg24.relationPart57 Seg24.relationRow285 Seg24.relationRow286 Seg24.relationRow287 Seg24.relationRow288 Seg24.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 18944), (rho 18945), (rho 18946), (rho 18947), (rho 18948), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part58_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart58 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) k := by
  unfold Seg24.relationPart58 Seg24.relationRow290 Seg24.relationRow291 Seg24.relationRow292 Seg24.relationRow293 Seg24.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 18949), (rho 18950), (rho 18951), (rho 18952), (rho 18953), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part59_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart59 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) k := by
  unfold Seg24.relationPart59 Seg24.relationRow295 Seg24.relationRow296 Seg24.relationRow297 Seg24.relationRow298 Seg24.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 18954), (rho 18955), (rho 18956), (rho 18957), (rho 18958), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part60_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart60 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) k := by
  unfold Seg24.relationPart60 Seg24.relationRow300 Seg24.relationRow301 Seg24.relationRow302 Seg24.relationRow303 Seg24.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 18959), (rho 18960), (rho 18961), (rho 18962), (rho 18963), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part61_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart61 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) (rho 18968)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) k := by
  unfold Seg24.relationPart61 Seg24.relationRow305 Seg24.relationRow306 Seg24.relationRow307 Seg24.relationRow308 Seg24.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 18964), (rho 18965), (rho 18966), (rho 18967), (rho 18968), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part62_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart62 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) (rho 18968) k := by
  unfold Seg24.relationPart62 Seg24.relationRow310 Seg24.relationRow311 Seg24.relationRow312 Seg24.relationRow313 Seg24.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 18969), (rho 18970), (rho 18971), (rho 18972), (rho 18973), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part63_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart63 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) k := by
  unfold Seg24.relationPart63 Seg24.relationRow315 Seg24.relationRow316 Seg24.relationRow317 Seg24.relationRow318 Seg24.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 18974), (rho 18975), (rho 18976), (rho 18977), (rho 18978), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part64_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart64 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 18763) (rho 18768) (rho 18773) (rho 18778) (rho 18783) (rho 18788) (rho 18793) (rho 18798) (rho 18803) (rho 18808) (rho 18813) (rho 18818) (rho 18823) (rho 18828) (rho 18833) (rho 18838) (rho 18843) (rho 18848) (rho 18853) (rho 18858) (rho 18863) (rho 18868) (rho 18873) (rho 18878) (rho 18883) (rho 18888) (rho 18893) (rho 18898) (rho 18903) (rho 18908) (rho 18913) (rho 18918) (rho 18923) (rho 18928) (rho 18933) (rho 18938) (rho 18943) (rho 18948) (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) k := by
  unfold Seg24.relationPart64 Seg24.relationRow320 Seg24.relationRow321 Seg24.relationRow322 Seg24.relationRow323 Seg24.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 18979), (rho 18980), (rho 18981), (rho 18982), (rho 18983), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part65_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart65 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) k := by
  unfold Seg24.relationPart65 Seg24.relationRow325 Seg24.relationRow326 Seg24.relationRow327 Seg24.relationRow328 Seg24.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 18984), (rho 18985), (rho 18986), (rho 18987), (rho 18988), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part66_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart66 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) k := by
  unfold Seg24.relationPart66 Seg24.relationRow330 Seg24.relationRow331 Seg24.relationRow332 Seg24.relationRow333 Seg24.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 18989), (rho 18990), (rho 18991), (rho 18992), (rho 18993), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part67_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart67 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) k := by
  unfold Seg24.relationPart67 Seg24.relationRow335 Seg24.relationRow336 Seg24.relationRow337 Seg24.relationRow338 Seg24.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 18994), (rho 18995), (rho 18996), (rho 18997), (rho 18998), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part68_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart68 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) (rho 19003)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) k := by
  unfold Seg24.relationPart68 Seg24.relationRow340 Seg24.relationRow341 Seg24.relationRow342 Seg24.relationRow343 Seg24.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 18999), (rho 19000), (rho 19001), (rho 19002), (rho 19003), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part69_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart69 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) (rho 19003) k := by
  unfold Seg24.relationPart69 Seg24.relationRow345 Seg24.relationRow346 Seg24.relationRow347 Seg24.relationRow348 Seg24.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 19004), (rho 19005), (rho 19006), (rho 19007), (rho 19008), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part70_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart70 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) k := by
  unfold Seg24.relationPart70 Seg24.relationRow350 Seg24.relationRow351 Seg24.relationRow352 Seg24.relationRow353 Seg24.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 19009), (rho 19010), (rho 19011), (rho 19012), (rho 19013), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part71_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart71 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 18953) (rho 18958) (rho 18963) (rho 18968) (rho 18973) (rho 18978) (rho 18983) (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) k := by
  unfold Seg24.relationPart71 Seg24.relationRow355 Seg24.relationRow356 Seg24.relationRow357 Seg24.relationRow358 Seg24.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 19014), (rho 19015), (rho 19016), (rho 19017), (rho 19018), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part72_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart72 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) k := by
  unfold Seg24.relationPart72 Seg24.relationRow360 Seg24.relationRow361 Seg24.relationRow362 Seg24.relationRow363 Seg24.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 19019), (rho 19020), (rho 19021), (rho 19022), (rho 19023), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part73_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart73 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) k := by
  unfold Seg24.relationPart73 Seg24.relationRow365 Seg24.relationRow366 Seg24.relationRow367 Seg24.relationRow368 Seg24.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 19024), (rho 19025), (rho 19026), (rho 19027), (rho 19028), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part74_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart74 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) k := by
  unfold Seg24.relationPart74 Seg24.relationRow370 Seg24.relationRow371 Seg24.relationRow372 Seg24.relationRow373 Seg24.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 19029), (rho 19030), (rho 19031), (rho 19032), (rho 19033), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part75_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart75 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) (rho 19038)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) k := by
  unfold Seg24.relationPart75 Seg24.relationRow375 Seg24.relationRow376 Seg24.relationRow377 Seg24.relationRow378 Seg24.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 19034), (rho 19035), (rho 19036), (rho 19037), (rho 19038), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part76_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart76 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) (rho 19038) k := by
  unfold Seg24.relationPart76 Seg24.relationRow380 Seg24.relationRow381 Seg24.relationRow382 Seg24.relationRow383 Seg24.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 19039), (rho 19040), (rho 19041), (rho 19042), (rho 19043), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part77_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart77 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) k := by
  unfold Seg24.relationPart77 Seg24.relationRow385 Seg24.relationRow386 Seg24.relationRow387 Seg24.relationRow388 Seg24.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 19044), (rho 19045), (rho 19046), (rho 19047), (rho 19048), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part78_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart78 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 18988) (rho 18993) (rho 18998) (rho 19003) (rho 19008) (rho 19013) (rho 19018) (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) k := by
  unfold Seg24.relationPart78 Seg24.relationRow390 Seg24.relationRow391 Seg24.relationRow392 Seg24.relationRow393 Seg24.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 19049), (rho 19050), (rho 19051), (rho 19052), (rho 19053), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part79_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart79 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) k := by
  unfold Seg24.relationPart79 Seg24.relationRow395 Seg24.relationRow396 Seg24.relationRow397 Seg24.relationRow398 Seg24.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 19054), (rho 19055), (rho 19056), (rho 19057), (rho 19058), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part80_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart80 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) k := by
  unfold Seg24.relationPart80 Seg24.relationRow400 Seg24.relationRow401 Seg24.relationRow402 Seg24.relationRow403 Seg24.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 19059), (rho 19060), (rho 19061), (rho 19062), (rho 19063), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part81_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart81 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) k := by
  unfold Seg24.relationPart81 Seg24.relationRow405 Seg24.relationRow406 Seg24.relationRow407 Seg24.relationRow408 Seg24.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 19064), (rho 19065), (rho 19066), (rho 19067), (rho 19068), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part82_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart82 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) (rho 19073)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) k := by
  unfold Seg24.relationPart82 Seg24.relationRow410 Seg24.relationRow411 Seg24.relationRow412 Seg24.relationRow413 Seg24.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 19069), (rho 19070), (rho 19071), (rho 19072), (rho 19073), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part83_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart83 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) (rho 19073) (rho 19078)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) (rho 19073) k := by
  unfold Seg24.relationPart83 Seg24.relationRow415 Seg24.relationRow416 Seg24.relationRow417 Seg24.relationRow418 Seg24.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 19074), (rho 19075), (rho 19076), (rho 19077), (rho 19078), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part84_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart84 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) (rho 19073) (rho 19078) (rho 19083)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) (rho 19073) (rho 19078) k := by
  unfold Seg24.relationPart84 Seg24.relationRow420 Seg24.relationRow421 Seg24.relationRow422 Seg24.relationRow423 Seg24.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 19079), (rho 19080), (rho 19081), (rho 19082), (rho 19083), h0, h1, h2, h3, h4, hk⟩

theorem seg24_part85_to_extracted (rho : Nat → Seg24.F)
    (h : Seg24.relationPart85 rho)
    {k : Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Seg24.F → Prop} (hk : k (rho 19058) (rho 19063) (rho 19068) (rho 19073) (rho 19078) (rho 19083) (rho 19088)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 19023) (rho 19028) (rho 19033) (rho 19038) (rho 19043) (rho 19048) (rho 19053) (rho 19058) (rho 19063) (rho 19068) (rho 19073) (rho 19078) (rho 19083) k := by
  unfold Seg24.relationPart85 Seg24.relationRow425 Seg24.relationRow426 Seg24.relationRow427 Seg24.relationRow428 Seg24.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 19084), (rho 19085), (rho 19086), (rho 19087), (rho 19088), h0, h1, h2, h3, h4, hk⟩

def seg24NotePrefix (rho : Nat → Seg24.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) (fun w15 w16 w19 w22 w572 w912 w917 =>
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
  w1312 = (rho 19058) ∧ w1317 = (rho 19063) ∧ w1322 = (rho 19068) ∧ w1327 = (rho 19073) ∧ w1332 = (rho 19078) ∧ w1337 = (rho 19083) ∧ w1342 = (rho 19088)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg24_relation_to_note_prefix (rho : Nat → Seg24.F)
    (h : Seg24.relation rho) : seg24NotePrefix rho := by
  unfold Seg24.relation at h
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
  unfold seg24NotePrefix
  apply seg24_part0_to_extracted rho p0
  apply seg24_part1_to_extracted rho p1
  apply seg24_part2_to_extracted rho p2
  apply seg24_part3_to_extracted rho p3
  apply seg24_part4_to_extracted rho p4
  apply seg24_part5_to_extracted rho p5
  apply seg24_part6_to_extracted rho p6
  apply seg24_part7_to_extracted rho p7
  apply seg24_part8_to_extracted rho p8
  apply seg24_part9_to_extracted rho p9
  apply seg24_part10_to_extracted rho p10
  apply seg24_part11_to_extracted rho p11
  apply seg24_part12_to_extracted rho p12
  apply seg24_part13_to_extracted rho p13
  apply seg24_part14_to_extracted rho p14
  apply seg24_part15_to_extracted rho p15
  apply seg24_part16_to_extracted rho p16
  apply seg24_part17_to_extracted rho p17
  apply seg24_part18_to_extracted rho p18
  apply seg24_part19_to_extracted rho p19
  apply seg24_part20_to_extracted rho p20
  apply seg24_part21_to_extracted rho p21
  apply seg24_part22_to_extracted rho p22
  apply seg24_part23_to_extracted rho p23
  apply seg24_part24_to_extracted rho p24
  apply seg24_part25_to_extracted rho p25
  apply seg24_part26_to_extracted rho p26
  apply seg24_part27_to_extracted rho p27
  apply seg24_part28_to_extracted rho p28
  apply seg24_part29_to_extracted rho p29
  apply seg24_part30_to_extracted rho p30
  apply seg24_part31_to_extracted rho p31
  apply seg24_part32_to_extracted rho p32
  apply seg24_part33_to_extracted rho p33
  apply seg24_part34_to_extracted rho p34
  apply seg24_part35_to_extracted rho p35
  apply seg24_part36_to_extracted rho p36
  apply seg24_part37_to_extracted rho p37
  apply seg24_part38_to_extracted rho p38
  apply seg24_part39_to_extracted rho p39
  apply seg24_part40_to_extracted rho p40
  apply seg24_part41_to_extracted rho p41
  apply seg24_part42_to_extracted rho p42
  apply seg24_part43_to_extracted rho p43
  apply seg24_part44_to_extracted rho p44
  apply seg24_part45_to_extracted rho p45
  apply seg24_part46_to_extracted rho p46
  apply seg24_part47_to_extracted rho p47
  apply seg24_part48_to_extracted rho p48
  apply seg24_part49_to_extracted rho p49
  apply seg24_part50_to_extracted rho p50
  apply seg24_part51_to_extracted rho p51
  apply seg24_part52_to_extracted rho p52
  apply seg24_part53_to_extracted rho p53
  apply seg24_part54_to_extracted rho p54
  apply seg24_part55_to_extracted rho p55
  apply seg24_part56_to_extracted rho p56
  apply seg24_part57_to_extracted rho p57
  apply seg24_part58_to_extracted rho p58
  apply seg24_part59_to_extracted rho p59
  apply seg24_part60_to_extracted rho p60
  apply seg24_part61_to_extracted rho p61
  apply seg24_part62_to_extracted rho p62
  apply seg24_part63_to_extracted rho p63
  apply seg24_part64_to_extracted rho p64
  apply seg24_part65_to_extracted rho p65
  apply seg24_part66_to_extracted rho p66
  apply seg24_part67_to_extracted rho p67
  apply seg24_part68_to_extracted rho p68
  apply seg24_part69_to_extracted rho p69
  apply seg24_part70_to_extracted rho p70
  apply seg24_part71_to_extracted rho p71
  apply seg24_part72_to_extracted rho p72
  apply seg24_part73_to_extracted rho p73
  apply seg24_part74_to_extracted rho p74
  apply seg24_part75_to_extracted rho p75
  apply seg24_part76_to_extracted rho p76
  apply seg24_part77_to_extracted rho p77
  apply seg24_part78_to_extracted rho p78
  apply seg24_part79_to_extracted rho p79
  apply seg24_part80_to_extracted rho p80
  apply seg24_part81_to_extracted rho p81
  apply seg24_part82_to_extracted rho p82
  apply seg24_part83_to_extracted rho p83
  apply seg24_part84_to_extracted rho p84
  apply seg24_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg24_sound (rho : Nat → Seg24.F) (h : Seg24.relation rho) : Seg24.spec rho := by
  have hPrefix := seg24_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg24.spec, Specs.deployedSpec24, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

theorem seg39_part0_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart0 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) (rho 30844)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) k := by
  unfold Seg39.relationPart0 Seg39.relationRow0 Seg39.relationRow1 Seg39.relationRow2 Seg39.relationRow3 Seg39.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 30840), (rho 30841), (rho 30842), (rho 30843), (rho 30844), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part1_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart1 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) (rho 30844) (rho 30849)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) (rho 30844) k := by
  unfold Seg39.relationPart1 Seg39.relationRow5 Seg39.relationRow6 Seg39.relationRow7 Seg39.relationRow8 Seg39.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 30845), (rho 30846), (rho 30847), (rho 30848), (rho 30849), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part2_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart2 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 197) (rho 200) (rho 572) (rho 912) (rho 30844) (rho 30849) (rho 30854)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) (rho 30844) (rho 30849) k := by
  unfold Seg39.relationPart2 Seg39.relationRow10 Seg39.relationRow11 Seg39.relationRow12 Seg39.relationRow13 Seg39.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 30850), (rho 30851), (rho 30852), (rho 30853), (rho 30854), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part3_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart3 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 197) (rho 200) (rho 30844) (rho 30849) (rho 30854) (rho 30859)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 197) (rho 200) (rho 572) (rho 912) (rho 30844) (rho 30849) (rho 30854) k := by
  unfold Seg39.relationPart3 Seg39.relationRow15 Seg39.relationRow16 Seg39.relationRow17 Seg39.relationRow18 Seg39.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 30855), (rho 30856), (rho 30857), (rho 30858), (rho 30859), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part4_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart4 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 200) (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 197) (rho 200) (rho 30844) (rho 30849) (rho 30854) (rho 30859) k := by
  unfold Seg39.relationPart4 Seg39.relationRow20 Seg39.relationRow21 Seg39.relationRow22 Seg39.relationRow23 Seg39.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 30860), (rho 30861), (rho 30862), (rho 30863), (rho 30864), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part5_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart5 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 200) (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) k := by
  unfold Seg39.relationPart5 Seg39.relationRow25 Seg39.relationRow26 Seg39.relationRow27 Seg39.relationRow28 Seg39.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 30865), (rho 30866), (rho 30867), (rho 30868), (rho 30869), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part6_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart6 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) k := by
  unfold Seg39.relationPart6 Seg39.relationRow30 Seg39.relationRow31 Seg39.relationRow32 Seg39.relationRow33 Seg39.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 30870), (rho 30871), (rho 30872), (rho 30873), (rho 30874), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part7_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart7 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) k := by
  unfold Seg39.relationPart7 Seg39.relationRow35 Seg39.relationRow36 Seg39.relationRow37 Seg39.relationRow38 Seg39.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 30875), (rho 30876), (rho 30877), (rho 30878), (rho 30879), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part8_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart8 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) k := by
  unfold Seg39.relationPart8 Seg39.relationRow40 Seg39.relationRow41 Seg39.relationRow42 Seg39.relationRow43 Seg39.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 30880), (rho 30881), (rho 30882), (rho 30883), (rho 30884), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part9_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart9 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) (rho 30889)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) k := by
  unfold Seg39.relationPart9 Seg39.relationRow45 Seg39.relationRow46 Seg39.relationRow47 Seg39.relationRow48 Seg39.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 30885), (rho 30886), (rho 30887), (rho 30888), (rho 30889), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part10_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart10 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) (rho 30889) k := by
  unfold Seg39.relationPart10 Seg39.relationRow50 Seg39.relationRow51 Seg39.relationRow52 Seg39.relationRow53 Seg39.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 30890), (rho 30891), (rho 30892), (rho 30893), (rho 30894), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part11_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart11 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) k := by
  unfold Seg39.relationPart11 Seg39.relationRow55 Seg39.relationRow56 Seg39.relationRow57 Seg39.relationRow58 Seg39.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 30895), (rho 30896), (rho 30897), (rho 30898), (rho 30899), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part12_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart12 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 30844) (rho 30849) (rho 30854) (rho 30859) (rho 30864) (rho 30869) (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) k := by
  unfold Seg39.relationPart12 Seg39.relationRow60 Seg39.relationRow61 Seg39.relationRow62 Seg39.relationRow63 Seg39.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 30900), (rho 30901), (rho 30902), (rho 30903), (rho 30904), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part13_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart13 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) k := by
  unfold Seg39.relationPart13 Seg39.relationRow65 Seg39.relationRow66 Seg39.relationRow67 Seg39.relationRow68 Seg39.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 30905), (rho 30906), (rho 30907), (rho 30908), (rho 30909), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part14_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart14 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) k := by
  unfold Seg39.relationPart14 Seg39.relationRow70 Seg39.relationRow71 Seg39.relationRow72 Seg39.relationRow73 Seg39.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 30910), (rho 30911), (rho 30912), (rho 30913), (rho 30914), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part15_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart15 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) k := by
  unfold Seg39.relationPart15 Seg39.relationRow75 Seg39.relationRow76 Seg39.relationRow77 Seg39.relationRow78 Seg39.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 30915), (rho 30916), (rho 30917), (rho 30918), (rho 30919), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part16_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart16 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) (rho 30924)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) k := by
  unfold Seg39.relationPart16 Seg39.relationRow80 Seg39.relationRow81 Seg39.relationRow82 Seg39.relationRow83 Seg39.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 30920), (rho 30921), (rho 30922), (rho 30923), (rho 30924), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part17_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart17 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) (rho 30924) k := by
  unfold Seg39.relationPart17 Seg39.relationRow85 Seg39.relationRow86 Seg39.relationRow87 Seg39.relationRow88 Seg39.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 30925), (rho 30926), (rho 30927), (rho 30928), (rho 30929), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part18_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart18 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) k := by
  unfold Seg39.relationPart18 Seg39.relationRow90 Seg39.relationRow91 Seg39.relationRow92 Seg39.relationRow93 Seg39.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 30930), (rho 30931), (rho 30932), (rho 30933), (rho 30934), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part19_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart19 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 30874) (rho 30879) (rho 30884) (rho 30889) (rho 30894) (rho 30899) (rho 30904) (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) k := by
  unfold Seg39.relationPart19 Seg39.relationRow95 Seg39.relationRow96 Seg39.relationRow97 Seg39.relationRow98 Seg39.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 30935), (rho 30936), (rho 30937), (rho 30938), (rho 30939), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part20_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart20 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) k := by
  unfold Seg39.relationPart20 Seg39.relationRow100 Seg39.relationRow101 Seg39.relationRow102 Seg39.relationRow103 Seg39.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 30940), (rho 30941), (rho 30942), (rho 30943), (rho 30944), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part21_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart21 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) k := by
  unfold Seg39.relationPart21 Seg39.relationRow105 Seg39.relationRow106 Seg39.relationRow107 Seg39.relationRow108 Seg39.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 30945), (rho 30946), (rho 30947), (rho 30948), (rho 30949), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part22_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart22 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) k := by
  unfold Seg39.relationPart22 Seg39.relationRow110 Seg39.relationRow111 Seg39.relationRow112 Seg39.relationRow113 Seg39.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 30950), (rho 30951), (rho 30952), (rho 30953), (rho 30954), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part23_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart23 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) (rho 30959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) k := by
  unfold Seg39.relationPart23 Seg39.relationRow115 Seg39.relationRow116 Seg39.relationRow117 Seg39.relationRow118 Seg39.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 30955), (rho 30956), (rho 30957), (rho 30958), (rho 30959), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part24_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart24 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) (rho 30959) k := by
  unfold Seg39.relationPart24 Seg39.relationRow120 Seg39.relationRow121 Seg39.relationRow122 Seg39.relationRow123 Seg39.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 30960), (rho 30961), (rho 30962), (rho 30963), (rho 30964), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part25_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart25 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) k := by
  unfold Seg39.relationPart25 Seg39.relationRow125 Seg39.relationRow126 Seg39.relationRow127 Seg39.relationRow128 Seg39.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 30965), (rho 30966), (rho 30967), (rho 30968), (rho 30969), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part26_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart26 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 30909) (rho 30914) (rho 30919) (rho 30924) (rho 30929) (rho 30934) (rho 30939) (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) k := by
  unfold Seg39.relationPart26 Seg39.relationRow130 Seg39.relationRow131 Seg39.relationRow132 Seg39.relationRow133 Seg39.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 30970), (rho 30971), (rho 30972), (rho 30973), (rho 30974), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part27_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart27 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) k := by
  unfold Seg39.relationPart27 Seg39.relationRow135 Seg39.relationRow136 Seg39.relationRow137 Seg39.relationRow138 Seg39.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 30975), (rho 30976), (rho 30977), (rho 30978), (rho 30979), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part28_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart28 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) k := by
  unfold Seg39.relationPart28 Seg39.relationRow140 Seg39.relationRow141 Seg39.relationRow142 Seg39.relationRow143 Seg39.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 30980), (rho 30981), (rho 30982), (rho 30983), (rho 30984), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part29_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart29 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) k := by
  unfold Seg39.relationPart29 Seg39.relationRow145 Seg39.relationRow146 Seg39.relationRow147 Seg39.relationRow148 Seg39.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 30985), (rho 30986), (rho 30987), (rho 30988), (rho 30989), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part30_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart30 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) k := by
  unfold Seg39.relationPart30 Seg39.relationRow150 Seg39.relationRow151 Seg39.relationRow152 Seg39.relationRow153 Seg39.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 30990), (rho 30991), (rho 30992), (rho 30993), (rho 30994), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part31_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart31 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) k := by
  unfold Seg39.relationPart31 Seg39.relationRow155 Seg39.relationRow156 Seg39.relationRow157 Seg39.relationRow158 Seg39.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 30995), (rho 30996), (rho 30997), (rho 30998), (rho 30999), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part32_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart32 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) k := by
  unfold Seg39.relationPart32 Seg39.relationRow160 Seg39.relationRow161 Seg39.relationRow162 Seg39.relationRow163 Seg39.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 31000), (rho 31001), (rho 31002), (rho 31003), (rho 31004), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part33_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart33 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) k := by
  unfold Seg39.relationPart33 Seg39.relationRow165 Seg39.relationRow166 Seg39.relationRow167 Seg39.relationRow168 Seg39.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 31005), (rho 31006), (rho 31007), (rho 31008), (rho 31009), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part34_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart34 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) k := by
  unfold Seg39.relationPart34 Seg39.relationRow170 Seg39.relationRow171 Seg39.relationRow172 Seg39.relationRow173 Seg39.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 31010), (rho 31011), (rho 31012), (rho 31013), (rho 31014), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part35_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart35 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) k := by
  unfold Seg39.relationPart35 Seg39.relationRow175 Seg39.relationRow176 Seg39.relationRow177 Seg39.relationRow178 Seg39.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 31015), (rho 31016), (rho 31017), (rho 31018), (rho 31019), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part36_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart36 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) k := by
  unfold Seg39.relationPart36 Seg39.relationRow180 Seg39.relationRow181 Seg39.relationRow182 Seg39.relationRow183 Seg39.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 31020), (rho 31021), (rho 31022), (rho 31023), (rho 31024), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part37_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart37 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) k := by
  unfold Seg39.relationPart37 Seg39.relationRow185 Seg39.relationRow186 Seg39.relationRow187 Seg39.relationRow188 Seg39.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 31025), (rho 31026), (rho 31027), (rho 31028), (rho 31029), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part38_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart38 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) k := by
  unfold Seg39.relationPart38 Seg39.relationRow190 Seg39.relationRow191 Seg39.relationRow192 Seg39.relationRow193 Seg39.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 31030), (rho 31031), (rho 31032), (rho 31033), (rho 31034), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part39_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart39 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) k := by
  unfold Seg39.relationPart39 Seg39.relationRow195 Seg39.relationRow196 Seg39.relationRow197 Seg39.relationRow198 Seg39.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 31035), (rho 31036), (rho 31037), (rho 31038), (rho 31039), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part40_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart40 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) k := by
  unfold Seg39.relationPart40 Seg39.relationRow200 Seg39.relationRow201 Seg39.relationRow202 Seg39.relationRow203 Seg39.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 31040), (rho 31041), (rho 31042), (rho 31043), (rho 31044), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part41_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart41 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) k := by
  unfold Seg39.relationPart41 Seg39.relationRow205 Seg39.relationRow206 Seg39.relationRow207 Seg39.relationRow208 Seg39.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 31045), (rho 31046), (rho 31047), (rho 31048), (rho 31049), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part42_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart42 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) k := by
  unfold Seg39.relationPart42 Seg39.relationRow210 Seg39.relationRow211 Seg39.relationRow212 Seg39.relationRow213 Seg39.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 31050), (rho 31051), (rho 31052), (rho 31053), (rho 31054), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part43_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart43 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) k := by
  unfold Seg39.relationPart43 Seg39.relationRow215 Seg39.relationRow216 Seg39.relationRow217 Seg39.relationRow218 Seg39.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 31055), (rho 31056), (rho 31057), (rho 31058), (rho 31059), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part44_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart44 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) k := by
  unfold Seg39.relationPart44 Seg39.relationRow220 Seg39.relationRow221 Seg39.relationRow222 Seg39.relationRow223 Seg39.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 31060), (rho 31061), (rho 31062), (rho 31063), (rho 31064), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part45_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart45 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) k := by
  unfold Seg39.relationPart45 Seg39.relationRow225 Seg39.relationRow226 Seg39.relationRow227 Seg39.relationRow228 Seg39.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 31065), (rho 31066), (rho 31067), (rho 31068), (rho 31069), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part46_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart46 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) k := by
  unfold Seg39.relationPart46 Seg39.relationRow230 Seg39.relationRow231 Seg39.relationRow232 Seg39.relationRow233 Seg39.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 31070), (rho 31071), (rho 31072), (rho 31073), (rho 31074), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part47_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart47 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) k := by
  unfold Seg39.relationPart47 Seg39.relationRow235 Seg39.relationRow236 Seg39.relationRow237 Seg39.relationRow238 Seg39.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 31075), (rho 31076), (rho 31077), (rho 31078), (rho 31079), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part48_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart48 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) k := by
  unfold Seg39.relationPart48 Seg39.relationRow240 Seg39.relationRow241 Seg39.relationRow242 Seg39.relationRow243 Seg39.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 31080), (rho 31081), (rho 31082), (rho 31083), (rho 31084), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part49_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart49 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) k := by
  unfold Seg39.relationPart49 Seg39.relationRow245 Seg39.relationRow246 Seg39.relationRow247 Seg39.relationRow248 Seg39.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 31085), (rho 31086), (rho 31087), (rho 31088), (rho 31089), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part50_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart50 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) k := by
  unfold Seg39.relationPart50 Seg39.relationRow250 Seg39.relationRow251 Seg39.relationRow252 Seg39.relationRow253 Seg39.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 31090), (rho 31091), (rho 31092), (rho 31093), (rho 31094), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part51_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart51 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) k := by
  unfold Seg39.relationPart51 Seg39.relationRow255 Seg39.relationRow256 Seg39.relationRow257 Seg39.relationRow258 Seg39.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 31095), (rho 31096), (rho 31097), (rho 31098), (rho 31099), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part52_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart52 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) k := by
  unfold Seg39.relationPart52 Seg39.relationRow260 Seg39.relationRow261 Seg39.relationRow262 Seg39.relationRow263 Seg39.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 31100), (rho 31101), (rho 31102), (rho 31103), (rho 31104), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part53_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart53 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) k := by
  unfold Seg39.relationPart53 Seg39.relationRow265 Seg39.relationRow266 Seg39.relationRow267 Seg39.relationRow268 Seg39.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 31105), (rho 31106), (rho 31107), (rho 31108), (rho 31109), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part54_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart54 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) k := by
  unfold Seg39.relationPart54 Seg39.relationRow270 Seg39.relationRow271 Seg39.relationRow272 Seg39.relationRow273 Seg39.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 31110), (rho 31111), (rho 31112), (rho 31113), (rho 31114), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part55_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart55 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) k := by
  unfold Seg39.relationPart55 Seg39.relationRow275 Seg39.relationRow276 Seg39.relationRow277 Seg39.relationRow278 Seg39.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 31115), (rho 31116), (rho 31117), (rho 31118), (rho 31119), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part56_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart56 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) k := by
  unfold Seg39.relationPart56 Seg39.relationRow280 Seg39.relationRow281 Seg39.relationRow282 Seg39.relationRow283 Seg39.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 31120), (rho 31121), (rho 31122), (rho 31123), (rho 31124), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part57_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart57 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) k := by
  unfold Seg39.relationPart57 Seg39.relationRow285 Seg39.relationRow286 Seg39.relationRow287 Seg39.relationRow288 Seg39.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 31125), (rho 31126), (rho 31127), (rho 31128), (rho 31129), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part58_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart58 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) k := by
  unfold Seg39.relationPart58 Seg39.relationRow290 Seg39.relationRow291 Seg39.relationRow292 Seg39.relationRow293 Seg39.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 31130), (rho 31131), (rho 31132), (rho 31133), (rho 31134), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part59_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart59 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) k := by
  unfold Seg39.relationPart59 Seg39.relationRow295 Seg39.relationRow296 Seg39.relationRow297 Seg39.relationRow298 Seg39.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 31135), (rho 31136), (rho 31137), (rho 31138), (rho 31139), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part60_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart60 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) k := by
  unfold Seg39.relationPart60 Seg39.relationRow300 Seg39.relationRow301 Seg39.relationRow302 Seg39.relationRow303 Seg39.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 31140), (rho 31141), (rho 31142), (rho 31143), (rho 31144), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part61_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart61 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) (rho 31149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) k := by
  unfold Seg39.relationPart61 Seg39.relationRow305 Seg39.relationRow306 Seg39.relationRow307 Seg39.relationRow308 Seg39.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 31145), (rho 31146), (rho 31147), (rho 31148), (rho 31149), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part62_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart62 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) (rho 31149) k := by
  unfold Seg39.relationPart62 Seg39.relationRow310 Seg39.relationRow311 Seg39.relationRow312 Seg39.relationRow313 Seg39.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 31150), (rho 31151), (rho 31152), (rho 31153), (rho 31154), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part63_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart63 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) k := by
  unfold Seg39.relationPart63 Seg39.relationRow315 Seg39.relationRow316 Seg39.relationRow317 Seg39.relationRow318 Seg39.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 31155), (rho 31156), (rho 31157), (rho 31158), (rho 31159), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part64_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart64 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 30944) (rho 30949) (rho 30954) (rho 30959) (rho 30964) (rho 30969) (rho 30974) (rho 30979) (rho 30984) (rho 30989) (rho 30994) (rho 30999) (rho 31004) (rho 31009) (rho 31014) (rho 31019) (rho 31024) (rho 31029) (rho 31034) (rho 31039) (rho 31044) (rho 31049) (rho 31054) (rho 31059) (rho 31064) (rho 31069) (rho 31074) (rho 31079) (rho 31084) (rho 31089) (rho 31094) (rho 31099) (rho 31104) (rho 31109) (rho 31114) (rho 31119) (rho 31124) (rho 31129) (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) k := by
  unfold Seg39.relationPart64 Seg39.relationRow320 Seg39.relationRow321 Seg39.relationRow322 Seg39.relationRow323 Seg39.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 31160), (rho 31161), (rho 31162), (rho 31163), (rho 31164), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part65_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart65 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) k := by
  unfold Seg39.relationPart65 Seg39.relationRow325 Seg39.relationRow326 Seg39.relationRow327 Seg39.relationRow328 Seg39.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 31165), (rho 31166), (rho 31167), (rho 31168), (rho 31169), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part66_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart66 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) k := by
  unfold Seg39.relationPart66 Seg39.relationRow330 Seg39.relationRow331 Seg39.relationRow332 Seg39.relationRow333 Seg39.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 31170), (rho 31171), (rho 31172), (rho 31173), (rho 31174), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part67_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart67 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) k := by
  unfold Seg39.relationPart67 Seg39.relationRow335 Seg39.relationRow336 Seg39.relationRow337 Seg39.relationRow338 Seg39.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 31175), (rho 31176), (rho 31177), (rho 31178), (rho 31179), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part68_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart68 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) (rho 31184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) k := by
  unfold Seg39.relationPart68 Seg39.relationRow340 Seg39.relationRow341 Seg39.relationRow342 Seg39.relationRow343 Seg39.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 31180), (rho 31181), (rho 31182), (rho 31183), (rho 31184), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part69_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart69 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) (rho 31184) k := by
  unfold Seg39.relationPart69 Seg39.relationRow345 Seg39.relationRow346 Seg39.relationRow347 Seg39.relationRow348 Seg39.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 31185), (rho 31186), (rho 31187), (rho 31188), (rho 31189), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part70_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart70 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) k := by
  unfold Seg39.relationPart70 Seg39.relationRow350 Seg39.relationRow351 Seg39.relationRow352 Seg39.relationRow353 Seg39.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 31190), (rho 31191), (rho 31192), (rho 31193), (rho 31194), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part71_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart71 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 31134) (rho 31139) (rho 31144) (rho 31149) (rho 31154) (rho 31159) (rho 31164) (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) k := by
  unfold Seg39.relationPart71 Seg39.relationRow355 Seg39.relationRow356 Seg39.relationRow357 Seg39.relationRow358 Seg39.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 31195), (rho 31196), (rho 31197), (rho 31198), (rho 31199), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part72_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart72 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) k := by
  unfold Seg39.relationPart72 Seg39.relationRow360 Seg39.relationRow361 Seg39.relationRow362 Seg39.relationRow363 Seg39.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 31200), (rho 31201), (rho 31202), (rho 31203), (rho 31204), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part73_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart73 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) k := by
  unfold Seg39.relationPart73 Seg39.relationRow365 Seg39.relationRow366 Seg39.relationRow367 Seg39.relationRow368 Seg39.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 31205), (rho 31206), (rho 31207), (rho 31208), (rho 31209), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part74_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart74 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) k := by
  unfold Seg39.relationPart74 Seg39.relationRow370 Seg39.relationRow371 Seg39.relationRow372 Seg39.relationRow373 Seg39.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 31210), (rho 31211), (rho 31212), (rho 31213), (rho 31214), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part75_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart75 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) (rho 31219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) k := by
  unfold Seg39.relationPart75 Seg39.relationRow375 Seg39.relationRow376 Seg39.relationRow377 Seg39.relationRow378 Seg39.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 31215), (rho 31216), (rho 31217), (rho 31218), (rho 31219), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part76_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart76 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) (rho 31219) k := by
  unfold Seg39.relationPart76 Seg39.relationRow380 Seg39.relationRow381 Seg39.relationRow382 Seg39.relationRow383 Seg39.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 31220), (rho 31221), (rho 31222), (rho 31223), (rho 31224), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part77_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart77 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) k := by
  unfold Seg39.relationPart77 Seg39.relationRow385 Seg39.relationRow386 Seg39.relationRow387 Seg39.relationRow388 Seg39.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 31225), (rho 31226), (rho 31227), (rho 31228), (rho 31229), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part78_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart78 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 31169) (rho 31174) (rho 31179) (rho 31184) (rho 31189) (rho 31194) (rho 31199) (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) k := by
  unfold Seg39.relationPart78 Seg39.relationRow390 Seg39.relationRow391 Seg39.relationRow392 Seg39.relationRow393 Seg39.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 31230), (rho 31231), (rho 31232), (rho 31233), (rho 31234), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part79_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart79 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) k := by
  unfold Seg39.relationPart79 Seg39.relationRow395 Seg39.relationRow396 Seg39.relationRow397 Seg39.relationRow398 Seg39.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 31235), (rho 31236), (rho 31237), (rho 31238), (rho 31239), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part80_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart80 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) k := by
  unfold Seg39.relationPart80 Seg39.relationRow400 Seg39.relationRow401 Seg39.relationRow402 Seg39.relationRow403 Seg39.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 31240), (rho 31241), (rho 31242), (rho 31243), (rho 31244), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part81_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart81 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) k := by
  unfold Seg39.relationPart81 Seg39.relationRow405 Seg39.relationRow406 Seg39.relationRow407 Seg39.relationRow408 Seg39.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 31245), (rho 31246), (rho 31247), (rho 31248), (rho 31249), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part82_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart82 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) (rho 31254)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) k := by
  unfold Seg39.relationPart82 Seg39.relationRow410 Seg39.relationRow411 Seg39.relationRow412 Seg39.relationRow413 Seg39.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 31250), (rho 31251), (rho 31252), (rho 31253), (rho 31254), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part83_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart83 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) (rho 31254) k := by
  unfold Seg39.relationPart83 Seg39.relationRow415 Seg39.relationRow416 Seg39.relationRow417 Seg39.relationRow418 Seg39.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 31255), (rho 31256), (rho 31257), (rho 31258), (rho 31259), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part84_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart84 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) k := by
  unfold Seg39.relationPart84 Seg39.relationRow420 Seg39.relationRow421 Seg39.relationRow422 Seg39.relationRow423 Seg39.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 31260), (rho 31261), (rho 31262), (rho 31263), (rho 31264), h0, h1, h2, h3, h4, hk⟩

theorem seg39_part85_to_extracted (rho : Nat → Seg39.F)
    (h : Seg39.relationPart85 rho)
    {k : Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Seg39.F → Prop} (hk : k (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 31204) (rho 31209) (rho 31214) (rho 31219) (rho 31224) (rho 31229) (rho 31234) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) k := by
  unfold Seg39.relationPart85 Seg39.relationRow425 Seg39.relationRow426 Seg39.relationRow427 Seg39.relationRow428 Seg39.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 31265), (rho 31266), (rho 31267), (rho 31268), (rho 31269), h0, h1, h2, h3, h4, hk⟩

def seg39NotePrefix (rho : Nat → Seg39.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) (fun w15 w16 w19 w22 w572 w912 w917 =>
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
  w1312 = (rho 31239) ∧ w1317 = (rho 31244) ∧ w1322 = (rho 31249) ∧ w1327 = (rho 31254) ∧ w1332 = (rho 31259) ∧ w1337 = (rho 31264) ∧ w1342 = (rho 31269)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg39_relation_to_note_prefix (rho : Nat → Seg39.F)
    (h : Seg39.relation rho) : seg39NotePrefix rho := by
  unfold Seg39.relation at h
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
  unfold seg39NotePrefix
  apply seg39_part0_to_extracted rho p0
  apply seg39_part1_to_extracted rho p1
  apply seg39_part2_to_extracted rho p2
  apply seg39_part3_to_extracted rho p3
  apply seg39_part4_to_extracted rho p4
  apply seg39_part5_to_extracted rho p5
  apply seg39_part6_to_extracted rho p6
  apply seg39_part7_to_extracted rho p7
  apply seg39_part8_to_extracted rho p8
  apply seg39_part9_to_extracted rho p9
  apply seg39_part10_to_extracted rho p10
  apply seg39_part11_to_extracted rho p11
  apply seg39_part12_to_extracted rho p12
  apply seg39_part13_to_extracted rho p13
  apply seg39_part14_to_extracted rho p14
  apply seg39_part15_to_extracted rho p15
  apply seg39_part16_to_extracted rho p16
  apply seg39_part17_to_extracted rho p17
  apply seg39_part18_to_extracted rho p18
  apply seg39_part19_to_extracted rho p19
  apply seg39_part20_to_extracted rho p20
  apply seg39_part21_to_extracted rho p21
  apply seg39_part22_to_extracted rho p22
  apply seg39_part23_to_extracted rho p23
  apply seg39_part24_to_extracted rho p24
  apply seg39_part25_to_extracted rho p25
  apply seg39_part26_to_extracted rho p26
  apply seg39_part27_to_extracted rho p27
  apply seg39_part28_to_extracted rho p28
  apply seg39_part29_to_extracted rho p29
  apply seg39_part30_to_extracted rho p30
  apply seg39_part31_to_extracted rho p31
  apply seg39_part32_to_extracted rho p32
  apply seg39_part33_to_extracted rho p33
  apply seg39_part34_to_extracted rho p34
  apply seg39_part35_to_extracted rho p35
  apply seg39_part36_to_extracted rho p36
  apply seg39_part37_to_extracted rho p37
  apply seg39_part38_to_extracted rho p38
  apply seg39_part39_to_extracted rho p39
  apply seg39_part40_to_extracted rho p40
  apply seg39_part41_to_extracted rho p41
  apply seg39_part42_to_extracted rho p42
  apply seg39_part43_to_extracted rho p43
  apply seg39_part44_to_extracted rho p44
  apply seg39_part45_to_extracted rho p45
  apply seg39_part46_to_extracted rho p46
  apply seg39_part47_to_extracted rho p47
  apply seg39_part48_to_extracted rho p48
  apply seg39_part49_to_extracted rho p49
  apply seg39_part50_to_extracted rho p50
  apply seg39_part51_to_extracted rho p51
  apply seg39_part52_to_extracted rho p52
  apply seg39_part53_to_extracted rho p53
  apply seg39_part54_to_extracted rho p54
  apply seg39_part55_to_extracted rho p55
  apply seg39_part56_to_extracted rho p56
  apply seg39_part57_to_extracted rho p57
  apply seg39_part58_to_extracted rho p58
  apply seg39_part59_to_extracted rho p59
  apply seg39_part60_to_extracted rho p60
  apply seg39_part61_to_extracted rho p61
  apply seg39_part62_to_extracted rho p62
  apply seg39_part63_to_extracted rho p63
  apply seg39_part64_to_extracted rho p64
  apply seg39_part65_to_extracted rho p65
  apply seg39_part66_to_extracted rho p66
  apply seg39_part67_to_extracted rho p67
  apply seg39_part68_to_extracted rho p68
  apply seg39_part69_to_extracted rho p69
  apply seg39_part70_to_extracted rho p70
  apply seg39_part71_to_extracted rho p71
  apply seg39_part72_to_extracted rho p72
  apply seg39_part73_to_extracted rho p73
  apply seg39_part74_to_extracted rho p74
  apply seg39_part75_to_extracted rho p75
  apply seg39_part76_to_extracted rho p76
  apply seg39_part77_to_extracted rho p77
  apply seg39_part78_to_extracted rho p78
  apply seg39_part79_to_extracted rho p79
  apply seg39_part80_to_extracted rho p80
  apply seg39_part81_to_extracted rho p81
  apply seg39_part82_to_extracted rho p82
  apply seg39_part83_to_extracted rho p83
  apply seg39_part84_to_extracted rho p84
  apply seg39_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg39_sound (rho : Nat → Seg39.F) (h : Seg39.relation rho) : Seg39.spec rho := by
  have hPrefix := seg39_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg39.spec, Specs.deployedSpec39, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
