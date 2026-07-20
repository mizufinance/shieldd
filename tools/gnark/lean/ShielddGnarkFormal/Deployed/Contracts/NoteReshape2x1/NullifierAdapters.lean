import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg11
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg26
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg11_part0_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart0 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 23) (rho 24) (rho 6906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 8) (rho 23) (rho 24) k := by
  unfold Seg11.relationPart0 Seg11.relationRow0 Seg11.relationRow1 Seg11.relationRow2 Seg11.relationRow3 Seg11.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  exact ⟨(rho 6902), (rho 6903), (rho 6904), (rho 6905), (rho 6906), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part1_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart1 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 24) (rho 6906) (rho 6911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (rho 23) (rho 24) (rho 6906) k := by
  unfold Seg11.relationPart1 Seg11.relationRow5 Seg11.relationRow6 Seg11.relationRow7 Seg11.relationRow8 Seg11.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  exact ⟨(rho 6907), (rho 6908), (rho 6909), (rho 6910), (rho 6911), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part2_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart2 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6906) (rho 6911) (rho 6916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 24) (rho 6906) (rho 6911) k := by
  unfold Seg11.relationPart2 Seg11.relationRow10 Seg11.relationRow11 Seg11.relationRow12 Seg11.relationRow13 Seg11.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  exact ⟨(rho 6912), (rho 6913), (rho 6914), (rho 6915), (rho 6916), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part3_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart3 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6906) (rho 6911) (rho 6916) (rho 6921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 6906) (rho 6911) (rho 6916) k := by
  unfold Seg11.relationPart3 Seg11.relationRow15 Seg11.relationRow16 Seg11.relationRow17 Seg11.relationRow18 Seg11.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  exact ⟨(rho 6917), (rho 6918), (rho 6919), (rho 6920), (rho 6921), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part4_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart4 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6906) (rho 6911) (rho 6916) (rho 6921) (rho 6926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 6906) (rho 6911) (rho 6916) (rho 6921) k := by
  unfold Seg11.relationPart4 Seg11.relationRow20 Seg11.relationRow21 Seg11.relationRow22 Seg11.relationRow23 Seg11.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  exact ⟨(rho 6922), (rho 6923), (rho 6924), (rho 6925), (rho 6926), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part5_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart5 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6906) (rho 6911) (rho 6916) (rho 6921) (rho 6926) (rho 6931)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 6906) (rho 6911) (rho 6916) (rho 6921) (rho 6926) k := by
  unfold Seg11.relationPart5 Seg11.relationRow25 Seg11.relationRow26 Seg11.relationRow27 Seg11.relationRow28 Seg11.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  exact ⟨(rho 6927), (rho 6928), (rho 6929), (rho 6930), (rho 6931), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part6_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart6 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6921) (rho 6926) (rho 6931) (rho 6936)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 6906) (rho 6911) (rho 6916) (rho 6921) (rho 6926) (rho 6931) k := by
  unfold Seg11.relationPart6 Seg11.relationRow30 Seg11.relationRow31 Seg11.relationRow32 Seg11.relationRow33 Seg11.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  exact ⟨(rho 6932), (rho 6933), (rho 6934), (rho 6935), (rho 6936), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part7_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart7 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6921) (rho 6926) (rho 6931) (rho 6936) (rho 6941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 6921) (rho 6926) (rho 6931) (rho 6936) k := by
  unfold Seg11.relationPart7 Seg11.relationRow35 Seg11.relationRow36 Seg11.relationRow37 Seg11.relationRow38 Seg11.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  exact ⟨(rho 6937), (rho 6938), (rho 6939), (rho 6940), (rho 6941), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part8_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart8 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6921) (rho 6926) (rho 6931) (rho 6936) (rho 6941) (rho 6946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 6921) (rho 6926) (rho 6931) (rho 6936) (rho 6941) k := by
  unfold Seg11.relationPart8 Seg11.relationRow40 Seg11.relationRow41 Seg11.relationRow42 Seg11.relationRow43 Seg11.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  exact ⟨(rho 6942), (rho 6943), (rho 6944), (rho 6945), (rho 6946), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part9_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart9 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6921) (rho 6926) (rho 6931) (rho 6936) (rho 6941) (rho 6946) (rho 6951)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9 (rho 6921) (rho 6926) (rho 6931) (rho 6936) (rho 6941) (rho 6946) k := by
  unfold Seg11.relationPart9 Seg11.relationRow45 Seg11.relationRow46 Seg11.relationRow47 Seg11.relationRow48 Seg11.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9
  exact ⟨(rho 6947), (rho 6948), (rho 6949), (rho 6950), (rho 6951), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part10_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart10 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6941) (rho 6946) (rho 6951) (rho 6956)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 6921) (rho 6926) (rho 6931) (rho 6936) (rho 6941) (rho 6946) (rho 6951) k := by
  unfold Seg11.relationPart10 Seg11.relationRow50 Seg11.relationRow51 Seg11.relationRow52 Seg11.relationRow53 Seg11.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  exact ⟨(rho 6952), (rho 6953), (rho 6954), (rho 6955), (rho 6956), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part11_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart11 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6941) (rho 6946) (rho 6951) (rho 6956) (rho 6961)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 6941) (rho 6946) (rho 6951) (rho 6956) k := by
  unfold Seg11.relationPart11 Seg11.relationRow55 Seg11.relationRow56 Seg11.relationRow57 Seg11.relationRow58 Seg11.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  exact ⟨(rho 6957), (rho 6958), (rho 6959), (rho 6960), (rho 6961), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part12_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart12 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6941) (rho 6946) (rho 6951) (rho 6956) (rho 6961) (rho 6966)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 6941) (rho 6946) (rho 6951) (rho 6956) (rho 6961) k := by
  unfold Seg11.relationPart12 Seg11.relationRow60 Seg11.relationRow61 Seg11.relationRow62 Seg11.relationRow63 Seg11.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  exact ⟨(rho 6962), (rho 6963), (rho 6964), (rho 6965), (rho 6966), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part13_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart13 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6941) (rho 6946) (rho 6951) (rho 6956) (rho 6961) (rho 6966) (rho 6971)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 6941) (rho 6946) (rho 6951) (rho 6956) (rho 6961) (rho 6966) k := by
  unfold Seg11.relationPart13 Seg11.relationRow65 Seg11.relationRow66 Seg11.relationRow67 Seg11.relationRow68 Seg11.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  exact ⟨(rho 6967), (rho 6968), (rho 6969), (rho 6970), (rho 6971), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part14_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart14 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 6941) (rho 6946) (rho 6951) (rho 6956) (rho 6961) (rho 6966) (rho 6971) k := by
  unfold Seg11.relationPart14 Seg11.relationRow70 Seg11.relationRow71 Seg11.relationRow72 Seg11.relationRow73 Seg11.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  exact ⟨(rho 6972), (rho 6973), (rho 6974), (rho 6975), (rho 6976), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part15_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart15 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 6961) (rho 6966) (rho 6971) (rho 6976) k := by
  unfold Seg11.relationPart15 Seg11.relationRow75 Seg11.relationRow76 Seg11.relationRow77 Seg11.relationRow78 Seg11.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  exact ⟨(rho 6977), (rho 6978), (rho 6979), (rho 6980), (rho 6981), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part16_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart16 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) k := by
  unfold Seg11.relationPart16 Seg11.relationRow80 Seg11.relationRow81 Seg11.relationRow82 Seg11.relationRow83 Seg11.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  exact ⟨(rho 6982), (rho 6983), (rho 6984), (rho 6985), (rho 6986), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part17_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart17 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) k := by
  unfold Seg11.relationPart17 Seg11.relationRow85 Seg11.relationRow86 Seg11.relationRow87 Seg11.relationRow88 Seg11.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  exact ⟨(rho 6987), (rho 6988), (rho 6989), (rho 6990), (rho 6991), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part18_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart18 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) k := by
  unfold Seg11.relationPart18 Seg11.relationRow90 Seg11.relationRow91 Seg11.relationRow92 Seg11.relationRow93 Seg11.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  exact ⟨(rho 6992), (rho 6993), (rho 6994), (rho 6995), (rho 6996), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part19_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart19 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) k := by
  unfold Seg11.relationPart19 Seg11.relationRow95 Seg11.relationRow96 Seg11.relationRow97 Seg11.relationRow98 Seg11.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  exact ⟨(rho 6997), (rho 6998), (rho 6999), (rho 7000), (rho 7001), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part20_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart20 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) k := by
  unfold Seg11.relationPart20 Seg11.relationRow100 Seg11.relationRow101 Seg11.relationRow102 Seg11.relationRow103 Seg11.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  exact ⟨(rho 7002), (rho 7003), (rho 7004), (rho 7005), (rho 7006), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part21_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart21 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) k := by
  unfold Seg11.relationPart21 Seg11.relationRow105 Seg11.relationRow106 Seg11.relationRow107 Seg11.relationRow108 Seg11.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  exact ⟨(rho 7007), (rho 7008), (rho 7009), (rho 7010), (rho 7011), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part22_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart22 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) k := by
  unfold Seg11.relationPart22 Seg11.relationRow110 Seg11.relationRow111 Seg11.relationRow112 Seg11.relationRow113 Seg11.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  exact ⟨(rho 7012), (rho 7013), (rho 7014), (rho 7015), (rho 7016), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part23_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart23 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) k := by
  unfold Seg11.relationPart23 Seg11.relationRow115 Seg11.relationRow116 Seg11.relationRow117 Seg11.relationRow118 Seg11.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  exact ⟨(rho 7017), (rho 7018), (rho 7019), (rho 7020), (rho 7021), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part24_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart24 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) k := by
  unfold Seg11.relationPart24 Seg11.relationRow120 Seg11.relationRow121 Seg11.relationRow122 Seg11.relationRow123 Seg11.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  exact ⟨(rho 7022), (rho 7023), (rho 7024), (rho 7025), (rho 7026), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part25_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart25 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) k := by
  unfold Seg11.relationPart25 Seg11.relationRow125 Seg11.relationRow126 Seg11.relationRow127 Seg11.relationRow128 Seg11.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  exact ⟨(rho 7027), (rho 7028), (rho 7029), (rho 7030), (rho 7031), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part26_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart26 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) k := by
  unfold Seg11.relationPart26 Seg11.relationRow130 Seg11.relationRow131 Seg11.relationRow132 Seg11.relationRow133 Seg11.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  exact ⟨(rho 7032), (rho 7033), (rho 7034), (rho 7035), (rho 7036), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part27_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart27 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) k := by
  unfold Seg11.relationPart27 Seg11.relationRow135 Seg11.relationRow136 Seg11.relationRow137 Seg11.relationRow138 Seg11.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  exact ⟨(rho 7037), (rho 7038), (rho 7039), (rho 7040), (rho 7041), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part28_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart28 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) k := by
  unfold Seg11.relationPart28 Seg11.relationRow140 Seg11.relationRow141 Seg11.relationRow142 Seg11.relationRow143 Seg11.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  exact ⟨(rho 7042), (rho 7043), (rho 7044), (rho 7045), (rho 7046), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part29_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart29 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) k := by
  unfold Seg11.relationPart29 Seg11.relationRow145 Seg11.relationRow146 Seg11.relationRow147 Seg11.relationRow148 Seg11.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  exact ⟨(rho 7047), (rho 7048), (rho 7049), (rho 7050), (rho 7051), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part30_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart30 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) k := by
  unfold Seg11.relationPart30 Seg11.relationRow150 Seg11.relationRow151 Seg11.relationRow152 Seg11.relationRow153 Seg11.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  exact ⟨(rho 7052), (rho 7053), (rho 7054), (rho 7055), (rho 7056), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part31_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart31 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) k := by
  unfold Seg11.relationPart31 Seg11.relationRow155 Seg11.relationRow156 Seg11.relationRow157 Seg11.relationRow158 Seg11.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  exact ⟨(rho 7057), (rho 7058), (rho 7059), (rho 7060), (rho 7061), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part32_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart32 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) k := by
  unfold Seg11.relationPart32 Seg11.relationRow160 Seg11.relationRow161 Seg11.relationRow162 Seg11.relationRow163 Seg11.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  exact ⟨(rho 7062), (rho 7063), (rho 7064), (rho 7065), (rho 7066), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part33_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart33 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) k := by
  unfold Seg11.relationPart33 Seg11.relationRow165 Seg11.relationRow166 Seg11.relationRow167 Seg11.relationRow168 Seg11.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  exact ⟨(rho 7067), (rho 7068), (rho 7069), (rho 7070), (rho 7071), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part34_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart34 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) k := by
  unfold Seg11.relationPart34 Seg11.relationRow170 Seg11.relationRow171 Seg11.relationRow172 Seg11.relationRow173 Seg11.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  exact ⟨(rho 7072), (rho 7073), (rho 7074), (rho 7075), (rho 7076), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part35_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart35 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) k := by
  unfold Seg11.relationPart35 Seg11.relationRow175 Seg11.relationRow176 Seg11.relationRow177 Seg11.relationRow178 Seg11.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  exact ⟨(rho 7077), (rho 7078), (rho 7079), (rho 7080), (rho 7081), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part36_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart36 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) k := by
  unfold Seg11.relationPart36 Seg11.relationRow180 Seg11.relationRow181 Seg11.relationRow182 Seg11.relationRow183 Seg11.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  exact ⟨(rho 7082), (rho 7083), (rho 7084), (rho 7085), (rho 7086), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part37_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart37 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) k := by
  unfold Seg11.relationPart37 Seg11.relationRow185 Seg11.relationRow186 Seg11.relationRow187 Seg11.relationRow188 Seg11.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  exact ⟨(rho 7087), (rho 7088), (rho 7089), (rho 7090), (rho 7091), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part38_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart38 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) k := by
  unfold Seg11.relationPart38 Seg11.relationRow190 Seg11.relationRow191 Seg11.relationRow192 Seg11.relationRow193 Seg11.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  exact ⟨(rho 7092), (rho 7093), (rho 7094), (rho 7095), (rho 7096), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part39_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart39 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) k := by
  unfold Seg11.relationPart39 Seg11.relationRow195 Seg11.relationRow196 Seg11.relationRow197 Seg11.relationRow198 Seg11.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  exact ⟨(rho 7097), (rho 7098), (rho 7099), (rho 7100), (rho 7101), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part40_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart40 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) k := by
  unfold Seg11.relationPart40 Seg11.relationRow200 Seg11.relationRow201 Seg11.relationRow202 Seg11.relationRow203 Seg11.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  exact ⟨(rho 7102), (rho 7103), (rho 7104), (rho 7105), (rho 7106), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part41_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart41 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) k := by
  unfold Seg11.relationPart41 Seg11.relationRow205 Seg11.relationRow206 Seg11.relationRow207 Seg11.relationRow208 Seg11.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  exact ⟨(rho 7107), (rho 7108), (rho 7109), (rho 7110), (rho 7111), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part42_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart42 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) k := by
  unfold Seg11.relationPart42 Seg11.relationRow210 Seg11.relationRow211 Seg11.relationRow212 Seg11.relationRow213 Seg11.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  exact ⟨(rho 7112), (rho 7113), (rho 7114), (rho 7115), (rho 7116), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part43_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart43 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) k := by
  unfold Seg11.relationPart43 Seg11.relationRow215 Seg11.relationRow216 Seg11.relationRow217 Seg11.relationRow218 Seg11.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  exact ⟨(rho 7117), (rho 7118), (rho 7119), (rho 7120), (rho 7121), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part44_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart44 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) k := by
  unfold Seg11.relationPart44 Seg11.relationRow220 Seg11.relationRow221 Seg11.relationRow222 Seg11.relationRow223 Seg11.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  exact ⟨(rho 7122), (rho 7123), (rho 7124), (rho 7125), (rho 7126), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part45_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart45 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) k := by
  unfold Seg11.relationPart45 Seg11.relationRow225 Seg11.relationRow226 Seg11.relationRow227 Seg11.relationRow228 Seg11.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  exact ⟨(rho 7127), (rho 7128), (rho 7129), (rho 7130), (rho 7131), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part46_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart46 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) (rho 7136)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) k := by
  unfold Seg11.relationPart46 Seg11.relationRow230 Seg11.relationRow231 Seg11.relationRow232 Seg11.relationRow233 Seg11.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  exact ⟨(rho 7132), (rho 7133), (rho 7134), (rho 7135), (rho 7136), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part47_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart47 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) (rho 7136) (rho 7141)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) (rho 7136) k := by
  unfold Seg11.relationPart47 Seg11.relationRow235 Seg11.relationRow236 Seg11.relationRow237 Seg11.relationRow238 Seg11.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  exact ⟨(rho 7137), (rho 7138), (rho 7139), (rho 7140), (rho 7141), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part48_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart48 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) (rho 7136) (rho 7141) (rho 7146)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) (rho 7136) (rho 7141) k := by
  unfold Seg11.relationPart48 Seg11.relationRow240 Seg11.relationRow241 Seg11.relationRow242 Seg11.relationRow243 Seg11.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  exact ⟨(rho 7142), (rho 7143), (rho 7144), (rho 7145), (rho 7146), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part49_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart49 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7136) (rho 7141) (rho 7146) (rho 7151)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 6961) (rho 6966) (rho 6971) (rho 6976) (rho 6981) (rho 6986) (rho 6991) (rho 6996) (rho 7001) (rho 7006) (rho 7011) (rho 7016) (rho 7021) (rho 7026) (rho 7031) (rho 7036) (rho 7041) (rho 7046) (rho 7051) (rho 7056) (rho 7061) (rho 7066) (rho 7071) (rho 7076) (rho 7081) (rho 7086) (rho 7091) (rho 7096) (rho 7101) (rho 7106) (rho 7111) (rho 7116) (rho 7121) (rho 7126) (rho 7131) (rho 7136) (rho 7141) (rho 7146) k := by
  unfold Seg11.relationPart49 Seg11.relationRow245 Seg11.relationRow246 Seg11.relationRow247 Seg11.relationRow248 Seg11.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  exact ⟨(rho 7147), (rho 7148), (rho 7149), (rho 7150), (rho 7151), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part50_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart50 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7136) (rho 7141) (rho 7146) (rho 7151) (rho 7156)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 7136) (rho 7141) (rho 7146) (rho 7151) k := by
  unfold Seg11.relationPart50 Seg11.relationRow250 Seg11.relationRow251 Seg11.relationRow252 Seg11.relationRow253 Seg11.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  exact ⟨(rho 7152), (rho 7153), (rho 7154), (rho 7155), (rho 7156), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part51_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart51 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7136) (rho 7141) (rho 7146) (rho 7151) (rho 7156) (rho 7161)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 7136) (rho 7141) (rho 7146) (rho 7151) (rho 7156) k := by
  unfold Seg11.relationPart51 Seg11.relationRow255 Seg11.relationRow256 Seg11.relationRow257 Seg11.relationRow258 Seg11.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  exact ⟨(rho 7157), (rho 7158), (rho 7159), (rho 7160), (rho 7161), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part52_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart52 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7136) (rho 7141) (rho 7146) (rho 7151) (rho 7156) (rho 7161) (rho 7166)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 7136) (rho 7141) (rho 7146) (rho 7151) (rho 7156) (rho 7161) k := by
  unfold Seg11.relationPart52 Seg11.relationRow260 Seg11.relationRow261 Seg11.relationRow262 Seg11.relationRow263 Seg11.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  exact ⟨(rho 7162), (rho 7163), (rho 7164), (rho 7165), (rho 7166), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part53_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart53 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7156) (rho 7161) (rho 7166) (rho 7171)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 7136) (rho 7141) (rho 7146) (rho 7151) (rho 7156) (rho 7161) (rho 7166) k := by
  unfold Seg11.relationPart53 Seg11.relationRow265 Seg11.relationRow266 Seg11.relationRow267 Seg11.relationRow268 Seg11.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  exact ⟨(rho 7167), (rho 7168), (rho 7169), (rho 7170), (rho 7171), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part54_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart54 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7156) (rho 7161) (rho 7166) (rho 7171) (rho 7176)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 7156) (rho 7161) (rho 7166) (rho 7171) k := by
  unfold Seg11.relationPart54 Seg11.relationRow270 Seg11.relationRow271 Seg11.relationRow272 Seg11.relationRow273 Seg11.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  exact ⟨(rho 7172), (rho 7173), (rho 7174), (rho 7175), (rho 7176), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part55_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart55 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7156) (rho 7161) (rho 7166) (rho 7171) (rho 7176) (rho 7181)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 7156) (rho 7161) (rho 7166) (rho 7171) (rho 7176) k := by
  unfold Seg11.relationPart55 Seg11.relationRow275 Seg11.relationRow276 Seg11.relationRow277 Seg11.relationRow278 Seg11.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  exact ⟨(rho 7177), (rho 7178), (rho 7179), (rho 7180), (rho 7181), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part56_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart56 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7156) (rho 7161) (rho 7166) (rho 7171) (rho 7176) (rho 7181) (rho 7186)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 7156) (rho 7161) (rho 7166) (rho 7171) (rho 7176) (rho 7181) k := by
  unfold Seg11.relationPart56 Seg11.relationRow280 Seg11.relationRow281 Seg11.relationRow282 Seg11.relationRow283 Seg11.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  exact ⟨(rho 7182), (rho 7183), (rho 7184), (rho 7185), (rho 7186), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part57_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart57 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7176) (rho 7181) (rho 7186) (rho 7191)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 7156) (rho 7161) (rho 7166) (rho 7171) (rho 7176) (rho 7181) (rho 7186) k := by
  unfold Seg11.relationPart57 Seg11.relationRow285 Seg11.relationRow286 Seg11.relationRow287 Seg11.relationRow288 Seg11.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  exact ⟨(rho 7187), (rho 7188), (rho 7189), (rho 7190), (rho 7191), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part58_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart58 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7176) (rho 7181) (rho 7186) (rho 7191) (rho 7196)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 7176) (rho 7181) (rho 7186) (rho 7191) k := by
  unfold Seg11.relationPart58 Seg11.relationRow290 Seg11.relationRow291 Seg11.relationRow292 Seg11.relationRow293 Seg11.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  exact ⟨(rho 7192), (rho 7193), (rho 7194), (rho 7195), (rho 7196), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part59_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart59 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7176) (rho 7181) (rho 7186) (rho 7191) (rho 7196) (rho 7201)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 7176) (rho 7181) (rho 7186) (rho 7191) (rho 7196) k := by
  unfold Seg11.relationPart59 Seg11.relationRow295 Seg11.relationRow296 Seg11.relationRow297 Seg11.relationRow298 Seg11.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  exact ⟨(rho 7197), (rho 7198), (rho 7199), (rho 7200), (rho 7201), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part60_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart60 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7176) (rho 7181) (rho 7186) (rho 7191) (rho 7196) (rho 7201) (rho 7206)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 7176) (rho 7181) (rho 7186) (rho 7191) (rho 7196) (rho 7201) k := by
  unfold Seg11.relationPart60 Seg11.relationRow300 Seg11.relationRow301 Seg11.relationRow302 Seg11.relationRow303 Seg11.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  exact ⟨(rho 7202), (rho 7203), (rho 7204), (rho 7205), (rho 7206), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part61_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart61 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7196) (rho 7201) (rho 7206) (rho 7211)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 7176) (rho 7181) (rho 7186) (rho 7191) (rho 7196) (rho 7201) (rho 7206) k := by
  unfold Seg11.relationPart61 Seg11.relationRow305 Seg11.relationRow306 Seg11.relationRow307 Seg11.relationRow308 Seg11.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  exact ⟨(rho 7207), (rho 7208), (rho 7209), (rho 7210), (rho 7211), h0, h1, h2, h3, h4, hk⟩

theorem seg11_relation_to_nullifier (rho : Nat → Seg11.F)
    (h : Seg11.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 8) (rho 23) (rho 24)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = rho 7196 ∧ w1642 = rho 7201 ∧
        w1647 = rho 7206 ∧ w1652 = rho 7211) := by
  unfold Seg11.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
  apply seg11_part0_to_extracted rho p0
  apply seg11_part1_to_extracted rho p1
  apply seg11_part2_to_extracted rho p2
  apply seg11_part3_to_extracted rho p3
  apply seg11_part4_to_extracted rho p4
  apply seg11_part5_to_extracted rho p5
  apply seg11_part6_to_extracted rho p6
  apply seg11_part7_to_extracted rho p7
  apply seg11_part8_to_extracted rho p8
  apply seg11_part9_to_extracted rho p9
  apply seg11_part10_to_extracted rho p10
  apply seg11_part11_to_extracted rho p11
  apply seg11_part12_to_extracted rho p12
  apply seg11_part13_to_extracted rho p13
  apply seg11_part14_to_extracted rho p14
  apply seg11_part15_to_extracted rho p15
  apply seg11_part16_to_extracted rho p16
  apply seg11_part17_to_extracted rho p17
  apply seg11_part18_to_extracted rho p18
  apply seg11_part19_to_extracted rho p19
  apply seg11_part20_to_extracted rho p20
  apply seg11_part21_to_extracted rho p21
  apply seg11_part22_to_extracted rho p22
  apply seg11_part23_to_extracted rho p23
  apply seg11_part24_to_extracted rho p24
  apply seg11_part25_to_extracted rho p25
  apply seg11_part26_to_extracted rho p26
  apply seg11_part27_to_extracted rho p27
  apply seg11_part28_to_extracted rho p28
  apply seg11_part29_to_extracted rho p29
  apply seg11_part30_to_extracted rho p30
  apply seg11_part31_to_extracted rho p31
  apply seg11_part32_to_extracted rho p32
  apply seg11_part33_to_extracted rho p33
  apply seg11_part34_to_extracted rho p34
  apply seg11_part35_to_extracted rho p35
  apply seg11_part36_to_extracted rho p36
  apply seg11_part37_to_extracted rho p37
  apply seg11_part38_to_extracted rho p38
  apply seg11_part39_to_extracted rho p39
  apply seg11_part40_to_extracted rho p40
  apply seg11_part41_to_extracted rho p41
  apply seg11_part42_to_extracted rho p42
  apply seg11_part43_to_extracted rho p43
  apply seg11_part44_to_extracted rho p44
  apply seg11_part45_to_extracted rho p45
  apply seg11_part46_to_extracted rho p46
  apply seg11_part47_to_extracted rho p47
  apply seg11_part48_to_extracted rho p48
  apply seg11_part49_to_extracted rho p49
  apply seg11_part50_to_extracted rho p50
  apply seg11_part51_to_extracted rho p51
  apply seg11_part52_to_extracted rho p52
  apply seg11_part53_to_extracted rho p53
  apply seg11_part54_to_extracted rho p54
  apply seg11_part55_to_extracted rho p55
  apply seg11_part56_to_extracted rho p56
  apply seg11_part57_to_extracted rho p57
  apply seg11_part58_to_extracted rho p58
  apply seg11_part59_to_extracted rho p59
  apply seg11_part60_to_extracted rho p60
  apply seg11_part61_to_extracted rho p61
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem seg11_sound (rho : Nat → Seg11.F) (h : Seg11.relation rho) : Seg11.spec rho := by
  have hExtracted := seg11_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 8) (rho 23) (rho 24) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [Seg11.spec, Specs.deployedSpec11, hw1637, hw1642, hw1647, hw1652] using hperm

theorem seg26_part0_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart0 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 110) (rho 111) (rho 19087)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 8) (rho 110) (rho 111) k := by
  unfold Seg26.relationPart0 Seg26.relationRow0 Seg26.relationRow1 Seg26.relationRow2 Seg26.relationRow3 Seg26.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  exact ⟨(rho 19083), (rho 19084), (rho 19085), (rho 19086), (rho 19087), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part1_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart1 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 111) (rho 19087) (rho 19092)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (rho 110) (rho 111) (rho 19087) k := by
  unfold Seg26.relationPart1 Seg26.relationRow5 Seg26.relationRow6 Seg26.relationRow7 Seg26.relationRow8 Seg26.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  exact ⟨(rho 19088), (rho 19089), (rho 19090), (rho 19091), (rho 19092), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part2_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart2 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19087) (rho 19092) (rho 19097)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 111) (rho 19087) (rho 19092) k := by
  unfold Seg26.relationPart2 Seg26.relationRow10 Seg26.relationRow11 Seg26.relationRow12 Seg26.relationRow13 Seg26.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  exact ⟨(rho 19093), (rho 19094), (rho 19095), (rho 19096), (rho 19097), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part3_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart3 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19087) (rho 19092) (rho 19097) (rho 19102)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 19087) (rho 19092) (rho 19097) k := by
  unfold Seg26.relationPart3 Seg26.relationRow15 Seg26.relationRow16 Seg26.relationRow17 Seg26.relationRow18 Seg26.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  exact ⟨(rho 19098), (rho 19099), (rho 19100), (rho 19101), (rho 19102), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part4_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart4 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19087) (rho 19092) (rho 19097) (rho 19102) (rho 19107)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 19087) (rho 19092) (rho 19097) (rho 19102) k := by
  unfold Seg26.relationPart4 Seg26.relationRow20 Seg26.relationRow21 Seg26.relationRow22 Seg26.relationRow23 Seg26.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  exact ⟨(rho 19103), (rho 19104), (rho 19105), (rho 19106), (rho 19107), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part5_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart5 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19087) (rho 19092) (rho 19097) (rho 19102) (rho 19107) (rho 19112)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 19087) (rho 19092) (rho 19097) (rho 19102) (rho 19107) k := by
  unfold Seg26.relationPart5 Seg26.relationRow25 Seg26.relationRow26 Seg26.relationRow27 Seg26.relationRow28 Seg26.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  exact ⟨(rho 19108), (rho 19109), (rho 19110), (rho 19111), (rho 19112), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part6_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart6 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19102) (rho 19107) (rho 19112) (rho 19117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 19087) (rho 19092) (rho 19097) (rho 19102) (rho 19107) (rho 19112) k := by
  unfold Seg26.relationPart6 Seg26.relationRow30 Seg26.relationRow31 Seg26.relationRow32 Seg26.relationRow33 Seg26.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  exact ⟨(rho 19113), (rho 19114), (rho 19115), (rho 19116), (rho 19117), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part7_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart7 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19102) (rho 19107) (rho 19112) (rho 19117) (rho 19122)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 19102) (rho 19107) (rho 19112) (rho 19117) k := by
  unfold Seg26.relationPart7 Seg26.relationRow35 Seg26.relationRow36 Seg26.relationRow37 Seg26.relationRow38 Seg26.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  exact ⟨(rho 19118), (rho 19119), (rho 19120), (rho 19121), (rho 19122), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part8_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart8 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19102) (rho 19107) (rho 19112) (rho 19117) (rho 19122) (rho 19127)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 19102) (rho 19107) (rho 19112) (rho 19117) (rho 19122) k := by
  unfold Seg26.relationPart8 Seg26.relationRow40 Seg26.relationRow41 Seg26.relationRow42 Seg26.relationRow43 Seg26.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  exact ⟨(rho 19123), (rho 19124), (rho 19125), (rho 19126), (rho 19127), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part9_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart9 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19102) (rho 19107) (rho 19112) (rho 19117) (rho 19122) (rho 19127) (rho 19132)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9 (rho 19102) (rho 19107) (rho 19112) (rho 19117) (rho 19122) (rho 19127) k := by
  unfold Seg26.relationPart9 Seg26.relationRow45 Seg26.relationRow46 Seg26.relationRow47 Seg26.relationRow48 Seg26.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9
  exact ⟨(rho 19128), (rho 19129), (rho 19130), (rho 19131), (rho 19132), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part10_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart10 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19122) (rho 19127) (rho 19132) (rho 19137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 19102) (rho 19107) (rho 19112) (rho 19117) (rho 19122) (rho 19127) (rho 19132) k := by
  unfold Seg26.relationPart10 Seg26.relationRow50 Seg26.relationRow51 Seg26.relationRow52 Seg26.relationRow53 Seg26.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  exact ⟨(rho 19133), (rho 19134), (rho 19135), (rho 19136), (rho 19137), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part11_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart11 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19122) (rho 19127) (rho 19132) (rho 19137) (rho 19142)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 19122) (rho 19127) (rho 19132) (rho 19137) k := by
  unfold Seg26.relationPart11 Seg26.relationRow55 Seg26.relationRow56 Seg26.relationRow57 Seg26.relationRow58 Seg26.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  exact ⟨(rho 19138), (rho 19139), (rho 19140), (rho 19141), (rho 19142), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part12_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart12 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19122) (rho 19127) (rho 19132) (rho 19137) (rho 19142) (rho 19147)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 19122) (rho 19127) (rho 19132) (rho 19137) (rho 19142) k := by
  unfold Seg26.relationPart12 Seg26.relationRow60 Seg26.relationRow61 Seg26.relationRow62 Seg26.relationRow63 Seg26.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  exact ⟨(rho 19143), (rho 19144), (rho 19145), (rho 19146), (rho 19147), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part13_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart13 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19122) (rho 19127) (rho 19132) (rho 19137) (rho 19142) (rho 19147) (rho 19152)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 19122) (rho 19127) (rho 19132) (rho 19137) (rho 19142) (rho 19147) k := by
  unfold Seg26.relationPart13 Seg26.relationRow65 Seg26.relationRow66 Seg26.relationRow67 Seg26.relationRow68 Seg26.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  exact ⟨(rho 19148), (rho 19149), (rho 19150), (rho 19151), (rho 19152), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part14_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart14 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 19122) (rho 19127) (rho 19132) (rho 19137) (rho 19142) (rho 19147) (rho 19152) k := by
  unfold Seg26.relationPart14 Seg26.relationRow70 Seg26.relationRow71 Seg26.relationRow72 Seg26.relationRow73 Seg26.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  exact ⟨(rho 19153), (rho 19154), (rho 19155), (rho 19156), (rho 19157), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part15_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart15 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 19142) (rho 19147) (rho 19152) (rho 19157) k := by
  unfold Seg26.relationPart15 Seg26.relationRow75 Seg26.relationRow76 Seg26.relationRow77 Seg26.relationRow78 Seg26.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  exact ⟨(rho 19158), (rho 19159), (rho 19160), (rho 19161), (rho 19162), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part16_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart16 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) k := by
  unfold Seg26.relationPart16 Seg26.relationRow80 Seg26.relationRow81 Seg26.relationRow82 Seg26.relationRow83 Seg26.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  exact ⟨(rho 19163), (rho 19164), (rho 19165), (rho 19166), (rho 19167), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part17_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart17 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) k := by
  unfold Seg26.relationPart17 Seg26.relationRow85 Seg26.relationRow86 Seg26.relationRow87 Seg26.relationRow88 Seg26.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  exact ⟨(rho 19168), (rho 19169), (rho 19170), (rho 19171), (rho 19172), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part18_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart18 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) k := by
  unfold Seg26.relationPart18 Seg26.relationRow90 Seg26.relationRow91 Seg26.relationRow92 Seg26.relationRow93 Seg26.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  exact ⟨(rho 19173), (rho 19174), (rho 19175), (rho 19176), (rho 19177), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part19_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart19 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) k := by
  unfold Seg26.relationPart19 Seg26.relationRow95 Seg26.relationRow96 Seg26.relationRow97 Seg26.relationRow98 Seg26.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  exact ⟨(rho 19178), (rho 19179), (rho 19180), (rho 19181), (rho 19182), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part20_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart20 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) k := by
  unfold Seg26.relationPart20 Seg26.relationRow100 Seg26.relationRow101 Seg26.relationRow102 Seg26.relationRow103 Seg26.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  exact ⟨(rho 19183), (rho 19184), (rho 19185), (rho 19186), (rho 19187), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part21_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart21 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) k := by
  unfold Seg26.relationPart21 Seg26.relationRow105 Seg26.relationRow106 Seg26.relationRow107 Seg26.relationRow108 Seg26.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  exact ⟨(rho 19188), (rho 19189), (rho 19190), (rho 19191), (rho 19192), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part22_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart22 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) k := by
  unfold Seg26.relationPart22 Seg26.relationRow110 Seg26.relationRow111 Seg26.relationRow112 Seg26.relationRow113 Seg26.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  exact ⟨(rho 19193), (rho 19194), (rho 19195), (rho 19196), (rho 19197), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part23_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart23 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) k := by
  unfold Seg26.relationPart23 Seg26.relationRow115 Seg26.relationRow116 Seg26.relationRow117 Seg26.relationRow118 Seg26.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  exact ⟨(rho 19198), (rho 19199), (rho 19200), (rho 19201), (rho 19202), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part24_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart24 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) k := by
  unfold Seg26.relationPart24 Seg26.relationRow120 Seg26.relationRow121 Seg26.relationRow122 Seg26.relationRow123 Seg26.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  exact ⟨(rho 19203), (rho 19204), (rho 19205), (rho 19206), (rho 19207), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part25_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart25 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) k := by
  unfold Seg26.relationPart25 Seg26.relationRow125 Seg26.relationRow126 Seg26.relationRow127 Seg26.relationRow128 Seg26.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  exact ⟨(rho 19208), (rho 19209), (rho 19210), (rho 19211), (rho 19212), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part26_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart26 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) k := by
  unfold Seg26.relationPart26 Seg26.relationRow130 Seg26.relationRow131 Seg26.relationRow132 Seg26.relationRow133 Seg26.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  exact ⟨(rho 19213), (rho 19214), (rho 19215), (rho 19216), (rho 19217), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part27_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart27 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) k := by
  unfold Seg26.relationPart27 Seg26.relationRow135 Seg26.relationRow136 Seg26.relationRow137 Seg26.relationRow138 Seg26.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  exact ⟨(rho 19218), (rho 19219), (rho 19220), (rho 19221), (rho 19222), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part28_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart28 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) k := by
  unfold Seg26.relationPart28 Seg26.relationRow140 Seg26.relationRow141 Seg26.relationRow142 Seg26.relationRow143 Seg26.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  exact ⟨(rho 19223), (rho 19224), (rho 19225), (rho 19226), (rho 19227), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part29_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart29 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) k := by
  unfold Seg26.relationPart29 Seg26.relationRow145 Seg26.relationRow146 Seg26.relationRow147 Seg26.relationRow148 Seg26.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  exact ⟨(rho 19228), (rho 19229), (rho 19230), (rho 19231), (rho 19232), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part30_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart30 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) k := by
  unfold Seg26.relationPart30 Seg26.relationRow150 Seg26.relationRow151 Seg26.relationRow152 Seg26.relationRow153 Seg26.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  exact ⟨(rho 19233), (rho 19234), (rho 19235), (rho 19236), (rho 19237), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part31_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart31 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) k := by
  unfold Seg26.relationPart31 Seg26.relationRow155 Seg26.relationRow156 Seg26.relationRow157 Seg26.relationRow158 Seg26.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  exact ⟨(rho 19238), (rho 19239), (rho 19240), (rho 19241), (rho 19242), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part32_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart32 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) k := by
  unfold Seg26.relationPart32 Seg26.relationRow160 Seg26.relationRow161 Seg26.relationRow162 Seg26.relationRow163 Seg26.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  exact ⟨(rho 19243), (rho 19244), (rho 19245), (rho 19246), (rho 19247), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part33_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart33 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) k := by
  unfold Seg26.relationPart33 Seg26.relationRow165 Seg26.relationRow166 Seg26.relationRow167 Seg26.relationRow168 Seg26.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  exact ⟨(rho 19248), (rho 19249), (rho 19250), (rho 19251), (rho 19252), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part34_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart34 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) k := by
  unfold Seg26.relationPart34 Seg26.relationRow170 Seg26.relationRow171 Seg26.relationRow172 Seg26.relationRow173 Seg26.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  exact ⟨(rho 19253), (rho 19254), (rho 19255), (rho 19256), (rho 19257), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part35_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart35 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) k := by
  unfold Seg26.relationPart35 Seg26.relationRow175 Seg26.relationRow176 Seg26.relationRow177 Seg26.relationRow178 Seg26.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  exact ⟨(rho 19258), (rho 19259), (rho 19260), (rho 19261), (rho 19262), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part36_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart36 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) k := by
  unfold Seg26.relationPart36 Seg26.relationRow180 Seg26.relationRow181 Seg26.relationRow182 Seg26.relationRow183 Seg26.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  exact ⟨(rho 19263), (rho 19264), (rho 19265), (rho 19266), (rho 19267), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part37_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart37 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) k := by
  unfold Seg26.relationPart37 Seg26.relationRow185 Seg26.relationRow186 Seg26.relationRow187 Seg26.relationRow188 Seg26.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  exact ⟨(rho 19268), (rho 19269), (rho 19270), (rho 19271), (rho 19272), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part38_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart38 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) k := by
  unfold Seg26.relationPart38 Seg26.relationRow190 Seg26.relationRow191 Seg26.relationRow192 Seg26.relationRow193 Seg26.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  exact ⟨(rho 19273), (rho 19274), (rho 19275), (rho 19276), (rho 19277), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part39_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart39 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) k := by
  unfold Seg26.relationPart39 Seg26.relationRow195 Seg26.relationRow196 Seg26.relationRow197 Seg26.relationRow198 Seg26.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  exact ⟨(rho 19278), (rho 19279), (rho 19280), (rho 19281), (rho 19282), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part40_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart40 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) k := by
  unfold Seg26.relationPart40 Seg26.relationRow200 Seg26.relationRow201 Seg26.relationRow202 Seg26.relationRow203 Seg26.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  exact ⟨(rho 19283), (rho 19284), (rho 19285), (rho 19286), (rho 19287), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part41_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart41 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) k := by
  unfold Seg26.relationPart41 Seg26.relationRow205 Seg26.relationRow206 Seg26.relationRow207 Seg26.relationRow208 Seg26.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  exact ⟨(rho 19288), (rho 19289), (rho 19290), (rho 19291), (rho 19292), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part42_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart42 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) k := by
  unfold Seg26.relationPart42 Seg26.relationRow210 Seg26.relationRow211 Seg26.relationRow212 Seg26.relationRow213 Seg26.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  exact ⟨(rho 19293), (rho 19294), (rho 19295), (rho 19296), (rho 19297), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part43_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart43 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) k := by
  unfold Seg26.relationPart43 Seg26.relationRow215 Seg26.relationRow216 Seg26.relationRow217 Seg26.relationRow218 Seg26.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  exact ⟨(rho 19298), (rho 19299), (rho 19300), (rho 19301), (rho 19302), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part44_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart44 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) k := by
  unfold Seg26.relationPart44 Seg26.relationRow220 Seg26.relationRow221 Seg26.relationRow222 Seg26.relationRow223 Seg26.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  exact ⟨(rho 19303), (rho 19304), (rho 19305), (rho 19306), (rho 19307), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part45_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart45 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) k := by
  unfold Seg26.relationPart45 Seg26.relationRow225 Seg26.relationRow226 Seg26.relationRow227 Seg26.relationRow228 Seg26.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  exact ⟨(rho 19308), (rho 19309), (rho 19310), (rho 19311), (rho 19312), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part46_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart46 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) (rho 19317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) k := by
  unfold Seg26.relationPart46 Seg26.relationRow230 Seg26.relationRow231 Seg26.relationRow232 Seg26.relationRow233 Seg26.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  exact ⟨(rho 19313), (rho 19314), (rho 19315), (rho 19316), (rho 19317), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part47_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart47 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) (rho 19317) (rho 19322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) (rho 19317) k := by
  unfold Seg26.relationPart47 Seg26.relationRow235 Seg26.relationRow236 Seg26.relationRow237 Seg26.relationRow238 Seg26.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  exact ⟨(rho 19318), (rho 19319), (rho 19320), (rho 19321), (rho 19322), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part48_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart48 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) (rho 19317) (rho 19322) (rho 19327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) (rho 19317) (rho 19322) k := by
  unfold Seg26.relationPart48 Seg26.relationRow240 Seg26.relationRow241 Seg26.relationRow242 Seg26.relationRow243 Seg26.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  exact ⟨(rho 19323), (rho 19324), (rho 19325), (rho 19326), (rho 19327), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part49_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart49 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19317) (rho 19322) (rho 19327) (rho 19332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 19142) (rho 19147) (rho 19152) (rho 19157) (rho 19162) (rho 19167) (rho 19172) (rho 19177) (rho 19182) (rho 19187) (rho 19192) (rho 19197) (rho 19202) (rho 19207) (rho 19212) (rho 19217) (rho 19222) (rho 19227) (rho 19232) (rho 19237) (rho 19242) (rho 19247) (rho 19252) (rho 19257) (rho 19262) (rho 19267) (rho 19272) (rho 19277) (rho 19282) (rho 19287) (rho 19292) (rho 19297) (rho 19302) (rho 19307) (rho 19312) (rho 19317) (rho 19322) (rho 19327) k := by
  unfold Seg26.relationPart49 Seg26.relationRow245 Seg26.relationRow246 Seg26.relationRow247 Seg26.relationRow248 Seg26.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  exact ⟨(rho 19328), (rho 19329), (rho 19330), (rho 19331), (rho 19332), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part50_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart50 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19317) (rho 19322) (rho 19327) (rho 19332) (rho 19337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 19317) (rho 19322) (rho 19327) (rho 19332) k := by
  unfold Seg26.relationPart50 Seg26.relationRow250 Seg26.relationRow251 Seg26.relationRow252 Seg26.relationRow253 Seg26.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  exact ⟨(rho 19333), (rho 19334), (rho 19335), (rho 19336), (rho 19337), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part51_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart51 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19317) (rho 19322) (rho 19327) (rho 19332) (rho 19337) (rho 19342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 19317) (rho 19322) (rho 19327) (rho 19332) (rho 19337) k := by
  unfold Seg26.relationPart51 Seg26.relationRow255 Seg26.relationRow256 Seg26.relationRow257 Seg26.relationRow258 Seg26.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  exact ⟨(rho 19338), (rho 19339), (rho 19340), (rho 19341), (rho 19342), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part52_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart52 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19317) (rho 19322) (rho 19327) (rho 19332) (rho 19337) (rho 19342) (rho 19347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 19317) (rho 19322) (rho 19327) (rho 19332) (rho 19337) (rho 19342) k := by
  unfold Seg26.relationPart52 Seg26.relationRow260 Seg26.relationRow261 Seg26.relationRow262 Seg26.relationRow263 Seg26.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  exact ⟨(rho 19343), (rho 19344), (rho 19345), (rho 19346), (rho 19347), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part53_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart53 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19337) (rho 19342) (rho 19347) (rho 19352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 19317) (rho 19322) (rho 19327) (rho 19332) (rho 19337) (rho 19342) (rho 19347) k := by
  unfold Seg26.relationPart53 Seg26.relationRow265 Seg26.relationRow266 Seg26.relationRow267 Seg26.relationRow268 Seg26.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  exact ⟨(rho 19348), (rho 19349), (rho 19350), (rho 19351), (rho 19352), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part54_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart54 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19337) (rho 19342) (rho 19347) (rho 19352) (rho 19357)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 19337) (rho 19342) (rho 19347) (rho 19352) k := by
  unfold Seg26.relationPart54 Seg26.relationRow270 Seg26.relationRow271 Seg26.relationRow272 Seg26.relationRow273 Seg26.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  exact ⟨(rho 19353), (rho 19354), (rho 19355), (rho 19356), (rho 19357), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part55_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart55 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19337) (rho 19342) (rho 19347) (rho 19352) (rho 19357) (rho 19362)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 19337) (rho 19342) (rho 19347) (rho 19352) (rho 19357) k := by
  unfold Seg26.relationPart55 Seg26.relationRow275 Seg26.relationRow276 Seg26.relationRow277 Seg26.relationRow278 Seg26.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  exact ⟨(rho 19358), (rho 19359), (rho 19360), (rho 19361), (rho 19362), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part56_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart56 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19337) (rho 19342) (rho 19347) (rho 19352) (rho 19357) (rho 19362) (rho 19367)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 19337) (rho 19342) (rho 19347) (rho 19352) (rho 19357) (rho 19362) k := by
  unfold Seg26.relationPart56 Seg26.relationRow280 Seg26.relationRow281 Seg26.relationRow282 Seg26.relationRow283 Seg26.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  exact ⟨(rho 19363), (rho 19364), (rho 19365), (rho 19366), (rho 19367), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part57_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart57 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19357) (rho 19362) (rho 19367) (rho 19372)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 19337) (rho 19342) (rho 19347) (rho 19352) (rho 19357) (rho 19362) (rho 19367) k := by
  unfold Seg26.relationPart57 Seg26.relationRow285 Seg26.relationRow286 Seg26.relationRow287 Seg26.relationRow288 Seg26.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  exact ⟨(rho 19368), (rho 19369), (rho 19370), (rho 19371), (rho 19372), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part58_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart58 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19357) (rho 19362) (rho 19367) (rho 19372) (rho 19377)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 19357) (rho 19362) (rho 19367) (rho 19372) k := by
  unfold Seg26.relationPart58 Seg26.relationRow290 Seg26.relationRow291 Seg26.relationRow292 Seg26.relationRow293 Seg26.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  exact ⟨(rho 19373), (rho 19374), (rho 19375), (rho 19376), (rho 19377), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part59_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart59 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19357) (rho 19362) (rho 19367) (rho 19372) (rho 19377) (rho 19382)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 19357) (rho 19362) (rho 19367) (rho 19372) (rho 19377) k := by
  unfold Seg26.relationPart59 Seg26.relationRow295 Seg26.relationRow296 Seg26.relationRow297 Seg26.relationRow298 Seg26.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  exact ⟨(rho 19378), (rho 19379), (rho 19380), (rho 19381), (rho 19382), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part60_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart60 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19357) (rho 19362) (rho 19367) (rho 19372) (rho 19377) (rho 19382) (rho 19387)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 19357) (rho 19362) (rho 19367) (rho 19372) (rho 19377) (rho 19382) k := by
  unfold Seg26.relationPart60 Seg26.relationRow300 Seg26.relationRow301 Seg26.relationRow302 Seg26.relationRow303 Seg26.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  exact ⟨(rho 19383), (rho 19384), (rho 19385), (rho 19386), (rho 19387), h0, h1, h2, h3, h4, hk⟩

theorem seg26_part61_to_extracted (rho : Nat → Seg26.F)
    (h : Seg26.relationPart61 rho)
    {k : Seg26.F → Seg26.F → Seg26.F → Seg26.F → Prop} (hk : k (rho 19377) (rho 19382) (rho 19387) (rho 19392)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 19357) (rho 19362) (rho 19367) (rho 19372) (rho 19377) (rho 19382) (rho 19387) k := by
  unfold Seg26.relationPart61 Seg26.relationRow305 Seg26.relationRow306 Seg26.relationRow307 Seg26.relationRow308 Seg26.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  exact ⟨(rho 19388), (rho 19389), (rho 19390), (rho 19391), (rho 19392), h0, h1, h2, h3, h4, hk⟩

theorem seg26_relation_to_nullifier (rho : Nat → Seg26.F)
    (h : Seg26.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 8) (rho 110) (rho 111)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = rho 19377 ∧ w1642 = rho 19382 ∧
        w1647 = rho 19387 ∧ w1652 = rho 19392) := by
  unfold Seg26.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
  apply seg26_part0_to_extracted rho p0
  apply seg26_part1_to_extracted rho p1
  apply seg26_part2_to_extracted rho p2
  apply seg26_part3_to_extracted rho p3
  apply seg26_part4_to_extracted rho p4
  apply seg26_part5_to_extracted rho p5
  apply seg26_part6_to_extracted rho p6
  apply seg26_part7_to_extracted rho p7
  apply seg26_part8_to_extracted rho p8
  apply seg26_part9_to_extracted rho p9
  apply seg26_part10_to_extracted rho p10
  apply seg26_part11_to_extracted rho p11
  apply seg26_part12_to_extracted rho p12
  apply seg26_part13_to_extracted rho p13
  apply seg26_part14_to_extracted rho p14
  apply seg26_part15_to_extracted rho p15
  apply seg26_part16_to_extracted rho p16
  apply seg26_part17_to_extracted rho p17
  apply seg26_part18_to_extracted rho p18
  apply seg26_part19_to_extracted rho p19
  apply seg26_part20_to_extracted rho p20
  apply seg26_part21_to_extracted rho p21
  apply seg26_part22_to_extracted rho p22
  apply seg26_part23_to_extracted rho p23
  apply seg26_part24_to_extracted rho p24
  apply seg26_part25_to_extracted rho p25
  apply seg26_part26_to_extracted rho p26
  apply seg26_part27_to_extracted rho p27
  apply seg26_part28_to_extracted rho p28
  apply seg26_part29_to_extracted rho p29
  apply seg26_part30_to_extracted rho p30
  apply seg26_part31_to_extracted rho p31
  apply seg26_part32_to_extracted rho p32
  apply seg26_part33_to_extracted rho p33
  apply seg26_part34_to_extracted rho p34
  apply seg26_part35_to_extracted rho p35
  apply seg26_part36_to_extracted rho p36
  apply seg26_part37_to_extracted rho p37
  apply seg26_part38_to_extracted rho p38
  apply seg26_part39_to_extracted rho p39
  apply seg26_part40_to_extracted rho p40
  apply seg26_part41_to_extracted rho p41
  apply seg26_part42_to_extracted rho p42
  apply seg26_part43_to_extracted rho p43
  apply seg26_part44_to_extracted rho p44
  apply seg26_part45_to_extracted rho p45
  apply seg26_part46_to_extracted rho p46
  apply seg26_part47_to_extracted rho p47
  apply seg26_part48_to_extracted rho p48
  apply seg26_part49_to_extracted rho p49
  apply seg26_part50_to_extracted rho p50
  apply seg26_part51_to_extracted rho p51
  apply seg26_part52_to_extracted rho p52
  apply seg26_part53_to_extracted rho p53
  apply seg26_part54_to_extracted rho p54
  apply seg26_part55_to_extracted rho p55
  apply seg26_part56_to_extracted rho p56
  apply seg26_part57_to_extracted rho p57
  apply seg26_part58_to_extracted rho p58
  apply seg26_part59_to_extracted rho p59
  apply seg26_part60_to_extracted rho p60
  apply seg26_part61_to_extracted rho p61
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem seg26_sound (rho : Nat → Seg26.F) (h : Seg26.relation rho) : Seg26.spec rho := by
  have hExtracted := seg26_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 8) (rho 110) (rho 111) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [Seg26.spec, Specs.deployedSpec26, hw1637, hw1642, hw1647, hw1652] using hperm

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
