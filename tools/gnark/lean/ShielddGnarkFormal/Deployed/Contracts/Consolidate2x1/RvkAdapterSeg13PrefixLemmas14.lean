import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_prefix_141_v2 (rho : Nat -> Seg13.F)
    (r952 : Seg13.relationRow952 rho) :
    (4063373404169819748190960861066741984816630998421400188678845968314285404770*rho 10571 + 8278294750687899711213463308546649712490226032283670262390840185525052780961*seg13AccX140 rho)*(6835996708220158211663886938811823306023964004370022714002111084919529076439 + 3888675705919945147097785690500126271601827267583797106747844098581343277171*rho 10571 + 6835996708220158211663886938811823306023964004370022714002111084919529076439*seg13AccY140 rho) = rho 11522 := by
  rw [seg13AccX140_sum, seg13AccY140_sum]
  unfold Seg13.relationRow952 at r952
  simp only [Seg13.relationLc685, Seg13.relationLc685Part0, Seg13.relationLc685Part1, Seg13.relationLc685Part2, Seg13.relationLc685Part3, Seg13.relationLc685Part4] at r952
  simp only [Seg13.relationLc686, Seg13.relationLc686Part0, Seg13.relationLc686Part1, Seg13.relationLc686Part2, Seg13.relationLc686Part3, Seg13.relationLc686Part4] at r952
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r952 ⊢
  exact r952

theorem seg13_prefix_141_addX (rho : Nat -> Seg13.F)
    (r953 : Seg13.relationRow953 rho) :
    rho 11523*(1 + rho 11522) = 6835996708220158211663886938811823306023964004370022714002111084919529076439 + 7398064275577930814817238275416348594958851529952804556018746724580900668896*rho 10571 + 4654042583846241736398960000477007639166496762571547792104144094946075480485*seg13AccX140 rho + 6835996708220158211663886938811823306023964004370022714002111084919529076439*seg13AccY140 rho := by
  rw [add_assoc, seg13AccWeighted140]
  unfold Seg13.relationRow953 at r953
  simp only [Seg13.relationLc687, Seg13.relationLc687Part0, Seg13.relationLc687Part1, Seg13.relationLc687Part2, Seg13.relationLc687Part3, Seg13.relationLc687Part4, Seg13.relationLc687Part5, Seg13.relationLc687Part6, Seg13.relationLc687Part7, Seg13.relationLc687Part8] at r953
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r953 ⊢
  exact r953

theorem seg13_prefix_141_addY (rho : Nat -> Seg13.F)
    (r954 : Seg13.relationRow954 rho) :
    rho 11524*(1 + (-1)*rho 11522) = 4654042583846241736398960000477007639166496762571547792104144094946075480485 + 8336142164301300436708097350603171861188426873304660608210887812849031670123*rho 10571 + 6835996708220158211663886938811823306023964004370022714002111084919529076439*seg13AccX140 rho + 4654042583846241736398960000477007639166496762571547792104144094946075480485*seg13AccY140 rho := by
  rw [add_assoc, seg13AccWeighted140]
  unfold Seg13.relationRow954 at r954
  simp only [Seg13.relationLc688, Seg13.relationLc688Part0, Seg13.relationLc688Part1, Seg13.relationLc688Part2, Seg13.relationLc688Part3, Seg13.relationLc688Part4, Seg13.relationLc688Part5, Seg13.relationLc688Part6, Seg13.relationLc688Part7, Seg13.relationLc688Part8] at r954
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r954 ⊢
  exact r954

theorem seg13_prefix_141_selX (rho : Nat -> Seg13.F)
    (r955 : Seg13.relationRow955 rho) :
    (1*rho 10712)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX140 rho + rho 11523) = rho 11525 := by
  rw [seg13AccX140_sum]
  unfold Seg13.relationRow955 at r955
  simp only [Seg13.relationLc689, Seg13.relationLc689Part0, Seg13.relationLc689Part1, Seg13.relationLc689Part2, Seg13.relationLc689Part3, Seg13.relationLc689Part4] at r955
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r955 ⊢
  exact r955

theorem seg13_prefix_141_selY (rho : Nat -> Seg13.F)
    (r956 : Seg13.relationRow956 rho) :
    (1*rho 10712)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY140 rho + rho 11524) = rho 11526 := by
  rw [seg13AccY140_sum]
  unfold Seg13.relationRow956 at r956
  simp only [Seg13.relationLc690, Seg13.relationLc690Part0, Seg13.relationLc690Part1, Seg13.relationLc690Part2, Seg13.relationLc690Part3, Seg13.relationLc690Part4] at r956
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r956 ⊢
  exact r956

theorem seg13_prefix_142_v2 (rho : Nat -> Seg13.F)
    (r957 : Seg13.relationRow957 rho) :
    (2104166350232168144330387255692034385682746484618013311749583747661659393491*rho 10571 + 7020431916799759325650095382254167694493003261783313273118624632432520383891*seg13AccX141 rho)*(4584760305757319701927798731600297555139088431316950317811619616514740204742 + 7277029194448818776990454612401046658428438801060623224664381017354621741353*rho 10571 + 4584760305757319701927798731600297555139088431316950317811619616514740204742*seg13AccY141 rho) = rho 11527 := by
  rw [seg13AccX141_sum, seg13AccY141_sum]
  unfold Seg13.relationRow957 at r957
  simp only [Seg13.relationLc691, Seg13.relationLc691Part0, Seg13.relationLc691Part1, Seg13.relationLc691Part2, Seg13.relationLc691Part3, Seg13.relationLc691Part4] at r957
  simp only [Seg13.relationLc692, Seg13.relationLc692Part0, Seg13.relationLc692Part1, Seg13.relationLc692Part2, Seg13.relationLc692Part3, Seg13.relationLc692Part4] at r957
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r957 ⊢
  exact r957

theorem seg13_prefix_142_addX (rho : Nat -> Seg13.F)
    (r958 : Seg13.relationRow958 rho) :
    rho 11528*(1 + rho 11527) = 4584760305757319701927798731600297555139088431316950317811619616514740204742 + 6992609819377166471419766179266314545944274952764993798269927449411584971082*rho 10571 + 592122430005357801669034146794161034695401444216911877182208832780869205502*seg13AccX141 rho + 4584760305757319701927798731600297555139088431316950317811619616514740204742*seg13AccY141 rho := by
  rw [add_assoc, seg13AccWeighted141]
  unfold Seg13.relationRow958 at r958
  simp only [Seg13.relationLc693, Seg13.relationLc693Part0, Seg13.relationLc693Part1, Seg13.relationLc693Part2, Seg13.relationLc693Part3, Seg13.relationLc693Part4, Seg13.relationLc693Part5, Seg13.relationLc693Part6, Seg13.relationLc693Part7, Seg13.relationLc693Part8] at r958
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r958 ⊢
  exact r958

theorem seg13_prefix_142_addY (rho : Nat -> Seg13.F)
    (r959 : Seg13.relationRow959 rho) :
    rho 11529*(1 + (-1)*rho 11527) = 592122430005357801669034146794161034695401444216911877182208832780869205502 + 8410461635640452567548925071056567412560644726740029000698219791563842842019*rho 10571 + 4584760305757319701927798731600297555139088431316950317811619616514740204742*seg13AccX141 rho + 592122430005357801669034146794161034695401444216911877182208832780869205502*seg13AccY141 rho := by
  rw [add_assoc, seg13AccWeighted141]
  unfold Seg13.relationRow959 at r959
  simp only [Seg13.relationLc694, Seg13.relationLc694Part0, Seg13.relationLc694Part1, Seg13.relationLc694Part2, Seg13.relationLc694Part3, Seg13.relationLc694Part4, Seg13.relationLc694Part5, Seg13.relationLc694Part6, Seg13.relationLc694Part7, Seg13.relationLc694Part8] at r959
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r959 ⊢
  exact r959

theorem seg13_prefix_142_selX (rho : Nat -> Seg13.F)
    (r960 : Seg13.relationRow960 rho) :
    (1*rho 10713)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX141 rho + rho 11528) = rho 11530 := by
  rw [seg13AccX141_sum]
  unfold Seg13.relationRow960 at r960
  simp only [Seg13.relationLc695, Seg13.relationLc695Part0, Seg13.relationLc695Part1, Seg13.relationLc695Part2, Seg13.relationLc695Part3, Seg13.relationLc695Part4] at r960
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r960 ⊢
  exact r960

theorem seg13_prefix_142_selY (rho : Nat -> Seg13.F)
    (r961 : Seg13.relationRow961 rho) :
    (1*rho 10713)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY141 rho + rho 11529) = rho 11531 := by
  rw [seg13AccY141_sum]
  unfold Seg13.relationRow961 at r961
  simp only [Seg13.relationLc696, Seg13.relationLc696Part0, Seg13.relationLc696Part1, Seg13.relationLc696Part2, Seg13.relationLc696Part3, Seg13.relationLc696Part4] at r961
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r961 ⊢
  exact r961

theorem seg13_prefix_143_v2 (rho : Nat -> Seg13.F)
    (r962 : Seg13.relationRow962 rho) :
    (4938053888672654270810678854782661645153770246529503148947669032667265402660*rho 10571 + 3778682624279442475367220590942522733490752825963756877840445187645517884389*seg13AccX142 rho)*(7520195057955867023804691213643624442585340867346760214678489227972682710614 + 2117248663306599533961325002399283838091445272984068801478855011548758629520*rho 10571 + 7520195057955867023804691213643624442585340867346760214678489227972682710614*seg13AccY142 rho) = rho 11532 := by
  rw [seg13AccX142_sum, seg13AccY142_sum]
  unfold Seg13.relationRow962 at r962
  simp only [Seg13.relationLc697, Seg13.relationLc697Part0, Seg13.relationLc697Part1, Seg13.relationLc697Part2, Seg13.relationLc697Part3, Seg13.relationLc697Part4] at r962
  simp only [Seg13.relationLc698, Seg13.relationLc698Part0, Seg13.relationLc698Part1, Seg13.relationLc698Part2, Seg13.relationLc698Part3, Seg13.relationLc698Part4] at r962
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r962 ⊢
  exact r962

theorem seg13_prefix_143_addX (rho : Nat -> Seg13.F)
    (r963 : Seg13.relationRow963 rho) :
    rho 11533*(1 + rho 11532) = 7520195057955867023804691213643624442585340867346760214678489227972682710614 + 7390731918291895553294027588760349518270227105604755290268923851963489212186*rho 10571 + 7735718087816147105717267734591023427689706790201012369670516854588254512516*seg13AccX142 rho + 7520195057955867023804691213643624442585340867346760214678489227972682710614*seg13AccY142 rho := by
  rw [add_assoc, seg13AccWeighted142]
  unfold Seg13.relationRow963 at r963
  simp only [Seg13.relationLc699, Seg13.relationLc699Part0, Seg13.relationLc699Part1, Seg13.relationLc699Part2, Seg13.relationLc699Part3, Seg13.relationLc699Part4, Seg13.relationLc699Part5, Seg13.relationLc699Part6, Seg13.relationLc699Part7, Seg13.relationLc699Part8] at r963
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r963 ⊢
  exact r963

theorem seg13_prefix_143_addY (rho : Nat -> Seg13.F)
    (r964 : Seg13.relationRow964 rho) :
    rho 11534*(1 + (-1)*rho 11532) = 7735718087816147105717267734591023427689706790201012369670516854588254512516 + 8191911795387420165726505078694277743693126356244378056681858280789421851413*rho 10571 + 7520195057955867023804691213643624442585340867346760214678489227972682710614*seg13AccX142 rho + 7735718087816147105717267734591023427689706790201012369670516854588254512516*seg13AccY142 rho := by
  rw [add_assoc, seg13AccWeighted142]
  unfold Seg13.relationRow964 at r964
  simp only [Seg13.relationLc700, Seg13.relationLc700Part0, Seg13.relationLc700Part1, Seg13.relationLc700Part2, Seg13.relationLc700Part3, Seg13.relationLc700Part4, Seg13.relationLc700Part5, Seg13.relationLc700Part6, Seg13.relationLc700Part7, Seg13.relationLc700Part8] at r964
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r964 ⊢
  exact r964

theorem seg13_prefix_143_selX (rho : Nat -> Seg13.F)
    (r965 : Seg13.relationRow965 rho) :
    (1*rho 10714)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX142 rho + rho 11533) = rho 11535 := by
  rw [seg13AccX142_sum]
  unfold Seg13.relationRow965 at r965
  simp only [Seg13.relationLc701, Seg13.relationLc701Part0, Seg13.relationLc701Part1, Seg13.relationLc701Part2, Seg13.relationLc701Part3, Seg13.relationLc701Part4] at r965
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r965 ⊢
  exact r965

theorem seg13_prefix_143_selY (rho : Nat -> Seg13.F)
    (r966 : Seg13.relationRow966 rho) :
    (1*rho 10714)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY142 rho + rho 11534) = rho 11536 := by
  rw [seg13AccY142_sum]
  unfold Seg13.relationRow966 at r966
  simp only [Seg13.relationLc702, Seg13.relationLc702Part0, Seg13.relationLc702Part1, Seg13.relationLc702Part2, Seg13.relationLc702Part3, Seg13.relationLc702Part4] at r966
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r966 ⊢
  exact r966

theorem seg13_prefix_144_v2 (rho : Nat -> Seg13.F)
    (r967 : Seg13.relationRow967 rho) :
    (2124268895110141773845156519836220251832881834823947220424969606687161535086*rho 10571 + 1135710693610733492764624259274122606205914527429029626003819811576386849520*seg13AccX143 rho)*(6489319380060007954821780942227644453314371663851918136024024113976499342404 + 1499849023641731880452303193048385938531502224180249824126306744226369219863*rho 10571 + 6489319380060007954821780942227644453314371663851918136024024113976499342404*seg13AccY143 rho) = rho 11537 := by
  rw [seg13AccX143_sum, seg13AccY143_sum]
  unfold Seg13.relationRow967 at r967
  simp only [Seg13.relationLc703, Seg13.relationLc703Part0, Seg13.relationLc703Part1, Seg13.relationLc703Part2, Seg13.relationLc703Part3, Seg13.relationLc703Part4] at r967
  simp only [Seg13.relationLc704, Seg13.relationLc704Part0, Seg13.relationLc704Part1, Seg13.relationLc704Part2, Seg13.relationLc704Part3, Seg13.relationLc704Part4] at r967
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r967 ⊢
  exact r967

theorem seg13_prefix_144_addX (rho : Nat -> Seg13.F)
    (r968 : Seg13.relationRow968 rho) :
    rho 11538*(1 + rho 11537) = 6489319380060007954821780942227644453314371663851918136024024113976499342404 + 6769605616348646276838559454591931596226107695415017868773224994478273747214*rho 10571 + 889266649126723776366729875800001959478233003345389383286795120421487098598*seg13AccX143 rho + 6489319380060007954821780942227644453314371663851918136024024113976499342404*seg13AccY143 rho := by
  rw [add_assoc, seg13AccWeighted143]
  unfold Seg13.relationRow968 at r968
  simp only [Seg13.relationLc705, Seg13.relationLc705Part0, Seg13.relationLc705Part1, Seg13.relationLc705Part2, Seg13.relationLc705Part3, Seg13.relationLc705Part4, Seg13.relationLc705Part5, Seg13.relationLc705Part6, Seg13.relationLc705Part7, Seg13.relationLc705Part8] at r968
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r968 ⊢
  exact r968

theorem seg13_prefix_144_addY (rho : Nat -> Seg13.F)
    (r969 : Seg13.relationRow969 rho) :
    rho 11539*(1 + (-1)*rho 11537) = 889266649126723776366729875800001959478233003345389383286795120421487098598 + 1150985448971808202867051906945978101453740595890484749058149901264833144629*rho 10571 + 6489319380060007954821780942227644453314371663851918136024024113976499342404*seg13AccX143 rho + 889266649126723776366729875800001959478233003345389383286795120421487098598*seg13AccY143 rho := by
  rw [add_assoc, seg13AccWeighted143]
  unfold Seg13.relationRow969 at r969
  simp only [Seg13.relationLc706, Seg13.relationLc706Part0, Seg13.relationLc706Part1, Seg13.relationLc706Part2, Seg13.relationLc706Part3, Seg13.relationLc706Part4, Seg13.relationLc706Part5, Seg13.relationLc706Part6, Seg13.relationLc706Part7, Seg13.relationLc706Part8] at r969
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r969 ⊢
  exact r969

theorem seg13_prefix_144_selX (rho : Nat -> Seg13.F)
    (r970 : Seg13.relationRow970 rho) :
    (1*rho 10715)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX143 rho + rho 11538) = rho 11540 := by
  rw [seg13AccX143_sum]
  unfold Seg13.relationRow970 at r970
  simp only [Seg13.relationLc707, Seg13.relationLc707Part0, Seg13.relationLc707Part1, Seg13.relationLc707Part2, Seg13.relationLc707Part3, Seg13.relationLc707Part4] at r970
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r970 ⊢
  exact r970

theorem seg13_prefix_144_selY (rho : Nat -> Seg13.F)
    (r971 : Seg13.relationRow971 rho) :
    (1*rho 10715)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY143 rho + rho 11539) = rho 11541 := by
  rw [seg13AccY143_sum]
  unfold Seg13.relationRow971 at r971
  simp only [Seg13.relationLc708, Seg13.relationLc708Part0, Seg13.relationLc708Part1, Seg13.relationLc708Part2, Seg13.relationLc708Part3, Seg13.relationLc708Part4] at r971
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r971 ⊢
  exact r971

theorem seg13_prefix_145_v2 (rho : Nat -> Seg13.F)
    (r972 : Seg13.relationRow972 rho) :
    (5659401960593731061170570757997334349881497142436822625115039201429635798804*rho 10571 + 938374591090202613325146222034748958625328173328686440431425148143684449572*seg13AccX144 rho)*(4784454996807291220485780426886963392951464841714825251820803534474080466940 + 5292886040823016778799692579657563686851334379155438097754203142747034024462*rho 10571 + 4784454996807291220485780426886963392951464841714825251820803534474080466940*seg13AccY144 rho) = rho 11542 := by
  rw [seg13AccX144_sum, seg13AccY144_sum]
  unfold Seg13.relationRow972 at r972
  simp only [Seg13.relationLc709, Seg13.relationLc709Part0, Seg13.relationLc709Part1, Seg13.relationLc709Part2, Seg13.relationLc709Part3, Seg13.relationLc709Part4] at r972
  simp only [Seg13.relationLc710, Seg13.relationLc710Part0, Seg13.relationLc710Part1, Seg13.relationLc710Part2, Seg13.relationLc710Part3, Seg13.relationLc710Part4] at r972
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r972 ⊢
  exact r972

theorem seg13_prefix_145_addX (rho : Nat -> Seg13.F)
    (r973 : Seg13.relationRow973 rho) :
    rho 11543*(1 + rho 11542) = 4784454996807291220485780426886963392951464841714825251820803534474080466940 + 6225578912229915515090996543700017288075450888837245471910955138782097550579*rho 10571 + 2133089271567340892524057786995152185500972036046302345963262016555156217755*seg13AccX144 rho + 4784454996807291220485780426886963392951464841714825251820803534474080466940*seg13AccY144 rho := by
  rw [add_assoc, seg13AccWeighted144]
  unfold Seg13.relationRow973 at r973
  simp only [Seg13.relationLc711, Seg13.relationLc711Part0, Seg13.relationLc711Part1, Seg13.relationLc711Part2, Seg13.relationLc711Part3, Seg13.relationLc711Part4, Seg13.relationLc711Part5, Seg13.relationLc711Part6, Seg13.relationLc711Part7, Seg13.relationLc711Part8, Seg13.relationLc711Part9] at r973
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r973 ⊢
  exact r973

theorem seg13_prefix_145_addY (rho : Nat -> Seg13.F)
    (r974 : Seg13.relationRow974 rho) :
    rho 11544*(1 + (-1)*rho 11542) = 2133089271567340892524057786995152185500972036046302345963262016555156217755 + 5895462753110165431949110350547558582963032358329905853206131756431051327803*rho 10571 + 4784454996807291220485780426886963392951464841714825251820803534474080466940*seg13AccX144 rho + 2133089271567340892524057786995152185500972036046302345963262016555156217755*seg13AccY144 rho := by
  rw [add_assoc, seg13AccWeighted144]
  unfold Seg13.relationRow974 at r974
  simp only [Seg13.relationLc712, Seg13.relationLc712Part0, Seg13.relationLc712Part1, Seg13.relationLc712Part2, Seg13.relationLc712Part3, Seg13.relationLc712Part4, Seg13.relationLc712Part5, Seg13.relationLc712Part6, Seg13.relationLc712Part7, Seg13.relationLc712Part8, Seg13.relationLc712Part9] at r974
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r974 ⊢
  exact r974

theorem seg13_prefix_145_selX (rho : Nat -> Seg13.F)
    (r975 : Seg13.relationRow975 rho) :
    (1*rho 10716)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX144 rho + rho 11543) = rho 11545 := by
  rw [seg13AccX144_sum]
  unfold Seg13.relationRow975 at r975
  simp only [Seg13.relationLc713, Seg13.relationLc713Part0, Seg13.relationLc713Part1, Seg13.relationLc713Part2, Seg13.relationLc713Part3, Seg13.relationLc713Part4] at r975
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r975 ⊢
  exact r975

theorem seg13_prefix_145_selY (rho : Nat -> Seg13.F)
    (r976 : Seg13.relationRow976 rho) :
    (1*rho 10716)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY144 rho + rho 11544) = rho 11546 := by
  rw [seg13AccY144_sum]
  unfold Seg13.relationRow976 at r976
  simp only [Seg13.relationLc714, Seg13.relationLc714Part0, Seg13.relationLc714Part1, Seg13.relationLc714Part2, Seg13.relationLc714Part3, Seg13.relationLc714Part4] at r976
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r976 ⊢
  exact r976

theorem seg13_prefix_146_v2 (rho : Nat -> Seg13.F)
    (r977 : Seg13.relationRow977 rho) :
    (6046344471193084493220190367252733367917229149783691492755493061996738308825*rho 10571 + 5220355908337253141300836156003928565430564187318809155802611073103937168205*seg13AccX145 rho)*(3924740846528121427875397278742425546919168093935355749151425995742271844432 + 1721306895664830137509516829929134302350383955275552661355005310982742565584*rho 10571 + 3924740846528121427875397278742425546919168093935355749151425995742271844432*seg13AccY145 rho) = rho 11547 := by
  rw [seg13AccX145_sum, seg13AccY145_sum]
  unfold Seg13.relationRow977 at r977
  simp only [Seg13.relationLc715, Seg13.relationLc715Part0, Seg13.relationLc715Part1, Seg13.relationLc715Part2, Seg13.relationLc715Part3, Seg13.relationLc715Part4] at r977
  simp only [Seg13.relationLc716, Seg13.relationLc716Part0, Seg13.relationLc716Part1, Seg13.relationLc716Part2, Seg13.relationLc716Part3, Seg13.relationLc716Part4] at r977
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r977 ⊢
  exact r977

theorem seg13_prefix_146_addX (rho : Nat -> Seg13.F)
    (r978 : Seg13.relationRow978 rho) :
    rho 11548*(1 + rho 11547) = 3924740846528121427875397278742425546919168093935355749151425995742271844432 + 8253021225732975253543437798933088433651945714980841239160189305052608411565*rho 10571 + 1198096651659609332909565676913110176760779701964004676435644664086645180893*seg13AccX145 rho + 3924740846528121427875397278742425546919168093935355749151425995742271844432*seg13AccY145 rho := by
  rw [add_assoc, seg13AccWeighted145]
  unfold Seg13.relationRow978 at r978
  simp only [Seg13.relationLc717, Seg13.relationLc717Part0, Seg13.relationLc717Part1, Seg13.relationLc717Part2, Seg13.relationLc717Part3, Seg13.relationLc717Part4, Seg13.relationLc717Part5, Seg13.relationLc717Part6, Seg13.relationLc717Part7, Seg13.relationLc717Part8, Seg13.relationLc717Part9] at r978
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r978 ⊢
  exact r978

theorem seg13_prefix_146_addY (rho : Nat -> Seg13.F)
    (r979 : Seg13.relationRow979 rho) :
    rho 11549*(1 + (-1)*rho 11547) = 1198096651659609332909565676913110176760779701964004676435644664086645180893 + 1309295085435103989549045054340041381883031422465276444588972052537622490025*rho 10571 + 3924740846528121427875397278742425546919168093935355749151425995742271844432*seg13AccX145 rho + 1198096651659609332909565676913110176760779701964004676435644664086645180893*seg13AccY145 rho := by
  rw [add_assoc, seg13AccWeighted145]
  unfold Seg13.relationRow979 at r979
  simp only [Seg13.relationLc718, Seg13.relationLc718Part0, Seg13.relationLc718Part1, Seg13.relationLc718Part2, Seg13.relationLc718Part3, Seg13.relationLc718Part4, Seg13.relationLc718Part5, Seg13.relationLc718Part6, Seg13.relationLc718Part7, Seg13.relationLc718Part8, Seg13.relationLc718Part9] at r979
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r979 ⊢
  exact r979

theorem seg13_prefix_146_selX (rho : Nat -> Seg13.F)
    (r980 : Seg13.relationRow980 rho) :
    (1*rho 10717)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX145 rho + rho 11548) = rho 11550 := by
  rw [seg13AccX145_sum]
  unfold Seg13.relationRow980 at r980
  simp only [Seg13.relationLc719, Seg13.relationLc719Part0, Seg13.relationLc719Part1, Seg13.relationLc719Part2, Seg13.relationLc719Part3, Seg13.relationLc719Part4] at r980
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r980 ⊢
  exact r980

theorem seg13_prefix_146_selY (rho : Nat -> Seg13.F)
    (r981 : Seg13.relationRow981 rho) :
    (1*rho 10717)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY145 rho + rho 11549) = rho 11551 := by
  rw [seg13AccY145_sum]
  unfold Seg13.relationRow981 at r981
  simp only [Seg13.relationLc720, Seg13.relationLc720Part0, Seg13.relationLc720Part1, Seg13.relationLc720Part2, Seg13.relationLc720Part3, Seg13.relationLc720Part4] at r981
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r981 ⊢
  exact r981

theorem seg13_prefix_147_v2 (rho : Nat -> Seg13.F)
    (r982 : Seg13.relationRow982 rho) :
    (4688276295826368622850016053938581518710748672193542551483696517311406849461*rho 10571 + 4234403036772419062696778810592241573149156566464472741108884875864372860170*seg13AccX146 rho)*(3322280521625266614430836248375555161788684906405315685000086419176676098000 + 479310377048519084134302755901600248569178343487260514221297806877166865256*rho 10571 + 3322280521625266614430836248375555161788684906405315685000086419176676098000*seg13AccY146 rho) = rho 11552 := by
  rw [seg13AccX146_sum, seg13AccY146_sum]
  unfold Seg13.relationRow982 at r982
  simp only [Seg13.relationLc721, Seg13.relationLc721Part0, Seg13.relationLc721Part1, Seg13.relationLc721Part2, Seg13.relationLc721Part3, Seg13.relationLc721Part4] at r982
  simp only [Seg13.relationLc722, Seg13.relationLc722Part0, Seg13.relationLc722Part1, Seg13.relationLc722Part2, Seg13.relationLc722Part3, Seg13.relationLc722Part4] at r982
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r982 ⊢
  exact r982

theorem seg13_prefix_147_addX (rho : Nat -> Seg13.F)
    (r983 : Seg13.relationRow983 rho) :
    rho 11553*(1 + rho 11552) = 3322280521625266614430836248375555161788684906405315685000086419176676098000 + 318737551768473034487304467124575714540349673256627558422304147848402108879*rho 10571 + 5382265233593639684125019790124154026637456265057278166672106351379303925195*seg13AccX146 rho + 3322280521625266614430836248375555161788684906405315685000086419176676098000*seg13AccY146 rho := by
  rw [add_assoc, seg13AccWeighted146]
  unfold Seg13.relationRow983 at r983
  simp only [Seg13.relationLc723, Seg13.relationLc723Part0, Seg13.relationLc723Part1, Seg13.relationLc723Part2, Seg13.relationLc723Part3, Seg13.relationLc723Part4, Seg13.relationLc723Part5, Seg13.relationLc723Part6, Seg13.relationLc723Part7, Seg13.relationLc723Part8, Seg13.relationLc723Part9] at r983
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r983 ⊢
  exact r983

theorem seg13_prefix_147_addY (rho : Nat -> Seg13.F)
    (r984 : Seg13.relationRow984 rho) :
    rho 11554*(1 + (-1)*rho 11552) = 5382265233593639684125019790124154026637456265057278166672106351379303925195 + 3749326459399944831260985891850275654689277813772661252450598232921014109928*rho 10571 + 3322280521625266614430836248375555161788684906405315685000086419176676098000*seg13AccX146 rho + 5382265233593639684125019790124154026637456265057278166672106351379303925195*seg13AccY146 rho := by
  rw [add_assoc, seg13AccWeighted146]
  unfold Seg13.relationRow984 at r984
  simp only [Seg13.relationLc724, Seg13.relationLc724Part0, Seg13.relationLc724Part1, Seg13.relationLc724Part2, Seg13.relationLc724Part3, Seg13.relationLc724Part4, Seg13.relationLc724Part5, Seg13.relationLc724Part6, Seg13.relationLc724Part7, Seg13.relationLc724Part8, Seg13.relationLc724Part9] at r984
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r984 ⊢
  exact r984

theorem seg13_prefix_147_selX (rho : Nat -> Seg13.F)
    (r985 : Seg13.relationRow985 rho) :
    (1*rho 10718)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX146 rho + rho 11553) = rho 11555 := by
  rw [seg13AccX146_sum]
  unfold Seg13.relationRow985 at r985
  simp only [Seg13.relationLc725, Seg13.relationLc725Part0, Seg13.relationLc725Part1, Seg13.relationLc725Part2, Seg13.relationLc725Part3, Seg13.relationLc725Part4] at r985
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r985 ⊢
  exact r985

theorem seg13_prefix_147_selY (rho : Nat -> Seg13.F)
    (r986 : Seg13.relationRow986 rho) :
    (1*rho 10718)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY146 rho + rho 11554) = rho 11556 := by
  rw [seg13AccY146_sum]
  unfold Seg13.relationRow986 at r986
  simp only [Seg13.relationLc726, Seg13.relationLc726Part0, Seg13.relationLc726Part1, Seg13.relationLc726Part2, Seg13.relationLc726Part3, Seg13.relationLc726Part4] at r986
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r986 ⊢
  exact r986

theorem seg13_prefix_148_v2 (rho : Nat -> Seg13.F)
    (r987 : Seg13.relationRow987 rho) :
    (4680686181738868780173466445942294778812778475524006084648958938128221885398*rho 10571 + 3736510251652676541720141333403773953286420507403643590024712002903325578728*seg13AccX147 rho)*(298954928007943004014451510176946888039752259984727749761682772920877393999 + 218475059214054268059453563571377607346452200528713602273142633824230367437*rho 10571 + 298954928007943004014451510176946888039752259984727749761682772920877393999*seg13AccY147 rho) = rho 11557 := by
  rw [seg13AccX147_sum, seg13AccY147_sum]
  unfold Seg13.relationRow987 at r987
  simp only [Seg13.relationLc727, Seg13.relationLc727Part0, Seg13.relationLc727Part1, Seg13.relationLc727Part2, Seg13.relationLc727Part3, Seg13.relationLc727Part4] at r987
  simp only [Seg13.relationLc728, Seg13.relationLc728Part0, Seg13.relationLc728Part1, Seg13.relationLc728Part2, Seg13.relationLc728Part3, Seg13.relationLc728Part4] at r987
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r987 ⊢
  exact r987

theorem seg13_prefix_148_addX (rho : Nat -> Seg13.F)
    (r988 : Seg13.relationRow988 rho) :
    rho 11558*(1 + rho 11557) = 298954928007943004014451510176946888039752259984727749761682772920877393999 + 4253575685035595940012855699654699004087344461072519663112331920758010491178*rho 10571 + 2584051362702239969727783642756555037717516519758278259054015367517573473172*seg13AccX147 rho + 298954928007943004014451510176946888039752259984727749761682772920877393999*seg13AccY147 rho := by
  rw [add_assoc, seg13AccWeighted147]
  unfold Seg13.relationRow988 at r988
  simp only [Seg13.relationLc729, Seg13.relationLc729Part0, Seg13.relationLc729Part1, Seg13.relationLc729Part2, Seg13.relationLc729Part3, Seg13.relationLc729Part4, Seg13.relationLc729Part5, Seg13.relationLc729Part6, Seg13.relationLc729Part7, Seg13.relationLc729Part8, Seg13.relationLc729Part9] at r988
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r988 ⊢
  exact r988

theorem seg13_prefix_148_addY (rho : Nat -> Seg13.F)
    (r989 : Seg13.relationRow989 rho) :
    rho 11559*(1 + (-1)*rho 11557) = 2584051362702239969727783642756555037717516519758278259054015367517573473172 + 4441515350697547072769915522734436750825214077706035322746967220045928818529*rho 10571 + 298954928007943004014451510176946888039752259984727749761682772920877393999*seg13AccX147 rho + 2584051362702239969727783642756555037717516519758278259054015367517573473172*seg13AccY147 rho := by
  rw [add_assoc, seg13AccWeighted147]
  unfold Seg13.relationRow989 at r989
  simp only [Seg13.relationLc730, Seg13.relationLc730Part0, Seg13.relationLc730Part1, Seg13.relationLc730Part2, Seg13.relationLc730Part3, Seg13.relationLc730Part4, Seg13.relationLc730Part5, Seg13.relationLc730Part6, Seg13.relationLc730Part7, Seg13.relationLc730Part8, Seg13.relationLc730Part9] at r989
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r989 ⊢
  exact r989

theorem seg13_prefix_148_selX (rho : Nat -> Seg13.F)
    (r990 : Seg13.relationRow990 rho) :
    (1*rho 10719)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX147 rho + rho 11558) = rho 11560 := by
  rw [seg13AccX147_sum]
  unfold Seg13.relationRow990 at r990
  simp only [Seg13.relationLc731, Seg13.relationLc731Part0, Seg13.relationLc731Part1, Seg13.relationLc731Part2, Seg13.relationLc731Part3, Seg13.relationLc731Part4] at r990
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r990 ⊢
  exact r990

theorem seg13_prefix_148_selY (rho : Nat -> Seg13.F)
    (r991 : Seg13.relationRow991 rho) :
    (1*rho 10719)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY147 rho + rho 11559) = rho 11561 := by
  rw [seg13AccY147_sum]
  unfold Seg13.relationRow991 at r991
  simp only [Seg13.relationLc732, Seg13.relationLc732Part0, Seg13.relationLc732Part1, Seg13.relationLc732Part2, Seg13.relationLc732Part3, Seg13.relationLc732Part4] at r991
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r991 ⊢
  exact r991

theorem seg13_prefix_149_v2 (rho : Nat -> Seg13.F)
    (r992 : Seg13.relationRow992 rho) :
    (2211009345673416112645617919932112023860936344208789987563683022663977313482*rho 10571 + 2905285606874933389800013731091935386689424730514727187378944100147027031846*seg13AccX148 rho)*(513684046426243087824420172969926796247746955339408132221508340385056764764 + 3158801321492224690766123236898749852131432017480304019443254987406624478127*rho 10571 + 513684046426243087824420172969926796247746955339408132221508340385056764764*seg13AccY148 rho) = rho 11562 := by
  rw [seg13AccX148_sum, seg13AccY148_sum]
  unfold Seg13.relationRow992 at r992
  simp only [Seg13.relationLc733, Seg13.relationLc733Part0, Seg13.relationLc733Part1, Seg13.relationLc733Part2, Seg13.relationLc733Part3, Seg13.relationLc733Part4] at r992
  simp only [Seg13.relationLc734, Seg13.relationLc734Part0, Seg13.relationLc734Part1, Seg13.relationLc734Part2, Seg13.relationLc734Part3, Seg13.relationLc734Part4] at r992
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r992 ⊢
  exact r992

theorem seg13_prefix_149_addX (rho : Nat -> Seg13.F)
    (r993 : Seg13.relationRow993 rho) :
    rho 11563*(1 + rho 11562) = 513684046426243087824420172969926796247746955339408132221508340385056764764 + 6991826170155571022364198248149803280314225438480115438869527331360756237160*rho 10571 + 5490840172619726728439090431478996796759005534251273116601184194479291218970*seg13AccX148 rho + 513684046426243087824420172969926796247746955339408132221508340385056764764*seg13AccY148 rho := by
  rw [add_assoc, seg13AccWeighted148]
  unfold Seg13.relationRow993 at r993
  simp only [Seg13.relationLc735, Seg13.relationLc735Part0, Seg13.relationLc735Part1, Seg13.relationLc735Part2, Seg13.relationLc735Part3, Seg13.relationLc735Part4, Seg13.relationLc735Part5, Seg13.relationLc735Part6, Seg13.relationLc735Part7, Seg13.relationLc735Part8, Seg13.relationLc735Part9] at r993
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r993 ⊢
  exact r993

theorem seg13_prefix_149_addY (rho : Nat -> Seg13.F)
    (r994 : Seg13.relationRow994 rho) :
    rho 11564*(1 + (-1)*rho 11562) = 5490840172619726728439090431478996796759005534251273116601184194479291218970 + 7034116285494096098739970852510960587256386181555087115260134023699770837108*rho 10571 + 513684046426243087824420172969926796247746955339408132221508340385056764764*seg13AccX148 rho + 5490840172619726728439090431478996796759005534251273116601184194479291218970*seg13AccY148 rho := by
  rw [add_assoc, seg13AccWeighted148]
  unfold Seg13.relationRow994 at r994
  simp only [Seg13.relationLc736, Seg13.relationLc736Part0, Seg13.relationLc736Part1, Seg13.relationLc736Part2, Seg13.relationLc736Part3, Seg13.relationLc736Part4, Seg13.relationLc736Part5, Seg13.relationLc736Part6, Seg13.relationLc736Part7, Seg13.relationLc736Part8, Seg13.relationLc736Part9] at r994
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r994 ⊢
  exact r994

theorem seg13_prefix_149_selX (rho : Nat -> Seg13.F)
    (r995 : Seg13.relationRow995 rho) :
    (1*rho 10720)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX148 rho + rho 11563) = rho 11565 := by
  rw [seg13AccX148_sum]
  unfold Seg13.relationRow995 at r995
  simp only [Seg13.relationLc737, Seg13.relationLc737Part0, Seg13.relationLc737Part1, Seg13.relationLc737Part2, Seg13.relationLc737Part3, Seg13.relationLc737Part4] at r995
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r995 ⊢
  exact r995

theorem seg13_prefix_149_selY (rho : Nat -> Seg13.F)
    (r996 : Seg13.relationRow996 rho) :
    (1*rho 10720)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY148 rho + rho 11564) = rho 11566 := by
  rw [seg13AccY148_sum]
  unfold Seg13.relationRow996 at r996
  simp only [Seg13.relationLc738, Seg13.relationLc738Part0, Seg13.relationLc738Part1, Seg13.relationLc738Part2, Seg13.relationLc738Part3, Seg13.relationLc738Part4] at r996
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r996 ⊢
  exact r996


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

