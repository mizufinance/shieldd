import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg25
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg41
import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg7_part0_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart0 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) (rho 6733)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) k := by
  unfold Seg9.relationPart0 Seg9.relationRow0 Seg9.relationRow1 Seg9.relationRow2 Seg9.relationRow3 Seg9.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 6729), (rho 6730), (rho 6731), (rho 6732), (rho 6733), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part1_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart1 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) (rho 6733) (rho 6738)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) (rho 6733) k := by
  unfold Seg9.relationPart1 Seg9.relationRow5 Seg9.relationRow6 Seg9.relationRow7 Seg9.relationRow8 Seg9.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 6734), (rho 6735), (rho 6736), (rho 6737), (rho 6738), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part2_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart2 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 19) (rho 22) (rho 6388) (rho 6728) (rho 6733) (rho 6738) (rho 6743)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) (rho 6733) (rho 6738) k := by
  unfold Seg9.relationPart2 Seg9.relationRow10 Seg9.relationRow11 Seg9.relationRow12 Seg9.relationRow13 Seg9.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 6739), (rho 6740), (rho 6741), (rho 6742), (rho 6743), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part3_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart3 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 19) (rho 22) (rho 6733) (rho 6738) (rho 6743) (rho 6748)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 19) (rho 22) (rho 6388) (rho 6728) (rho 6733) (rho 6738) (rho 6743) k := by
  unfold Seg9.relationPart3 Seg9.relationRow15 Seg9.relationRow16 Seg9.relationRow17 Seg9.relationRow18 Seg9.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 6744), (rho 6745), (rho 6746), (rho 6747), (rho 6748), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part4_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart4 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 22) (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 19) (rho 22) (rho 6733) (rho 6738) (rho 6743) (rho 6748) k := by
  unfold Seg9.relationPart4 Seg9.relationRow20 Seg9.relationRow21 Seg9.relationRow22 Seg9.relationRow23 Seg9.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 6749), (rho 6750), (rho 6751), (rho 6752), (rho 6753), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part5_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart5 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 22) (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) k := by
  unfold Seg9.relationPart5 Seg9.relationRow25 Seg9.relationRow26 Seg9.relationRow27 Seg9.relationRow28 Seg9.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 6754), (rho 6755), (rho 6756), (rho 6757), (rho 6758), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part6_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart6 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) k := by
  unfold Seg9.relationPart6 Seg9.relationRow30 Seg9.relationRow31 Seg9.relationRow32 Seg9.relationRow33 Seg9.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 6759), (rho 6760), (rho 6761), (rho 6762), (rho 6763), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part7_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart7 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) k := by
  unfold Seg9.relationPart7 Seg9.relationRow35 Seg9.relationRow36 Seg9.relationRow37 Seg9.relationRow38 Seg9.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 6764), (rho 6765), (rho 6766), (rho 6767), (rho 6768), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part8_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart8 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) k := by
  unfold Seg9.relationPart8 Seg9.relationRow40 Seg9.relationRow41 Seg9.relationRow42 Seg9.relationRow43 Seg9.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 6769), (rho 6770), (rho 6771), (rho 6772), (rho 6773), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part9_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart9 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) (rho 6778)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) k := by
  unfold Seg9.relationPart9 Seg9.relationRow45 Seg9.relationRow46 Seg9.relationRow47 Seg9.relationRow48 Seg9.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 6774), (rho 6775), (rho 6776), (rho 6777), (rho 6778), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part10_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart10 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) (rho 6778) k := by
  unfold Seg9.relationPart10 Seg9.relationRow50 Seg9.relationRow51 Seg9.relationRow52 Seg9.relationRow53 Seg9.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 6779), (rho 6780), (rho 6781), (rho 6782), (rho 6783), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part11_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart11 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) k := by
  unfold Seg9.relationPart11 Seg9.relationRow55 Seg9.relationRow56 Seg9.relationRow57 Seg9.relationRow58 Seg9.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 6784), (rho 6785), (rho 6786), (rho 6787), (rho 6788), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part12_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart12 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 6733) (rho 6738) (rho 6743) (rho 6748) (rho 6753) (rho 6758) (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) k := by
  unfold Seg9.relationPart12 Seg9.relationRow60 Seg9.relationRow61 Seg9.relationRow62 Seg9.relationRow63 Seg9.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 6789), (rho 6790), (rho 6791), (rho 6792), (rho 6793), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part13_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart13 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) k := by
  unfold Seg9.relationPart13 Seg9.relationRow65 Seg9.relationRow66 Seg9.relationRow67 Seg9.relationRow68 Seg9.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 6794), (rho 6795), (rho 6796), (rho 6797), (rho 6798), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part14_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart14 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) k := by
  unfold Seg9.relationPart14 Seg9.relationRow70 Seg9.relationRow71 Seg9.relationRow72 Seg9.relationRow73 Seg9.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 6799), (rho 6800), (rho 6801), (rho 6802), (rho 6803), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part15_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart15 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) k := by
  unfold Seg9.relationPart15 Seg9.relationRow75 Seg9.relationRow76 Seg9.relationRow77 Seg9.relationRow78 Seg9.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 6804), (rho 6805), (rho 6806), (rho 6807), (rho 6808), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part16_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart16 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) (rho 6813)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) k := by
  unfold Seg9.relationPart16 Seg9.relationRow80 Seg9.relationRow81 Seg9.relationRow82 Seg9.relationRow83 Seg9.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 6809), (rho 6810), (rho 6811), (rho 6812), (rho 6813), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part17_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart17 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) (rho 6813) k := by
  unfold Seg9.relationPart17 Seg9.relationRow85 Seg9.relationRow86 Seg9.relationRow87 Seg9.relationRow88 Seg9.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 6814), (rho 6815), (rho 6816), (rho 6817), (rho 6818), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part18_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart18 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) k := by
  unfold Seg9.relationPart18 Seg9.relationRow90 Seg9.relationRow91 Seg9.relationRow92 Seg9.relationRow93 Seg9.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 6819), (rho 6820), (rho 6821), (rho 6822), (rho 6823), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part19_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart19 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 6763) (rho 6768) (rho 6773) (rho 6778) (rho 6783) (rho 6788) (rho 6793) (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) k := by
  unfold Seg9.relationPart19 Seg9.relationRow95 Seg9.relationRow96 Seg9.relationRow97 Seg9.relationRow98 Seg9.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 6824), (rho 6825), (rho 6826), (rho 6827), (rho 6828), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part20_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart20 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) k := by
  unfold Seg9.relationPart20 Seg9.relationRow100 Seg9.relationRow101 Seg9.relationRow102 Seg9.relationRow103 Seg9.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 6829), (rho 6830), (rho 6831), (rho 6832), (rho 6833), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part21_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart21 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) k := by
  unfold Seg9.relationPart21 Seg9.relationRow105 Seg9.relationRow106 Seg9.relationRow107 Seg9.relationRow108 Seg9.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 6834), (rho 6835), (rho 6836), (rho 6837), (rho 6838), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part22_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart22 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) k := by
  unfold Seg9.relationPart22 Seg9.relationRow110 Seg9.relationRow111 Seg9.relationRow112 Seg9.relationRow113 Seg9.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 6839), (rho 6840), (rho 6841), (rho 6842), (rho 6843), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part23_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart23 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) (rho 6848)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) k := by
  unfold Seg9.relationPart23 Seg9.relationRow115 Seg9.relationRow116 Seg9.relationRow117 Seg9.relationRow118 Seg9.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 6844), (rho 6845), (rho 6846), (rho 6847), (rho 6848), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part24_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart24 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) (rho 6848) k := by
  unfold Seg9.relationPart24 Seg9.relationRow120 Seg9.relationRow121 Seg9.relationRow122 Seg9.relationRow123 Seg9.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 6849), (rho 6850), (rho 6851), (rho 6852), (rho 6853), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part25_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart25 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) k := by
  unfold Seg9.relationPart25 Seg9.relationRow125 Seg9.relationRow126 Seg9.relationRow127 Seg9.relationRow128 Seg9.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 6854), (rho 6855), (rho 6856), (rho 6857), (rho 6858), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part26_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart26 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 6798) (rho 6803) (rho 6808) (rho 6813) (rho 6818) (rho 6823) (rho 6828) (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) k := by
  unfold Seg9.relationPart26 Seg9.relationRow130 Seg9.relationRow131 Seg9.relationRow132 Seg9.relationRow133 Seg9.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 6859), (rho 6860), (rho 6861), (rho 6862), (rho 6863), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part27_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart27 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) k := by
  unfold Seg9.relationPart27 Seg9.relationRow135 Seg9.relationRow136 Seg9.relationRow137 Seg9.relationRow138 Seg9.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 6864), (rho 6865), (rho 6866), (rho 6867), (rho 6868), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part28_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart28 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) k := by
  unfold Seg9.relationPart28 Seg9.relationRow140 Seg9.relationRow141 Seg9.relationRow142 Seg9.relationRow143 Seg9.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 6869), (rho 6870), (rho 6871), (rho 6872), (rho 6873), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part29_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart29 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) k := by
  unfold Seg9.relationPart29 Seg9.relationRow145 Seg9.relationRow146 Seg9.relationRow147 Seg9.relationRow148 Seg9.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 6874), (rho 6875), (rho 6876), (rho 6877), (rho 6878), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part30_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart30 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) k := by
  unfold Seg9.relationPart30 Seg9.relationRow150 Seg9.relationRow151 Seg9.relationRow152 Seg9.relationRow153 Seg9.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 6879), (rho 6880), (rho 6881), (rho 6882), (rho 6883), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part31_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart31 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) k := by
  unfold Seg9.relationPart31 Seg9.relationRow155 Seg9.relationRow156 Seg9.relationRow157 Seg9.relationRow158 Seg9.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 6884), (rho 6885), (rho 6886), (rho 6887), (rho 6888), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part32_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart32 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) k := by
  unfold Seg9.relationPart32 Seg9.relationRow160 Seg9.relationRow161 Seg9.relationRow162 Seg9.relationRow163 Seg9.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 6889), (rho 6890), (rho 6891), (rho 6892), (rho 6893), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part33_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart33 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) k := by
  unfold Seg9.relationPart33 Seg9.relationRow165 Seg9.relationRow166 Seg9.relationRow167 Seg9.relationRow168 Seg9.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 6894), (rho 6895), (rho 6896), (rho 6897), (rho 6898), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part34_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart34 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) k := by
  unfold Seg9.relationPart34 Seg9.relationRow170 Seg9.relationRow171 Seg9.relationRow172 Seg9.relationRow173 Seg9.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 6899), (rho 6900), (rho 6901), (rho 6902), (rho 6903), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part35_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart35 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) k := by
  unfold Seg9.relationPart35 Seg9.relationRow175 Seg9.relationRow176 Seg9.relationRow177 Seg9.relationRow178 Seg9.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 6904), (rho 6905), (rho 6906), (rho 6907), (rho 6908), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part36_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart36 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) k := by
  unfold Seg9.relationPart36 Seg9.relationRow180 Seg9.relationRow181 Seg9.relationRow182 Seg9.relationRow183 Seg9.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 6909), (rho 6910), (rho 6911), (rho 6912), (rho 6913), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part37_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart37 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) k := by
  unfold Seg9.relationPart37 Seg9.relationRow185 Seg9.relationRow186 Seg9.relationRow187 Seg9.relationRow188 Seg9.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 6914), (rho 6915), (rho 6916), (rho 6917), (rho 6918), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part38_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart38 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) k := by
  unfold Seg9.relationPart38 Seg9.relationRow190 Seg9.relationRow191 Seg9.relationRow192 Seg9.relationRow193 Seg9.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 6919), (rho 6920), (rho 6921), (rho 6922), (rho 6923), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part39_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart39 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) k := by
  unfold Seg9.relationPart39 Seg9.relationRow195 Seg9.relationRow196 Seg9.relationRow197 Seg9.relationRow198 Seg9.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 6924), (rho 6925), (rho 6926), (rho 6927), (rho 6928), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part40_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart40 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) k := by
  unfold Seg9.relationPart40 Seg9.relationRow200 Seg9.relationRow201 Seg9.relationRow202 Seg9.relationRow203 Seg9.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 6929), (rho 6930), (rho 6931), (rho 6932), (rho 6933), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part41_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart41 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) k := by
  unfold Seg9.relationPart41 Seg9.relationRow205 Seg9.relationRow206 Seg9.relationRow207 Seg9.relationRow208 Seg9.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 6934), (rho 6935), (rho 6936), (rho 6937), (rho 6938), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part42_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart42 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) k := by
  unfold Seg9.relationPart42 Seg9.relationRow210 Seg9.relationRow211 Seg9.relationRow212 Seg9.relationRow213 Seg9.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 6939), (rho 6940), (rho 6941), (rho 6942), (rho 6943), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part43_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart43 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) k := by
  unfold Seg9.relationPart43 Seg9.relationRow215 Seg9.relationRow216 Seg9.relationRow217 Seg9.relationRow218 Seg9.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 6944), (rho 6945), (rho 6946), (rho 6947), (rho 6948), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part44_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart44 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) k := by
  unfold Seg9.relationPart44 Seg9.relationRow220 Seg9.relationRow221 Seg9.relationRow222 Seg9.relationRow223 Seg9.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 6949), (rho 6950), (rho 6951), (rho 6952), (rho 6953), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part45_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart45 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) k := by
  unfold Seg9.relationPart45 Seg9.relationRow225 Seg9.relationRow226 Seg9.relationRow227 Seg9.relationRow228 Seg9.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 6954), (rho 6955), (rho 6956), (rho 6957), (rho 6958), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part46_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart46 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) k := by
  unfold Seg9.relationPart46 Seg9.relationRow230 Seg9.relationRow231 Seg9.relationRow232 Seg9.relationRow233 Seg9.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 6959), (rho 6960), (rho 6961), (rho 6962), (rho 6963), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part47_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart47 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) k := by
  unfold Seg9.relationPart47 Seg9.relationRow235 Seg9.relationRow236 Seg9.relationRow237 Seg9.relationRow238 Seg9.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 6964), (rho 6965), (rho 6966), (rho 6967), (rho 6968), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part48_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart48 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) k := by
  unfold Seg9.relationPart48 Seg9.relationRow240 Seg9.relationRow241 Seg9.relationRow242 Seg9.relationRow243 Seg9.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 6969), (rho 6970), (rho 6971), (rho 6972), (rho 6973), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part49_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart49 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) k := by
  unfold Seg9.relationPart49 Seg9.relationRow245 Seg9.relationRow246 Seg9.relationRow247 Seg9.relationRow248 Seg9.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 6974), (rho 6975), (rho 6976), (rho 6977), (rho 6978), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part50_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart50 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) k := by
  unfold Seg9.relationPart50 Seg9.relationRow250 Seg9.relationRow251 Seg9.relationRow252 Seg9.relationRow253 Seg9.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 6979), (rho 6980), (rho 6981), (rho 6982), (rho 6983), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part51_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart51 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) k := by
  unfold Seg9.relationPart51 Seg9.relationRow255 Seg9.relationRow256 Seg9.relationRow257 Seg9.relationRow258 Seg9.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 6984), (rho 6985), (rho 6986), (rho 6987), (rho 6988), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part52_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart52 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) k := by
  unfold Seg9.relationPart52 Seg9.relationRow260 Seg9.relationRow261 Seg9.relationRow262 Seg9.relationRow263 Seg9.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 6989), (rho 6990), (rho 6991), (rho 6992), (rho 6993), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part53_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart53 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) k := by
  unfold Seg9.relationPart53 Seg9.relationRow265 Seg9.relationRow266 Seg9.relationRow267 Seg9.relationRow268 Seg9.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 6994), (rho 6995), (rho 6996), (rho 6997), (rho 6998), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part54_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart54 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) k := by
  unfold Seg9.relationPart54 Seg9.relationRow270 Seg9.relationRow271 Seg9.relationRow272 Seg9.relationRow273 Seg9.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 6999), (rho 7000), (rho 7001), (rho 7002), (rho 7003), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part55_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart55 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) k := by
  unfold Seg9.relationPart55 Seg9.relationRow275 Seg9.relationRow276 Seg9.relationRow277 Seg9.relationRow278 Seg9.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 7004), (rho 7005), (rho 7006), (rho 7007), (rho 7008), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part56_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart56 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) k := by
  unfold Seg9.relationPart56 Seg9.relationRow280 Seg9.relationRow281 Seg9.relationRow282 Seg9.relationRow283 Seg9.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 7009), (rho 7010), (rho 7011), (rho 7012), (rho 7013), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part57_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart57 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) k := by
  unfold Seg9.relationPart57 Seg9.relationRow285 Seg9.relationRow286 Seg9.relationRow287 Seg9.relationRow288 Seg9.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 7014), (rho 7015), (rho 7016), (rho 7017), (rho 7018), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part58_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart58 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) k := by
  unfold Seg9.relationPart58 Seg9.relationRow290 Seg9.relationRow291 Seg9.relationRow292 Seg9.relationRow293 Seg9.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 7019), (rho 7020), (rho 7021), (rho 7022), (rho 7023), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part59_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart59 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) k := by
  unfold Seg9.relationPart59 Seg9.relationRow295 Seg9.relationRow296 Seg9.relationRow297 Seg9.relationRow298 Seg9.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 7024), (rho 7025), (rho 7026), (rho 7027), (rho 7028), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part60_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart60 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) k := by
  unfold Seg9.relationPart60 Seg9.relationRow300 Seg9.relationRow301 Seg9.relationRow302 Seg9.relationRow303 Seg9.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 7029), (rho 7030), (rho 7031), (rho 7032), (rho 7033), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part61_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart61 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) k := by
  unfold Seg9.relationPart61 Seg9.relationRow305 Seg9.relationRow306 Seg9.relationRow307 Seg9.relationRow308 Seg9.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 7034), (rho 7035), (rho 7036), (rho 7037), (rho 7038), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part62_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart62 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) k := by
  unfold Seg9.relationPart62 Seg9.relationRow310 Seg9.relationRow311 Seg9.relationRow312 Seg9.relationRow313 Seg9.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 7039), (rho 7040), (rho 7041), (rho 7042), (rho 7043), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part63_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart63 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) k := by
  unfold Seg9.relationPart63 Seg9.relationRow315 Seg9.relationRow316 Seg9.relationRow317 Seg9.relationRow318 Seg9.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 7044), (rho 7045), (rho 7046), (rho 7047), (rho 7048), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part64_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart64 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 6833) (rho 6838) (rho 6843) (rho 6848) (rho 6853) (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) k := by
  unfold Seg9.relationPart64 Seg9.relationRow320 Seg9.relationRow321 Seg9.relationRow322 Seg9.relationRow323 Seg9.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 7049), (rho 7050), (rho 7051), (rho 7052), (rho 7053), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part65_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart65 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) k := by
  unfold Seg9.relationPart65 Seg9.relationRow325 Seg9.relationRow326 Seg9.relationRow327 Seg9.relationRow328 Seg9.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 7054), (rho 7055), (rho 7056), (rho 7057), (rho 7058), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part66_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart66 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) k := by
  unfold Seg9.relationPart66 Seg9.relationRow330 Seg9.relationRow331 Seg9.relationRow332 Seg9.relationRow333 Seg9.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 7059), (rho 7060), (rho 7061), (rho 7062), (rho 7063), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part67_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart67 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) k := by
  unfold Seg9.relationPart67 Seg9.relationRow335 Seg9.relationRow336 Seg9.relationRow337 Seg9.relationRow338 Seg9.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 7064), (rho 7065), (rho 7066), (rho 7067), (rho 7068), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part68_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart68 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) k := by
  unfold Seg9.relationPart68 Seg9.relationRow340 Seg9.relationRow341 Seg9.relationRow342 Seg9.relationRow343 Seg9.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 7069), (rho 7070), (rho 7071), (rho 7072), (rho 7073), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part69_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart69 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) k := by
  unfold Seg9.relationPart69 Seg9.relationRow345 Seg9.relationRow346 Seg9.relationRow347 Seg9.relationRow348 Seg9.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 7074), (rho 7075), (rho 7076), (rho 7077), (rho 7078), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part70_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart70 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) k := by
  unfold Seg9.relationPart70 Seg9.relationRow350 Seg9.relationRow351 Seg9.relationRow352 Seg9.relationRow353 Seg9.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 7079), (rho 7080), (rho 7081), (rho 7082), (rho 7083), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part71_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart71 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) k := by
  unfold Seg9.relationPart71 Seg9.relationRow355 Seg9.relationRow356 Seg9.relationRow357 Seg9.relationRow358 Seg9.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 7084), (rho 7085), (rho 7086), (rho 7087), (rho 7088), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part72_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart72 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) k := by
  unfold Seg9.relationPart72 Seg9.relationRow360 Seg9.relationRow361 Seg9.relationRow362 Seg9.relationRow363 Seg9.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 7089), (rho 7090), (rho 7091), (rho 7092), (rho 7093), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part73_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart73 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) k := by
  unfold Seg9.relationPart73 Seg9.relationRow365 Seg9.relationRow366 Seg9.relationRow367 Seg9.relationRow368 Seg9.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 7094), (rho 7095), (rho 7096), (rho 7097), (rho 7098), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part74_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart74 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) k := by
  unfold Seg9.relationPart74 Seg9.relationRow370 Seg9.relationRow371 Seg9.relationRow372 Seg9.relationRow373 Seg9.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 7099), (rho 7100), (rho 7101), (rho 7102), (rho 7103), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part75_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart75 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) k := by
  unfold Seg9.relationPart75 Seg9.relationRow375 Seg9.relationRow376 Seg9.relationRow377 Seg9.relationRow378 Seg9.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 7104), (rho 7105), (rho 7106), (rho 7107), (rho 7108), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part76_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart76 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) k := by
  unfold Seg9.relationPart76 Seg9.relationRow380 Seg9.relationRow381 Seg9.relationRow382 Seg9.relationRow383 Seg9.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 7109), (rho 7110), (rho 7111), (rho 7112), (rho 7113), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part77_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart77 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) k := by
  unfold Seg9.relationPart77 Seg9.relationRow385 Seg9.relationRow386 Seg9.relationRow387 Seg9.relationRow388 Seg9.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 7114), (rho 7115), (rho 7116), (rho 7117), (rho 7118), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part78_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart78 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) k := by
  unfold Seg9.relationPart78 Seg9.relationRow390 Seg9.relationRow391 Seg9.relationRow392 Seg9.relationRow393 Seg9.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 7119), (rho 7120), (rho 7121), (rho 7122), (rho 7123), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part79_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart79 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) k := by
  unfold Seg9.relationPart79 Seg9.relationRow395 Seg9.relationRow396 Seg9.relationRow397 Seg9.relationRow398 Seg9.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 7124), (rho 7125), (rho 7126), (rho 7127), (rho 7128), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part80_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart80 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) k := by
  unfold Seg9.relationPart80 Seg9.relationRow400 Seg9.relationRow401 Seg9.relationRow402 Seg9.relationRow403 Seg9.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 7129), (rho 7130), (rho 7131), (rho 7132), (rho 7133), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part81_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart81 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) k := by
  unfold Seg9.relationPart81 Seg9.relationRow405 Seg9.relationRow406 Seg9.relationRow407 Seg9.relationRow408 Seg9.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 7134), (rho 7135), (rho 7136), (rho 7137), (rho 7138), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part82_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart82 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) k := by
  unfold Seg9.relationPart82 Seg9.relationRow410 Seg9.relationRow411 Seg9.relationRow412 Seg9.relationRow413 Seg9.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 7139), (rho 7140), (rho 7141), (rho 7142), (rho 7143), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part83_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart83 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) k := by
  unfold Seg9.relationPart83 Seg9.relationRow415 Seg9.relationRow416 Seg9.relationRow417 Seg9.relationRow418 Seg9.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 7144), (rho 7145), (rho 7146), (rho 7147), (rho 7148), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part84_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart84 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) (rho 7153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) k := by
  unfold Seg9.relationPart84 Seg9.relationRow420 Seg9.relationRow421 Seg9.relationRow422 Seg9.relationRow423 Seg9.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 7149), (rho 7150), (rho 7151), (rho 7152), (rho 7153), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part85_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart85 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) (rho 7153) k := by
  unfold Seg9.relationPart85 Seg9.relationRow425 Seg9.relationRow426 Seg9.relationRow427 Seg9.relationRow428 Seg9.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 7154), (rho 7155), (rho 7156), (rho 7157), (rho 7158), h0, h1, h2, h3, h4, hk⟩

def seg7NotePrefix (rho : Nat → Seg9.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) (fun w15 w16 w19 w22 w572 w912 w917 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 w15 w16 w19 w22 w572 w912 w917 (fun w16 w19 w22 w572 w912 w917 w922 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 w16 w19 w22 w572 w912 w917 w922 (fun w19 w22 w572 w912 w917 w922 w927 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 w19 w22 w572 w912 w917 w922 w927 (fun w19 w22 w917 w922 w927 w932 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 w19 w22 w917 w922 w927 w932 (fun w22 w917 w922 w927 w932 w937 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 w22 w917 w922 w927 w932 w937 (fun w917 w922 w927 w932 w937 w942 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 w917 w922 w927 w932 w937 w942 (fun w917 w922 w927 w932 w937 w942 w947 =>
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 w917 w922 w927 w932 w937 w942 w947 (fun w917 w922 w927 w932 w937 w942 w947 w952 =>
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
  w1312 = (rho 7128) ∧ w1317 = (rho 7133) ∧ w1322 = (rho 7138) ∧ w1327 = (rho 7143) ∧ w1332 = (rho 7148) ∧ w1337 = (rho 7153) ∧ w1342 = (rho 7158)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg7_relation_to_note_prefix (rho : Nat → Seg9.F)
    (h : Seg9.relation rho) : seg7NotePrefix rho := by
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
  unfold seg7NotePrefix
  apply seg7_part0_to_extracted rho p0
  apply seg7_part1_to_extracted rho p1
  apply seg7_part2_to_extracted rho p2
  apply seg7_part3_to_extracted rho p3
  apply seg7_part4_to_extracted rho p4
  apply seg7_part5_to_extracted rho p5
  apply seg7_part6_to_extracted rho p6
  apply seg7_part7_to_extracted rho p7
  apply seg7_part8_to_extracted rho p8
  apply seg7_part9_to_extracted rho p9
  apply seg7_part10_to_extracted rho p10
  apply seg7_part11_to_extracted rho p11
  apply seg7_part12_to_extracted rho p12
  apply seg7_part13_to_extracted rho p13
  apply seg7_part14_to_extracted rho p14
  apply seg7_part15_to_extracted rho p15
  apply seg7_part16_to_extracted rho p16
  apply seg7_part17_to_extracted rho p17
  apply seg7_part18_to_extracted rho p18
  apply seg7_part19_to_extracted rho p19
  apply seg7_part20_to_extracted rho p20
  apply seg7_part21_to_extracted rho p21
  apply seg7_part22_to_extracted rho p22
  apply seg7_part23_to_extracted rho p23
  apply seg7_part24_to_extracted rho p24
  apply seg7_part25_to_extracted rho p25
  apply seg7_part26_to_extracted rho p26
  apply seg7_part27_to_extracted rho p27
  apply seg7_part28_to_extracted rho p28
  apply seg7_part29_to_extracted rho p29
  apply seg7_part30_to_extracted rho p30
  apply seg7_part31_to_extracted rho p31
  apply seg7_part32_to_extracted rho p32
  apply seg7_part33_to_extracted rho p33
  apply seg7_part34_to_extracted rho p34
  apply seg7_part35_to_extracted rho p35
  apply seg7_part36_to_extracted rho p36
  apply seg7_part37_to_extracted rho p37
  apply seg7_part38_to_extracted rho p38
  apply seg7_part39_to_extracted rho p39
  apply seg7_part40_to_extracted rho p40
  apply seg7_part41_to_extracted rho p41
  apply seg7_part42_to_extracted rho p42
  apply seg7_part43_to_extracted rho p43
  apply seg7_part44_to_extracted rho p44
  apply seg7_part45_to_extracted rho p45
  apply seg7_part46_to_extracted rho p46
  apply seg7_part47_to_extracted rho p47
  apply seg7_part48_to_extracted rho p48
  apply seg7_part49_to_extracted rho p49
  apply seg7_part50_to_extracted rho p50
  apply seg7_part51_to_extracted rho p51
  apply seg7_part52_to_extracted rho p52
  apply seg7_part53_to_extracted rho p53
  apply seg7_part54_to_extracted rho p54
  apply seg7_part55_to_extracted rho p55
  apply seg7_part56_to_extracted rho p56
  apply seg7_part57_to_extracted rho p57
  apply seg7_part58_to_extracted rho p58
  apply seg7_part59_to_extracted rho p59
  apply seg7_part60_to_extracted rho p60
  apply seg7_part61_to_extracted rho p61
  apply seg7_part62_to_extracted rho p62
  apply seg7_part63_to_extracted rho p63
  apply seg7_part64_to_extracted rho p64
  apply seg7_part65_to_extracted rho p65
  apply seg7_part66_to_extracted rho p66
  apply seg7_part67_to_extracted rho p67
  apply seg7_part68_to_extracted rho p68
  apply seg7_part69_to_extracted rho p69
  apply seg7_part70_to_extracted rho p70
  apply seg7_part71_to_extracted rho p71
  apply seg7_part72_to_extracted rho p72
  apply seg7_part73_to_extracted rho p73
  apply seg7_part74_to_extracted rho p74
  apply seg7_part75_to_extracted rho p75
  apply seg7_part76_to_extracted rho p76
  apply seg7_part77_to_extracted rho p77
  apply seg7_part78_to_extracted rho p78
  apply seg7_part79_to_extracted rho p79
  apply seg7_part80_to_extracted rho p80
  apply seg7_part81_to_extracted rho p81
  apply seg7_part82_to_extracted rho p82
  apply seg7_part83_to_extracted rho p83
  apply seg7_part84_to_extracted rho p84
  apply seg7_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg7_sound (rho : Nat → Seg9.F) (h : Seg9.relation rho) : Seg9.spec rho := by
  have hPrefix := seg7_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg9.spec, Specs.deployedSpec9, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

theorem seg25_part0_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart0 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) (rho 19617)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) k := by
  unfold Seg25.relationPart0 Seg25.relationRow0 Seg25.relationRow1 Seg25.relationRow2 Seg25.relationRow3 Seg25.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 19613), (rho 19614), (rho 19615), (rho 19616), (rho 19617), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part1_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart1 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) (rho 19617) (rho 19622)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) (rho 19617) k := by
  unfold Seg25.relationPart1 Seg25.relationRow5 Seg25.relationRow6 Seg25.relationRow7 Seg25.relationRow8 Seg25.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 19618), (rho 19619), (rho 19620), (rho 19621), (rho 19622), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part2_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart2 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 109) (rho 112) (rho 19272) (rho 19612) (rho 19617) (rho 19622) (rho 19627)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) (rho 19617) (rho 19622) k := by
  unfold Seg25.relationPart2 Seg25.relationRow10 Seg25.relationRow11 Seg25.relationRow12 Seg25.relationRow13 Seg25.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 19623), (rho 19624), (rho 19625), (rho 19626), (rho 19627), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part3_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart3 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 109) (rho 112) (rho 19617) (rho 19622) (rho 19627) (rho 19632)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 109) (rho 112) (rho 19272) (rho 19612) (rho 19617) (rho 19622) (rho 19627) k := by
  unfold Seg25.relationPart3 Seg25.relationRow15 Seg25.relationRow16 Seg25.relationRow17 Seg25.relationRow18 Seg25.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 19628), (rho 19629), (rho 19630), (rho 19631), (rho 19632), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part4_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart4 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 112) (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 109) (rho 112) (rho 19617) (rho 19622) (rho 19627) (rho 19632) k := by
  unfold Seg25.relationPart4 Seg25.relationRow20 Seg25.relationRow21 Seg25.relationRow22 Seg25.relationRow23 Seg25.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 19633), (rho 19634), (rho 19635), (rho 19636), (rho 19637), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part5_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart5 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 112) (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) k := by
  unfold Seg25.relationPart5 Seg25.relationRow25 Seg25.relationRow26 Seg25.relationRow27 Seg25.relationRow28 Seg25.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 19638), (rho 19639), (rho 19640), (rho 19641), (rho 19642), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part6_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart6 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) k := by
  unfold Seg25.relationPart6 Seg25.relationRow30 Seg25.relationRow31 Seg25.relationRow32 Seg25.relationRow33 Seg25.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 19643), (rho 19644), (rho 19645), (rho 19646), (rho 19647), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part7_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart7 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) k := by
  unfold Seg25.relationPart7 Seg25.relationRow35 Seg25.relationRow36 Seg25.relationRow37 Seg25.relationRow38 Seg25.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 19648), (rho 19649), (rho 19650), (rho 19651), (rho 19652), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part8_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart8 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) k := by
  unfold Seg25.relationPart8 Seg25.relationRow40 Seg25.relationRow41 Seg25.relationRow42 Seg25.relationRow43 Seg25.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 19653), (rho 19654), (rho 19655), (rho 19656), (rho 19657), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part9_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart9 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) (rho 19662)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) k := by
  unfold Seg25.relationPart9 Seg25.relationRow45 Seg25.relationRow46 Seg25.relationRow47 Seg25.relationRow48 Seg25.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 19658), (rho 19659), (rho 19660), (rho 19661), (rho 19662), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part10_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart10 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) (rho 19662) k := by
  unfold Seg25.relationPart10 Seg25.relationRow50 Seg25.relationRow51 Seg25.relationRow52 Seg25.relationRow53 Seg25.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 19663), (rho 19664), (rho 19665), (rho 19666), (rho 19667), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part11_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart11 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) k := by
  unfold Seg25.relationPart11 Seg25.relationRow55 Seg25.relationRow56 Seg25.relationRow57 Seg25.relationRow58 Seg25.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 19668), (rho 19669), (rho 19670), (rho 19671), (rho 19672), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part12_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart12 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 19617) (rho 19622) (rho 19627) (rho 19632) (rho 19637) (rho 19642) (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) k := by
  unfold Seg25.relationPart12 Seg25.relationRow60 Seg25.relationRow61 Seg25.relationRow62 Seg25.relationRow63 Seg25.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 19673), (rho 19674), (rho 19675), (rho 19676), (rho 19677), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part13_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart13 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) k := by
  unfold Seg25.relationPart13 Seg25.relationRow65 Seg25.relationRow66 Seg25.relationRow67 Seg25.relationRow68 Seg25.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 19678), (rho 19679), (rho 19680), (rho 19681), (rho 19682), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part14_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart14 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) k := by
  unfold Seg25.relationPart14 Seg25.relationRow70 Seg25.relationRow71 Seg25.relationRow72 Seg25.relationRow73 Seg25.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 19683), (rho 19684), (rho 19685), (rho 19686), (rho 19687), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part15_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart15 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) k := by
  unfold Seg25.relationPart15 Seg25.relationRow75 Seg25.relationRow76 Seg25.relationRow77 Seg25.relationRow78 Seg25.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 19688), (rho 19689), (rho 19690), (rho 19691), (rho 19692), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part16_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart16 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) (rho 19697)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) k := by
  unfold Seg25.relationPart16 Seg25.relationRow80 Seg25.relationRow81 Seg25.relationRow82 Seg25.relationRow83 Seg25.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 19693), (rho 19694), (rho 19695), (rho 19696), (rho 19697), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part17_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart17 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) (rho 19697) k := by
  unfold Seg25.relationPart17 Seg25.relationRow85 Seg25.relationRow86 Seg25.relationRow87 Seg25.relationRow88 Seg25.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 19698), (rho 19699), (rho 19700), (rho 19701), (rho 19702), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part18_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart18 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) k := by
  unfold Seg25.relationPart18 Seg25.relationRow90 Seg25.relationRow91 Seg25.relationRow92 Seg25.relationRow93 Seg25.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 19703), (rho 19704), (rho 19705), (rho 19706), (rho 19707), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part19_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart19 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 19647) (rho 19652) (rho 19657) (rho 19662) (rho 19667) (rho 19672) (rho 19677) (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) k := by
  unfold Seg25.relationPart19 Seg25.relationRow95 Seg25.relationRow96 Seg25.relationRow97 Seg25.relationRow98 Seg25.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 19708), (rho 19709), (rho 19710), (rho 19711), (rho 19712), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part20_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart20 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) k := by
  unfold Seg25.relationPart20 Seg25.relationRow100 Seg25.relationRow101 Seg25.relationRow102 Seg25.relationRow103 Seg25.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 19713), (rho 19714), (rho 19715), (rho 19716), (rho 19717), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part21_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart21 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) k := by
  unfold Seg25.relationPart21 Seg25.relationRow105 Seg25.relationRow106 Seg25.relationRow107 Seg25.relationRow108 Seg25.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 19718), (rho 19719), (rho 19720), (rho 19721), (rho 19722), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part22_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart22 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) k := by
  unfold Seg25.relationPart22 Seg25.relationRow110 Seg25.relationRow111 Seg25.relationRow112 Seg25.relationRow113 Seg25.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 19723), (rho 19724), (rho 19725), (rho 19726), (rho 19727), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part23_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart23 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) (rho 19732)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) k := by
  unfold Seg25.relationPart23 Seg25.relationRow115 Seg25.relationRow116 Seg25.relationRow117 Seg25.relationRow118 Seg25.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 19728), (rho 19729), (rho 19730), (rho 19731), (rho 19732), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part24_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart24 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) (rho 19732) k := by
  unfold Seg25.relationPart24 Seg25.relationRow120 Seg25.relationRow121 Seg25.relationRow122 Seg25.relationRow123 Seg25.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 19733), (rho 19734), (rho 19735), (rho 19736), (rho 19737), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part25_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart25 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) k := by
  unfold Seg25.relationPart25 Seg25.relationRow125 Seg25.relationRow126 Seg25.relationRow127 Seg25.relationRow128 Seg25.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 19738), (rho 19739), (rho 19740), (rho 19741), (rho 19742), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part26_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart26 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 19682) (rho 19687) (rho 19692) (rho 19697) (rho 19702) (rho 19707) (rho 19712) (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) k := by
  unfold Seg25.relationPart26 Seg25.relationRow130 Seg25.relationRow131 Seg25.relationRow132 Seg25.relationRow133 Seg25.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 19743), (rho 19744), (rho 19745), (rho 19746), (rho 19747), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part27_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart27 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) k := by
  unfold Seg25.relationPart27 Seg25.relationRow135 Seg25.relationRow136 Seg25.relationRow137 Seg25.relationRow138 Seg25.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 19748), (rho 19749), (rho 19750), (rho 19751), (rho 19752), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part28_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart28 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) k := by
  unfold Seg25.relationPart28 Seg25.relationRow140 Seg25.relationRow141 Seg25.relationRow142 Seg25.relationRow143 Seg25.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 19753), (rho 19754), (rho 19755), (rho 19756), (rho 19757), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part29_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart29 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) k := by
  unfold Seg25.relationPart29 Seg25.relationRow145 Seg25.relationRow146 Seg25.relationRow147 Seg25.relationRow148 Seg25.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 19758), (rho 19759), (rho 19760), (rho 19761), (rho 19762), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part30_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart30 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) k := by
  unfold Seg25.relationPart30 Seg25.relationRow150 Seg25.relationRow151 Seg25.relationRow152 Seg25.relationRow153 Seg25.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 19763), (rho 19764), (rho 19765), (rho 19766), (rho 19767), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part31_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart31 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) k := by
  unfold Seg25.relationPart31 Seg25.relationRow155 Seg25.relationRow156 Seg25.relationRow157 Seg25.relationRow158 Seg25.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 19768), (rho 19769), (rho 19770), (rho 19771), (rho 19772), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part32_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart32 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) k := by
  unfold Seg25.relationPart32 Seg25.relationRow160 Seg25.relationRow161 Seg25.relationRow162 Seg25.relationRow163 Seg25.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 19773), (rho 19774), (rho 19775), (rho 19776), (rho 19777), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part33_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart33 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) k := by
  unfold Seg25.relationPart33 Seg25.relationRow165 Seg25.relationRow166 Seg25.relationRow167 Seg25.relationRow168 Seg25.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 19778), (rho 19779), (rho 19780), (rho 19781), (rho 19782), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part34_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart34 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) k := by
  unfold Seg25.relationPart34 Seg25.relationRow170 Seg25.relationRow171 Seg25.relationRow172 Seg25.relationRow173 Seg25.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 19783), (rho 19784), (rho 19785), (rho 19786), (rho 19787), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part35_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart35 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) k := by
  unfold Seg25.relationPart35 Seg25.relationRow175 Seg25.relationRow176 Seg25.relationRow177 Seg25.relationRow178 Seg25.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 19788), (rho 19789), (rho 19790), (rho 19791), (rho 19792), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part36_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart36 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) k := by
  unfold Seg25.relationPart36 Seg25.relationRow180 Seg25.relationRow181 Seg25.relationRow182 Seg25.relationRow183 Seg25.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 19793), (rho 19794), (rho 19795), (rho 19796), (rho 19797), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part37_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart37 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) k := by
  unfold Seg25.relationPart37 Seg25.relationRow185 Seg25.relationRow186 Seg25.relationRow187 Seg25.relationRow188 Seg25.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 19798), (rho 19799), (rho 19800), (rho 19801), (rho 19802), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part38_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart38 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) k := by
  unfold Seg25.relationPart38 Seg25.relationRow190 Seg25.relationRow191 Seg25.relationRow192 Seg25.relationRow193 Seg25.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 19803), (rho 19804), (rho 19805), (rho 19806), (rho 19807), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part39_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart39 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) k := by
  unfold Seg25.relationPart39 Seg25.relationRow195 Seg25.relationRow196 Seg25.relationRow197 Seg25.relationRow198 Seg25.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 19808), (rho 19809), (rho 19810), (rho 19811), (rho 19812), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part40_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart40 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) k := by
  unfold Seg25.relationPart40 Seg25.relationRow200 Seg25.relationRow201 Seg25.relationRow202 Seg25.relationRow203 Seg25.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 19813), (rho 19814), (rho 19815), (rho 19816), (rho 19817), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part41_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart41 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) k := by
  unfold Seg25.relationPart41 Seg25.relationRow205 Seg25.relationRow206 Seg25.relationRow207 Seg25.relationRow208 Seg25.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 19818), (rho 19819), (rho 19820), (rho 19821), (rho 19822), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part42_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart42 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) k := by
  unfold Seg25.relationPart42 Seg25.relationRow210 Seg25.relationRow211 Seg25.relationRow212 Seg25.relationRow213 Seg25.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 19823), (rho 19824), (rho 19825), (rho 19826), (rho 19827), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part43_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart43 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) k := by
  unfold Seg25.relationPart43 Seg25.relationRow215 Seg25.relationRow216 Seg25.relationRow217 Seg25.relationRow218 Seg25.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 19828), (rho 19829), (rho 19830), (rho 19831), (rho 19832), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part44_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart44 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) k := by
  unfold Seg25.relationPart44 Seg25.relationRow220 Seg25.relationRow221 Seg25.relationRow222 Seg25.relationRow223 Seg25.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 19833), (rho 19834), (rho 19835), (rho 19836), (rho 19837), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part45_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart45 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) k := by
  unfold Seg25.relationPart45 Seg25.relationRow225 Seg25.relationRow226 Seg25.relationRow227 Seg25.relationRow228 Seg25.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 19838), (rho 19839), (rho 19840), (rho 19841), (rho 19842), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part46_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart46 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) k := by
  unfold Seg25.relationPart46 Seg25.relationRow230 Seg25.relationRow231 Seg25.relationRow232 Seg25.relationRow233 Seg25.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 19843), (rho 19844), (rho 19845), (rho 19846), (rho 19847), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part47_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart47 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) k := by
  unfold Seg25.relationPart47 Seg25.relationRow235 Seg25.relationRow236 Seg25.relationRow237 Seg25.relationRow238 Seg25.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 19848), (rho 19849), (rho 19850), (rho 19851), (rho 19852), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part48_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart48 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) k := by
  unfold Seg25.relationPart48 Seg25.relationRow240 Seg25.relationRow241 Seg25.relationRow242 Seg25.relationRow243 Seg25.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 19853), (rho 19854), (rho 19855), (rho 19856), (rho 19857), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part49_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart49 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) k := by
  unfold Seg25.relationPart49 Seg25.relationRow245 Seg25.relationRow246 Seg25.relationRow247 Seg25.relationRow248 Seg25.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 19858), (rho 19859), (rho 19860), (rho 19861), (rho 19862), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part50_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart50 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) k := by
  unfold Seg25.relationPart50 Seg25.relationRow250 Seg25.relationRow251 Seg25.relationRow252 Seg25.relationRow253 Seg25.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 19863), (rho 19864), (rho 19865), (rho 19866), (rho 19867), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part51_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart51 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) k := by
  unfold Seg25.relationPart51 Seg25.relationRow255 Seg25.relationRow256 Seg25.relationRow257 Seg25.relationRow258 Seg25.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 19868), (rho 19869), (rho 19870), (rho 19871), (rho 19872), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part52_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart52 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) k := by
  unfold Seg25.relationPart52 Seg25.relationRow260 Seg25.relationRow261 Seg25.relationRow262 Seg25.relationRow263 Seg25.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 19873), (rho 19874), (rho 19875), (rho 19876), (rho 19877), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part53_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart53 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) k := by
  unfold Seg25.relationPart53 Seg25.relationRow265 Seg25.relationRow266 Seg25.relationRow267 Seg25.relationRow268 Seg25.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 19878), (rho 19879), (rho 19880), (rho 19881), (rho 19882), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part54_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart54 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) k := by
  unfold Seg25.relationPart54 Seg25.relationRow270 Seg25.relationRow271 Seg25.relationRow272 Seg25.relationRow273 Seg25.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 19883), (rho 19884), (rho 19885), (rho 19886), (rho 19887), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part55_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart55 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) k := by
  unfold Seg25.relationPart55 Seg25.relationRow275 Seg25.relationRow276 Seg25.relationRow277 Seg25.relationRow278 Seg25.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 19888), (rho 19889), (rho 19890), (rho 19891), (rho 19892), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part56_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart56 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) k := by
  unfold Seg25.relationPart56 Seg25.relationRow280 Seg25.relationRow281 Seg25.relationRow282 Seg25.relationRow283 Seg25.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 19893), (rho 19894), (rho 19895), (rho 19896), (rho 19897), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part57_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart57 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) k := by
  unfold Seg25.relationPart57 Seg25.relationRow285 Seg25.relationRow286 Seg25.relationRow287 Seg25.relationRow288 Seg25.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 19898), (rho 19899), (rho 19900), (rho 19901), (rho 19902), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part58_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart58 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) k := by
  unfold Seg25.relationPart58 Seg25.relationRow290 Seg25.relationRow291 Seg25.relationRow292 Seg25.relationRow293 Seg25.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 19903), (rho 19904), (rho 19905), (rho 19906), (rho 19907), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part59_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart59 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) k := by
  unfold Seg25.relationPart59 Seg25.relationRow295 Seg25.relationRow296 Seg25.relationRow297 Seg25.relationRow298 Seg25.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 19908), (rho 19909), (rho 19910), (rho 19911), (rho 19912), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part60_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart60 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) k := by
  unfold Seg25.relationPart60 Seg25.relationRow300 Seg25.relationRow301 Seg25.relationRow302 Seg25.relationRow303 Seg25.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 19913), (rho 19914), (rho 19915), (rho 19916), (rho 19917), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part61_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart61 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) (rho 19922)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) k := by
  unfold Seg25.relationPart61 Seg25.relationRow305 Seg25.relationRow306 Seg25.relationRow307 Seg25.relationRow308 Seg25.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 19918), (rho 19919), (rho 19920), (rho 19921), (rho 19922), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part62_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart62 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) (rho 19922) k := by
  unfold Seg25.relationPart62 Seg25.relationRow310 Seg25.relationRow311 Seg25.relationRow312 Seg25.relationRow313 Seg25.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 19923), (rho 19924), (rho 19925), (rho 19926), (rho 19927), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part63_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart63 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) k := by
  unfold Seg25.relationPart63 Seg25.relationRow315 Seg25.relationRow316 Seg25.relationRow317 Seg25.relationRow318 Seg25.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 19928), (rho 19929), (rho 19930), (rho 19931), (rho 19932), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part64_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart64 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 19717) (rho 19722) (rho 19727) (rho 19732) (rho 19737) (rho 19742) (rho 19747) (rho 19752) (rho 19757) (rho 19762) (rho 19767) (rho 19772) (rho 19777) (rho 19782) (rho 19787) (rho 19792) (rho 19797) (rho 19802) (rho 19807) (rho 19812) (rho 19817) (rho 19822) (rho 19827) (rho 19832) (rho 19837) (rho 19842) (rho 19847) (rho 19852) (rho 19857) (rho 19862) (rho 19867) (rho 19872) (rho 19877) (rho 19882) (rho 19887) (rho 19892) (rho 19897) (rho 19902) (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) k := by
  unfold Seg25.relationPart64 Seg25.relationRow320 Seg25.relationRow321 Seg25.relationRow322 Seg25.relationRow323 Seg25.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 19933), (rho 19934), (rho 19935), (rho 19936), (rho 19937), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part65_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart65 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) k := by
  unfold Seg25.relationPart65 Seg25.relationRow325 Seg25.relationRow326 Seg25.relationRow327 Seg25.relationRow328 Seg25.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 19938), (rho 19939), (rho 19940), (rho 19941), (rho 19942), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part66_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart66 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) k := by
  unfold Seg25.relationPart66 Seg25.relationRow330 Seg25.relationRow331 Seg25.relationRow332 Seg25.relationRow333 Seg25.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 19943), (rho 19944), (rho 19945), (rho 19946), (rho 19947), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part67_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart67 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) k := by
  unfold Seg25.relationPart67 Seg25.relationRow335 Seg25.relationRow336 Seg25.relationRow337 Seg25.relationRow338 Seg25.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 19948), (rho 19949), (rho 19950), (rho 19951), (rho 19952), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part68_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart68 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) (rho 19957)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) k := by
  unfold Seg25.relationPart68 Seg25.relationRow340 Seg25.relationRow341 Seg25.relationRow342 Seg25.relationRow343 Seg25.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 19953), (rho 19954), (rho 19955), (rho 19956), (rho 19957), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part69_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart69 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) (rho 19957) k := by
  unfold Seg25.relationPart69 Seg25.relationRow345 Seg25.relationRow346 Seg25.relationRow347 Seg25.relationRow348 Seg25.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 19958), (rho 19959), (rho 19960), (rho 19961), (rho 19962), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part70_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart70 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) k := by
  unfold Seg25.relationPart70 Seg25.relationRow350 Seg25.relationRow351 Seg25.relationRow352 Seg25.relationRow353 Seg25.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 19963), (rho 19964), (rho 19965), (rho 19966), (rho 19967), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part71_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart71 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 19907) (rho 19912) (rho 19917) (rho 19922) (rho 19927) (rho 19932) (rho 19937) (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) k := by
  unfold Seg25.relationPart71 Seg25.relationRow355 Seg25.relationRow356 Seg25.relationRow357 Seg25.relationRow358 Seg25.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 19968), (rho 19969), (rho 19970), (rho 19971), (rho 19972), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part72_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart72 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) k := by
  unfold Seg25.relationPart72 Seg25.relationRow360 Seg25.relationRow361 Seg25.relationRow362 Seg25.relationRow363 Seg25.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 19973), (rho 19974), (rho 19975), (rho 19976), (rho 19977), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part73_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart73 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) k := by
  unfold Seg25.relationPart73 Seg25.relationRow365 Seg25.relationRow366 Seg25.relationRow367 Seg25.relationRow368 Seg25.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 19978), (rho 19979), (rho 19980), (rho 19981), (rho 19982), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part74_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart74 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) k := by
  unfold Seg25.relationPart74 Seg25.relationRow370 Seg25.relationRow371 Seg25.relationRow372 Seg25.relationRow373 Seg25.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 19983), (rho 19984), (rho 19985), (rho 19986), (rho 19987), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part75_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart75 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) (rho 19992)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) k := by
  unfold Seg25.relationPart75 Seg25.relationRow375 Seg25.relationRow376 Seg25.relationRow377 Seg25.relationRow378 Seg25.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 19988), (rho 19989), (rho 19990), (rho 19991), (rho 19992), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part76_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart76 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) (rho 19992) k := by
  unfold Seg25.relationPart76 Seg25.relationRow380 Seg25.relationRow381 Seg25.relationRow382 Seg25.relationRow383 Seg25.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 19993), (rho 19994), (rho 19995), (rho 19996), (rho 19997), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part77_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart77 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) k := by
  unfold Seg25.relationPart77 Seg25.relationRow385 Seg25.relationRow386 Seg25.relationRow387 Seg25.relationRow388 Seg25.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 19998), (rho 19999), (rho 20000), (rho 20001), (rho 20002), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part78_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart78 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 19942) (rho 19947) (rho 19952) (rho 19957) (rho 19962) (rho 19967) (rho 19972) (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) k := by
  unfold Seg25.relationPart78 Seg25.relationRow390 Seg25.relationRow391 Seg25.relationRow392 Seg25.relationRow393 Seg25.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 20003), (rho 20004), (rho 20005), (rho 20006), (rho 20007), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part79_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart79 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) k := by
  unfold Seg25.relationPart79 Seg25.relationRow395 Seg25.relationRow396 Seg25.relationRow397 Seg25.relationRow398 Seg25.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 20008), (rho 20009), (rho 20010), (rho 20011), (rho 20012), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part80_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart80 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) k := by
  unfold Seg25.relationPart80 Seg25.relationRow400 Seg25.relationRow401 Seg25.relationRow402 Seg25.relationRow403 Seg25.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 20013), (rho 20014), (rho 20015), (rho 20016), (rho 20017), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part81_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart81 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) k := by
  unfold Seg25.relationPart81 Seg25.relationRow405 Seg25.relationRow406 Seg25.relationRow407 Seg25.relationRow408 Seg25.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 20018), (rho 20019), (rho 20020), (rho 20021), (rho 20022), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part82_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart82 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) (rho 20027)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) k := by
  unfold Seg25.relationPart82 Seg25.relationRow410 Seg25.relationRow411 Seg25.relationRow412 Seg25.relationRow413 Seg25.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 20023), (rho 20024), (rho 20025), (rho 20026), (rho 20027), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part83_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart83 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) (rho 20027) k := by
  unfold Seg25.relationPart83 Seg25.relationRow415 Seg25.relationRow416 Seg25.relationRow417 Seg25.relationRow418 Seg25.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 20028), (rho 20029), (rho 20030), (rho 20031), (rho 20032), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part84_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart84 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032) (rho 20037)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032) k := by
  unfold Seg25.relationPart84 Seg25.relationRow420 Seg25.relationRow421 Seg25.relationRow422 Seg25.relationRow423 Seg25.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 20033), (rho 20034), (rho 20035), (rho 20036), (rho 20037), h0, h1, h2, h3, h4, hk⟩

theorem seg25_part85_to_extracted (rho : Nat → Seg25.F)
    (h : Seg25.relationPart85 rho)
    {k : Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Seg25.F → Prop} (hk : k (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032) (rho 20037) (rho 20042)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 19977) (rho 19982) (rho 19987) (rho 19992) (rho 19997) (rho 20002) (rho 20007) (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032) (rho 20037) k := by
  unfold Seg25.relationPart85 Seg25.relationRow425 Seg25.relationRow426 Seg25.relationRow427 Seg25.relationRow428 Seg25.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 20038), (rho 20039), (rho 20040), (rho 20041), (rho 20042), h0, h1, h2, h3, h4, hk⟩

def seg25NotePrefix (rho : Nat → Seg25.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) (fun w15 w16 w19 w22 w572 w912 w917 =>
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
  w1312 = (rho 20012) ∧ w1317 = (rho 20017) ∧ w1322 = (rho 20022) ∧ w1327 = (rho 20027) ∧ w1332 = (rho 20032) ∧ w1337 = (rho 20037) ∧ w1342 = (rho 20042)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg25_relation_to_note_prefix (rho : Nat → Seg25.F)
    (h : Seg25.relation rho) : seg25NotePrefix rho := by
  unfold Seg25.relation at h
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
  unfold seg25NotePrefix
  apply seg25_part0_to_extracted rho p0
  apply seg25_part1_to_extracted rho p1
  apply seg25_part2_to_extracted rho p2
  apply seg25_part3_to_extracted rho p3
  apply seg25_part4_to_extracted rho p4
  apply seg25_part5_to_extracted rho p5
  apply seg25_part6_to_extracted rho p6
  apply seg25_part7_to_extracted rho p7
  apply seg25_part8_to_extracted rho p8
  apply seg25_part9_to_extracted rho p9
  apply seg25_part10_to_extracted rho p10
  apply seg25_part11_to_extracted rho p11
  apply seg25_part12_to_extracted rho p12
  apply seg25_part13_to_extracted rho p13
  apply seg25_part14_to_extracted rho p14
  apply seg25_part15_to_extracted rho p15
  apply seg25_part16_to_extracted rho p16
  apply seg25_part17_to_extracted rho p17
  apply seg25_part18_to_extracted rho p18
  apply seg25_part19_to_extracted rho p19
  apply seg25_part20_to_extracted rho p20
  apply seg25_part21_to_extracted rho p21
  apply seg25_part22_to_extracted rho p22
  apply seg25_part23_to_extracted rho p23
  apply seg25_part24_to_extracted rho p24
  apply seg25_part25_to_extracted rho p25
  apply seg25_part26_to_extracted rho p26
  apply seg25_part27_to_extracted rho p27
  apply seg25_part28_to_extracted rho p28
  apply seg25_part29_to_extracted rho p29
  apply seg25_part30_to_extracted rho p30
  apply seg25_part31_to_extracted rho p31
  apply seg25_part32_to_extracted rho p32
  apply seg25_part33_to_extracted rho p33
  apply seg25_part34_to_extracted rho p34
  apply seg25_part35_to_extracted rho p35
  apply seg25_part36_to_extracted rho p36
  apply seg25_part37_to_extracted rho p37
  apply seg25_part38_to_extracted rho p38
  apply seg25_part39_to_extracted rho p39
  apply seg25_part40_to_extracted rho p40
  apply seg25_part41_to_extracted rho p41
  apply seg25_part42_to_extracted rho p42
  apply seg25_part43_to_extracted rho p43
  apply seg25_part44_to_extracted rho p44
  apply seg25_part45_to_extracted rho p45
  apply seg25_part46_to_extracted rho p46
  apply seg25_part47_to_extracted rho p47
  apply seg25_part48_to_extracted rho p48
  apply seg25_part49_to_extracted rho p49
  apply seg25_part50_to_extracted rho p50
  apply seg25_part51_to_extracted rho p51
  apply seg25_part52_to_extracted rho p52
  apply seg25_part53_to_extracted rho p53
  apply seg25_part54_to_extracted rho p54
  apply seg25_part55_to_extracted rho p55
  apply seg25_part56_to_extracted rho p56
  apply seg25_part57_to_extracted rho p57
  apply seg25_part58_to_extracted rho p58
  apply seg25_part59_to_extracted rho p59
  apply seg25_part60_to_extracted rho p60
  apply seg25_part61_to_extracted rho p61
  apply seg25_part62_to_extracted rho p62
  apply seg25_part63_to_extracted rho p63
  apply seg25_part64_to_extracted rho p64
  apply seg25_part65_to_extracted rho p65
  apply seg25_part66_to_extracted rho p66
  apply seg25_part67_to_extracted rho p67
  apply seg25_part68_to_extracted rho p68
  apply seg25_part69_to_extracted rho p69
  apply seg25_part70_to_extracted rho p70
  apply seg25_part71_to_extracted rho p71
  apply seg25_part72_to_extracted rho p72
  apply seg25_part73_to_extracted rho p73
  apply seg25_part74_to_extracted rho p74
  apply seg25_part75_to_extracted rho p75
  apply seg25_part76_to_extracted rho p76
  apply seg25_part77_to_extracted rho p77
  apply seg25_part78_to_extracted rho p78
  apply seg25_part79_to_extracted rho p79
  apply seg25_part80_to_extracted rho p80
  apply seg25_part81_to_extracted rho p81
  apply seg25_part82_to_extracted rho p82
  apply seg25_part83_to_extracted rho p83
  apply seg25_part84_to_extracted rho p84
  apply seg25_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg25_sound (rho : Nat → Seg25.F) (h : Seg25.relation rho) : Seg25.spec rho := by
  have hPrefix := seg25_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg25.spec, Specs.deployedSpec25, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

theorem seg43_part0_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart0 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) (rho 32501)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) k := by
  unfold Seg41.relationPart0 Seg41.relationRow0 Seg41.relationRow1 Seg41.relationRow2 Seg41.relationRow3 Seg41.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 32497), (rho 32498), (rho 32499), (rho 32500), (rho 32501), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part1_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart1 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) (rho 32501) (rho 32506)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) (rho 32501) k := by
  unfold Seg41.relationPart1 Seg41.relationRow5 Seg41.relationRow6 Seg41.relationRow7 Seg41.relationRow8 Seg41.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 32502), (rho 32503), (rho 32504), (rho 32505), (rho 32506), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part2_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart2 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 197) (rho 200) (rho 32156) (rho 32496) (rho 32501) (rho 32506) (rho 32511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) (rho 32501) (rho 32506) k := by
  unfold Seg41.relationPart2 Seg41.relationRow10 Seg41.relationRow11 Seg41.relationRow12 Seg41.relationRow13 Seg41.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 32507), (rho 32508), (rho 32509), (rho 32510), (rho 32511), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part3_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart3 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 197) (rho 200) (rho 32501) (rho 32506) (rho 32511) (rho 32516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 197) (rho 200) (rho 32156) (rho 32496) (rho 32501) (rho 32506) (rho 32511) k := by
  unfold Seg41.relationPart3 Seg41.relationRow15 Seg41.relationRow16 Seg41.relationRow17 Seg41.relationRow18 Seg41.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 32512), (rho 32513), (rho 32514), (rho 32515), (rho 32516), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part4_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart4 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 200) (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 197) (rho 200) (rho 32501) (rho 32506) (rho 32511) (rho 32516) k := by
  unfold Seg41.relationPart4 Seg41.relationRow20 Seg41.relationRow21 Seg41.relationRow22 Seg41.relationRow23 Seg41.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 32517), (rho 32518), (rho 32519), (rho 32520), (rho 32521), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part5_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart5 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 200) (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) k := by
  unfold Seg41.relationPart5 Seg41.relationRow25 Seg41.relationRow26 Seg41.relationRow27 Seg41.relationRow28 Seg41.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 32522), (rho 32523), (rho 32524), (rho 32525), (rho 32526), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part6_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart6 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) k := by
  unfold Seg41.relationPart6 Seg41.relationRow30 Seg41.relationRow31 Seg41.relationRow32 Seg41.relationRow33 Seg41.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 32527), (rho 32528), (rho 32529), (rho 32530), (rho 32531), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part7_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart7 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) k := by
  unfold Seg41.relationPart7 Seg41.relationRow35 Seg41.relationRow36 Seg41.relationRow37 Seg41.relationRow38 Seg41.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 32532), (rho 32533), (rho 32534), (rho 32535), (rho 32536), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part8_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart8 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) k := by
  unfold Seg41.relationPart8 Seg41.relationRow40 Seg41.relationRow41 Seg41.relationRow42 Seg41.relationRow43 Seg41.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 32537), (rho 32538), (rho 32539), (rho 32540), (rho 32541), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part9_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart9 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) (rho 32546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) k := by
  unfold Seg41.relationPart9 Seg41.relationRow45 Seg41.relationRow46 Seg41.relationRow47 Seg41.relationRow48 Seg41.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 32542), (rho 32543), (rho 32544), (rho 32545), (rho 32546), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part10_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart10 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) (rho 32546) k := by
  unfold Seg41.relationPart10 Seg41.relationRow50 Seg41.relationRow51 Seg41.relationRow52 Seg41.relationRow53 Seg41.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 32547), (rho 32548), (rho 32549), (rho 32550), (rho 32551), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part11_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart11 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) k := by
  unfold Seg41.relationPart11 Seg41.relationRow55 Seg41.relationRow56 Seg41.relationRow57 Seg41.relationRow58 Seg41.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 32552), (rho 32553), (rho 32554), (rho 32555), (rho 32556), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part12_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart12 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 32501) (rho 32506) (rho 32511) (rho 32516) (rho 32521) (rho 32526) (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) k := by
  unfold Seg41.relationPart12 Seg41.relationRow60 Seg41.relationRow61 Seg41.relationRow62 Seg41.relationRow63 Seg41.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 32557), (rho 32558), (rho 32559), (rho 32560), (rho 32561), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part13_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart13 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) k := by
  unfold Seg41.relationPart13 Seg41.relationRow65 Seg41.relationRow66 Seg41.relationRow67 Seg41.relationRow68 Seg41.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 32562), (rho 32563), (rho 32564), (rho 32565), (rho 32566), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part14_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart14 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) k := by
  unfold Seg41.relationPart14 Seg41.relationRow70 Seg41.relationRow71 Seg41.relationRow72 Seg41.relationRow73 Seg41.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 32567), (rho 32568), (rho 32569), (rho 32570), (rho 32571), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part15_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart15 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) k := by
  unfold Seg41.relationPart15 Seg41.relationRow75 Seg41.relationRow76 Seg41.relationRow77 Seg41.relationRow78 Seg41.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 32572), (rho 32573), (rho 32574), (rho 32575), (rho 32576), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part16_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart16 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) (rho 32581)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) k := by
  unfold Seg41.relationPart16 Seg41.relationRow80 Seg41.relationRow81 Seg41.relationRow82 Seg41.relationRow83 Seg41.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 32577), (rho 32578), (rho 32579), (rho 32580), (rho 32581), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part17_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart17 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) (rho 32581) k := by
  unfold Seg41.relationPart17 Seg41.relationRow85 Seg41.relationRow86 Seg41.relationRow87 Seg41.relationRow88 Seg41.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 32582), (rho 32583), (rho 32584), (rho 32585), (rho 32586), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part18_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart18 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) k := by
  unfold Seg41.relationPart18 Seg41.relationRow90 Seg41.relationRow91 Seg41.relationRow92 Seg41.relationRow93 Seg41.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 32587), (rho 32588), (rho 32589), (rho 32590), (rho 32591), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part19_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart19 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 32531) (rho 32536) (rho 32541) (rho 32546) (rho 32551) (rho 32556) (rho 32561) (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) k := by
  unfold Seg41.relationPart19 Seg41.relationRow95 Seg41.relationRow96 Seg41.relationRow97 Seg41.relationRow98 Seg41.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 32592), (rho 32593), (rho 32594), (rho 32595), (rho 32596), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part20_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart20 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) k := by
  unfold Seg41.relationPart20 Seg41.relationRow100 Seg41.relationRow101 Seg41.relationRow102 Seg41.relationRow103 Seg41.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 32597), (rho 32598), (rho 32599), (rho 32600), (rho 32601), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part21_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart21 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) k := by
  unfold Seg41.relationPart21 Seg41.relationRow105 Seg41.relationRow106 Seg41.relationRow107 Seg41.relationRow108 Seg41.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 32602), (rho 32603), (rho 32604), (rho 32605), (rho 32606), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part22_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart22 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) k := by
  unfold Seg41.relationPart22 Seg41.relationRow110 Seg41.relationRow111 Seg41.relationRow112 Seg41.relationRow113 Seg41.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 32607), (rho 32608), (rho 32609), (rho 32610), (rho 32611), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part23_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart23 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) (rho 32616)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) k := by
  unfold Seg41.relationPart23 Seg41.relationRow115 Seg41.relationRow116 Seg41.relationRow117 Seg41.relationRow118 Seg41.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 32612), (rho 32613), (rho 32614), (rho 32615), (rho 32616), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part24_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart24 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) (rho 32616) k := by
  unfold Seg41.relationPart24 Seg41.relationRow120 Seg41.relationRow121 Seg41.relationRow122 Seg41.relationRow123 Seg41.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 32617), (rho 32618), (rho 32619), (rho 32620), (rho 32621), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part25_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart25 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) k := by
  unfold Seg41.relationPart25 Seg41.relationRow125 Seg41.relationRow126 Seg41.relationRow127 Seg41.relationRow128 Seg41.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 32622), (rho 32623), (rho 32624), (rho 32625), (rho 32626), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part26_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart26 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 32566) (rho 32571) (rho 32576) (rho 32581) (rho 32586) (rho 32591) (rho 32596) (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) k := by
  unfold Seg41.relationPart26 Seg41.relationRow130 Seg41.relationRow131 Seg41.relationRow132 Seg41.relationRow133 Seg41.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 32627), (rho 32628), (rho 32629), (rho 32630), (rho 32631), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part27_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart27 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) k := by
  unfold Seg41.relationPart27 Seg41.relationRow135 Seg41.relationRow136 Seg41.relationRow137 Seg41.relationRow138 Seg41.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 32632), (rho 32633), (rho 32634), (rho 32635), (rho 32636), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part28_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart28 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) k := by
  unfold Seg41.relationPart28 Seg41.relationRow140 Seg41.relationRow141 Seg41.relationRow142 Seg41.relationRow143 Seg41.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 32637), (rho 32638), (rho 32639), (rho 32640), (rho 32641), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part29_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart29 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) k := by
  unfold Seg41.relationPart29 Seg41.relationRow145 Seg41.relationRow146 Seg41.relationRow147 Seg41.relationRow148 Seg41.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 32642), (rho 32643), (rho 32644), (rho 32645), (rho 32646), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part30_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart30 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) k := by
  unfold Seg41.relationPart30 Seg41.relationRow150 Seg41.relationRow151 Seg41.relationRow152 Seg41.relationRow153 Seg41.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 32647), (rho 32648), (rho 32649), (rho 32650), (rho 32651), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part31_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart31 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) k := by
  unfold Seg41.relationPart31 Seg41.relationRow155 Seg41.relationRow156 Seg41.relationRow157 Seg41.relationRow158 Seg41.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 32652), (rho 32653), (rho 32654), (rho 32655), (rho 32656), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part32_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart32 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) k := by
  unfold Seg41.relationPart32 Seg41.relationRow160 Seg41.relationRow161 Seg41.relationRow162 Seg41.relationRow163 Seg41.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 32657), (rho 32658), (rho 32659), (rho 32660), (rho 32661), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part33_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart33 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) k := by
  unfold Seg41.relationPart33 Seg41.relationRow165 Seg41.relationRow166 Seg41.relationRow167 Seg41.relationRow168 Seg41.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 32662), (rho 32663), (rho 32664), (rho 32665), (rho 32666), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part34_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart34 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) k := by
  unfold Seg41.relationPart34 Seg41.relationRow170 Seg41.relationRow171 Seg41.relationRow172 Seg41.relationRow173 Seg41.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 32667), (rho 32668), (rho 32669), (rho 32670), (rho 32671), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part35_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart35 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) k := by
  unfold Seg41.relationPart35 Seg41.relationRow175 Seg41.relationRow176 Seg41.relationRow177 Seg41.relationRow178 Seg41.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 32672), (rho 32673), (rho 32674), (rho 32675), (rho 32676), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part36_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart36 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) k := by
  unfold Seg41.relationPart36 Seg41.relationRow180 Seg41.relationRow181 Seg41.relationRow182 Seg41.relationRow183 Seg41.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 32677), (rho 32678), (rho 32679), (rho 32680), (rho 32681), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part37_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart37 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) k := by
  unfold Seg41.relationPart37 Seg41.relationRow185 Seg41.relationRow186 Seg41.relationRow187 Seg41.relationRow188 Seg41.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 32682), (rho 32683), (rho 32684), (rho 32685), (rho 32686), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part38_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart38 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) k := by
  unfold Seg41.relationPart38 Seg41.relationRow190 Seg41.relationRow191 Seg41.relationRow192 Seg41.relationRow193 Seg41.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 32687), (rho 32688), (rho 32689), (rho 32690), (rho 32691), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part39_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart39 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) k := by
  unfold Seg41.relationPart39 Seg41.relationRow195 Seg41.relationRow196 Seg41.relationRow197 Seg41.relationRow198 Seg41.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 32692), (rho 32693), (rho 32694), (rho 32695), (rho 32696), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part40_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart40 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) k := by
  unfold Seg41.relationPart40 Seg41.relationRow200 Seg41.relationRow201 Seg41.relationRow202 Seg41.relationRow203 Seg41.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 32697), (rho 32698), (rho 32699), (rho 32700), (rho 32701), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part41_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart41 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) k := by
  unfold Seg41.relationPart41 Seg41.relationRow205 Seg41.relationRow206 Seg41.relationRow207 Seg41.relationRow208 Seg41.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 32702), (rho 32703), (rho 32704), (rho 32705), (rho 32706), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part42_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart42 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) k := by
  unfold Seg41.relationPart42 Seg41.relationRow210 Seg41.relationRow211 Seg41.relationRow212 Seg41.relationRow213 Seg41.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 32707), (rho 32708), (rho 32709), (rho 32710), (rho 32711), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part43_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart43 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) k := by
  unfold Seg41.relationPart43 Seg41.relationRow215 Seg41.relationRow216 Seg41.relationRow217 Seg41.relationRow218 Seg41.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 32712), (rho 32713), (rho 32714), (rho 32715), (rho 32716), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part44_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart44 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) k := by
  unfold Seg41.relationPart44 Seg41.relationRow220 Seg41.relationRow221 Seg41.relationRow222 Seg41.relationRow223 Seg41.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 32717), (rho 32718), (rho 32719), (rho 32720), (rho 32721), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part45_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart45 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) k := by
  unfold Seg41.relationPart45 Seg41.relationRow225 Seg41.relationRow226 Seg41.relationRow227 Seg41.relationRow228 Seg41.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 32722), (rho 32723), (rho 32724), (rho 32725), (rho 32726), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part46_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart46 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) k := by
  unfold Seg41.relationPart46 Seg41.relationRow230 Seg41.relationRow231 Seg41.relationRow232 Seg41.relationRow233 Seg41.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 32727), (rho 32728), (rho 32729), (rho 32730), (rho 32731), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part47_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart47 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) k := by
  unfold Seg41.relationPart47 Seg41.relationRow235 Seg41.relationRow236 Seg41.relationRow237 Seg41.relationRow238 Seg41.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 32732), (rho 32733), (rho 32734), (rho 32735), (rho 32736), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part48_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart48 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) k := by
  unfold Seg41.relationPart48 Seg41.relationRow240 Seg41.relationRow241 Seg41.relationRow242 Seg41.relationRow243 Seg41.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 32737), (rho 32738), (rho 32739), (rho 32740), (rho 32741), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part49_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart49 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) k := by
  unfold Seg41.relationPart49 Seg41.relationRow245 Seg41.relationRow246 Seg41.relationRow247 Seg41.relationRow248 Seg41.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 32742), (rho 32743), (rho 32744), (rho 32745), (rho 32746), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part50_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart50 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) k := by
  unfold Seg41.relationPart50 Seg41.relationRow250 Seg41.relationRow251 Seg41.relationRow252 Seg41.relationRow253 Seg41.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 32747), (rho 32748), (rho 32749), (rho 32750), (rho 32751), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part51_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart51 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) k := by
  unfold Seg41.relationPart51 Seg41.relationRow255 Seg41.relationRow256 Seg41.relationRow257 Seg41.relationRow258 Seg41.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 32752), (rho 32753), (rho 32754), (rho 32755), (rho 32756), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part52_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart52 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) k := by
  unfold Seg41.relationPart52 Seg41.relationRow260 Seg41.relationRow261 Seg41.relationRow262 Seg41.relationRow263 Seg41.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 32757), (rho 32758), (rho 32759), (rho 32760), (rho 32761), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part53_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart53 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) k := by
  unfold Seg41.relationPart53 Seg41.relationRow265 Seg41.relationRow266 Seg41.relationRow267 Seg41.relationRow268 Seg41.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 32762), (rho 32763), (rho 32764), (rho 32765), (rho 32766), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part54_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart54 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) k := by
  unfold Seg41.relationPart54 Seg41.relationRow270 Seg41.relationRow271 Seg41.relationRow272 Seg41.relationRow273 Seg41.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 32767), (rho 32768), (rho 32769), (rho 32770), (rho 32771), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part55_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart55 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) k := by
  unfold Seg41.relationPart55 Seg41.relationRow275 Seg41.relationRow276 Seg41.relationRow277 Seg41.relationRow278 Seg41.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 32772), (rho 32773), (rho 32774), (rho 32775), (rho 32776), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part56_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart56 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) k := by
  unfold Seg41.relationPart56 Seg41.relationRow280 Seg41.relationRow281 Seg41.relationRow282 Seg41.relationRow283 Seg41.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 32777), (rho 32778), (rho 32779), (rho 32780), (rho 32781), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part57_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart57 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) k := by
  unfold Seg41.relationPart57 Seg41.relationRow285 Seg41.relationRow286 Seg41.relationRow287 Seg41.relationRow288 Seg41.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 32782), (rho 32783), (rho 32784), (rho 32785), (rho 32786), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part58_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart58 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) k := by
  unfold Seg41.relationPart58 Seg41.relationRow290 Seg41.relationRow291 Seg41.relationRow292 Seg41.relationRow293 Seg41.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 32787), (rho 32788), (rho 32789), (rho 32790), (rho 32791), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part59_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart59 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) k := by
  unfold Seg41.relationPart59 Seg41.relationRow295 Seg41.relationRow296 Seg41.relationRow297 Seg41.relationRow298 Seg41.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 32792), (rho 32793), (rho 32794), (rho 32795), (rho 32796), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part60_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart60 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) k := by
  unfold Seg41.relationPart60 Seg41.relationRow300 Seg41.relationRow301 Seg41.relationRow302 Seg41.relationRow303 Seg41.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 32797), (rho 32798), (rho 32799), (rho 32800), (rho 32801), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part61_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart61 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) (rho 32806)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) k := by
  unfold Seg41.relationPart61 Seg41.relationRow305 Seg41.relationRow306 Seg41.relationRow307 Seg41.relationRow308 Seg41.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 32802), (rho 32803), (rho 32804), (rho 32805), (rho 32806), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part62_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart62 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) (rho 32806) k := by
  unfold Seg41.relationPart62 Seg41.relationRow310 Seg41.relationRow311 Seg41.relationRow312 Seg41.relationRow313 Seg41.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 32807), (rho 32808), (rho 32809), (rho 32810), (rho 32811), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part63_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart63 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) k := by
  unfold Seg41.relationPart63 Seg41.relationRow315 Seg41.relationRow316 Seg41.relationRow317 Seg41.relationRow318 Seg41.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 32812), (rho 32813), (rho 32814), (rho 32815), (rho 32816), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part64_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart64 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 32601) (rho 32606) (rho 32611) (rho 32616) (rho 32621) (rho 32626) (rho 32631) (rho 32636) (rho 32641) (rho 32646) (rho 32651) (rho 32656) (rho 32661) (rho 32666) (rho 32671) (rho 32676) (rho 32681) (rho 32686) (rho 32691) (rho 32696) (rho 32701) (rho 32706) (rho 32711) (rho 32716) (rho 32721) (rho 32726) (rho 32731) (rho 32736) (rho 32741) (rho 32746) (rho 32751) (rho 32756) (rho 32761) (rho 32766) (rho 32771) (rho 32776) (rho 32781) (rho 32786) (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) k := by
  unfold Seg41.relationPart64 Seg41.relationRow320 Seg41.relationRow321 Seg41.relationRow322 Seg41.relationRow323 Seg41.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 32817), (rho 32818), (rho 32819), (rho 32820), (rho 32821), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part65_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart65 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) k := by
  unfold Seg41.relationPart65 Seg41.relationRow325 Seg41.relationRow326 Seg41.relationRow327 Seg41.relationRow328 Seg41.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 32822), (rho 32823), (rho 32824), (rho 32825), (rho 32826), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part66_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart66 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) k := by
  unfold Seg41.relationPart66 Seg41.relationRow330 Seg41.relationRow331 Seg41.relationRow332 Seg41.relationRow333 Seg41.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 32827), (rho 32828), (rho 32829), (rho 32830), (rho 32831), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part67_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart67 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) k := by
  unfold Seg41.relationPart67 Seg41.relationRow335 Seg41.relationRow336 Seg41.relationRow337 Seg41.relationRow338 Seg41.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 32832), (rho 32833), (rho 32834), (rho 32835), (rho 32836), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part68_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart68 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) (rho 32841)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) k := by
  unfold Seg41.relationPart68 Seg41.relationRow340 Seg41.relationRow341 Seg41.relationRow342 Seg41.relationRow343 Seg41.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 32837), (rho 32838), (rho 32839), (rho 32840), (rho 32841), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part69_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart69 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) (rho 32841) k := by
  unfold Seg41.relationPart69 Seg41.relationRow345 Seg41.relationRow346 Seg41.relationRow347 Seg41.relationRow348 Seg41.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 32842), (rho 32843), (rho 32844), (rho 32845), (rho 32846), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part70_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart70 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) k := by
  unfold Seg41.relationPart70 Seg41.relationRow350 Seg41.relationRow351 Seg41.relationRow352 Seg41.relationRow353 Seg41.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 32847), (rho 32848), (rho 32849), (rho 32850), (rho 32851), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part71_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart71 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 32791) (rho 32796) (rho 32801) (rho 32806) (rho 32811) (rho 32816) (rho 32821) (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) k := by
  unfold Seg41.relationPart71 Seg41.relationRow355 Seg41.relationRow356 Seg41.relationRow357 Seg41.relationRow358 Seg41.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 32852), (rho 32853), (rho 32854), (rho 32855), (rho 32856), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part72_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart72 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) k := by
  unfold Seg41.relationPart72 Seg41.relationRow360 Seg41.relationRow361 Seg41.relationRow362 Seg41.relationRow363 Seg41.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 32857), (rho 32858), (rho 32859), (rho 32860), (rho 32861), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part73_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart73 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) k := by
  unfold Seg41.relationPart73 Seg41.relationRow365 Seg41.relationRow366 Seg41.relationRow367 Seg41.relationRow368 Seg41.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 32862), (rho 32863), (rho 32864), (rho 32865), (rho 32866), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part74_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart74 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) k := by
  unfold Seg41.relationPart74 Seg41.relationRow370 Seg41.relationRow371 Seg41.relationRow372 Seg41.relationRow373 Seg41.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 32867), (rho 32868), (rho 32869), (rho 32870), (rho 32871), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part75_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart75 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) (rho 32876)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) k := by
  unfold Seg41.relationPart75 Seg41.relationRow375 Seg41.relationRow376 Seg41.relationRow377 Seg41.relationRow378 Seg41.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 32872), (rho 32873), (rho 32874), (rho 32875), (rho 32876), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part76_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart76 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) (rho 32876) k := by
  unfold Seg41.relationPart76 Seg41.relationRow380 Seg41.relationRow381 Seg41.relationRow382 Seg41.relationRow383 Seg41.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 32877), (rho 32878), (rho 32879), (rho 32880), (rho 32881), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part77_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart77 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) k := by
  unfold Seg41.relationPart77 Seg41.relationRow385 Seg41.relationRow386 Seg41.relationRow387 Seg41.relationRow388 Seg41.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 32882), (rho 32883), (rho 32884), (rho 32885), (rho 32886), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part78_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart78 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 32826) (rho 32831) (rho 32836) (rho 32841) (rho 32846) (rho 32851) (rho 32856) (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) k := by
  unfold Seg41.relationPart78 Seg41.relationRow390 Seg41.relationRow391 Seg41.relationRow392 Seg41.relationRow393 Seg41.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 32887), (rho 32888), (rho 32889), (rho 32890), (rho 32891), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part79_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart79 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) k := by
  unfold Seg41.relationPart79 Seg41.relationRow395 Seg41.relationRow396 Seg41.relationRow397 Seg41.relationRow398 Seg41.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 32892), (rho 32893), (rho 32894), (rho 32895), (rho 32896), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part80_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart80 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) k := by
  unfold Seg41.relationPart80 Seg41.relationRow400 Seg41.relationRow401 Seg41.relationRow402 Seg41.relationRow403 Seg41.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 32897), (rho 32898), (rho 32899), (rho 32900), (rho 32901), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part81_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart81 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) k := by
  unfold Seg41.relationPart81 Seg41.relationRow405 Seg41.relationRow406 Seg41.relationRow407 Seg41.relationRow408 Seg41.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 32902), (rho 32903), (rho 32904), (rho 32905), (rho 32906), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part82_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart82 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) (rho 32911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) k := by
  unfold Seg41.relationPart82 Seg41.relationRow410 Seg41.relationRow411 Seg41.relationRow412 Seg41.relationRow413 Seg41.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 32907), (rho 32908), (rho 32909), (rho 32910), (rho 32911), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part83_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart83 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) (rho 32911) (rho 32916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) (rho 32911) k := by
  unfold Seg41.relationPart83 Seg41.relationRow415 Seg41.relationRow416 Seg41.relationRow417 Seg41.relationRow418 Seg41.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 32912), (rho 32913), (rho 32914), (rho 32915), (rho 32916), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part84_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart84 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) (rho 32911) (rho 32916) (rho 32921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) (rho 32911) (rho 32916) k := by
  unfold Seg41.relationPart84 Seg41.relationRow420 Seg41.relationRow421 Seg41.relationRow422 Seg41.relationRow423 Seg41.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 32917), (rho 32918), (rho 32919), (rho 32920), (rho 32921), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part85_to_extracted (rho : Nat → Seg41.F)
    (h : Seg41.relationPart85 rho)
    {k : Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Seg41.F → Prop} (hk : k (rho 32896) (rho 32901) (rho 32906) (rho 32911) (rho 32916) (rho 32921) (rho 32926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 32861) (rho 32866) (rho 32871) (rho 32876) (rho 32881) (rho 32886) (rho 32891) (rho 32896) (rho 32901) (rho 32906) (rho 32911) (rho 32916) (rho 32921) k := by
  unfold Seg41.relationPart85 Seg41.relationRow425 Seg41.relationRow426 Seg41.relationRow427 Seg41.relationRow428 Seg41.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 32922), (rho 32923), (rho 32924), (rho 32925), (rho 32926), h0, h1, h2, h3, h4, hk⟩

def seg43NotePrefix (rho : Nat → Seg41.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) (fun w15 w16 w19 w22 w572 w912 w917 =>
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
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 (fun w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 =>
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
  w1312 = (rho 32896) ∧ w1317 = (rho 32901) ∧ w1322 = (rho 32906) ∧ w1327 = (rho 32911) ∧ w1332 = (rho 32916) ∧ w1337 = (rho 32921) ∧ w1342 = (rho 32926)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg43_relation_to_note_prefix (rho : Nat → Seg41.F)
    (h : Seg41.relation rho) : seg43NotePrefix rho := by
  unfold Seg41.relation at h
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
  unfold seg43NotePrefix
  apply seg43_part0_to_extracted rho p0
  apply seg43_part1_to_extracted rho p1
  apply seg43_part2_to_extracted rho p2
  apply seg43_part3_to_extracted rho p3
  apply seg43_part4_to_extracted rho p4
  apply seg43_part5_to_extracted rho p5
  apply seg43_part6_to_extracted rho p6
  apply seg43_part7_to_extracted rho p7
  apply seg43_part8_to_extracted rho p8
  apply seg43_part9_to_extracted rho p9
  apply seg43_part10_to_extracted rho p10
  apply seg43_part11_to_extracted rho p11
  apply seg43_part12_to_extracted rho p12
  apply seg43_part13_to_extracted rho p13
  apply seg43_part14_to_extracted rho p14
  apply seg43_part15_to_extracted rho p15
  apply seg43_part16_to_extracted rho p16
  apply seg43_part17_to_extracted rho p17
  apply seg43_part18_to_extracted rho p18
  apply seg43_part19_to_extracted rho p19
  apply seg43_part20_to_extracted rho p20
  apply seg43_part21_to_extracted rho p21
  apply seg43_part22_to_extracted rho p22
  apply seg43_part23_to_extracted rho p23
  apply seg43_part24_to_extracted rho p24
  apply seg43_part25_to_extracted rho p25
  apply seg43_part26_to_extracted rho p26
  apply seg43_part27_to_extracted rho p27
  apply seg43_part28_to_extracted rho p28
  apply seg43_part29_to_extracted rho p29
  apply seg43_part30_to_extracted rho p30
  apply seg43_part31_to_extracted rho p31
  apply seg43_part32_to_extracted rho p32
  apply seg43_part33_to_extracted rho p33
  apply seg43_part34_to_extracted rho p34
  apply seg43_part35_to_extracted rho p35
  apply seg43_part36_to_extracted rho p36
  apply seg43_part37_to_extracted rho p37
  apply seg43_part38_to_extracted rho p38
  apply seg43_part39_to_extracted rho p39
  apply seg43_part40_to_extracted rho p40
  apply seg43_part41_to_extracted rho p41
  apply seg43_part42_to_extracted rho p42
  apply seg43_part43_to_extracted rho p43
  apply seg43_part44_to_extracted rho p44
  apply seg43_part45_to_extracted rho p45
  apply seg43_part46_to_extracted rho p46
  apply seg43_part47_to_extracted rho p47
  apply seg43_part48_to_extracted rho p48
  apply seg43_part49_to_extracted rho p49
  apply seg43_part50_to_extracted rho p50
  apply seg43_part51_to_extracted rho p51
  apply seg43_part52_to_extracted rho p52
  apply seg43_part53_to_extracted rho p53
  apply seg43_part54_to_extracted rho p54
  apply seg43_part55_to_extracted rho p55
  apply seg43_part56_to_extracted rho p56
  apply seg43_part57_to_extracted rho p57
  apply seg43_part58_to_extracted rho p58
  apply seg43_part59_to_extracted rho p59
  apply seg43_part60_to_extracted rho p60
  apply seg43_part61_to_extracted rho p61
  apply seg43_part62_to_extracted rho p62
  apply seg43_part63_to_extracted rho p63
  apply seg43_part64_to_extracted rho p64
  apply seg43_part65_to_extracted rho p65
  apply seg43_part66_to_extracted rho p66
  apply seg43_part67_to_extracted rho p67
  apply seg43_part68_to_extracted rho p68
  apply seg43_part69_to_extracted rho p69
  apply seg43_part70_to_extracted rho p70
  apply seg43_part71_to_extracted rho p71
  apply seg43_part72_to_extracted rho p72
  apply seg43_part73_to_extracted rho p73
  apply seg43_part74_to_extracted rho p74
  apply seg43_part75_to_extracted rho p75
  apply seg43_part76_to_extracted rho p76
  apply seg43_part77_to_extracted rho p77
  apply seg43_part78_to_extracted rho p78
  apply seg43_part79_to_extracted rho p79
  apply seg43_part80_to_extracted rho p80
  apply seg43_part81_to_extracted rho p81
  apply seg43_part82_to_extracted rho p82
  apply seg43_part83_to_extracted rho p83
  apply seg43_part84_to_extracted rho p84
  apply seg43_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg43_sound (rho : Nat → Seg41.F) (h : Seg41.relation rho) : Seg41.spec rho := by
  have hPrefix := seg43_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg41.spec, Specs.deployedSpec41, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
