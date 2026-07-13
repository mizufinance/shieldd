import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_prefix_1_v2 (rho : Nat -> Seg30.F)
    (r252 : Seg30.relationRow252 rho) :
    (7666314259614842119075217875095661764022741596306956002104179288686713480750*rho 28317)*(2819826005777211937120848652816998614177620600541178042063871942550730439065 + 890989236521567965256199269370229413142501078177866273656858537885493191408*rho 28317) = rho 28568 := by
  unfold Seg30.relationRow252 at r252
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r252 ⊢
  exact r252

theorem seg30_prefix_1_addX (rho : Nat -> Seg30.F)
    (r253 : Seg30.relationRow253 rho) :
    rho 28569*(1 + rho 28568) = 2819826005777211937120848652816998614177620600541178042063871942550730439065 + 432310032815488429380005658968422224823070211344329836845468487922671009693*rho 28317 := by
  unfold Seg30.relationRow253 at r253
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r253 ⊢
  exact r253

theorem seg30_prefix_1_addY (rho : Nat -> Seg30.F)
    (r254 : Seg30.relationRow254 rho) :
    rho 28570*(1 + (-1)*rho 28568) = 3389385942610507627059167016978655778640740163498436687682704594713126572823 + 7357496755043946632708945428288702189108099325839934949187639837550109708737*rho 28317 := by
  unfold Seg30.relationRow254 at r254
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r254 ⊢
  exact r254

theorem seg30_prefix_1_selX (rho : Nat -> Seg30.F)
    (r255 : Seg30.relationRow255 rho) :
    (1*rho 28318)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + rho 28569) = rho 28571 := by
  unfold Seg30.relationRow255 at r255
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r255 ⊢
  exact r255

theorem seg30_prefix_1_selY (rho : Nat -> Seg30.F)
    (r256 : Seg30.relationRow256 rho) :
    (1*rho 28318)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + rho 28570) = rho 28572 := by
  unfold Seg30.relationRow256 at r256
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r256 ⊢
  exact r256

theorem seg30_prefix_2_v2 (rho : Nat -> Seg30.F)
    (r257 : Seg30.relationRow257 rho) :
    (1834793207280290867390005895156704156901269454413112280319152067532631523274*rho 28317 + 4386636651797864042993986078645103862843113109085208159654284735976701080790*seg30AccX1 rho)*(7330628450423064489432474261624781147472176877826994359016384944611204172009 + 5769242012146389753850892410357177407739480850431346496641029698576054545035*rho 28317 + 7330628450423064489432474261624781147472176877826994359016384944611204172009*seg30AccY1 rho) = rho 28573 := by
  rw [seg30AccX1_sum, seg30AccY1_sum]
  unfold Seg30.relationRow257 at r257
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r257 ⊢
  exact r257

theorem seg30_prefix_2_addX (rho : Nat -> Seg30.F)
    (r258 : Seg30.relationRow258 rho) :
    rho 28574*(1 + rho 28573) = 7330628450423064489432474261624781147472176877826994359016384944611204172009 + 2284167861755824501228947791765508483386999817169941504534138944699365803042*rho 28317 + 1583565702359568197341221086206223250785038774182815403763984250508186140476*seg30AccX1 rho + 7330628450423064489432474261624781147472176877826994359016384944611204172009*seg30AccY1 rho := by
  rw [add_assoc, seg30AccWeighted1]
  unfold Seg30.relationRow258 at r258
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r258 ⊢
  exact r258

theorem seg30_prefix_2_addY (rho : Nat -> Seg30.F)
    (r259 : Seg30.relationRow259 rho) :
    rho 28575*(1 + (-1)*rho 28573) = 1583565702359568197341221086206223250785038774182815403763984250508186140476 + 129268633123684386295389351182018689176304175765961050375746851796553548133*rho 28317 + 7330628450423064489432474261624781147472176877826994359016384944611204172009*seg30AccX1 rho + 1583565702359568197341221086206223250785038774182815403763984250508186140476*seg30AccY1 rho := by
  rw [add_assoc, seg30AccWeighted1]
  unfold Seg30.relationRow259 at r259
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r259 ⊢
  exact r259

theorem seg30_prefix_2_selX (rho : Nat -> Seg30.F)
    (r260 : Seg30.relationRow260 rho) :
    (1*rho 28319)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX1 rho + rho 28574) = rho 28576 := by
  rw [seg30AccX1_sum]
  unfold Seg30.relationRow260 at r260
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r260 ⊢
  exact r260

theorem seg30_prefix_2_selY (rho : Nat -> Seg30.F)
    (r261 : Seg30.relationRow261 rho) :
    (1*rho 28319)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY1 rho + rho 28575) = rho 28577 := by
  rw [seg30AccY1_sum]
  unfold Seg30.relationRow261 at r261
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r261 ⊢
  exact r261

theorem seg30_prefix_3_v2 (rho : Nat -> Seg30.F)
    (r262 : Seg30.relationRow262 rho) :
    (6797058648839150029635289459958510155655927949801724905097229005197893694661*rho 28317 + 4375534271212962697728589713170319096553412496036318551690834160728740146236*seg30AccX2 rho)*(2253669643409009747765366505106279809881109946637309378064786961724414984255 + 2139652619118088308876888028905056787644762439560588932992552696397712646249*rho 28317 + 2253669643409009747765366505106279809881109946637309378064786961724414984255*seg30AccY2 rho) = rho 28578 := by
  rw [seg30AccX2_sum, seg30AccY2_sum]
  unfold Seg30.relationRow262 at r262
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r262 ⊢
  exact r262

theorem seg30_prefix_3_addX (rho : Nat -> Seg30.F)
    (r263 : Seg30.relationRow263 rho) :
    rho 28579*(1 + rho 28578) = 2253669643409009747765366505106279809881109946637309378064786961724414984255 + 2742882124174671821370477122350270628889871438239147505621209572275713599605*rho 28317 + 8180361010625165449867524118036403664317257486645755405193705371127132794962*seg30AccX2 rho + 2253669643409009747765366505106279809881109946637309378064786961724414984255*seg30AccY2 rho := by
  rw [add_assoc, seg30AccWeighted2]
  unfold Seg30.relationRow263 at r263
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r263 ⊢
  exact r263

theorem seg30_prefix_3_addY (rho : Nat -> Seg30.F)
    (r264 : Seg30.relationRow264 rho) :
    rho 28580*(1 + (-1)*rho 28578) = 8180361010625165449867524118036403664317257486645755405193705371127132794962 + 2292025789201692440597056769487924739173808473639951666424334558890064428903*rho 28317 + 2253669643409009747765366505106279809881109946637309378064786961724414984255*seg30AccX2 rho + 8180361010625165449867524118036403664317257486645755405193705371127132794962*seg30AccY2 rho := by
  rw [add_assoc, seg30AccWeighted2]
  unfold Seg30.relationRow264 at r264
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r264 ⊢
  exact r264

theorem seg30_prefix_3_selX (rho : Nat -> Seg30.F)
    (r265 : Seg30.relationRow265 rho) :
    (1*rho 28320)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX2 rho + rho 28579) = rho 28581 := by
  rw [seg30AccX2_sum]
  unfold Seg30.relationRow265 at r265
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r265 ⊢
  exact r265

theorem seg30_prefix_3_selY (rho : Nat -> Seg30.F)
    (r266 : Seg30.relationRow266 rho) :
    (1*rho 28320)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY2 rho + rho 28580) = rho 28582 := by
  rw [seg30AccY2_sum]
  unfold Seg30.relationRow266 at r266
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r266 ⊢
  exact r266

theorem seg30_prefix_4_v2 (rho : Nat -> Seg30.F)
    (r267 : Seg30.relationRow267 rho) :
    (1261785949431481827498481460183358115685594855606775744571946470136263733465*rho 28317 + 7170631588916822789082415100026500558340825550332287258404858866719737330603*seg30AccX3 rho)*(5985374594098040249084986187295834377767382335536098713014150974058873528425 + 5016981384010441316957462154064291418831022317125242060445294134084510861601*rho 28317 + 5985374594098040249084986187295834377767382335536098713014150974058873528425*seg30AccY3 rho) = rho 28583 := by
  rw [seg30AccX3_sum, seg30AccY3_sum]
  unfold Seg30.relationRow267 at r267
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r267 ⊢
  exact r267

theorem seg30_prefix_4_addX (rho : Nat -> Seg30.F)
    (r268 : Seg30.relationRow268 rho) :
    rho 28584*(1 + rho 28583) = 5985374594098040249084986187295834377767382335536098713014150974058873528425 + 1405931137631089080511919837134276602405343288272728425904496491391642118434*rho 28317 + 5246269736351055855239946375456540150089218132505579618823205171190923359739*seg30AccX3 rho + 5985374594098040249084986187295834377767382335536098713014150974058873528425*seg30AccY3 rho := by
  rw [add_assoc, seg30AccWeighted3]
  unfold Seg30.relationRow268 at r268
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r268 ⊢
  exact r268

theorem seg30_prefix_4_addY (rho : Nat -> Seg30.F)
    (r269 : Seg30.relationRow269 rho) :
    rho 28585*(1 + (-1)*rho 28583) = 5246269736351055855239946375456540150089218132505579618823205171190923359739 + 8170297209188697796690838862827888789353937251559697058373780804696792635828*rho 28317 + 5985374594098040249084986187295834377767382335536098713014150974058873528425*seg30AccX3 rho + 5246269736351055855239946375456540150089218132505579618823205171190923359739*seg30AccY3 rho := by
  rw [add_assoc, seg30AccWeighted3]
  unfold Seg30.relationRow269 at r269
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r269 ⊢
  exact r269

theorem seg30_prefix_4_selX (rho : Nat -> Seg30.F)
    (r270 : Seg30.relationRow270 rho) :
    (1*rho 28321)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX3 rho + rho 28584) = rho 28586 := by
  rw [seg30AccX3_sum]
  unfold Seg30.relationRow270 at r270
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r270 ⊢
  exact r270

theorem seg30_prefix_4_selY (rho : Nat -> Seg30.F)
    (r271 : Seg30.relationRow271 rho) :
    (1*rho 28321)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY3 rho + rho 28585) = rho 28587 := by
  rw [seg30AccY3_sum]
  unfold Seg30.relationRow271 at r271
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r271 ⊢
  exact r271

theorem seg30_prefix_5_v2 (rho : Nat -> Seg30.F)
    (r272 : Seg30.relationRow272 rho) :
    (7699570986038582385232807756011131487898362553501575443870335965318952687161*rho 28317 + 7155238255561475615749980126549282499380750745333704926223150597190127292548*seg30AccX4 rho)*(4961969869576409136495175787941625024433608057224025954036172390781624818680 + 6913821187164931269417813934571733244787394412944087334351989272530383956759*rho 28317 + 4961969869576409136495175787941625024433608057224025954036172390781624818680*seg30AccY4 rho) = rho 28588 := by
  rw [seg30AccX4_sum, seg30AccY4_sum]
  unfold Seg30.relationRow272 at r272
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r272 ⊢
  exact r272

theorem seg30_prefix_5_addX (rho : Nat -> Seg30.F)
    (r273 : Seg30.relationRow273 rho) :
    rho 28589*(1 + rho 28588) = 4961969869576409136495175787941625024433608057224025954036172390781624818680 + 7444672839474762647295424236188986944197504752863855503475997699916583658469*rho 28317 + 7409791087136955676886837493511303406370577288614234640501354455073924068438*seg30AccX4 rho + 4961969869576409136495175787941625024433608057224025954036172390781624818680*seg30AccY4 rho := by
  rw [add_assoc, seg30AccWeighted4]
  unfold Seg30.relationRow273 at r273
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r273 ⊢
  exact r273

theorem seg30_prefix_5_addY (rho : Nat -> Seg30.F)
    (r274 : Seg30.relationRow274 rho) :
    rho 28590*(1 + (-1)*rho 28588) = 7409791087136955676886837493511303406370577288614234640501354455073924068438 + 5053514921647297208700836866773830936995669225056783084895674121596237598235*rho 28317 + 4961969869576409136495175787941625024433608057224025954036172390781624818680*seg30AccX4 rho + 7409791087136955676886837493511303406370577288614234640501354455073924068438*seg30AccY4 rho := by
  rw [add_assoc, seg30AccWeighted4]
  unfold Seg30.relationRow274 at r274
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r274 ⊢
  exact r274

theorem seg30_prefix_5_selX (rho : Nat -> Seg30.F)
    (r275 : Seg30.relationRow275 rho) :
    (1*rho 28322)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX4 rho + rho 28589) = rho 28591 := by
  rw [seg30AccX4_sum]
  unfold Seg30.relationRow275 at r275
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r275 ⊢
  exact r275

theorem seg30_prefix_5_selY (rho : Nat -> Seg30.F)
    (r276 : Seg30.relationRow276 rho) :
    (1*rho 28322)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY4 rho + rho 28590) = rho 28592 := by
  rw [seg30AccY4_sum]
  unfold Seg30.relationRow276 at r276
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r276 ⊢
  exact r276

theorem seg30_prefix_6_v2 (rho : Nat -> Seg30.F)
    (r277 : Seg30.relationRow277 rho) :
    (201043605247302400568675958248027321107194357606698870423568244022018247329*rho 28317 + 7125073694427844070494111794506092296305327843630558036396481404085874312743*seg30AccX5 rho)*(4602731389228056481876658628161634812321742452151129397845777728070765470206 + 5599663625781238014932145740178074139478730320408256423279552692005764982371*rho 28317 + 4602731389228056481876658628161634812321742452151129397845777728070765470206*seg30AccY5 rho) = rho 28593 := by
  rw [seg30AccX5_sum, seg30AccY5_sum]
  unfold Seg30.relationRow277 at r277
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r277 ⊢
  exact r277

theorem seg30_prefix_6_addX (rho : Nat -> Seg30.F)
    (r278 : Seg30.relationRow278 rho) :
    rho 28594*(1 + rho 28593) = 4602731389228056481876658628161634812321742452151129397845777728070765470206 + 4747177763493781650484835932044964684083648525352187979502716334570879911315*rho 28317 + 3356663082756859435011282369524118480618134568033269497371293157399859967283*seg30AccX5 rho + 4602731389228056481876658628161634812321742452151129397845777728070765470206*seg30AccY5 rho := by
  rw [add_assoc, seg30AccWeighted5]
  unfold Seg30.relationRow278 at r278
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r278 ⊢
  exact r278

theorem seg30_prefix_6_addY (rho : Nat -> Seg30.F)
    (r279 : Seg30.relationRow279 rho) :
    rho 28595*(1 + (-1)*rho 28593) = 3356663082756859435011282369524118480618134568033269497371293157399859967283 + 3160882127605711333675716848893301498668288124693258619239548879659553127551*rho 28317 + 4602731389228056481876658628161634812321742452151129397845777728070765470206*seg30AccX5 rho + 3356663082756859435011282369524118480618134568033269497371293157399859967283*seg30AccY5 rho := by
  rw [add_assoc, seg30AccWeighted5]
  unfold Seg30.relationRow279 at r279
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r279 ⊢
  exact r279

theorem seg30_prefix_6_selX (rho : Nat -> Seg30.F)
    (r280 : Seg30.relationRow280 rho) :
    (1*rho 28323)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX5 rho + rho 28594) = rho 28596 := by
  rw [seg30AccX5_sum]
  unfold Seg30.relationRow280 at r280
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r280 ⊢
  exact r280

theorem seg30_prefix_6_selY (rho : Nat -> Seg30.F)
    (r281 : Seg30.relationRow281 rho) :
    (1*rho 28323)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY5 rho + rho 28595) = rho 28597 := by
  rw [seg30AccY5_sum]
  unfold Seg30.relationRow281 at r281
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r281 ⊢
  exact r281

theorem seg30_prefix_7_v2 (rho : Nat -> Seg30.F)
    (r282 : Seg30.relationRow282 rho) :
    (3227302918384576863256780998438690966310203610358279494184436333699483332333*rho 28317 + 5764754835735288903970729372232287357538353079863789115257105120877617089341*seg30AccX6 rho)*(3138181821979513410261790501863397666618234928341272728068224064253822055845 + 6137963534276468845396689112456072775006326924927504266065200537251503576410*rho 28317 + 3138181821979513410261790501863397666618234928341272728068224064253822055845*seg30AccY6 rho) = rho 28598 := by
  rw [seg30AccX6_sum, seg30AccY6_sum]
  unfold Seg30.relationRow282 at r282
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r282 ⊢
  exact r282

theorem seg30_prefix_7_addX (rho : Nat -> Seg30.F)
    (r283 : Seg30.relationRow283 rho) :
    rho 28599*(1 + rho 28598) = 3138181821979513410261790501863397666618234928341272728068224064253822055845 + 2737207941381420110061514279785201064407796872867875865170465456312149865526*rho 28317 + 7057128834952976577195632199555397461949787578619238957571594289260648307325*seg30AccX6 rho + 3138181821979513410261790501863397666618234928341272728068224064253822055845*seg30AccY6 rho := by
  rw [add_assoc, seg30AccWeighted6]
  unfold Seg30.relationRow283 at r283
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r283 ⊢
  exact r283

theorem seg30_prefix_7_addY (rho : Nat -> Seg30.F)
    (r284 : Seg30.relationRow284 rho) :
    rho 28600*(1 + (-1)*rho 28598) = 7057128834952976577195632199555397461949787578619238957571594289260648307325 + 4816825656872654239261236763169618638852247350032693108367889541869012690107*rho 28317 + 3138181821979513410261790501863397666618234928341272728068224064253822055845*seg30AccX6 rho + 7057128834952976577195632199555397461949787578619238957571594289260648307325*seg30AccY6 rho := by
  rw [add_assoc, seg30AccWeighted6]
  unfold Seg30.relationRow284 at r284
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r284 ⊢
  exact r284

theorem seg30_prefix_7_selX (rho : Nat -> Seg30.F)
    (r285 : Seg30.relationRow285 rho) :
    (1*rho 28324)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX6 rho + rho 28599) = rho 28601 := by
  rw [seg30AccX6_sum]
  unfold Seg30.relationRow285 at r285
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r285 ⊢
  exact r285

theorem seg30_prefix_7_selY (rho : Nat -> Seg30.F)
    (r286 : Seg30.relationRow286 rho) :
    (1*rho 28324)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY6 rho + rho 28600) = rho 28602 := by
  rw [seg30AccY6_sum]
  unfold Seg30.relationRow286 at r286
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r286 ⊢
  exact r286

theorem seg30_prefix_8_v2 (rho : Nat -> Seg30.F)
    (r287 : Seg30.relationRow287 rho) :
    (799978936218574075797650752686907230160277414889474780602467453363530461367*rho 28317 + 1600092672692822940186714189359922705142851054896853954591353221334641505328*seg30AccX7 rho)*(4459439039332613404838472382329192479308895207930647915181763202044922699287 + 6343420490949144625286344113701139626352279410779777619360573249971778763958*rho 28317 + 4459439039332613404838472382329192479308895207930647915181763202044922699287*seg30AccY7 rho) = rho 28603 := by
  rw [seg30AccX7_sum, seg30AccY7_sum]
  unfold Seg30.relationRow287 at r287
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r287 ⊢
  exact r287

theorem seg30_prefix_8_addX (rho : Nat -> Seg30.F)
    (r288 : Seg30.relationRow288 rho) :
    rho 28604*(1 + rho 28603) = 4459439039332613404838472382329192479308895207930647915181763202044922699287 + 3123552911867627195740217440836639561170261616445917289999174218603525896393*rho 28317 + 2650430265187285000042394159600882500645314604694124251187418957110572194676*seg30AccX7 rho + 4459439039332613404838472382329192479308895207930647915181763202044922699287*seg30AccY7 rho := by
  rw [add_assoc, seg30AccWeighted7]
  unfold Seg30.relationRow288 at r288
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r288 ⊢
  exact r288

theorem seg30_prefix_8_addY (rho : Nat -> Seg30.F)
    (r289 : Seg30.relationRow289 rho) :
    rho 28605*(1 + (-1)*rho 28603) = 2650430265187285000042394159600882500645314604694124251187418957110572194676 + 4261912733523430298230904496075599606809597086799772080236589833225886462164*rho 28317 + 4459439039332613404838472382329192479308895207930647915181763202044922699287*seg30AccX7 rho + 2650430265187285000042394159600882500645314604694124251187418957110572194676*seg30AccY7 rho := by
  rw [add_assoc, seg30AccWeighted7]
  unfold Seg30.relationRow289 at r289
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r289 ⊢
  exact r289

theorem seg30_prefix_8_selX (rho : Nat -> Seg30.F)
    (r290 : Seg30.relationRow290 rho) :
    (1*rho 28325)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX7 rho + rho 28604) = rho 28606 := by
  rw [seg30AccX7_sum]
  unfold Seg30.relationRow290 at r290
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r290 ⊢
  exact r290

theorem seg30_prefix_8_selY (rho : Nat -> Seg30.F)
    (r291 : Seg30.relationRow291 rho) :
    (1*rho 28325)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY7 rho + rho 28605) = rho 28607 := by
  rw [seg30AccY7_sum]
  unfold Seg30.relationRow291 at r291
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r291 ⊢
  exact r291

theorem seg30_prefix_9_v2 (rho : Nat -> Seg30.F)
    (r292 : Seg30.relationRow292 rho) :
    (2753946190659671014580094235531651781353864369415519594259341189828916299587*rho 28317 + 4461923795116466774041874149135674199037976590393132285736454703898946316138*seg30AccX8 rho)*(3159876063620443670198928135754146488748252819008247076191411442174121929209 + 6153028152449110073837341195201421162829720706603372599899126095481199798739*rho 28317 + 3159876063620443670198928135754146488748252819008247076191411442174121929209*seg30AccY8 rho) = rho 28608 := by
  rw [seg30AccX8_sum, seg30AccY8_sum]
  unfold Seg30.relationRow292 at r292
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r292 ⊢
  exact r292

theorem seg30_prefix_9_addX (rho : Nat -> Seg30.F)
    (r293 : Seg30.relationRow293 rho) :
    rho 28609*(1 + rho 28608) = 3159876063620443670198928135754146488748252819008247076191411442174121929209 + 5094538560644180342034718038113478599569173873219071152963278979094947172027*rho 28317 + 8390033642446096031097241150424547108526352824027718861277514748729574337199*seg30AccX8 rho + 3159876063620443670198928135754146488748252819008247076191411442174121929209*seg30AccY8 rho := by
  rw [add_assoc, seg30AccWeighted8]
  unfold Seg30.relationRow293 at r293
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r293 ⊢
  exact r293

theorem seg30_prefix_9_addY (rho : Nat -> Seg30.F)
    (r294 : Seg30.relationRow294 rho) :
    rho 28610*(1 + (-1)*rho 28608) = 8390033642446096031097241150424547108526352824027718861277514748729574337199 + 5673179433503216726872514386271878227598507024533766729826894117054542824750*rho 28317 + 3159876063620443670198928135754146488748252819008247076191411442174121929209*seg30AccX8 rho + 8390033642446096031097241150424547108526352824027718861277514748729574337199*seg30AccY8 rho := by
  rw [add_assoc, seg30AccWeighted8]
  unfold Seg30.relationRow294 at r294
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r294 ⊢
  exact r294

theorem seg30_prefix_9_selX (rho : Nat -> Seg30.F)
    (r295 : Seg30.relationRow295 rho) :
    (1*rho 28326)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX8 rho + rho 28609) = rho 28611 := by
  rw [seg30AccX8_sum]
  unfold Seg30.relationRow295 at r295
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r295 ⊢
  exact r295

theorem seg30_prefix_9_selY (rho : Nat -> Seg30.F)
    (r296 : Seg30.relationRow296 rho) :
    (1*rho 28326)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY8 rho + rho 28610) = rho 28612 := by
  rw [seg30AccY8_sum]
  unfold Seg30.relationRow296 at r296
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r296 ⊢
  exact r296

theorem seg30_prefix_10_v2 (rho : Nat -> Seg30.F)
    (r297 : Seg30.relationRow297 rho) :
    (5439200642052334304012191743150620482544965772614233135127369743773771354525*rho 28317 + 5499869298221864405245124503710611418739876401135035481979538274627517241001*seg30AccX9 rho)*(2602027503992865545930429950401484088553187762617027322705140522510099517857 + 7841829965495238687267195106992882626385908224391198632069153583519828839921*rho 28317 + 2602027503992865545930429950401484088553187762617027322705140522510099517857*seg30AccY9 rho) = rho 28613 := by
  rw [seg30AccX9_sum, seg30AccY9_sum]
  unfold Seg30.relationRow297 at r297
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r297 ⊢
  exact r297

theorem seg30_prefix_10_addX (rho : Nat -> Seg30.F)
    (r298 : Seg30.relationRow298 rho) :
    rho 28614*(1 + rho 28613) = 2602027503992865545930429950401484088553187762617027322705140522510099517857 + 7804496875839513810856909983722511546956342641829284477664663051034204888252*rho 28317 + 2785893337215782458443255466246319416308883023573181929197441926636334696897*seg30AccX9 rho + 2602027503992865545930429950401484088553187762617027322705140522510099517857*seg30AccY9 rho := by
  rw [add_assoc, seg30AccWeighted9]
  unfold Seg30.relationRow298 at r298
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r298 ⊢
  exact r298

theorem seg30_prefix_10_addY (rho : Nat -> Seg30.F)
    (r299 : Seg30.relationRow299 rho) :
    rho 28615*(1 + (-1)*rho 28613) = 2785893337215782458443255466246319416308883023573181929197441926636334696897 + 1526591129371063567600198686744267366867777523082262761548082550808652598923*rho 28317 + 2602027503992865545930429950401484088553187762617027322705140522510099517857*seg30AccX9 rho + 2785893337215782458443255466246319416308883023573181929197441926636334696897*seg30AccY9 rho := by
  rw [add_assoc, seg30AccWeighted9]
  unfold Seg30.relationRow299 at r299
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r299 ⊢
  exact r299

theorem seg30_prefix_10_selX (rho : Nat -> Seg30.F)
    (r300 : Seg30.relationRow300 rho) :
    (1*rho 28327)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX9 rho + rho 28614) = rho 28616 := by
  rw [seg30AccX9_sum]
  unfold Seg30.relationRow300 at r300
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r300 ⊢
  exact r300

theorem seg30_prefix_10_selY (rho : Nat -> Seg30.F)
    (r301 : Seg30.relationRow301 rho) :
    (1*rho 28327)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY9 rho + rho 28615) = rho 28617 := by
  rw [seg30AccY9_sum]
  unfold Seg30.relationRow301 at r301
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r301 ⊢
  exact r301


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

