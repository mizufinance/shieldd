import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg25
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43
import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg7_part0_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart0 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 917)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) k := by
  unfold Seg7.relationPart0 Seg7.relationRow0 Seg7.relationRow1 Seg7.relationRow2 Seg7.relationRow3 Seg7.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 913), (rho 914), (rho 915), (rho 916), (rho 917), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part1_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart1 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 917) (rho 922)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 917) k := by
  unfold Seg7.relationPart1 Seg7.relationRow5 Seg7.relationRow6 Seg7.relationRow7 Seg7.relationRow8 Seg7.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 918), (rho 919), (rho 920), (rho 921), (rho 922), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part2_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart2 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 19) (rho 22) (rho 572) (rho 912) (rho 917) (rho 922) (rho 927)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) (rho 917) (rho 922) k := by
  unfold Seg7.relationPart2 Seg7.relationRow10 Seg7.relationRow11 Seg7.relationRow12 Seg7.relationRow13 Seg7.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 923), (rho 924), (rho 925), (rho 926), (rho 927), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part3_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart3 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 19) (rho 22) (rho 917) (rho 922) (rho 927) (rho 932)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 19) (rho 22) (rho 572) (rho 912) (rho 917) (rho 922) (rho 927) k := by
  unfold Seg7.relationPart3 Seg7.relationRow15 Seg7.relationRow16 Seg7.relationRow17 Seg7.relationRow18 Seg7.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 928), (rho 929), (rho 930), (rho 931), (rho 932), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part4_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart4 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 22) (rho 917) (rho 922) (rho 927) (rho 932) (rho 937)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 19) (rho 22) (rho 917) (rho 922) (rho 927) (rho 932) k := by
  unfold Seg7.relationPart4 Seg7.relationRow20 Seg7.relationRow21 Seg7.relationRow22 Seg7.relationRow23 Seg7.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 933), (rho 934), (rho 935), (rho 936), (rho 937), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part5_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart5 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 22) (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) k := by
  unfold Seg7.relationPart5 Seg7.relationRow25 Seg7.relationRow26 Seg7.relationRow27 Seg7.relationRow28 Seg7.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 938), (rho 939), (rho 940), (rho 941), (rho 942), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part6_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart6 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) k := by
  unfold Seg7.relationPart6 Seg7.relationRow30 Seg7.relationRow31 Seg7.relationRow32 Seg7.relationRow33 Seg7.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 943), (rho 944), (rho 945), (rho 946), (rho 947), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part7_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart7 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) k := by
  unfold Seg7.relationPart7 Seg7.relationRow35 Seg7.relationRow36 Seg7.relationRow37 Seg7.relationRow38 Seg7.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 948), (rho 949), (rho 950), (rho 951), (rho 952), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part8_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart8 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) k := by
  unfold Seg7.relationPart8 Seg7.relationRow40 Seg7.relationRow41 Seg7.relationRow42 Seg7.relationRow43 Seg7.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 953), (rho 954), (rho 955), (rho 956), (rho 957), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part9_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart9 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) (rho 962)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) k := by
  unfold Seg7.relationPart9 Seg7.relationRow45 Seg7.relationRow46 Seg7.relationRow47 Seg7.relationRow48 Seg7.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 958), (rho 959), (rho 960), (rho 961), (rho 962), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part10_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart10 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) (rho 962) (rho 967)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) (rho 962) k := by
  unfold Seg7.relationPart10 Seg7.relationRow50 Seg7.relationRow51 Seg7.relationRow52 Seg7.relationRow53 Seg7.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 963), (rho 964), (rho 965), (rho 966), (rho 967), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part11_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart11 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) k := by
  unfold Seg7.relationPart11 Seg7.relationRow55 Seg7.relationRow56 Seg7.relationRow57 Seg7.relationRow58 Seg7.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 968), (rho 969), (rho 970), (rho 971), (rho 972), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part12_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart12 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) k := by
  unfold Seg7.relationPart12 Seg7.relationRow60 Seg7.relationRow61 Seg7.relationRow62 Seg7.relationRow63 Seg7.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 973), (rho 974), (rho 975), (rho 976), (rho 977), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part13_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart13 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) k := by
  unfold Seg7.relationPart13 Seg7.relationRow65 Seg7.relationRow66 Seg7.relationRow67 Seg7.relationRow68 Seg7.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 978), (rho 979), (rho 980), (rho 981), (rho 982), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part14_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart14 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) k := by
  unfold Seg7.relationPart14 Seg7.relationRow70 Seg7.relationRow71 Seg7.relationRow72 Seg7.relationRow73 Seg7.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 983), (rho 984), (rho 985), (rho 986), (rho 987), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part15_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart15 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) k := by
  unfold Seg7.relationPart15 Seg7.relationRow75 Seg7.relationRow76 Seg7.relationRow77 Seg7.relationRow78 Seg7.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 988), (rho 989), (rho 990), (rho 991), (rho 992), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part16_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart16 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) (rho 997)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) k := by
  unfold Seg7.relationPart16 Seg7.relationRow80 Seg7.relationRow81 Seg7.relationRow82 Seg7.relationRow83 Seg7.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 993), (rho 994), (rho 995), (rho 996), (rho 997), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part17_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart17 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) (rho 997) k := by
  unfold Seg7.relationPart17 Seg7.relationRow85 Seg7.relationRow86 Seg7.relationRow87 Seg7.relationRow88 Seg7.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 998), (rho 999), (rho 1000), (rho 1001), (rho 1002), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part18_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart18 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) k := by
  unfold Seg7.relationPart18 Seg7.relationRow90 Seg7.relationRow91 Seg7.relationRow92 Seg7.relationRow93 Seg7.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 1003), (rho 1004), (rho 1005), (rho 1006), (rho 1007), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part19_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart19 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 947) (rho 952) (rho 957) (rho 962) (rho 967) (rho 972) (rho 977) (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) k := by
  unfold Seg7.relationPart19 Seg7.relationRow95 Seg7.relationRow96 Seg7.relationRow97 Seg7.relationRow98 Seg7.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 1008), (rho 1009), (rho 1010), (rho 1011), (rho 1012), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part20_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart20 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) k := by
  unfold Seg7.relationPart20 Seg7.relationRow100 Seg7.relationRow101 Seg7.relationRow102 Seg7.relationRow103 Seg7.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 1013), (rho 1014), (rho 1015), (rho 1016), (rho 1017), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part21_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart21 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) k := by
  unfold Seg7.relationPart21 Seg7.relationRow105 Seg7.relationRow106 Seg7.relationRow107 Seg7.relationRow108 Seg7.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 1018), (rho 1019), (rho 1020), (rho 1021), (rho 1022), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part22_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart22 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) k := by
  unfold Seg7.relationPart22 Seg7.relationRow110 Seg7.relationRow111 Seg7.relationRow112 Seg7.relationRow113 Seg7.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 1023), (rho 1024), (rho 1025), (rho 1026), (rho 1027), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part23_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart23 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) (rho 1032)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) k := by
  unfold Seg7.relationPart23 Seg7.relationRow115 Seg7.relationRow116 Seg7.relationRow117 Seg7.relationRow118 Seg7.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 1028), (rho 1029), (rho 1030), (rho 1031), (rho 1032), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part24_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart24 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) (rho 1032) k := by
  unfold Seg7.relationPart24 Seg7.relationRow120 Seg7.relationRow121 Seg7.relationRow122 Seg7.relationRow123 Seg7.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 1033), (rho 1034), (rho 1035), (rho 1036), (rho 1037), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part25_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart25 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) k := by
  unfold Seg7.relationPart25 Seg7.relationRow125 Seg7.relationRow126 Seg7.relationRow127 Seg7.relationRow128 Seg7.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 1038), (rho 1039), (rho 1040), (rho 1041), (rho 1042), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part26_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart26 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 982) (rho 987) (rho 992) (rho 997) (rho 1002) (rho 1007) (rho 1012) (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) k := by
  unfold Seg7.relationPart26 Seg7.relationRow130 Seg7.relationRow131 Seg7.relationRow132 Seg7.relationRow133 Seg7.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 1043), (rho 1044), (rho 1045), (rho 1046), (rho 1047), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part27_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart27 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) k := by
  unfold Seg7.relationPart27 Seg7.relationRow135 Seg7.relationRow136 Seg7.relationRow137 Seg7.relationRow138 Seg7.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 1048), (rho 1049), (rho 1050), (rho 1051), (rho 1052), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part28_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart28 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) k := by
  unfold Seg7.relationPart28 Seg7.relationRow140 Seg7.relationRow141 Seg7.relationRow142 Seg7.relationRow143 Seg7.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 1053), (rho 1054), (rho 1055), (rho 1056), (rho 1057), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part29_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart29 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) k := by
  unfold Seg7.relationPart29 Seg7.relationRow145 Seg7.relationRow146 Seg7.relationRow147 Seg7.relationRow148 Seg7.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 1058), (rho 1059), (rho 1060), (rho 1061), (rho 1062), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part30_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart30 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) k := by
  unfold Seg7.relationPart30 Seg7.relationRow150 Seg7.relationRow151 Seg7.relationRow152 Seg7.relationRow153 Seg7.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 1063), (rho 1064), (rho 1065), (rho 1066), (rho 1067), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part31_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart31 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) k := by
  unfold Seg7.relationPart31 Seg7.relationRow155 Seg7.relationRow156 Seg7.relationRow157 Seg7.relationRow158 Seg7.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 1068), (rho 1069), (rho 1070), (rho 1071), (rho 1072), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part32_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart32 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) k := by
  unfold Seg7.relationPart32 Seg7.relationRow160 Seg7.relationRow161 Seg7.relationRow162 Seg7.relationRow163 Seg7.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 1073), (rho 1074), (rho 1075), (rho 1076), (rho 1077), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part33_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart33 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) k := by
  unfold Seg7.relationPart33 Seg7.relationRow165 Seg7.relationRow166 Seg7.relationRow167 Seg7.relationRow168 Seg7.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 1078), (rho 1079), (rho 1080), (rho 1081), (rho 1082), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part34_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart34 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) k := by
  unfold Seg7.relationPart34 Seg7.relationRow170 Seg7.relationRow171 Seg7.relationRow172 Seg7.relationRow173 Seg7.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 1083), (rho 1084), (rho 1085), (rho 1086), (rho 1087), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part35_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart35 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) k := by
  unfold Seg7.relationPart35 Seg7.relationRow175 Seg7.relationRow176 Seg7.relationRow177 Seg7.relationRow178 Seg7.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 1088), (rho 1089), (rho 1090), (rho 1091), (rho 1092), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part36_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart36 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) k := by
  unfold Seg7.relationPart36 Seg7.relationRow180 Seg7.relationRow181 Seg7.relationRow182 Seg7.relationRow183 Seg7.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 1093), (rho 1094), (rho 1095), (rho 1096), (rho 1097), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part37_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart37 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) k := by
  unfold Seg7.relationPart37 Seg7.relationRow185 Seg7.relationRow186 Seg7.relationRow187 Seg7.relationRow188 Seg7.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 1098), (rho 1099), (rho 1100), (rho 1101), (rho 1102), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part38_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart38 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) k := by
  unfold Seg7.relationPart38 Seg7.relationRow190 Seg7.relationRow191 Seg7.relationRow192 Seg7.relationRow193 Seg7.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 1103), (rho 1104), (rho 1105), (rho 1106), (rho 1107), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part39_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart39 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) k := by
  unfold Seg7.relationPart39 Seg7.relationRow195 Seg7.relationRow196 Seg7.relationRow197 Seg7.relationRow198 Seg7.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 1108), (rho 1109), (rho 1110), (rho 1111), (rho 1112), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part40_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart40 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) k := by
  unfold Seg7.relationPart40 Seg7.relationRow200 Seg7.relationRow201 Seg7.relationRow202 Seg7.relationRow203 Seg7.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 1113), (rho 1114), (rho 1115), (rho 1116), (rho 1117), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part41_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart41 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) k := by
  unfold Seg7.relationPart41 Seg7.relationRow205 Seg7.relationRow206 Seg7.relationRow207 Seg7.relationRow208 Seg7.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 1118), (rho 1119), (rho 1120), (rho 1121), (rho 1122), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part42_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart42 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) k := by
  unfold Seg7.relationPart42 Seg7.relationRow210 Seg7.relationRow211 Seg7.relationRow212 Seg7.relationRow213 Seg7.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 1123), (rho 1124), (rho 1125), (rho 1126), (rho 1127), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part43_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart43 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) k := by
  unfold Seg7.relationPart43 Seg7.relationRow215 Seg7.relationRow216 Seg7.relationRow217 Seg7.relationRow218 Seg7.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 1128), (rho 1129), (rho 1130), (rho 1131), (rho 1132), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part44_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart44 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) k := by
  unfold Seg7.relationPart44 Seg7.relationRow220 Seg7.relationRow221 Seg7.relationRow222 Seg7.relationRow223 Seg7.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 1133), (rho 1134), (rho 1135), (rho 1136), (rho 1137), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part45_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart45 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) k := by
  unfold Seg7.relationPart45 Seg7.relationRow225 Seg7.relationRow226 Seg7.relationRow227 Seg7.relationRow228 Seg7.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 1138), (rho 1139), (rho 1140), (rho 1141), (rho 1142), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part46_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart46 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) k := by
  unfold Seg7.relationPart46 Seg7.relationRow230 Seg7.relationRow231 Seg7.relationRow232 Seg7.relationRow233 Seg7.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 1143), (rho 1144), (rho 1145), (rho 1146), (rho 1147), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part47_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart47 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) k := by
  unfold Seg7.relationPart47 Seg7.relationRow235 Seg7.relationRow236 Seg7.relationRow237 Seg7.relationRow238 Seg7.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 1148), (rho 1149), (rho 1150), (rho 1151), (rho 1152), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part48_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart48 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) k := by
  unfold Seg7.relationPart48 Seg7.relationRow240 Seg7.relationRow241 Seg7.relationRow242 Seg7.relationRow243 Seg7.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 1153), (rho 1154), (rho 1155), (rho 1156), (rho 1157), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part49_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart49 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) k := by
  unfold Seg7.relationPart49 Seg7.relationRow245 Seg7.relationRow246 Seg7.relationRow247 Seg7.relationRow248 Seg7.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 1158), (rho 1159), (rho 1160), (rho 1161), (rho 1162), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part50_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart50 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) k := by
  unfold Seg7.relationPart50 Seg7.relationRow250 Seg7.relationRow251 Seg7.relationRow252 Seg7.relationRow253 Seg7.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 1163), (rho 1164), (rho 1165), (rho 1166), (rho 1167), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part51_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart51 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) k := by
  unfold Seg7.relationPart51 Seg7.relationRow255 Seg7.relationRow256 Seg7.relationRow257 Seg7.relationRow258 Seg7.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 1168), (rho 1169), (rho 1170), (rho 1171), (rho 1172), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part52_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart52 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) k := by
  unfold Seg7.relationPart52 Seg7.relationRow260 Seg7.relationRow261 Seg7.relationRow262 Seg7.relationRow263 Seg7.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 1173), (rho 1174), (rho 1175), (rho 1176), (rho 1177), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part53_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart53 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) k := by
  unfold Seg7.relationPart53 Seg7.relationRow265 Seg7.relationRow266 Seg7.relationRow267 Seg7.relationRow268 Seg7.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 1178), (rho 1179), (rho 1180), (rho 1181), (rho 1182), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part54_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart54 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) k := by
  unfold Seg7.relationPart54 Seg7.relationRow270 Seg7.relationRow271 Seg7.relationRow272 Seg7.relationRow273 Seg7.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 1183), (rho 1184), (rho 1185), (rho 1186), (rho 1187), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part55_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart55 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) k := by
  unfold Seg7.relationPart55 Seg7.relationRow275 Seg7.relationRow276 Seg7.relationRow277 Seg7.relationRow278 Seg7.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 1188), (rho 1189), (rho 1190), (rho 1191), (rho 1192), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part56_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart56 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) k := by
  unfold Seg7.relationPart56 Seg7.relationRow280 Seg7.relationRow281 Seg7.relationRow282 Seg7.relationRow283 Seg7.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 1193), (rho 1194), (rho 1195), (rho 1196), (rho 1197), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part57_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart57 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) k := by
  unfold Seg7.relationPart57 Seg7.relationRow285 Seg7.relationRow286 Seg7.relationRow287 Seg7.relationRow288 Seg7.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 1198), (rho 1199), (rho 1200), (rho 1201), (rho 1202), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part58_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart58 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) k := by
  unfold Seg7.relationPart58 Seg7.relationRow290 Seg7.relationRow291 Seg7.relationRow292 Seg7.relationRow293 Seg7.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 1203), (rho 1204), (rho 1205), (rho 1206), (rho 1207), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part59_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart59 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) k := by
  unfold Seg7.relationPart59 Seg7.relationRow295 Seg7.relationRow296 Seg7.relationRow297 Seg7.relationRow298 Seg7.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 1208), (rho 1209), (rho 1210), (rho 1211), (rho 1212), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part60_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart60 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) k := by
  unfold Seg7.relationPart60 Seg7.relationRow300 Seg7.relationRow301 Seg7.relationRow302 Seg7.relationRow303 Seg7.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 1213), (rho 1214), (rho 1215), (rho 1216), (rho 1217), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part61_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart61 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) (rho 1222)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) k := by
  unfold Seg7.relationPart61 Seg7.relationRow305 Seg7.relationRow306 Seg7.relationRow307 Seg7.relationRow308 Seg7.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 1218), (rho 1219), (rho 1220), (rho 1221), (rho 1222), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part62_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart62 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) (rho 1222) k := by
  unfold Seg7.relationPart62 Seg7.relationRow310 Seg7.relationRow311 Seg7.relationRow312 Seg7.relationRow313 Seg7.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 1223), (rho 1224), (rho 1225), (rho 1226), (rho 1227), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part63_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart63 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) k := by
  unfold Seg7.relationPart63 Seg7.relationRow315 Seg7.relationRow316 Seg7.relationRow317 Seg7.relationRow318 Seg7.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 1228), (rho 1229), (rho 1230), (rho 1231), (rho 1232), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part64_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart64 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 1017) (rho 1022) (rho 1027) (rho 1032) (rho 1037) (rho 1042) (rho 1047) (rho 1052) (rho 1057) (rho 1062) (rho 1067) (rho 1072) (rho 1077) (rho 1082) (rho 1087) (rho 1092) (rho 1097) (rho 1102) (rho 1107) (rho 1112) (rho 1117) (rho 1122) (rho 1127) (rho 1132) (rho 1137) (rho 1142) (rho 1147) (rho 1152) (rho 1157) (rho 1162) (rho 1167) (rho 1172) (rho 1177) (rho 1182) (rho 1187) (rho 1192) (rho 1197) (rho 1202) (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) k := by
  unfold Seg7.relationPart64 Seg7.relationRow320 Seg7.relationRow321 Seg7.relationRow322 Seg7.relationRow323 Seg7.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 1233), (rho 1234), (rho 1235), (rho 1236), (rho 1237), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part65_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart65 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) k := by
  unfold Seg7.relationPart65 Seg7.relationRow325 Seg7.relationRow326 Seg7.relationRow327 Seg7.relationRow328 Seg7.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 1238), (rho 1239), (rho 1240), (rho 1241), (rho 1242), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part66_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart66 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) k := by
  unfold Seg7.relationPart66 Seg7.relationRow330 Seg7.relationRow331 Seg7.relationRow332 Seg7.relationRow333 Seg7.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 1243), (rho 1244), (rho 1245), (rho 1246), (rho 1247), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part67_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart67 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) k := by
  unfold Seg7.relationPart67 Seg7.relationRow335 Seg7.relationRow336 Seg7.relationRow337 Seg7.relationRow338 Seg7.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 1248), (rho 1249), (rho 1250), (rho 1251), (rho 1252), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part68_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart68 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) (rho 1257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) k := by
  unfold Seg7.relationPart68 Seg7.relationRow340 Seg7.relationRow341 Seg7.relationRow342 Seg7.relationRow343 Seg7.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 1253), (rho 1254), (rho 1255), (rho 1256), (rho 1257), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part69_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart69 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) (rho 1257) k := by
  unfold Seg7.relationPart69 Seg7.relationRow345 Seg7.relationRow346 Seg7.relationRow347 Seg7.relationRow348 Seg7.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 1258), (rho 1259), (rho 1260), (rho 1261), (rho 1262), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part70_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart70 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) k := by
  unfold Seg7.relationPart70 Seg7.relationRow350 Seg7.relationRow351 Seg7.relationRow352 Seg7.relationRow353 Seg7.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 1263), (rho 1264), (rho 1265), (rho 1266), (rho 1267), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part71_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart71 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 1207) (rho 1212) (rho 1217) (rho 1222) (rho 1227) (rho 1232) (rho 1237) (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) k := by
  unfold Seg7.relationPart71 Seg7.relationRow355 Seg7.relationRow356 Seg7.relationRow357 Seg7.relationRow358 Seg7.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 1268), (rho 1269), (rho 1270), (rho 1271), (rho 1272), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part72_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart72 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) k := by
  unfold Seg7.relationPart72 Seg7.relationRow360 Seg7.relationRow361 Seg7.relationRow362 Seg7.relationRow363 Seg7.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 1273), (rho 1274), (rho 1275), (rho 1276), (rho 1277), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part73_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart73 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) k := by
  unfold Seg7.relationPart73 Seg7.relationRow365 Seg7.relationRow366 Seg7.relationRow367 Seg7.relationRow368 Seg7.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 1278), (rho 1279), (rho 1280), (rho 1281), (rho 1282), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part74_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart74 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) k := by
  unfold Seg7.relationPart74 Seg7.relationRow370 Seg7.relationRow371 Seg7.relationRow372 Seg7.relationRow373 Seg7.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 1283), (rho 1284), (rho 1285), (rho 1286), (rho 1287), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part75_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart75 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) (rho 1292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) k := by
  unfold Seg7.relationPart75 Seg7.relationRow375 Seg7.relationRow376 Seg7.relationRow377 Seg7.relationRow378 Seg7.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 1288), (rho 1289), (rho 1290), (rho 1291), (rho 1292), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part76_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart76 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) (rho 1292) k := by
  unfold Seg7.relationPart76 Seg7.relationRow380 Seg7.relationRow381 Seg7.relationRow382 Seg7.relationRow383 Seg7.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 1293), (rho 1294), (rho 1295), (rho 1296), (rho 1297), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part77_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart77 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) k := by
  unfold Seg7.relationPart77 Seg7.relationRow385 Seg7.relationRow386 Seg7.relationRow387 Seg7.relationRow388 Seg7.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 1298), (rho 1299), (rho 1300), (rho 1301), (rho 1302), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part78_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart78 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 1242) (rho 1247) (rho 1252) (rho 1257) (rho 1262) (rho 1267) (rho 1272) (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) k := by
  unfold Seg7.relationPart78 Seg7.relationRow390 Seg7.relationRow391 Seg7.relationRow392 Seg7.relationRow393 Seg7.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 1303), (rho 1304), (rho 1305), (rho 1306), (rho 1307), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part79_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart79 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) k := by
  unfold Seg7.relationPart79 Seg7.relationRow395 Seg7.relationRow396 Seg7.relationRow397 Seg7.relationRow398 Seg7.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 1308), (rho 1309), (rho 1310), (rho 1311), (rho 1312), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part80_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart80 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) k := by
  unfold Seg7.relationPart80 Seg7.relationRow400 Seg7.relationRow401 Seg7.relationRow402 Seg7.relationRow403 Seg7.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 1313), (rho 1314), (rho 1315), (rho 1316), (rho 1317), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part81_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart81 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) k := by
  unfold Seg7.relationPart81 Seg7.relationRow405 Seg7.relationRow406 Seg7.relationRow407 Seg7.relationRow408 Seg7.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 1318), (rho 1319), (rho 1320), (rho 1321), (rho 1322), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part82_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart82 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) (rho 1327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) k := by
  unfold Seg7.relationPart82 Seg7.relationRow410 Seg7.relationRow411 Seg7.relationRow412 Seg7.relationRow413 Seg7.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 1323), (rho 1324), (rho 1325), (rho 1326), (rho 1327), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part83_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart83 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) (rho 1327) (rho 1332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) (rho 1327) k := by
  unfold Seg7.relationPart83 Seg7.relationRow415 Seg7.relationRow416 Seg7.relationRow417 Seg7.relationRow418 Seg7.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 1328), (rho 1329), (rho 1330), (rho 1331), (rho 1332), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part84_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart84 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) (rho 1327) (rho 1332) (rho 1337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) (rho 1327) (rho 1332) k := by
  unfold Seg7.relationPart84 Seg7.relationRow420 Seg7.relationRow421 Seg7.relationRow422 Seg7.relationRow423 Seg7.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 1333), (rho 1334), (rho 1335), (rho 1336), (rho 1337), h0, h1, h2, h3, h4, hk⟩

theorem seg7_part85_to_extracted (rho : Nat → Seg7.F)
    (h : Seg7.relationPart85 rho)
    {k : Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Seg7.F → Prop} (hk : k (rho 1312) (rho 1317) (rho 1322) (rho 1327) (rho 1332) (rho 1337) (rho 1342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 1277) (rho 1282) (rho 1287) (rho 1292) (rho 1297) (rho 1302) (rho 1307) (rho 1312) (rho 1317) (rho 1322) (rho 1327) (rho 1332) (rho 1337) k := by
  unfold Seg7.relationPart85 Seg7.relationRow425 Seg7.relationRow426 Seg7.relationRow427 Seg7.relationRow428 Seg7.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 1338), (rho 1339), (rho 1340), (rho 1341), (rho 1342), h0, h1, h2, h3, h4, hk⟩

def seg7NotePrefix (rho : Nat → Seg7.F) : Prop :=
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
  w1312 = (rho 1312) ∧ w1317 = (rho 1317) ∧ w1322 = (rho 1322) ∧ w1327 = (rho 1327) ∧ w1332 = (rho 1332) ∧ w1337 = (rho 1337) ∧ w1342 = (rho 1342)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg7_relation_to_note_prefix (rho : Nat → Seg7.F)
    (h : Seg7.relation rho) : seg7NotePrefix rho := by
  unfold Seg7.relation at h
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

theorem seg7_sound (rho : Nat → Seg7.F) (h : Seg7.relation rho) : Seg7.spec rho := by
  have hPrefix := seg7_relation_to_note_prefix rho h
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
  simpa [Seg7.spec, Specs.deployedSpec7, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

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

theorem seg43_part0_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart0 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) (rho 38317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) k := by
  unfold Seg43.relationPart0 Seg43.relationRow0 Seg43.relationRow1 Seg43.relationRow2 Seg43.relationRow3 Seg43.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0
  exact ⟨(rho 38313), (rho 38314), (rho 38315), (rho 38316), (rho 38317), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part1_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart1 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) (rho 38317) (rho 38322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1 (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) (rho 38317) k := by
  unfold Seg43.relationPart1 Seg43.relationRow5 Seg43.relationRow6 Seg43.relationRow7 Seg43.relationRow8 Seg43.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg1
  exact ⟨(rho 38318), (rho 38319), (rho 38320), (rho 38321), (rho 38322), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part2_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart2 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 197) (rho 200) (rho 37972) (rho 38312) (rho 38317) (rho 38322) (rho 38327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2 (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) (rho 38317) (rho 38322) k := by
  unfold Seg43.relationPart2 Seg43.relationRow10 Seg43.relationRow11 Seg43.relationRow12 Seg43.relationRow13 Seg43.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg2
  exact ⟨(rho 38323), (rho 38324), (rho 38325), (rho 38326), (rho 38327), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part3_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart3 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 197) (rho 200) (rho 38317) (rho 38322) (rho 38327) (rho 38332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3 (rho 197) (rho 200) (rho 37972) (rho 38312) (rho 38317) (rho 38322) (rho 38327) k := by
  unfold Seg43.relationPart3 Seg43.relationRow15 Seg43.relationRow16 Seg43.relationRow17 Seg43.relationRow18 Seg43.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg3
  exact ⟨(rho 38328), (rho 38329), (rho 38330), (rho 38331), (rho 38332), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part4_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart4 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 200) (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 197) (rho 200) (rho 38317) (rho 38322) (rho 38327) (rho 38332) k := by
  unfold Seg43.relationPart4 Seg43.relationRow20 Seg43.relationRow21 Seg43.relationRow22 Seg43.relationRow23 Seg43.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  exact ⟨(rho 38333), (rho 38334), (rho 38335), (rho 38336), (rho 38337), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part5_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart5 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5 (rho 200) (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) k := by
  unfold Seg43.relationPart5 Seg43.relationRow25 Seg43.relationRow26 Seg43.relationRow27 Seg43.relationRow28 Seg43.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg5
  exact ⟨(rho 38338), (rho 38339), (rho 38340), (rho 38341), (rho 38342), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part6_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart6 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) k := by
  unfold Seg43.relationPart6 Seg43.relationRow30 Seg43.relationRow31 Seg43.relationRow32 Seg43.relationRow33 Seg43.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg6
  exact ⟨(rho 38343), (rho 38344), (rho 38345), (rho 38346), (rho 38347), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part7_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart7 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) k := by
  unfold Seg43.relationPart7 Seg43.relationRow35 Seg43.relationRow36 Seg43.relationRow37 Seg43.relationRow38 Seg43.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg7
  exact ⟨(rho 38348), (rho 38349), (rho 38350), (rho 38351), (rho 38352), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part8_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart8 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) k := by
  unfold Seg43.relationPart8 Seg43.relationRow40 Seg43.relationRow41 Seg43.relationRow42 Seg43.relationRow43 Seg43.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  exact ⟨(rho 38353), (rho 38354), (rho 38355), (rho 38356), (rho 38357), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part9_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart9 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) (rho 38362)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) k := by
  unfold Seg43.relationPart9 Seg43.relationRow45 Seg43.relationRow46 Seg43.relationRow47 Seg43.relationRow48 Seg43.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg9
  exact ⟨(rho 38358), (rho 38359), (rho 38360), (rho 38361), (rho 38362), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part10_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart10 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) (rho 38362) k := by
  unfold Seg43.relationPart10 Seg43.relationRow50 Seg43.relationRow51 Seg43.relationRow52 Seg43.relationRow53 Seg43.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg10
  exact ⟨(rho 38363), (rho 38364), (rho 38365), (rho 38366), (rho 38367), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part11_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart11 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) k := by
  unfold Seg43.relationPart11 Seg43.relationRow55 Seg43.relationRow56 Seg43.relationRow57 Seg43.relationRow58 Seg43.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg11
  exact ⟨(rho 38368), (rho 38369), (rho 38370), (rho 38371), (rho 38372), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part12_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart12 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12 (rho 38317) (rho 38322) (rho 38327) (rho 38332) (rho 38337) (rho 38342) (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) k := by
  unfold Seg43.relationPart12 Seg43.relationRow60 Seg43.relationRow61 Seg43.relationRow62 Seg43.relationRow63 Seg43.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg12
  exact ⟨(rho 38373), (rho 38374), (rho 38375), (rho 38376), (rho 38377), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part13_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart13 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) k := by
  unfold Seg43.relationPart13 Seg43.relationRow65 Seg43.relationRow66 Seg43.relationRow67 Seg43.relationRow68 Seg43.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg13
  exact ⟨(rho 38378), (rho 38379), (rho 38380), (rho 38381), (rho 38382), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part14_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart14 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) k := by
  unfold Seg43.relationPart14 Seg43.relationRow70 Seg43.relationRow71 Seg43.relationRow72 Seg43.relationRow73 Seg43.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg14
  exact ⟨(rho 38383), (rho 38384), (rho 38385), (rho 38386), (rho 38387), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part15_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart15 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) k := by
  unfold Seg43.relationPart15 Seg43.relationRow75 Seg43.relationRow76 Seg43.relationRow77 Seg43.relationRow78 Seg43.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg15
  exact ⟨(rho 38388), (rho 38389), (rho 38390), (rho 38391), (rho 38392), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part16_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart16 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) (rho 38397)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) k := by
  unfold Seg43.relationPart16 Seg43.relationRow80 Seg43.relationRow81 Seg43.relationRow82 Seg43.relationRow83 Seg43.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg16
  exact ⟨(rho 38393), (rho 38394), (rho 38395), (rho 38396), (rho 38397), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part17_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart17 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) (rho 38397) k := by
  unfold Seg43.relationPart17 Seg43.relationRow85 Seg43.relationRow86 Seg43.relationRow87 Seg43.relationRow88 Seg43.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  exact ⟨(rho 38398), (rho 38399), (rho 38400), (rho 38401), (rho 38402), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part18_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart18 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) k := by
  unfold Seg43.relationPart18 Seg43.relationRow90 Seg43.relationRow91 Seg43.relationRow92 Seg43.relationRow93 Seg43.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg18
  exact ⟨(rho 38403), (rho 38404), (rho 38405), (rho 38406), (rho 38407), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part19_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart19 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19 (rho 38347) (rho 38352) (rho 38357) (rho 38362) (rho 38367) (rho 38372) (rho 38377) (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) k := by
  unfold Seg43.relationPart19 Seg43.relationRow95 Seg43.relationRow96 Seg43.relationRow97 Seg43.relationRow98 Seg43.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg19
  exact ⟨(rho 38408), (rho 38409), (rho 38410), (rho 38411), (rho 38412), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part20_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart20 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) k := by
  unfold Seg43.relationPart20 Seg43.relationRow100 Seg43.relationRow101 Seg43.relationRow102 Seg43.relationRow103 Seg43.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg20
  exact ⟨(rho 38413), (rho 38414), (rho 38415), (rho 38416), (rho 38417), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part21_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart21 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) k := by
  unfold Seg43.relationPart21 Seg43.relationRow105 Seg43.relationRow106 Seg43.relationRow107 Seg43.relationRow108 Seg43.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg21
  exact ⟨(rho 38418), (rho 38419), (rho 38420), (rho 38421), (rho 38422), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part22_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart22 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) k := by
  unfold Seg43.relationPart22 Seg43.relationRow110 Seg43.relationRow111 Seg43.relationRow112 Seg43.relationRow113 Seg43.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg22
  exact ⟨(rho 38423), (rho 38424), (rho 38425), (rho 38426), (rho 38427), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part23_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart23 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) (rho 38432)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) k := by
  unfold Seg43.relationPart23 Seg43.relationRow115 Seg43.relationRow116 Seg43.relationRow117 Seg43.relationRow118 Seg43.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg23
  exact ⟨(rho 38428), (rho 38429), (rho 38430), (rho 38431), (rho 38432), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part24_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart24 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) (rho 38432) k := by
  unfold Seg43.relationPart24 Seg43.relationRow120 Seg43.relationRow121 Seg43.relationRow122 Seg43.relationRow123 Seg43.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg24
  exact ⟨(rho 38433), (rho 38434), (rho 38435), (rho 38436), (rho 38437), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part25_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart25 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) k := by
  unfold Seg43.relationPart25 Seg43.relationRow125 Seg43.relationRow126 Seg43.relationRow127 Seg43.relationRow128 Seg43.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  exact ⟨(rho 38438), (rho 38439), (rho 38440), (rho 38441), (rho 38442), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part26_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart26 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26 (rho 38382) (rho 38387) (rho 38392) (rho 38397) (rho 38402) (rho 38407) (rho 38412) (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) k := by
  unfold Seg43.relationPart26 Seg43.relationRow130 Seg43.relationRow131 Seg43.relationRow132 Seg43.relationRow133 Seg43.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg26
  exact ⟨(rho 38443), (rho 38444), (rho 38445), (rho 38446), (rho 38447), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part27_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart27 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) k := by
  unfold Seg43.relationPart27 Seg43.relationRow135 Seg43.relationRow136 Seg43.relationRow137 Seg43.relationRow138 Seg43.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg27
  exact ⟨(rho 38448), (rho 38449), (rho 38450), (rho 38451), (rho 38452), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part28_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart28 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) k := by
  unfold Seg43.relationPart28 Seg43.relationRow140 Seg43.relationRow141 Seg43.relationRow142 Seg43.relationRow143 Seg43.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg28
  exact ⟨(rho 38453), (rho 38454), (rho 38455), (rho 38456), (rho 38457), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part29_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart29 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) k := by
  unfold Seg43.relationPart29 Seg43.relationRow145 Seg43.relationRow146 Seg43.relationRow147 Seg43.relationRow148 Seg43.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg29
  exact ⟨(rho 38458), (rho 38459), (rho 38460), (rho 38461), (rho 38462), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part30_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart30 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) k := by
  unfold Seg43.relationPart30 Seg43.relationRow150 Seg43.relationRow151 Seg43.relationRow152 Seg43.relationRow153 Seg43.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg30
  exact ⟨(rho 38463), (rho 38464), (rho 38465), (rho 38466), (rho 38467), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part31_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart31 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) k := by
  unfold Seg43.relationPart31 Seg43.relationRow155 Seg43.relationRow156 Seg43.relationRow157 Seg43.relationRow158 Seg43.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  exact ⟨(rho 38468), (rho 38469), (rho 38470), (rho 38471), (rho 38472), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part32_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart32 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) k := by
  unfold Seg43.relationPart32 Seg43.relationRow160 Seg43.relationRow161 Seg43.relationRow162 Seg43.relationRow163 Seg43.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg32
  exact ⟨(rho 38473), (rho 38474), (rho 38475), (rho 38476), (rho 38477), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part33_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart33 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) k := by
  unfold Seg43.relationPart33 Seg43.relationRow165 Seg43.relationRow166 Seg43.relationRow167 Seg43.relationRow168 Seg43.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg33
  exact ⟨(rho 38478), (rho 38479), (rho 38480), (rho 38481), (rho 38482), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part34_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart34 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) k := by
  unfold Seg43.relationPart34 Seg43.relationRow170 Seg43.relationRow171 Seg43.relationRow172 Seg43.relationRow173 Seg43.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg34
  exact ⟨(rho 38483), (rho 38484), (rho 38485), (rho 38486), (rho 38487), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part35_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart35 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) k := by
  unfold Seg43.relationPart35 Seg43.relationRow175 Seg43.relationRow176 Seg43.relationRow177 Seg43.relationRow178 Seg43.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg35
  exact ⟨(rho 38488), (rho 38489), (rho 38490), (rho 38491), (rho 38492), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part36_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart36 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) k := by
  unfold Seg43.relationPart36 Seg43.relationRow180 Seg43.relationRow181 Seg43.relationRow182 Seg43.relationRow183 Seg43.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg36
  exact ⟨(rho 38493), (rho 38494), (rho 38495), (rho 38496), (rho 38497), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part37_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart37 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) k := by
  unfold Seg43.relationPart37 Seg43.relationRow185 Seg43.relationRow186 Seg43.relationRow187 Seg43.relationRow188 Seg43.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg37
  exact ⟨(rho 38498), (rho 38499), (rho 38500), (rho 38501), (rho 38502), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part38_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart38 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) k := by
  unfold Seg43.relationPart38 Seg43.relationRow190 Seg43.relationRow191 Seg43.relationRow192 Seg43.relationRow193 Seg43.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg38
  exact ⟨(rho 38503), (rho 38504), (rho 38505), (rho 38506), (rho 38507), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part39_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart39 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) k := by
  unfold Seg43.relationPart39 Seg43.relationRow195 Seg43.relationRow196 Seg43.relationRow197 Seg43.relationRow198 Seg43.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg39
  exact ⟨(rho 38508), (rho 38509), (rho 38510), (rho 38511), (rho 38512), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part40_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart40 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) k := by
  unfold Seg43.relationPart40 Seg43.relationRow200 Seg43.relationRow201 Seg43.relationRow202 Seg43.relationRow203 Seg43.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  exact ⟨(rho 38513), (rho 38514), (rho 38515), (rho 38516), (rho 38517), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part41_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart41 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) k := by
  unfold Seg43.relationPart41 Seg43.relationRow205 Seg43.relationRow206 Seg43.relationRow207 Seg43.relationRow208 Seg43.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg41
  exact ⟨(rho 38518), (rho 38519), (rho 38520), (rho 38521), (rho 38522), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part42_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart42 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) k := by
  unfold Seg43.relationPart42 Seg43.relationRow210 Seg43.relationRow211 Seg43.relationRow212 Seg43.relationRow213 Seg43.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg42
  exact ⟨(rho 38523), (rho 38524), (rho 38525), (rho 38526), (rho 38527), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part43_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart43 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) k := by
  unfold Seg43.relationPart43 Seg43.relationRow215 Seg43.relationRow216 Seg43.relationRow217 Seg43.relationRow218 Seg43.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg43
  exact ⟨(rho 38528), (rho 38529), (rho 38530), (rho 38531), (rho 38532), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part44_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart44 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) k := by
  unfold Seg43.relationPart44 Seg43.relationRow220 Seg43.relationRow221 Seg43.relationRow222 Seg43.relationRow223 Seg43.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg44
  exact ⟨(rho 38533), (rho 38534), (rho 38535), (rho 38536), (rho 38537), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part45_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart45 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) k := by
  unfold Seg43.relationPart45 Seg43.relationRow225 Seg43.relationRow226 Seg43.relationRow227 Seg43.relationRow228 Seg43.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg45
  exact ⟨(rho 38538), (rho 38539), (rho 38540), (rho 38541), (rho 38542), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part46_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart46 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) k := by
  unfold Seg43.relationPart46 Seg43.relationRow230 Seg43.relationRow231 Seg43.relationRow232 Seg43.relationRow233 Seg43.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg46
  exact ⟨(rho 38543), (rho 38544), (rho 38545), (rho 38546), (rho 38547), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part47_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart47 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) k := by
  unfold Seg43.relationPart47 Seg43.relationRow235 Seg43.relationRow236 Seg43.relationRow237 Seg43.relationRow238 Seg43.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg47
  exact ⟨(rho 38548), (rho 38549), (rho 38550), (rho 38551), (rho 38552), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part48_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart48 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) k := by
  unfold Seg43.relationPart48 Seg43.relationRow240 Seg43.relationRow241 Seg43.relationRow242 Seg43.relationRow243 Seg43.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg48
  exact ⟨(rho 38553), (rho 38554), (rho 38555), (rho 38556), (rho 38557), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part49_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart49 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) k := by
  unfold Seg43.relationPart49 Seg43.relationRow245 Seg43.relationRow246 Seg43.relationRow247 Seg43.relationRow248 Seg43.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg49
  exact ⟨(rho 38558), (rho 38559), (rho 38560), (rho 38561), (rho 38562), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part50_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart50 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) k := by
  unfold Seg43.relationPart50 Seg43.relationRow250 Seg43.relationRow251 Seg43.relationRow252 Seg43.relationRow253 Seg43.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg50
  exact ⟨(rho 38563), (rho 38564), (rho 38565), (rho 38566), (rho 38567), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part51_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart51 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) k := by
  unfold Seg43.relationPart51 Seg43.relationRow255 Seg43.relationRow256 Seg43.relationRow257 Seg43.relationRow258 Seg43.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg51
  exact ⟨(rho 38568), (rho 38569), (rho 38570), (rho 38571), (rho 38572), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part52_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart52 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) k := by
  unfold Seg43.relationPart52 Seg43.relationRow260 Seg43.relationRow261 Seg43.relationRow262 Seg43.relationRow263 Seg43.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg52
  exact ⟨(rho 38573), (rho 38574), (rho 38575), (rho 38576), (rho 38577), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part53_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart53 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) k := by
  unfold Seg43.relationPart53 Seg43.relationRow265 Seg43.relationRow266 Seg43.relationRow267 Seg43.relationRow268 Seg43.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg53
  exact ⟨(rho 38578), (rho 38579), (rho 38580), (rho 38581), (rho 38582), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part54_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart54 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) k := by
  unfold Seg43.relationPart54 Seg43.relationRow270 Seg43.relationRow271 Seg43.relationRow272 Seg43.relationRow273 Seg43.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  exact ⟨(rho 38583), (rho 38584), (rho 38585), (rho 38586), (rho 38587), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part55_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart55 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) k := by
  unfold Seg43.relationPart55 Seg43.relationRow275 Seg43.relationRow276 Seg43.relationRow277 Seg43.relationRow278 Seg43.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg55
  exact ⟨(rho 38588), (rho 38589), (rho 38590), (rho 38591), (rho 38592), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part56_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart56 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) k := by
  unfold Seg43.relationPart56 Seg43.relationRow280 Seg43.relationRow281 Seg43.relationRow282 Seg43.relationRow283 Seg43.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg56
  exact ⟨(rho 38593), (rho 38594), (rho 38595), (rho 38596), (rho 38597), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part57_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart57 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) k := by
  unfold Seg43.relationPart57 Seg43.relationRow285 Seg43.relationRow286 Seg43.relationRow287 Seg43.relationRow288 Seg43.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg57
  exact ⟨(rho 38598), (rho 38599), (rho 38600), (rho 38601), (rho 38602), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part58_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart58 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) k := by
  unfold Seg43.relationPart58 Seg43.relationRow290 Seg43.relationRow291 Seg43.relationRow292 Seg43.relationRow293 Seg43.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg58
  exact ⟨(rho 38603), (rho 38604), (rho 38605), (rho 38606), (rho 38607), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part59_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart59 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) k := by
  unfold Seg43.relationPart59 Seg43.relationRow295 Seg43.relationRow296 Seg43.relationRow297 Seg43.relationRow298 Seg43.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg59
  exact ⟨(rho 38608), (rho 38609), (rho 38610), (rho 38611), (rho 38612), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part60_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart60 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) k := by
  unfold Seg43.relationPart60 Seg43.relationRow300 Seg43.relationRow301 Seg43.relationRow302 Seg43.relationRow303 Seg43.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg60
  exact ⟨(rho 38613), (rho 38614), (rho 38615), (rho 38616), (rho 38617), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part61_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart61 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) (rho 38622)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) k := by
  unfold Seg43.relationPart61 Seg43.relationRow305 Seg43.relationRow306 Seg43.relationRow307 Seg43.relationRow308 Seg43.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg61
  exact ⟨(rho 38618), (rho 38619), (rho 38620), (rho 38621), (rho 38622), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part62_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart62 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) (rho 38622) k := by
  unfold Seg43.relationPart62 Seg43.relationRow310 Seg43.relationRow311 Seg43.relationRow312 Seg43.relationRow313 Seg43.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg62
  exact ⟨(rho 38623), (rho 38624), (rho 38625), (rho 38626), (rho 38627), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part63_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart63 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) k := by
  unfold Seg43.relationPart63 Seg43.relationRow315 Seg43.relationRow316 Seg43.relationRow317 Seg43.relationRow318 Seg43.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg63
  exact ⟨(rho 38628), (rho 38629), (rho 38630), (rho 38631), (rho 38632), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part64_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart64 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64 (rho 38417) (rho 38422) (rho 38427) (rho 38432) (rho 38437) (rho 38442) (rho 38447) (rho 38452) (rho 38457) (rho 38462) (rho 38467) (rho 38472) (rho 38477) (rho 38482) (rho 38487) (rho 38492) (rho 38497) (rho 38502) (rho 38507) (rho 38512) (rho 38517) (rho 38522) (rho 38527) (rho 38532) (rho 38537) (rho 38542) (rho 38547) (rho 38552) (rho 38557) (rho 38562) (rho 38567) (rho 38572) (rho 38577) (rho 38582) (rho 38587) (rho 38592) (rho 38597) (rho 38602) (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) k := by
  unfold Seg43.relationPart64 Seg43.relationRow320 Seg43.relationRow321 Seg43.relationRow322 Seg43.relationRow323 Seg43.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg64
  exact ⟨(rho 38633), (rho 38634), (rho 38635), (rho 38636), (rho 38637), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part65_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart65 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) k := by
  unfold Seg43.relationPart65 Seg43.relationRow325 Seg43.relationRow326 Seg43.relationRow327 Seg43.relationRow328 Seg43.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg65
  exact ⟨(rho 38638), (rho 38639), (rho 38640), (rho 38641), (rho 38642), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part66_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart66 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) k := by
  unfold Seg43.relationPart66 Seg43.relationRow330 Seg43.relationRow331 Seg43.relationRow332 Seg43.relationRow333 Seg43.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg66
  exact ⟨(rho 38643), (rho 38644), (rho 38645), (rho 38646), (rho 38647), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part67_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart67 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) k := by
  unfold Seg43.relationPart67 Seg43.relationRow335 Seg43.relationRow336 Seg43.relationRow337 Seg43.relationRow338 Seg43.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg67
  exact ⟨(rho 38648), (rho 38649), (rho 38650), (rho 38651), (rho 38652), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part68_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart68 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) (rho 38657)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) k := by
  unfold Seg43.relationPart68 Seg43.relationRow340 Seg43.relationRow341 Seg43.relationRow342 Seg43.relationRow343 Seg43.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  exact ⟨(rho 38653), (rho 38654), (rho 38655), (rho 38656), (rho 38657), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part69_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart69 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) (rho 38657) k := by
  unfold Seg43.relationPart69 Seg43.relationRow345 Seg43.relationRow346 Seg43.relationRow347 Seg43.relationRow348 Seg43.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg69
  exact ⟨(rho 38658), (rho 38659), (rho 38660), (rho 38661), (rho 38662), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part70_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart70 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) k := by
  unfold Seg43.relationPart70 Seg43.relationRow350 Seg43.relationRow351 Seg43.relationRow352 Seg43.relationRow353 Seg43.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg70
  exact ⟨(rho 38663), (rho 38664), (rho 38665), (rho 38666), (rho 38667), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part71_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart71 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71 (rho 38607) (rho 38612) (rho 38617) (rho 38622) (rho 38627) (rho 38632) (rho 38637) (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) k := by
  unfold Seg43.relationPart71 Seg43.relationRow355 Seg43.relationRow356 Seg43.relationRow357 Seg43.relationRow358 Seg43.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg71
  exact ⟨(rho 38668), (rho 38669), (rho 38670), (rho 38671), (rho 38672), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part72_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart72 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) k := by
  unfold Seg43.relationPart72 Seg43.relationRow360 Seg43.relationRow361 Seg43.relationRow362 Seg43.relationRow363 Seg43.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg72
  exact ⟨(rho 38673), (rho 38674), (rho 38675), (rho 38676), (rho 38677), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part73_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart73 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) k := by
  unfold Seg43.relationPart73 Seg43.relationRow365 Seg43.relationRow366 Seg43.relationRow367 Seg43.relationRow368 Seg43.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg73
  exact ⟨(rho 38678), (rho 38679), (rho 38680), (rho 38681), (rho 38682), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part74_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart74 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) k := by
  unfold Seg43.relationPart74 Seg43.relationRow370 Seg43.relationRow371 Seg43.relationRow372 Seg43.relationRow373 Seg43.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg74
  exact ⟨(rho 38683), (rho 38684), (rho 38685), (rho 38686), (rho 38687), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part75_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart75 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) (rho 38692)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) k := by
  unfold Seg43.relationPart75 Seg43.relationRow375 Seg43.relationRow376 Seg43.relationRow377 Seg43.relationRow378 Seg43.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg75
  exact ⟨(rho 38688), (rho 38689), (rho 38690), (rho 38691), (rho 38692), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part76_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart76 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) (rho 38692) k := by
  unfold Seg43.relationPart76 Seg43.relationRow380 Seg43.relationRow381 Seg43.relationRow382 Seg43.relationRow383 Seg43.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg76
  exact ⟨(rho 38693), (rho 38694), (rho 38695), (rho 38696), (rho 38697), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part77_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart77 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) k := by
  unfold Seg43.relationPart77 Seg43.relationRow385 Seg43.relationRow386 Seg43.relationRow387 Seg43.relationRow388 Seg43.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg77
  exact ⟨(rho 38698), (rho 38699), (rho 38700), (rho 38701), (rho 38702), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part78_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart78 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78 (rho 38642) (rho 38647) (rho 38652) (rho 38657) (rho 38662) (rho 38667) (rho 38672) (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) k := by
  unfold Seg43.relationPart78 Seg43.relationRow390 Seg43.relationRow391 Seg43.relationRow392 Seg43.relationRow393 Seg43.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg78
  exact ⟨(rho 38703), (rho 38704), (rho 38705), (rho 38706), (rho 38707), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part79_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart79 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) k := by
  unfold Seg43.relationPart79 Seg43.relationRow395 Seg43.relationRow396 Seg43.relationRow397 Seg43.relationRow398 Seg43.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg79
  exact ⟨(rho 38708), (rho 38709), (rho 38710), (rho 38711), (rho 38712), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part80_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart80 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) k := by
  unfold Seg43.relationPart80 Seg43.relationRow400 Seg43.relationRow401 Seg43.relationRow402 Seg43.relationRow403 Seg43.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg80
  exact ⟨(rho 38713), (rho 38714), (rho 38715), (rho 38716), (rho 38717), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part81_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart81 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) k := by
  unfold Seg43.relationPart81 Seg43.relationRow405 Seg43.relationRow406 Seg43.relationRow407 Seg43.relationRow408 Seg43.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg81
  exact ⟨(rho 38718), (rho 38719), (rho 38720), (rho 38721), (rho 38722), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part82_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart82 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) (rho 38727)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) k := by
  unfold Seg43.relationPart82 Seg43.relationRow410 Seg43.relationRow411 Seg43.relationRow412 Seg43.relationRow413 Seg43.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg82
  exact ⟨(rho 38723), (rho 38724), (rho 38725), (rho 38726), (rho 38727), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part83_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart83 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) (rho 38727) k := by
  unfold Seg43.relationPart83 Seg43.relationRow415 Seg43.relationRow416 Seg43.relationRow417 Seg43.relationRow418 Seg43.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg83
  exact ⟨(rho 38728), (rho 38729), (rho 38730), (rho 38731), (rho 38732), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part84_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart84 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) k := by
  unfold Seg43.relationPart84 Seg43.relationRow420 Seg43.relationRow421 Seg43.relationRow422 Seg43.relationRow423 Seg43.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  exact ⟨(rho 38733), (rho 38734), (rho 38735), (rho 38736), (rho 38737), h0, h1, h2, h3, h4, hk⟩

theorem seg43_part85_to_extracted (rho : Nat → Seg43.F)
    (h : Seg43.relationPart85 rho)
    {k : Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Seg43.F → Prop} (hk : k (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85 (rho 38677) (rho 38682) (rho 38687) (rho 38692) (rho 38697) (rho 38702) (rho 38707) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) k := by
  unfold Seg43.relationPart85 Seg43.relationRow425 Seg43.relationRow426 Seg43.relationRow427 Seg43.relationRow428 Seg43.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg85
  exact ⟨(rho 38738), (rho 38739), (rho 38740), (rho 38741), (rho 38742), h0, h1, h2, h3, h4, hk⟩

def seg43NotePrefix (rho : Nat → Seg43.F) : Prop :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg0 (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) (fun w15 w16 w19 w22 w572 w912 w917 =>
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
  w1312 = (rho 38712) ∧ w1317 = (rho 38717) ∧ w1322 = (rho 38722) ∧ w1327 = (rho 38727) ∧ w1332 = (rho 38732) ∧ w1337 = (rho 38737) ∧ w1342 = (rho 38742)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem seg43_relation_to_note_prefix (rho : Nat → Seg43.F)
    (h : Seg43.relation rho) : seg43NotePrefix rho := by
  unfold Seg43.relation at h
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

theorem seg43_sound (rho : Nat → Seg43.F) (h : Seg43.relation rho) : Seg43.spec rho := by
  have hPrefix := seg43_relation_to_note_prefix rho h
  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) _ hPrefix
  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩
  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w917 w922 w927 w932 w937 w942 _ hSpec0 h
  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩
  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h
  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩
  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h
  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩
  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h
  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩
  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h
  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩
  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h
  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩
  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h
  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩
  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h
  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩
  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h
  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩
  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h
  rcases r10 with ⟨w1312, w1317, w1322, w1327, w1332, w1337, w1342, hSpec38, hk⟩
  rcases hk with ⟨hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342⟩
  simpa [Seg43.spec, Specs.deployedSpec43, hw1312, hw1317, hw1322, hw1327, hw1332, hw1337, hw1342] using hSpec38

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
