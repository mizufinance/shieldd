import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_1_v2 (rho : Nat -> Seg31.F)
    (r252 : Seg31.relationRow252 rho) :
    (7666314259614842119075217875095661764022741596306956002104179288686713480750*rho 29271)*(2819826005777211937120848652816998614177620600541178042063871942550730439065 + 890989236521567965256199269370229413142501078177866273656858537885493191408*rho 29271) = rho 29522 := by
  unfold Seg31.relationRow252 at r252
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r252 ⊢
  exact r252

theorem seg31_prefix_1_addX (rho : Nat -> Seg31.F)
    (r253 : Seg31.relationRow253 rho) :
    rho 29523*(1 + rho 29522) = 2819826005777211937120848652816998614177620600541178042063871942550730439065 + 432310032815488429380005658968422224823070211344329836845468487922671009693*rho 29271 := by
  unfold Seg31.relationRow253 at r253
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r253 ⊢
  exact r253

theorem seg31_prefix_1_addY (rho : Nat -> Seg31.F)
    (r254 : Seg31.relationRow254 rho) :
    rho 29524*(1 + (-1)*rho 29522) = 3389385942610507627059167016978655778640740163498436687682704594713126572823 + 7357496755043946632708945428288702189108099325839934949187639837550109708737*rho 29271 := by
  unfold Seg31.relationRow254 at r254
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r254 ⊢
  exact r254

theorem seg31_prefix_1_selX (rho : Nat -> Seg31.F)
    (r255 : Seg31.relationRow255 rho) :
    (1*rho 29272)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + rho 29523) = rho 29525 := by
  unfold Seg31.relationRow255 at r255
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r255 ⊢
  exact r255

theorem seg31_prefix_1_selY (rho : Nat -> Seg31.F)
    (r256 : Seg31.relationRow256 rho) :
    (1*rho 29272)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + rho 29524) = rho 29526 := by
  unfold Seg31.relationRow256 at r256
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r256 ⊢
  exact r256

theorem seg31_prefix_2_v2 (rho : Nat -> Seg31.F)
    (r257 : Seg31.relationRow257 rho) :
    (1834793207280290867390005895156704156901269454413112280319152067532631523274*rho 29271 + 4386636651797864042993986078645103862843113109085208159654284735976701080790*seg31AccX1 rho)*(7330628450423064489432474261624781147472176877826994359016384944611204172009 + 5769242012146389753850892410357177407739480850431346496641029698576054545035*rho 29271 + 7330628450423064489432474261624781147472176877826994359016384944611204172009*seg31AccY1 rho) = rho 29527 := by
  rw [seg31AccX1_sum, seg31AccY1_sum]
  unfold Seg31.relationRow257 at r257
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r257 ⊢
  exact r257

theorem seg31_prefix_2_addX (rho : Nat -> Seg31.F)
    (r258 : Seg31.relationRow258 rho) :
    rho 29528*(1 + rho 29527) = 7330628450423064489432474261624781147472176877826994359016384944611204172009 + 2284167861755824501228947791765508483386999817169941504534138944699365803042*rho 29271 + 1583565702359568197341221086206223250785038774182815403763984250508186140476*seg31AccX1 rho + 7330628450423064489432474261624781147472176877826994359016384944611204172009*seg31AccY1 rho := by
  rw [add_assoc, seg31AccWeighted1]
  unfold Seg31.relationRow258 at r258
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r258 ⊢
  exact r258

theorem seg31_prefix_2_addY (rho : Nat -> Seg31.F)
    (r259 : Seg31.relationRow259 rho) :
    rho 29529*(1 + (-1)*rho 29527) = 1583565702359568197341221086206223250785038774182815403763984250508186140476 + 129268633123684386295389351182018689176304175765961050375746851796553548133*rho 29271 + 7330628450423064489432474261624781147472176877826994359016384944611204172009*seg31AccX1 rho + 1583565702359568197341221086206223250785038774182815403763984250508186140476*seg31AccY1 rho := by
  rw [add_assoc, seg31AccWeighted1]
  unfold Seg31.relationRow259 at r259
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r259 ⊢
  exact r259

theorem seg31_prefix_2_selX (rho : Nat -> Seg31.F)
    (r260 : Seg31.relationRow260 rho) :
    (1*rho 29273)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX1 rho + rho 29528) = rho 29530 := by
  rw [seg31AccX1_sum]
  unfold Seg31.relationRow260 at r260
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r260 ⊢
  exact r260

theorem seg31_prefix_2_selY (rho : Nat -> Seg31.F)
    (r261 : Seg31.relationRow261 rho) :
    (1*rho 29273)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY1 rho + rho 29529) = rho 29531 := by
  rw [seg31AccY1_sum]
  unfold Seg31.relationRow261 at r261
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r261 ⊢
  exact r261

theorem seg31_prefix_3_v2 (rho : Nat -> Seg31.F)
    (r262 : Seg31.relationRow262 rho) :
    (6797058648839150029635289459958510155655927949801724905097229005197893694661*rho 29271 + 4375534271212962697728589713170319096553412496036318551690834160728740146236*seg31AccX2 rho)*(2253669643409009747765366505106279809881109946637309378064786961724414984255 + 2139652619118088308876888028905056787644762439560588932992552696397712646249*rho 29271 + 2253669643409009747765366505106279809881109946637309378064786961724414984255*seg31AccY2 rho) = rho 29532 := by
  rw [seg31AccX2_sum, seg31AccY2_sum]
  unfold Seg31.relationRow262 at r262
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r262 ⊢
  exact r262

theorem seg31_prefix_3_addX (rho : Nat -> Seg31.F)
    (r263 : Seg31.relationRow263 rho) :
    rho 29533*(1 + rho 29532) = 2253669643409009747765366505106279809881109946637309378064786961724414984255 + 2742882124174671821370477122350270628889871438239147505621209572275713599605*rho 29271 + 8180361010625165449867524118036403664317257486645755405193705371127132794962*seg31AccX2 rho + 2253669643409009747765366505106279809881109946637309378064786961724414984255*seg31AccY2 rho := by
  rw [add_assoc, seg31AccWeighted2]
  unfold Seg31.relationRow263 at r263
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r263 ⊢
  exact r263

theorem seg31_prefix_3_addY (rho : Nat -> Seg31.F)
    (r264 : Seg31.relationRow264 rho) :
    rho 29534*(1 + (-1)*rho 29532) = 8180361010625165449867524118036403664317257486645755405193705371127132794962 + 2292025789201692440597056769487924739173808473639951666424334558890064428903*rho 29271 + 2253669643409009747765366505106279809881109946637309378064786961724414984255*seg31AccX2 rho + 8180361010625165449867524118036403664317257486645755405193705371127132794962*seg31AccY2 rho := by
  rw [add_assoc, seg31AccWeighted2]
  unfold Seg31.relationRow264 at r264
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r264 ⊢
  exact r264

theorem seg31_prefix_3_selX (rho : Nat -> Seg31.F)
    (r265 : Seg31.relationRow265 rho) :
    (1*rho 29274)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX2 rho + rho 29533) = rho 29535 := by
  rw [seg31AccX2_sum]
  unfold Seg31.relationRow265 at r265
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r265 ⊢
  exact r265

theorem seg31_prefix_3_selY (rho : Nat -> Seg31.F)
    (r266 : Seg31.relationRow266 rho) :
    (1*rho 29274)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY2 rho + rho 29534) = rho 29536 := by
  rw [seg31AccY2_sum]
  unfold Seg31.relationRow266 at r266
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r266 ⊢
  exact r266

theorem seg31_prefix_4_v2 (rho : Nat -> Seg31.F)
    (r267 : Seg31.relationRow267 rho) :
    (1261785949431481827498481460183358115685594855606775744571946470136263733465*rho 29271 + 7170631588916822789082415100026500558340825550332287258404858866719737330603*seg31AccX3 rho)*(5985374594098040249084986187295834377767382335536098713014150974058873528425 + 5016981384010441316957462154064291418831022317125242060445294134084510861601*rho 29271 + 5985374594098040249084986187295834377767382335536098713014150974058873528425*seg31AccY3 rho) = rho 29537 := by
  rw [seg31AccX3_sum, seg31AccY3_sum]
  unfold Seg31.relationRow267 at r267
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r267 ⊢
  exact r267

theorem seg31_prefix_4_addX (rho : Nat -> Seg31.F)
    (r268 : Seg31.relationRow268 rho) :
    rho 29538*(1 + rho 29537) = 5985374594098040249084986187295834377767382335536098713014150974058873528425 + 1405931137631089080511919837134276602405343288272728425904496491391642118434*rho 29271 + 5246269736351055855239946375456540150089218132505579618823205171190923359739*seg31AccX3 rho + 5985374594098040249084986187295834377767382335536098713014150974058873528425*seg31AccY3 rho := by
  rw [add_assoc, seg31AccWeighted3]
  unfold Seg31.relationRow268 at r268
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r268 ⊢
  exact r268

theorem seg31_prefix_4_addY (rho : Nat -> Seg31.F)
    (r269 : Seg31.relationRow269 rho) :
    rho 29539*(1 + (-1)*rho 29537) = 5246269736351055855239946375456540150089218132505579618823205171190923359739 + 8170297209188697796690838862827888789353937251559697058373780804696792635828*rho 29271 + 5985374594098040249084986187295834377767382335536098713014150974058873528425*seg31AccX3 rho + 5246269736351055855239946375456540150089218132505579618823205171190923359739*seg31AccY3 rho := by
  rw [add_assoc, seg31AccWeighted3]
  unfold Seg31.relationRow269 at r269
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r269 ⊢
  exact r269

theorem seg31_prefix_4_selX (rho : Nat -> Seg31.F)
    (r270 : Seg31.relationRow270 rho) :
    (1*rho 29275)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX3 rho + rho 29538) = rho 29540 := by
  rw [seg31AccX3_sum]
  unfold Seg31.relationRow270 at r270
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r270 ⊢
  exact r270

theorem seg31_prefix_4_selY (rho : Nat -> Seg31.F)
    (r271 : Seg31.relationRow271 rho) :
    (1*rho 29275)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY3 rho + rho 29539) = rho 29541 := by
  rw [seg31AccY3_sum]
  unfold Seg31.relationRow271 at r271
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r271 ⊢
  exact r271

theorem seg31_prefix_5_v2 (rho : Nat -> Seg31.F)
    (r272 : Seg31.relationRow272 rho) :
    (7699570986038582385232807756011131487898362553501575443870335965318952687161*rho 29271 + 7155238255561475615749980126549282499380750745333704926223150597190127292548*seg31AccX4 rho)*(4961969869576409136495175787941625024433608057224025954036172390781624818680 + 6913821187164931269417813934571733244787394412944087334351989272530383956759*rho 29271 + 4961969869576409136495175787941625024433608057224025954036172390781624818680*seg31AccY4 rho) = rho 29542 := by
  rw [seg31AccX4_sum, seg31AccY4_sum]
  unfold Seg31.relationRow272 at r272
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r272 ⊢
  exact r272

theorem seg31_prefix_5_addX (rho : Nat -> Seg31.F)
    (r273 : Seg31.relationRow273 rho) :
    rho 29543*(1 + rho 29542) = 4961969869576409136495175787941625024433608057224025954036172390781624818680 + 7444672839474762647295424236188986944197504752863855503475997699916583658469*rho 29271 + 7409791087136955676886837493511303406370577288614234640501354455073924068438*seg31AccX4 rho + 4961969869576409136495175787941625024433608057224025954036172390781624818680*seg31AccY4 rho := by
  rw [add_assoc, seg31AccWeighted4]
  unfold Seg31.relationRow273 at r273
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r273 ⊢
  exact r273

theorem seg31_prefix_5_addY (rho : Nat -> Seg31.F)
    (r274 : Seg31.relationRow274 rho) :
    rho 29544*(1 + (-1)*rho 29542) = 7409791087136955676886837493511303406370577288614234640501354455073924068438 + 5053514921647297208700836866773830936995669225056783084895674121596237598235*rho 29271 + 4961969869576409136495175787941625024433608057224025954036172390781624818680*seg31AccX4 rho + 7409791087136955676886837493511303406370577288614234640501354455073924068438*seg31AccY4 rho := by
  rw [add_assoc, seg31AccWeighted4]
  unfold Seg31.relationRow274 at r274
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r274 ⊢
  exact r274

theorem seg31_prefix_5_selX (rho : Nat -> Seg31.F)
    (r275 : Seg31.relationRow275 rho) :
    (1*rho 29276)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX4 rho + rho 29543) = rho 29545 := by
  rw [seg31AccX4_sum]
  unfold Seg31.relationRow275 at r275
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r275 ⊢
  exact r275

theorem seg31_prefix_5_selY (rho : Nat -> Seg31.F)
    (r276 : Seg31.relationRow276 rho) :
    (1*rho 29276)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY4 rho + rho 29544) = rho 29546 := by
  rw [seg31AccY4_sum]
  unfold Seg31.relationRow276 at r276
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r276 ⊢
  exact r276

theorem seg31_prefix_6_v2 (rho : Nat -> Seg31.F)
    (r277 : Seg31.relationRow277 rho) :
    (201043605247302400568675958248027321107194357606698870423568244022018247329*rho 29271 + 7125073694427844070494111794506092296305327843630558036396481404085874312743*seg31AccX5 rho)*(4602731389228056481876658628161634812321742452151129397845777728070765470206 + 5599663625781238014932145740178074139478730320408256423279552692005764982371*rho 29271 + 4602731389228056481876658628161634812321742452151129397845777728070765470206*seg31AccY5 rho) = rho 29547 := by
  rw [seg31AccX5_sum, seg31AccY5_sum]
  unfold Seg31.relationRow277 at r277
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r277 ⊢
  exact r277

theorem seg31_prefix_6_addX (rho : Nat -> Seg31.F)
    (r278 : Seg31.relationRow278 rho) :
    rho 29548*(1 + rho 29547) = 4602731389228056481876658628161634812321742452151129397845777728070765470206 + 4747177763493781650484835932044964684083648525352187979502716334570879911315*rho 29271 + 3356663082756859435011282369524118480618134568033269497371293157399859967283*seg31AccX5 rho + 4602731389228056481876658628161634812321742452151129397845777728070765470206*seg31AccY5 rho := by
  rw [add_assoc, seg31AccWeighted5]
  unfold Seg31.relationRow278 at r278
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r278 ⊢
  exact r278

theorem seg31_prefix_6_addY (rho : Nat -> Seg31.F)
    (r279 : Seg31.relationRow279 rho) :
    rho 29549*(1 + (-1)*rho 29547) = 3356663082756859435011282369524118480618134568033269497371293157399859967283 + 3160882127605711333675716848893301498668288124693258619239548879659553127551*rho 29271 + 4602731389228056481876658628161634812321742452151129397845777728070765470206*seg31AccX5 rho + 3356663082756859435011282369524118480618134568033269497371293157399859967283*seg31AccY5 rho := by
  rw [add_assoc, seg31AccWeighted5]
  unfold Seg31.relationRow279 at r279
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r279 ⊢
  exact r279

theorem seg31_prefix_6_selX (rho : Nat -> Seg31.F)
    (r280 : Seg31.relationRow280 rho) :
    (1*rho 29277)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX5 rho + rho 29548) = rho 29550 := by
  rw [seg31AccX5_sum]
  unfold Seg31.relationRow280 at r280
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r280 ⊢
  exact r280

theorem seg31_prefix_6_selY (rho : Nat -> Seg31.F)
    (r281 : Seg31.relationRow281 rho) :
    (1*rho 29277)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY5 rho + rho 29549) = rho 29551 := by
  rw [seg31AccY5_sum]
  unfold Seg31.relationRow281 at r281
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r281 ⊢
  exact r281

theorem seg31_prefix_7_v2 (rho : Nat -> Seg31.F)
    (r282 : Seg31.relationRow282 rho) :
    (3227302918384576863256780998438690966310203610358279494184436333699483332333*rho 29271 + 5764754835735288903970729372232287357538353079863789115257105120877617089341*seg31AccX6 rho)*(3138181821979513410261790501863397666618234928341272728068224064253822055845 + 6137963534276468845396689112456072775006326924927504266065200537251503576410*rho 29271 + 3138181821979513410261790501863397666618234928341272728068224064253822055845*seg31AccY6 rho) = rho 29552 := by
  rw [seg31AccX6_sum, seg31AccY6_sum]
  unfold Seg31.relationRow282 at r282
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r282 ⊢
  exact r282

theorem seg31_prefix_7_addX (rho : Nat -> Seg31.F)
    (r283 : Seg31.relationRow283 rho) :
    rho 29553*(1 + rho 29552) = 3138181821979513410261790501863397666618234928341272728068224064253822055845 + 2737207941381420110061514279785201064407796872867875865170465456312149865526*rho 29271 + 7057128834952976577195632199555397461949787578619238957571594289260648307325*seg31AccX6 rho + 3138181821979513410261790501863397666618234928341272728068224064253822055845*seg31AccY6 rho := by
  rw [add_assoc, seg31AccWeighted6]
  unfold Seg31.relationRow283 at r283
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r283 ⊢
  exact r283

theorem seg31_prefix_7_addY (rho : Nat -> Seg31.F)
    (r284 : Seg31.relationRow284 rho) :
    rho 29554*(1 + (-1)*rho 29552) = 7057128834952976577195632199555397461949787578619238957571594289260648307325 + 4816825656872654239261236763169618638852247350032693108367889541869012690107*rho 29271 + 3138181821979513410261790501863397666618234928341272728068224064253822055845*seg31AccX6 rho + 7057128834952976577195632199555397461949787578619238957571594289260648307325*seg31AccY6 rho := by
  rw [add_assoc, seg31AccWeighted6]
  unfold Seg31.relationRow284 at r284
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r284 ⊢
  exact r284

theorem seg31_prefix_7_selX (rho : Nat -> Seg31.F)
    (r285 : Seg31.relationRow285 rho) :
    (1*rho 29278)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX6 rho + rho 29553) = rho 29555 := by
  rw [seg31AccX6_sum]
  unfold Seg31.relationRow285 at r285
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r285 ⊢
  exact r285

theorem seg31_prefix_7_selY (rho : Nat -> Seg31.F)
    (r286 : Seg31.relationRow286 rho) :
    (1*rho 29278)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY6 rho + rho 29554) = rho 29556 := by
  rw [seg31AccY6_sum]
  unfold Seg31.relationRow286 at r286
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r286 ⊢
  exact r286

theorem seg31_prefix_8_v2 (rho : Nat -> Seg31.F)
    (r287 : Seg31.relationRow287 rho) :
    (799978936218574075797650752686907230160277414889474780602467453363530461367*rho 29271 + 1600092672692822940186714189359922705142851054896853954591353221334641505328*seg31AccX7 rho)*(4459439039332613404838472382329192479308895207930647915181763202044922699287 + 6343420490949144625286344113701139626352279410779777619360573249971778763958*rho 29271 + 4459439039332613404838472382329192479308895207930647915181763202044922699287*seg31AccY7 rho) = rho 29557 := by
  rw [seg31AccX7_sum, seg31AccY7_sum]
  unfold Seg31.relationRow287 at r287
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r287 ⊢
  exact r287

theorem seg31_prefix_8_addX (rho : Nat -> Seg31.F)
    (r288 : Seg31.relationRow288 rho) :
    rho 29558*(1 + rho 29557) = 4459439039332613404838472382329192479308895207930647915181763202044922699287 + 3123552911867627195740217440836639561170261616445917289999174218603525896393*rho 29271 + 2650430265187285000042394159600882500645314604694124251187418957110572194676*seg31AccX7 rho + 4459439039332613404838472382329192479308895207930647915181763202044922699287*seg31AccY7 rho := by
  rw [add_assoc, seg31AccWeighted7]
  unfold Seg31.relationRow288 at r288
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r288 ⊢
  exact r288

theorem seg31_prefix_8_addY (rho : Nat -> Seg31.F)
    (r289 : Seg31.relationRow289 rho) :
    rho 29559*(1 + (-1)*rho 29557) = 2650430265187285000042394159600882500645314604694124251187418957110572194676 + 4261912733523430298230904496075599606809597086799772080236589833225886462164*rho 29271 + 4459439039332613404838472382329192479308895207930647915181763202044922699287*seg31AccX7 rho + 2650430265187285000042394159600882500645314604694124251187418957110572194676*seg31AccY7 rho := by
  rw [add_assoc, seg31AccWeighted7]
  unfold Seg31.relationRow289 at r289
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r289 ⊢
  exact r289

theorem seg31_prefix_8_selX (rho : Nat -> Seg31.F)
    (r290 : Seg31.relationRow290 rho) :
    (1*rho 29279)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX7 rho + rho 29558) = rho 29560 := by
  rw [seg31AccX7_sum]
  unfold Seg31.relationRow290 at r290
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r290 ⊢
  exact r290

theorem seg31_prefix_8_selY (rho : Nat -> Seg31.F)
    (r291 : Seg31.relationRow291 rho) :
    (1*rho 29279)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY7 rho + rho 29559) = rho 29561 := by
  rw [seg31AccY7_sum]
  unfold Seg31.relationRow291 at r291
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r291 ⊢
  exact r291

theorem seg31_prefix_9_v2 (rho : Nat -> Seg31.F)
    (r292 : Seg31.relationRow292 rho) :
    (2753946190659671014580094235531651781353864369415519594259341189828916299587*rho 29271 + 4461923795116466774041874149135674199037976590393132285736454703898946316138*seg31AccX8 rho)*(3159876063620443670198928135754146488748252819008247076191411442174121929209 + 6153028152449110073837341195201421162829720706603372599899126095481199798739*rho 29271 + 3159876063620443670198928135754146488748252819008247076191411442174121929209*seg31AccY8 rho) = rho 29562 := by
  rw [seg31AccX8_sum, seg31AccY8_sum]
  unfold Seg31.relationRow292 at r292
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r292 ⊢
  exact r292

theorem seg31_prefix_9_addX (rho : Nat -> Seg31.F)
    (r293 : Seg31.relationRow293 rho) :
    rho 29563*(1 + rho 29562) = 3159876063620443670198928135754146488748252819008247076191411442174121929209 + 5094538560644180342034718038113478599569173873219071152963278979094947172027*rho 29271 + 8390033642446096031097241150424547108526352824027718861277514748729574337199*seg31AccX8 rho + 3159876063620443670198928135754146488748252819008247076191411442174121929209*seg31AccY8 rho := by
  rw [add_assoc, seg31AccWeighted8]
  unfold Seg31.relationRow293 at r293
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r293 ⊢
  exact r293

theorem seg31_prefix_9_addY (rho : Nat -> Seg31.F)
    (r294 : Seg31.relationRow294 rho) :
    rho 29564*(1 + (-1)*rho 29562) = 8390033642446096031097241150424547108526352824027718861277514748729574337199 + 5673179433503216726872514386271878227598507024533766729826894117054542824750*rho 29271 + 3159876063620443670198928135754146488748252819008247076191411442174121929209*seg31AccX8 rho + 8390033642446096031097241150424547108526352824027718861277514748729574337199*seg31AccY8 rho := by
  rw [add_assoc, seg31AccWeighted8]
  unfold Seg31.relationRow294 at r294
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r294 ⊢
  exact r294

theorem seg31_prefix_9_selX (rho : Nat -> Seg31.F)
    (r295 : Seg31.relationRow295 rho) :
    (1*rho 29280)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX8 rho + rho 29563) = rho 29565 := by
  rw [seg31AccX8_sum]
  unfold Seg31.relationRow295 at r295
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r295 ⊢
  exact r295

theorem seg31_prefix_9_selY (rho : Nat -> Seg31.F)
    (r296 : Seg31.relationRow296 rho) :
    (1*rho 29280)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY8 rho + rho 29564) = rho 29566 := by
  rw [seg31AccY8_sum]
  unfold Seg31.relationRow296 at r296
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r296 ⊢
  exact r296

theorem seg31_prefix_10_v2 (rho : Nat -> Seg31.F)
    (r297 : Seg31.relationRow297 rho) :
    (5439200642052334304012191743150620482544965772614233135127369743773771354525*rho 29271 + 5499869298221864405245124503710611418739876401135035481979538274627517241001*seg31AccX9 rho)*(2602027503992865545930429950401484088553187762617027322705140522510099517857 + 7841829965495238687267195106992882626385908224391198632069153583519828839921*rho 29271 + 2602027503992865545930429950401484088553187762617027322705140522510099517857*seg31AccY9 rho) = rho 29567 := by
  rw [seg31AccX9_sum, seg31AccY9_sum]
  unfold Seg31.relationRow297 at r297
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r297 ⊢
  exact r297

theorem seg31_prefix_10_addX (rho : Nat -> Seg31.F)
    (r298 : Seg31.relationRow298 rho) :
    rho 29568*(1 + rho 29567) = 2602027503992865545930429950401484088553187762617027322705140522510099517857 + 7804496875839513810856909983722511546956342641829284477664663051034204888252*rho 29271 + 2785893337215782458443255466246319416308883023573181929197441926636334696897*seg31AccX9 rho + 2602027503992865545930429950401484088553187762617027322705140522510099517857*seg31AccY9 rho := by
  rw [add_assoc, seg31AccWeighted9]
  unfold Seg31.relationRow298 at r298
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r298 ⊢
  exact r298

theorem seg31_prefix_10_addY (rho : Nat -> Seg31.F)
    (r299 : Seg31.relationRow299 rho) :
    rho 29569*(1 + (-1)*rho 29567) = 2785893337215782458443255466246319416308883023573181929197441926636334696897 + 1526591129371063567600198686744267366867777523082262761548082550808652598923*rho 29271 + 2602027503992865545930429950401484088553187762617027322705140522510099517857*seg31AccX9 rho + 2785893337215782458443255466246319416308883023573181929197441926636334696897*seg31AccY9 rho := by
  rw [add_assoc, seg31AccWeighted9]
  unfold Seg31.relationRow299 at r299
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r299 ⊢
  exact r299

theorem seg31_prefix_10_selX (rho : Nat -> Seg31.F)
    (r300 : Seg31.relationRow300 rho) :
    (1*rho 29281)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX9 rho + rho 29568) = rho 29570 := by
  rw [seg31AccX9_sum]
  unfold Seg31.relationRow300 at r300
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r300 ⊢
  exact r300

theorem seg31_prefix_10_selY (rho : Nat -> Seg31.F)
    (r301 : Seg31.relationRow301 rho) :
    (1*rho 29281)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY9 rho + rho 29569) = rho 29571 := by
  rw [seg31AccY9_sum]
  unfold Seg31.relationRow301 at r301
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r301 ⊢
  exact r301


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

