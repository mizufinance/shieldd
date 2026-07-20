import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_prefix_141_v2 (rho : Nat -> Seg15.F)
    (r952 : Seg15.relationRow952 rho) :
    (4063373404169819748190960861066741984816630998421400188678845968314285404770*rho 16130 + 8278294750687899711213463308546649712490226032283670262390840185525052780961*seg15AccX140 rho)*(6835996708220158211663886938811823306023964004370022714002111084919529076439 + 3888675705919945147097785690500126271601827267583797106747844098581343277171*rho 16130 + 6835996708220158211663886938811823306023964004370022714002111084919529076439*seg15AccY140 rho) = rho 17081 := by
  rw [seg15AccX140_sum, seg15AccY140_sum]
  unfold Seg15.relationRow952 at r952
  simp only [Seg15.relationLc685, Seg15.relationLc685Part0, Seg15.relationLc685Part1, Seg15.relationLc685Part2, Seg15.relationLc685Part3, Seg15.relationLc685Part4] at r952
  simp only [Seg15.relationLc686, Seg15.relationLc686Part0, Seg15.relationLc686Part1, Seg15.relationLc686Part2, Seg15.relationLc686Part3, Seg15.relationLc686Part4] at r952
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r952 ⊢
  exact r952

theorem seg15_prefix_141_addX (rho : Nat -> Seg15.F)
    (r953 : Seg15.relationRow953 rho) :
    rho 17082*(1 + rho 17081) = 6835996708220158211663886938811823306023964004370022714002111084919529076439 + 7398064275577930814817238275416348594958851529952804556018746724580900668896*rho 16130 + 4654042583846241736398960000477007639166496762571547792104144094946075480485*seg15AccX140 rho + 6835996708220158211663886938811823306023964004370022714002111084919529076439*seg15AccY140 rho := by
  rw [add_assoc, seg15AccWeighted140]
  unfold Seg15.relationRow953 at r953
  simp only [Seg15.relationLc687, Seg15.relationLc687Part0, Seg15.relationLc687Part1, Seg15.relationLc687Part2, Seg15.relationLc687Part3, Seg15.relationLc687Part4, Seg15.relationLc687Part5, Seg15.relationLc687Part6, Seg15.relationLc687Part7, Seg15.relationLc687Part8] at r953
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r953 ⊢
  exact r953

theorem seg15_prefix_141_addY (rho : Nat -> Seg15.F)
    (r954 : Seg15.relationRow954 rho) :
    rho 17083*(1 + (-1)*rho 17081) = 4654042583846241736398960000477007639166496762571547792104144094946075480485 + 8336142164301300436708097350603171861188426873304660608210887812849031670123*rho 16130 + 6835996708220158211663886938811823306023964004370022714002111084919529076439*seg15AccX140 rho + 4654042583846241736398960000477007639166496762571547792104144094946075480485*seg15AccY140 rho := by
  rw [add_assoc, seg15AccWeighted140]
  unfold Seg15.relationRow954 at r954
  simp only [Seg15.relationLc688, Seg15.relationLc688Part0, Seg15.relationLc688Part1, Seg15.relationLc688Part2, Seg15.relationLc688Part3, Seg15.relationLc688Part4, Seg15.relationLc688Part5, Seg15.relationLc688Part6, Seg15.relationLc688Part7, Seg15.relationLc688Part8] at r954
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r954 ⊢
  exact r954

theorem seg15_prefix_141_selX (rho : Nat -> Seg15.F)
    (r955 : Seg15.relationRow955 rho) :
    (1*rho 16271)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX140 rho + rho 17082) = rho 17084 := by
  rw [seg15AccX140_sum]
  unfold Seg15.relationRow955 at r955
  simp only [Seg15.relationLc689, Seg15.relationLc689Part0, Seg15.relationLc689Part1, Seg15.relationLc689Part2, Seg15.relationLc689Part3, Seg15.relationLc689Part4] at r955
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r955 ⊢
  exact r955

theorem seg15_prefix_141_selY (rho : Nat -> Seg15.F)
    (r956 : Seg15.relationRow956 rho) :
    (1*rho 16271)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY140 rho + rho 17083) = rho 17085 := by
  rw [seg15AccY140_sum]
  unfold Seg15.relationRow956 at r956
  simp only [Seg15.relationLc690, Seg15.relationLc690Part0, Seg15.relationLc690Part1, Seg15.relationLc690Part2, Seg15.relationLc690Part3, Seg15.relationLc690Part4] at r956
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r956 ⊢
  exact r956

theorem seg15_prefix_142_v2 (rho : Nat -> Seg15.F)
    (r957 : Seg15.relationRow957 rho) :
    (2104166350232168144330387255692034385682746484618013311749583747661659393491*rho 16130 + 7020431916799759325650095382254167694493003261783313273118624632432520383891*seg15AccX141 rho)*(4584760305757319701927798731600297555139088431316950317811619616514740204742 + 7277029194448818776990454612401046658428438801060623224664381017354621741353*rho 16130 + 4584760305757319701927798731600297555139088431316950317811619616514740204742*seg15AccY141 rho) = rho 17086 := by
  rw [seg15AccX141_sum, seg15AccY141_sum]
  unfold Seg15.relationRow957 at r957
  simp only [Seg15.relationLc691, Seg15.relationLc691Part0, Seg15.relationLc691Part1, Seg15.relationLc691Part2, Seg15.relationLc691Part3, Seg15.relationLc691Part4] at r957
  simp only [Seg15.relationLc692, Seg15.relationLc692Part0, Seg15.relationLc692Part1, Seg15.relationLc692Part2, Seg15.relationLc692Part3, Seg15.relationLc692Part4] at r957
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r957 ⊢
  exact r957

theorem seg15_prefix_142_addX (rho : Nat -> Seg15.F)
    (r958 : Seg15.relationRow958 rho) :
    rho 17087*(1 + rho 17086) = 4584760305757319701927798731600297555139088431316950317811619616514740204742 + 6992609819377166471419766179266314545944274952764993798269927449411584971082*rho 16130 + 592122430005357801669034146794161034695401444216911877182208832780869205502*seg15AccX141 rho + 4584760305757319701927798731600297555139088431316950317811619616514740204742*seg15AccY141 rho := by
  rw [add_assoc, seg15AccWeighted141]
  unfold Seg15.relationRow958 at r958
  simp only [Seg15.relationLc693, Seg15.relationLc693Part0, Seg15.relationLc693Part1, Seg15.relationLc693Part2, Seg15.relationLc693Part3, Seg15.relationLc693Part4, Seg15.relationLc693Part5, Seg15.relationLc693Part6, Seg15.relationLc693Part7, Seg15.relationLc693Part8] at r958
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r958 ⊢
  exact r958

theorem seg15_prefix_142_addY (rho : Nat -> Seg15.F)
    (r959 : Seg15.relationRow959 rho) :
    rho 17088*(1 + (-1)*rho 17086) = 592122430005357801669034146794161034695401444216911877182208832780869205502 + 8410461635640452567548925071056567412560644726740029000698219791563842842019*rho 16130 + 4584760305757319701927798731600297555139088431316950317811619616514740204742*seg15AccX141 rho + 592122430005357801669034146794161034695401444216911877182208832780869205502*seg15AccY141 rho := by
  rw [add_assoc, seg15AccWeighted141]
  unfold Seg15.relationRow959 at r959
  simp only [Seg15.relationLc694, Seg15.relationLc694Part0, Seg15.relationLc694Part1, Seg15.relationLc694Part2, Seg15.relationLc694Part3, Seg15.relationLc694Part4, Seg15.relationLc694Part5, Seg15.relationLc694Part6, Seg15.relationLc694Part7, Seg15.relationLc694Part8] at r959
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r959 ⊢
  exact r959

theorem seg15_prefix_142_selX (rho : Nat -> Seg15.F)
    (r960 : Seg15.relationRow960 rho) :
    (1*rho 16272)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX141 rho + rho 17087) = rho 17089 := by
  rw [seg15AccX141_sum]
  unfold Seg15.relationRow960 at r960
  simp only [Seg15.relationLc695, Seg15.relationLc695Part0, Seg15.relationLc695Part1, Seg15.relationLc695Part2, Seg15.relationLc695Part3, Seg15.relationLc695Part4] at r960
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r960 ⊢
  exact r960

theorem seg15_prefix_142_selY (rho : Nat -> Seg15.F)
    (r961 : Seg15.relationRow961 rho) :
    (1*rho 16272)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY141 rho + rho 17088) = rho 17090 := by
  rw [seg15AccY141_sum]
  unfold Seg15.relationRow961 at r961
  simp only [Seg15.relationLc696, Seg15.relationLc696Part0, Seg15.relationLc696Part1, Seg15.relationLc696Part2, Seg15.relationLc696Part3, Seg15.relationLc696Part4] at r961
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r961 ⊢
  exact r961

theorem seg15_prefix_143_v2 (rho : Nat -> Seg15.F)
    (r962 : Seg15.relationRow962 rho) :
    (4938053888672654270810678854782661645153770246529503148947669032667265402660*rho 16130 + 3778682624279442475367220590942522733490752825963756877840445187645517884389*seg15AccX142 rho)*(7520195057955867023804691213643624442585340867346760214678489227972682710614 + 2117248663306599533961325002399283838091445272984068801478855011548758629520*rho 16130 + 7520195057955867023804691213643624442585340867346760214678489227972682710614*seg15AccY142 rho) = rho 17091 := by
  rw [seg15AccX142_sum, seg15AccY142_sum]
  unfold Seg15.relationRow962 at r962
  simp only [Seg15.relationLc697, Seg15.relationLc697Part0, Seg15.relationLc697Part1, Seg15.relationLc697Part2, Seg15.relationLc697Part3, Seg15.relationLc697Part4] at r962
  simp only [Seg15.relationLc698, Seg15.relationLc698Part0, Seg15.relationLc698Part1, Seg15.relationLc698Part2, Seg15.relationLc698Part3, Seg15.relationLc698Part4] at r962
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r962 ⊢
  exact r962

theorem seg15_prefix_143_addX (rho : Nat -> Seg15.F)
    (r963 : Seg15.relationRow963 rho) :
    rho 17092*(1 + rho 17091) = 7520195057955867023804691213643624442585340867346760214678489227972682710614 + 7390731918291895553294027588760349518270227105604755290268923851963489212186*rho 16130 + 7735718087816147105717267734591023427689706790201012369670516854588254512516*seg15AccX142 rho + 7520195057955867023804691213643624442585340867346760214678489227972682710614*seg15AccY142 rho := by
  rw [add_assoc, seg15AccWeighted142]
  unfold Seg15.relationRow963 at r963
  simp only [Seg15.relationLc699, Seg15.relationLc699Part0, Seg15.relationLc699Part1, Seg15.relationLc699Part2, Seg15.relationLc699Part3, Seg15.relationLc699Part4, Seg15.relationLc699Part5, Seg15.relationLc699Part6, Seg15.relationLc699Part7, Seg15.relationLc699Part8] at r963
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r963 ⊢
  exact r963

theorem seg15_prefix_143_addY (rho : Nat -> Seg15.F)
    (r964 : Seg15.relationRow964 rho) :
    rho 17093*(1 + (-1)*rho 17091) = 7735718087816147105717267734591023427689706790201012369670516854588254512516 + 8191911795387420165726505078694277743693126356244378056681858280789421851413*rho 16130 + 7520195057955867023804691213643624442585340867346760214678489227972682710614*seg15AccX142 rho + 7735718087816147105717267734591023427689706790201012369670516854588254512516*seg15AccY142 rho := by
  rw [add_assoc, seg15AccWeighted142]
  unfold Seg15.relationRow964 at r964
  simp only [Seg15.relationLc700, Seg15.relationLc700Part0, Seg15.relationLc700Part1, Seg15.relationLc700Part2, Seg15.relationLc700Part3, Seg15.relationLc700Part4, Seg15.relationLc700Part5, Seg15.relationLc700Part6, Seg15.relationLc700Part7, Seg15.relationLc700Part8] at r964
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r964 ⊢
  exact r964

theorem seg15_prefix_143_selX (rho : Nat -> Seg15.F)
    (r965 : Seg15.relationRow965 rho) :
    (1*rho 16273)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX142 rho + rho 17092) = rho 17094 := by
  rw [seg15AccX142_sum]
  unfold Seg15.relationRow965 at r965
  simp only [Seg15.relationLc701, Seg15.relationLc701Part0, Seg15.relationLc701Part1, Seg15.relationLc701Part2, Seg15.relationLc701Part3, Seg15.relationLc701Part4] at r965
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r965 ⊢
  exact r965

theorem seg15_prefix_143_selY (rho : Nat -> Seg15.F)
    (r966 : Seg15.relationRow966 rho) :
    (1*rho 16273)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY142 rho + rho 17093) = rho 17095 := by
  rw [seg15AccY142_sum]
  unfold Seg15.relationRow966 at r966
  simp only [Seg15.relationLc702, Seg15.relationLc702Part0, Seg15.relationLc702Part1, Seg15.relationLc702Part2, Seg15.relationLc702Part3, Seg15.relationLc702Part4] at r966
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r966 ⊢
  exact r966

theorem seg15_prefix_144_v2 (rho : Nat -> Seg15.F)
    (r967 : Seg15.relationRow967 rho) :
    (2124268895110141773845156519836220251832881834823947220424969606687161535086*rho 16130 + 1135710693610733492764624259274122606205914527429029626003819811576386849520*seg15AccX143 rho)*(6489319380060007954821780942227644453314371663851918136024024113976499342404 + 1499849023641731880452303193048385938531502224180249824126306744226369219863*rho 16130 + 6489319380060007954821780942227644453314371663851918136024024113976499342404*seg15AccY143 rho) = rho 17096 := by
  rw [seg15AccX143_sum, seg15AccY143_sum]
  unfold Seg15.relationRow967 at r967
  simp only [Seg15.relationLc703, Seg15.relationLc703Part0, Seg15.relationLc703Part1, Seg15.relationLc703Part2, Seg15.relationLc703Part3, Seg15.relationLc703Part4] at r967
  simp only [Seg15.relationLc704, Seg15.relationLc704Part0, Seg15.relationLc704Part1, Seg15.relationLc704Part2, Seg15.relationLc704Part3, Seg15.relationLc704Part4] at r967
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r967 ⊢
  exact r967

theorem seg15_prefix_144_addX (rho : Nat -> Seg15.F)
    (r968 : Seg15.relationRow968 rho) :
    rho 17097*(1 + rho 17096) = 6489319380060007954821780942227644453314371663851918136024024113976499342404 + 6769605616348646276838559454591931596226107695415017868773224994478273747214*rho 16130 + 889266649126723776366729875800001959478233003345389383286795120421487098598*seg15AccX143 rho + 6489319380060007954821780942227644453314371663851918136024024113976499342404*seg15AccY143 rho := by
  rw [add_assoc, seg15AccWeighted143]
  unfold Seg15.relationRow968 at r968
  simp only [Seg15.relationLc705, Seg15.relationLc705Part0, Seg15.relationLc705Part1, Seg15.relationLc705Part2, Seg15.relationLc705Part3, Seg15.relationLc705Part4, Seg15.relationLc705Part5, Seg15.relationLc705Part6, Seg15.relationLc705Part7, Seg15.relationLc705Part8] at r968
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r968 ⊢
  exact r968

theorem seg15_prefix_144_addY (rho : Nat -> Seg15.F)
    (r969 : Seg15.relationRow969 rho) :
    rho 17098*(1 + (-1)*rho 17096) = 889266649126723776366729875800001959478233003345389383286795120421487098598 + 1150985448971808202867051906945978101453740595890484749058149901264833144629*rho 16130 + 6489319380060007954821780942227644453314371663851918136024024113976499342404*seg15AccX143 rho + 889266649126723776366729875800001959478233003345389383286795120421487098598*seg15AccY143 rho := by
  rw [add_assoc, seg15AccWeighted143]
  unfold Seg15.relationRow969 at r969
  simp only [Seg15.relationLc706, Seg15.relationLc706Part0, Seg15.relationLc706Part1, Seg15.relationLc706Part2, Seg15.relationLc706Part3, Seg15.relationLc706Part4, Seg15.relationLc706Part5, Seg15.relationLc706Part6, Seg15.relationLc706Part7, Seg15.relationLc706Part8] at r969
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r969 ⊢
  exact r969

theorem seg15_prefix_144_selX (rho : Nat -> Seg15.F)
    (r970 : Seg15.relationRow970 rho) :
    (1*rho 16274)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX143 rho + rho 17097) = rho 17099 := by
  rw [seg15AccX143_sum]
  unfold Seg15.relationRow970 at r970
  simp only [Seg15.relationLc707, Seg15.relationLc707Part0, Seg15.relationLc707Part1, Seg15.relationLc707Part2, Seg15.relationLc707Part3, Seg15.relationLc707Part4] at r970
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r970 ⊢
  exact r970

theorem seg15_prefix_144_selY (rho : Nat -> Seg15.F)
    (r971 : Seg15.relationRow971 rho) :
    (1*rho 16274)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY143 rho + rho 17098) = rho 17100 := by
  rw [seg15AccY143_sum]
  unfold Seg15.relationRow971 at r971
  simp only [Seg15.relationLc708, Seg15.relationLc708Part0, Seg15.relationLc708Part1, Seg15.relationLc708Part2, Seg15.relationLc708Part3, Seg15.relationLc708Part4] at r971
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r971 ⊢
  exact r971

theorem seg15_prefix_145_v2 (rho : Nat -> Seg15.F)
    (r972 : Seg15.relationRow972 rho) :
    (5659401960593731061170570757997334349881497142436822625115039201429635798804*rho 16130 + 938374591090202613325146222034748958625328173328686440431425148143684449572*seg15AccX144 rho)*(4784454996807291220485780426886963392951464841714825251820803534474080466940 + 5292886040823016778799692579657563686851334379155438097754203142747034024462*rho 16130 + 4784454996807291220485780426886963392951464841714825251820803534474080466940*seg15AccY144 rho) = rho 17101 := by
  rw [seg15AccX144_sum, seg15AccY144_sum]
  unfold Seg15.relationRow972 at r972
  simp only [Seg15.relationLc709, Seg15.relationLc709Part0, Seg15.relationLc709Part1, Seg15.relationLc709Part2, Seg15.relationLc709Part3, Seg15.relationLc709Part4] at r972
  simp only [Seg15.relationLc710, Seg15.relationLc710Part0, Seg15.relationLc710Part1, Seg15.relationLc710Part2, Seg15.relationLc710Part3, Seg15.relationLc710Part4] at r972
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r972 ⊢
  exact r972

theorem seg15_prefix_145_addX (rho : Nat -> Seg15.F)
    (r973 : Seg15.relationRow973 rho) :
    rho 17102*(1 + rho 17101) = 4784454996807291220485780426886963392951464841714825251820803534474080466940 + 6225578912229915515090996543700017288075450888837245471910955138782097550579*rho 16130 + 2133089271567340892524057786995152185500972036046302345963262016555156217755*seg15AccX144 rho + 4784454996807291220485780426886963392951464841714825251820803534474080466940*seg15AccY144 rho := by
  rw [add_assoc, seg15AccWeighted144]
  unfold Seg15.relationRow973 at r973
  simp only [Seg15.relationLc711, Seg15.relationLc711Part0, Seg15.relationLc711Part1, Seg15.relationLc711Part2, Seg15.relationLc711Part3, Seg15.relationLc711Part4, Seg15.relationLc711Part5, Seg15.relationLc711Part6, Seg15.relationLc711Part7, Seg15.relationLc711Part8, Seg15.relationLc711Part9] at r973
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r973 ⊢
  exact r973

theorem seg15_prefix_145_addY (rho : Nat -> Seg15.F)
    (r974 : Seg15.relationRow974 rho) :
    rho 17103*(1 + (-1)*rho 17101) = 2133089271567340892524057786995152185500972036046302345963262016555156217755 + 5895462753110165431949110350547558582963032358329905853206131756431051327803*rho 16130 + 4784454996807291220485780426886963392951464841714825251820803534474080466940*seg15AccX144 rho + 2133089271567340892524057786995152185500972036046302345963262016555156217755*seg15AccY144 rho := by
  rw [add_assoc, seg15AccWeighted144]
  unfold Seg15.relationRow974 at r974
  simp only [Seg15.relationLc712, Seg15.relationLc712Part0, Seg15.relationLc712Part1, Seg15.relationLc712Part2, Seg15.relationLc712Part3, Seg15.relationLc712Part4, Seg15.relationLc712Part5, Seg15.relationLc712Part6, Seg15.relationLc712Part7, Seg15.relationLc712Part8, Seg15.relationLc712Part9] at r974
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r974 ⊢
  exact r974

theorem seg15_prefix_145_selX (rho : Nat -> Seg15.F)
    (r975 : Seg15.relationRow975 rho) :
    (1*rho 16275)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX144 rho + rho 17102) = rho 17104 := by
  rw [seg15AccX144_sum]
  unfold Seg15.relationRow975 at r975
  simp only [Seg15.relationLc713, Seg15.relationLc713Part0, Seg15.relationLc713Part1, Seg15.relationLc713Part2, Seg15.relationLc713Part3, Seg15.relationLc713Part4] at r975
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r975 ⊢
  exact r975

theorem seg15_prefix_145_selY (rho : Nat -> Seg15.F)
    (r976 : Seg15.relationRow976 rho) :
    (1*rho 16275)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY144 rho + rho 17103) = rho 17105 := by
  rw [seg15AccY144_sum]
  unfold Seg15.relationRow976 at r976
  simp only [Seg15.relationLc714, Seg15.relationLc714Part0, Seg15.relationLc714Part1, Seg15.relationLc714Part2, Seg15.relationLc714Part3, Seg15.relationLc714Part4] at r976
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r976 ⊢
  exact r976

theorem seg15_prefix_146_v2 (rho : Nat -> Seg15.F)
    (r977 : Seg15.relationRow977 rho) :
    (6046344471193084493220190367252733367917229149783691492755493061996738308825*rho 16130 + 5220355908337253141300836156003928565430564187318809155802611073103937168205*seg15AccX145 rho)*(3924740846528121427875397278742425546919168093935355749151425995742271844432 + 1721306895664830137509516829929134302350383955275552661355005310982742565584*rho 16130 + 3924740846528121427875397278742425546919168093935355749151425995742271844432*seg15AccY145 rho) = rho 17106 := by
  rw [seg15AccX145_sum, seg15AccY145_sum]
  unfold Seg15.relationRow977 at r977
  simp only [Seg15.relationLc715, Seg15.relationLc715Part0, Seg15.relationLc715Part1, Seg15.relationLc715Part2, Seg15.relationLc715Part3, Seg15.relationLc715Part4] at r977
  simp only [Seg15.relationLc716, Seg15.relationLc716Part0, Seg15.relationLc716Part1, Seg15.relationLc716Part2, Seg15.relationLc716Part3, Seg15.relationLc716Part4] at r977
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r977 ⊢
  exact r977

theorem seg15_prefix_146_addX (rho : Nat -> Seg15.F)
    (r978 : Seg15.relationRow978 rho) :
    rho 17107*(1 + rho 17106) = 3924740846528121427875397278742425546919168093935355749151425995742271844432 + 8253021225732975253543437798933088433651945714980841239160189305052608411565*rho 16130 + 1198096651659609332909565676913110176760779701964004676435644664086645180893*seg15AccX145 rho + 3924740846528121427875397278742425546919168093935355749151425995742271844432*seg15AccY145 rho := by
  rw [add_assoc, seg15AccWeighted145]
  unfold Seg15.relationRow978 at r978
  simp only [Seg15.relationLc717, Seg15.relationLc717Part0, Seg15.relationLc717Part1, Seg15.relationLc717Part2, Seg15.relationLc717Part3, Seg15.relationLc717Part4, Seg15.relationLc717Part5, Seg15.relationLc717Part6, Seg15.relationLc717Part7, Seg15.relationLc717Part8, Seg15.relationLc717Part9] at r978
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r978 ⊢
  exact r978

theorem seg15_prefix_146_addY (rho : Nat -> Seg15.F)
    (r979 : Seg15.relationRow979 rho) :
    rho 17108*(1 + (-1)*rho 17106) = 1198096651659609332909565676913110176760779701964004676435644664086645180893 + 1309295085435103989549045054340041381883031422465276444588972052537622490025*rho 16130 + 3924740846528121427875397278742425546919168093935355749151425995742271844432*seg15AccX145 rho + 1198096651659609332909565676913110176760779701964004676435644664086645180893*seg15AccY145 rho := by
  rw [add_assoc, seg15AccWeighted145]
  unfold Seg15.relationRow979 at r979
  simp only [Seg15.relationLc718, Seg15.relationLc718Part0, Seg15.relationLc718Part1, Seg15.relationLc718Part2, Seg15.relationLc718Part3, Seg15.relationLc718Part4, Seg15.relationLc718Part5, Seg15.relationLc718Part6, Seg15.relationLc718Part7, Seg15.relationLc718Part8, Seg15.relationLc718Part9] at r979
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r979 ⊢
  exact r979

theorem seg15_prefix_146_selX (rho : Nat -> Seg15.F)
    (r980 : Seg15.relationRow980 rho) :
    (1*rho 16276)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX145 rho + rho 17107) = rho 17109 := by
  rw [seg15AccX145_sum]
  unfold Seg15.relationRow980 at r980
  simp only [Seg15.relationLc719, Seg15.relationLc719Part0, Seg15.relationLc719Part1, Seg15.relationLc719Part2, Seg15.relationLc719Part3, Seg15.relationLc719Part4] at r980
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r980 ⊢
  exact r980

theorem seg15_prefix_146_selY (rho : Nat -> Seg15.F)
    (r981 : Seg15.relationRow981 rho) :
    (1*rho 16276)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY145 rho + rho 17108) = rho 17110 := by
  rw [seg15AccY145_sum]
  unfold Seg15.relationRow981 at r981
  simp only [Seg15.relationLc720, Seg15.relationLc720Part0, Seg15.relationLc720Part1, Seg15.relationLc720Part2, Seg15.relationLc720Part3, Seg15.relationLc720Part4] at r981
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r981 ⊢
  exact r981

theorem seg15_prefix_147_v2 (rho : Nat -> Seg15.F)
    (r982 : Seg15.relationRow982 rho) :
    (4688276295826368622850016053938581518710748672193542551483696517311406849461*rho 16130 + 4234403036772419062696778810592241573149156566464472741108884875864372860170*seg15AccX146 rho)*(3322280521625266614430836248375555161788684906405315685000086419176676098000 + 479310377048519084134302755901600248569178343487260514221297806877166865256*rho 16130 + 3322280521625266614430836248375555161788684906405315685000086419176676098000*seg15AccY146 rho) = rho 17111 := by
  rw [seg15AccX146_sum, seg15AccY146_sum]
  unfold Seg15.relationRow982 at r982
  simp only [Seg15.relationLc721, Seg15.relationLc721Part0, Seg15.relationLc721Part1, Seg15.relationLc721Part2, Seg15.relationLc721Part3, Seg15.relationLc721Part4] at r982
  simp only [Seg15.relationLc722, Seg15.relationLc722Part0, Seg15.relationLc722Part1, Seg15.relationLc722Part2, Seg15.relationLc722Part3, Seg15.relationLc722Part4] at r982
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r982 ⊢
  exact r982

theorem seg15_prefix_147_addX (rho : Nat -> Seg15.F)
    (r983 : Seg15.relationRow983 rho) :
    rho 17112*(1 + rho 17111) = 3322280521625266614430836248375555161788684906405315685000086419176676098000 + 318737551768473034487304467124575714540349673256627558422304147848402108879*rho 16130 + 5382265233593639684125019790124154026637456265057278166672106351379303925195*seg15AccX146 rho + 3322280521625266614430836248375555161788684906405315685000086419176676098000*seg15AccY146 rho := by
  rw [add_assoc, seg15AccWeighted146]
  unfold Seg15.relationRow983 at r983
  simp only [Seg15.relationLc723, Seg15.relationLc723Part0, Seg15.relationLc723Part1, Seg15.relationLc723Part2, Seg15.relationLc723Part3, Seg15.relationLc723Part4, Seg15.relationLc723Part5, Seg15.relationLc723Part6, Seg15.relationLc723Part7, Seg15.relationLc723Part8, Seg15.relationLc723Part9] at r983
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r983 ⊢
  exact r983

theorem seg15_prefix_147_addY (rho : Nat -> Seg15.F)
    (r984 : Seg15.relationRow984 rho) :
    rho 17113*(1 + (-1)*rho 17111) = 5382265233593639684125019790124154026637456265057278166672106351379303925195 + 3749326459399944831260985891850275654689277813772661252450598232921014109928*rho 16130 + 3322280521625266614430836248375555161788684906405315685000086419176676098000*seg15AccX146 rho + 5382265233593639684125019790124154026637456265057278166672106351379303925195*seg15AccY146 rho := by
  rw [add_assoc, seg15AccWeighted146]
  unfold Seg15.relationRow984 at r984
  simp only [Seg15.relationLc724, Seg15.relationLc724Part0, Seg15.relationLc724Part1, Seg15.relationLc724Part2, Seg15.relationLc724Part3, Seg15.relationLc724Part4, Seg15.relationLc724Part5, Seg15.relationLc724Part6, Seg15.relationLc724Part7, Seg15.relationLc724Part8, Seg15.relationLc724Part9] at r984
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r984 ⊢
  exact r984

theorem seg15_prefix_147_selX (rho : Nat -> Seg15.F)
    (r985 : Seg15.relationRow985 rho) :
    (1*rho 16277)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX146 rho + rho 17112) = rho 17114 := by
  rw [seg15AccX146_sum]
  unfold Seg15.relationRow985 at r985
  simp only [Seg15.relationLc725, Seg15.relationLc725Part0, Seg15.relationLc725Part1, Seg15.relationLc725Part2, Seg15.relationLc725Part3, Seg15.relationLc725Part4] at r985
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r985 ⊢
  exact r985

theorem seg15_prefix_147_selY (rho : Nat -> Seg15.F)
    (r986 : Seg15.relationRow986 rho) :
    (1*rho 16277)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY146 rho + rho 17113) = rho 17115 := by
  rw [seg15AccY146_sum]
  unfold Seg15.relationRow986 at r986
  simp only [Seg15.relationLc726, Seg15.relationLc726Part0, Seg15.relationLc726Part1, Seg15.relationLc726Part2, Seg15.relationLc726Part3, Seg15.relationLc726Part4] at r986
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r986 ⊢
  exact r986

theorem seg15_prefix_148_v2 (rho : Nat -> Seg15.F)
    (r987 : Seg15.relationRow987 rho) :
    (4680686181738868780173466445942294778812778475524006084648958938128221885398*rho 16130 + 3736510251652676541720141333403773953286420507403643590024712002903325578728*seg15AccX147 rho)*(298954928007943004014451510176946888039752259984727749761682772920877393999 + 218475059214054268059453563571377607346452200528713602273142633824230367437*rho 16130 + 298954928007943004014451510176946888039752259984727749761682772920877393999*seg15AccY147 rho) = rho 17116 := by
  rw [seg15AccX147_sum, seg15AccY147_sum]
  unfold Seg15.relationRow987 at r987
  simp only [Seg15.relationLc727, Seg15.relationLc727Part0, Seg15.relationLc727Part1, Seg15.relationLc727Part2, Seg15.relationLc727Part3, Seg15.relationLc727Part4] at r987
  simp only [Seg15.relationLc728, Seg15.relationLc728Part0, Seg15.relationLc728Part1, Seg15.relationLc728Part2, Seg15.relationLc728Part3, Seg15.relationLc728Part4] at r987
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r987 ⊢
  exact r987

theorem seg15_prefix_148_addX (rho : Nat -> Seg15.F)
    (r988 : Seg15.relationRow988 rho) :
    rho 17117*(1 + rho 17116) = 298954928007943004014451510176946888039752259984727749761682772920877393999 + 4253575685035595940012855699654699004087344461072519663112331920758010491178*rho 16130 + 2584051362702239969727783642756555037717516519758278259054015367517573473172*seg15AccX147 rho + 298954928007943004014451510176946888039752259984727749761682772920877393999*seg15AccY147 rho := by
  rw [add_assoc, seg15AccWeighted147]
  unfold Seg15.relationRow988 at r988
  simp only [Seg15.relationLc729, Seg15.relationLc729Part0, Seg15.relationLc729Part1, Seg15.relationLc729Part2, Seg15.relationLc729Part3, Seg15.relationLc729Part4, Seg15.relationLc729Part5, Seg15.relationLc729Part6, Seg15.relationLc729Part7, Seg15.relationLc729Part8, Seg15.relationLc729Part9] at r988
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r988 ⊢
  exact r988

theorem seg15_prefix_148_addY (rho : Nat -> Seg15.F)
    (r989 : Seg15.relationRow989 rho) :
    rho 17118*(1 + (-1)*rho 17116) = 2584051362702239969727783642756555037717516519758278259054015367517573473172 + 4441515350697547072769915522734436750825214077706035322746967220045928818529*rho 16130 + 298954928007943004014451510176946888039752259984727749761682772920877393999*seg15AccX147 rho + 2584051362702239969727783642756555037717516519758278259054015367517573473172*seg15AccY147 rho := by
  rw [add_assoc, seg15AccWeighted147]
  unfold Seg15.relationRow989 at r989
  simp only [Seg15.relationLc730, Seg15.relationLc730Part0, Seg15.relationLc730Part1, Seg15.relationLc730Part2, Seg15.relationLc730Part3, Seg15.relationLc730Part4, Seg15.relationLc730Part5, Seg15.relationLc730Part6, Seg15.relationLc730Part7, Seg15.relationLc730Part8, Seg15.relationLc730Part9] at r989
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r989 ⊢
  exact r989

theorem seg15_prefix_148_selX (rho : Nat -> Seg15.F)
    (r990 : Seg15.relationRow990 rho) :
    (1*rho 16278)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX147 rho + rho 17117) = rho 17119 := by
  rw [seg15AccX147_sum]
  unfold Seg15.relationRow990 at r990
  simp only [Seg15.relationLc731, Seg15.relationLc731Part0, Seg15.relationLc731Part1, Seg15.relationLc731Part2, Seg15.relationLc731Part3, Seg15.relationLc731Part4] at r990
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r990 ⊢
  exact r990

theorem seg15_prefix_148_selY (rho : Nat -> Seg15.F)
    (r991 : Seg15.relationRow991 rho) :
    (1*rho 16278)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY147 rho + rho 17118) = rho 17120 := by
  rw [seg15AccY147_sum]
  unfold Seg15.relationRow991 at r991
  simp only [Seg15.relationLc732, Seg15.relationLc732Part0, Seg15.relationLc732Part1, Seg15.relationLc732Part2, Seg15.relationLc732Part3, Seg15.relationLc732Part4] at r991
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r991 ⊢
  exact r991

theorem seg15_prefix_149_v2 (rho : Nat -> Seg15.F)
    (r992 : Seg15.relationRow992 rho) :
    (2211009345673416112645617919932112023860936344208789987563683022663977313482*rho 16130 + 2905285606874933389800013731091935386689424730514727187378944100147027031846*seg15AccX148 rho)*(513684046426243087824420172969926796247746955339408132221508340385056764764 + 3158801321492224690766123236898749852131432017480304019443254987406624478127*rho 16130 + 513684046426243087824420172969926796247746955339408132221508340385056764764*seg15AccY148 rho) = rho 17121 := by
  rw [seg15AccX148_sum, seg15AccY148_sum]
  unfold Seg15.relationRow992 at r992
  simp only [Seg15.relationLc733, Seg15.relationLc733Part0, Seg15.relationLc733Part1, Seg15.relationLc733Part2, Seg15.relationLc733Part3, Seg15.relationLc733Part4] at r992
  simp only [Seg15.relationLc734, Seg15.relationLc734Part0, Seg15.relationLc734Part1, Seg15.relationLc734Part2, Seg15.relationLc734Part3, Seg15.relationLc734Part4] at r992
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r992 ⊢
  exact r992

theorem seg15_prefix_149_addX (rho : Nat -> Seg15.F)
    (r993 : Seg15.relationRow993 rho) :
    rho 17122*(1 + rho 17121) = 513684046426243087824420172969926796247746955339408132221508340385056764764 + 6991826170155571022364198248149803280314225438480115438869527331360756237160*rho 16130 + 5490840172619726728439090431478996796759005534251273116601184194479291218970*seg15AccX148 rho + 513684046426243087824420172969926796247746955339408132221508340385056764764*seg15AccY148 rho := by
  rw [add_assoc, seg15AccWeighted148]
  unfold Seg15.relationRow993 at r993
  simp only [Seg15.relationLc735, Seg15.relationLc735Part0, Seg15.relationLc735Part1, Seg15.relationLc735Part2, Seg15.relationLc735Part3, Seg15.relationLc735Part4, Seg15.relationLc735Part5, Seg15.relationLc735Part6, Seg15.relationLc735Part7, Seg15.relationLc735Part8, Seg15.relationLc735Part9] at r993
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r993 ⊢
  exact r993

theorem seg15_prefix_149_addY (rho : Nat -> Seg15.F)
    (r994 : Seg15.relationRow994 rho) :
    rho 17123*(1 + (-1)*rho 17121) = 5490840172619726728439090431478996796759005534251273116601184194479291218970 + 7034116285494096098739970852510960587256386181555087115260134023699770837108*rho 16130 + 513684046426243087824420172969926796247746955339408132221508340385056764764*seg15AccX148 rho + 5490840172619726728439090431478996796759005534251273116601184194479291218970*seg15AccY148 rho := by
  rw [add_assoc, seg15AccWeighted148]
  unfold Seg15.relationRow994 at r994
  simp only [Seg15.relationLc736, Seg15.relationLc736Part0, Seg15.relationLc736Part1, Seg15.relationLc736Part2, Seg15.relationLc736Part3, Seg15.relationLc736Part4, Seg15.relationLc736Part5, Seg15.relationLc736Part6, Seg15.relationLc736Part7, Seg15.relationLc736Part8, Seg15.relationLc736Part9] at r994
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r994 ⊢
  exact r994

theorem seg15_prefix_149_selX (rho : Nat -> Seg15.F)
    (r995 : Seg15.relationRow995 rho) :
    (1*rho 16279)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX148 rho + rho 17122) = rho 17124 := by
  rw [seg15AccX148_sum]
  unfold Seg15.relationRow995 at r995
  simp only [Seg15.relationLc737, Seg15.relationLc737Part0, Seg15.relationLc737Part1, Seg15.relationLc737Part2, Seg15.relationLc737Part3, Seg15.relationLc737Part4] at r995
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r995 ⊢
  exact r995

theorem seg15_prefix_149_selY (rho : Nat -> Seg15.F)
    (r996 : Seg15.relationRow996 rho) :
    (1*rho 16279)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY148 rho + rho 17123) = rho 17125 := by
  rw [seg15AccY148_sum]
  unfold Seg15.relationRow996 at r996
  simp only [Seg15.relationLc738, Seg15.relationLc738Part0, Seg15.relationLc738Part1, Seg15.relationLc738Part2, Seg15.relationLc738Part3, Seg15.relationLc738Part4] at r996
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r996 ⊢
  exact r996


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

