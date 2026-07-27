import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs1

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 52⟩], residual := [((1 : F), 98042), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97583) * (relationLc221 rho) = ((1 : F) * rho 98044)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 52⟩], residual := [((1 : F), 98043), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97583) * (relationLc222 rho) = ((1 : F) * rho 98045)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5846523051446967967440159082631275298002440439864756615500920460162638843764 : F), 97784, 5, 53⟩], residual := [((5485200669001964675903116690389524045452503466510717669914562100715921570316 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 97785, 5, 53⟩], residual := [((7291182270810181618096149122593319263114027650082957086263435969101109264147 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow517 (rho : Nat -> F) : Prop :=
    (relationLc223 rho) * (relationLc224 rho) = ((1 : F) * rho 98046)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 97784, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 97785, 5, 53⟩], residual := [((3265037226037828153459719589295133553856424724399244653828892159807408240682 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98047) * ((1 : F) + (1 : F) * rho 98046) = (relationLc225 rho)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 97785, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 97784, 5, 53⟩], residual := [((8364348212655621776185922730037361598719148012242692402802574383202708885440 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98048) * ((1 : F) + (-1 : F) * rho 98046) = (relationLc226 rho)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 53⟩], residual := [((1 : F), 98047), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97584) * (relationLc227 rho) = ((1 : F) * rho 98049)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 53⟩], residual := [((1 : F), 98048), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97584) * (relationLc228 rho) = ((1 : F) * rho 98050)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3270625457551667644453406806086445794893819027444377513267150979927668756102 : F), 97784, 5, 54⟩], residual := [((1313990169365511817090899843224152567995448967037380651344274914537076948048 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 97785, 5, 54⟩], residual := [((4242920238461437888072824133392194042958901485991965180008883918058321798559 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow522 (rho : Nat -> F) : Prop :=
    (relationLc229 rho) * (relationLc230 rho) = ((1 : F) * rho 98051)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 97785, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 97784, 5, 54⟩], residual := [((254528008648488836902356643224023653119307675234662398872758838058452249680 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98052) * ((1 : F) + (1 : F) * rho 98051) = (relationLc231 rho)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 97784, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 97785, 5, 54⟩], residual := [((2289707880837953908755208871389624432709260619033607367296000191999872925118 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98053) * ((1 : F) + (-1 : F) * rho 98051) = (relationLc232 rho)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 54⟩], residual := [((1 : F), 98052), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97585) * (relationLc233 rho) = ((1 : F) * rho 98054)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 54⟩], residual := [((1 : F), 98053), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97585) * (relationLc234 rho) = ((1 : F) * rho 98055)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3233995703196325388481299497442317849571724715469973779048454502475618732286 : F), 97784, 5, 55⟩], residual := [((8427363959673275445356636965346819445583959661557314661313584705058592663131 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 97785, 5, 55⟩], residual := [((3675494411708184879950187669845890975019109332169909707887469082384047256779 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow527 (rho : Nat -> F) : Prop :=
    (relationLc235 rho) * (relationLc236 rho) = ((1 : F) * rho 98056)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 97784, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 97785, 5, 55⟩], residual := [((1411333168799633030026175624699751478991214462541181323314757811929244112059 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98057) * ((1 : F) + (1 : F) * rho 98056) = (relationLc237 rho)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (470673144524052484826972488981377734233936714009054186319817171498378143294 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 97785, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 97784, 5, 55⟩], residual := [((2267358468243705539888602275044934994867174603928525323102004785228563668611 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98058) * ((1 : F) + (-1 : F) * rho 98056) = (relationLc238 rho)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 55⟩], residual := [((1 : F), 98057), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97586) * (relationLc239 rho) = ((1 : F) * rho 98059)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 55⟩], residual := [((1 : F), 98058), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97586) * (relationLc240 rho) = ((1 : F) * rho 98060)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6984451028592461867390374761534058577866431087611019337585209388902324145485 : F), 97784, 5, 56⟩], residual := [((6268515690606711675820373018132505629153826392182024131345248525914402666900 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 97785, 5, 56⟩], residual := [((7115815826549671405340392110243331685100108865524818480158285579730834185347 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow532 (rho : Nat -> F) : Prop :=
    (relationLc241 rho) * (relationLc242 rho) = ((1 : F) * rho 98061)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 97784, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 97785, 5, 56⟩], residual := [((7710484613894729744174080048025463552124552587949460504538826705576714741899 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98062) * ((1 : F) + (1 : F) * rho 98061) = (relationLc243 rho)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 97785, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 97784, 5, 56⟩], residual := [((5561583927891243347137693310954441770830459976203518871196116942379669336356 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98063) * ((1 : F) + (-1 : F) * rho 98061) = (relationLc244 rho)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 56⟩], residual := [((1 : F), 98062), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97587) * (relationLc245 rho) = ((1 : F) * rho 98064)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 56⟩], residual := [((1 : F), 98063), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97587) * (relationLc246 rho) = ((1 : F) * rho 98065)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1575422911388496626730629818346833710771077486342176306515899025137426598458 : F), 97784, 5, 57⟩], residual := [((2280674101688118451702959074318755416748900744787404058007147376446815225484 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 97785, 5, 57⟩], residual := [((7612865992649868553776640700840008593526902917162252084467998826231105017371 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow537 (rho : Nat -> F) : Prop :=
    (relationLc247 rho) * (relationLc248 rho) = ((1 : F) * rho 98066)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 97784, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 97785, 5, 57⟩], residual := [((3689084588447371381584106025244188476136961253537121925460034369186551638891 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98067) * ((1 : F) + (1 : F) * rho 98066) = (relationLc249 rho)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 97785, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 97784, 5, 57⟩], residual := [((8103381537400898634954171877401300506786451891081291608583421318233370836558 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98068) * ((1 : F) + (-1 : F) * rho 98066) = (relationLc250 rho)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 57⟩], residual := [((1 : F), 98067), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97588) * (relationLc251 rho) = ((1 : F) * rho 98069)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 57⟩], residual := [((1 : F), 98068), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97588) * (relationLc252 rho) = ((1 : F) * rho 98070)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2156487065597549056324983678614439370425622070883240801164137263655924233376 : F), 97784, 5, 58⟩], residual := [((5216000986918399100658725928726594776545297115515760187025219720411965230869 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 97785, 5, 58⟩], residual := [((2766414637686983554196240388590361588031805575494008592258454326579377809996 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow542 (rho : Nat -> F) : Prop :=
    (relationLc253 rho) * (relationLc254 rho) = ((1 : F) * rho 98071)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 97785, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 97784, 5, 58⟩], residual := [((1549410558983292357284016308027624847580515667181643127580289292796001953329 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98072) * ((1 : F) + (1 : F) * rho 98071) = (relationLc255 rho)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 97784, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 97785, 5, 58⟩], residual := [((8037383549421691466757036345025357349622246770121874476649744840456289462477 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98073) * ((1 : F) + (-1 : F) * rho 98071) = (relationLc256 rho)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 58⟩], residual := [((1 : F), 98072), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97589) * (relationLc257 rho) = ((1 : F) * rho 98074)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 58⟩], residual := [((1 : F), 98073), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97589) * (relationLc258 rho) = ((1 : F) * rho 98075)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2176686707172346089764861149147128588707699343836468076549025280019693811766 : F), 97784, 5, 59⟩], residual := [((5344909994604615257630325697143396666051053670561830463561362977461125484596 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 97785, 5, 59⟩], residual := [((2214981955855980363476769290924158600072872287107850573391034021018292460131 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow547 (rho : Nat -> F) : Prop :=
    (relationLc259 rho) * (relationLc260 rho) = ((1 : F) * rho 98076)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 97785, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 97784, 5, 59⟩], residual := [((6487899024085425786684261787499910502293469850095593492804671254920729548095 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98077) * ((1 : F) + (1 : F) * rho 98076) = (relationLc261 rho)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 97784, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 97785, 5, 59⟩], residual := [((1140136143485807931745155331023219576130803482552960585340507993082385214402 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98078) * ((1 : F) + (-1 : F) * rho 98076) = (relationLc262 rho)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 59⟩], residual := [((1 : F), 98077), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97590) * (relationLc263 rho) = ((1 : F) * rho 98079)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 59⟩], residual := [((1 : F), 98078), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97590) * (relationLc264 rho) = ((1 : F) * rho 98080)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5615196394253809742051837972053350097436945599023299075757788719623911014164 : F), 97784, 5, 60⟩], residual := [((2192973411531826120347442314194415155367589721663284732414709266599801162341 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 97785, 5, 60⟩], residual := [((3632481104554618013980636857969656708838921269583913130983900467527162348250 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow552 (rho : Nat -> F) : Prop :=
    (relationLc265 rho) * (relationLc266 rho) = ((1 : F) * rho 98081)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 97785, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 97784, 5, 60⟩], residual := [((147525517621269423143848623495511025465740574047516471366945349929542513784 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98082) * ((1 : F) + (1 : F) * rho 98081) = (relationLc267 rho)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 97784, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 97785, 5, 60⟩], residual := [((7835467099238429573137548256885374856751082605880225412215512677951913505295 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98083) * ((1 : F) + (-1 : F) * rho 98081) = (relationLc268 rho)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 60⟩], residual := [((1 : F), 98082), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97591) * (relationLc269 rho) = ((1 : F) * rho 98084)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 60⟩], residual := [((1 : F), 98083), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97591) * (relationLc270 rho) = ((1 : F) * rho 98085)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6158233270979310956638021131007359831823461191922592329001496000280905611254 : F), 97784, 5, 61⟩], residual := [((4467762641089011012460139430937330739726033190653514206239072531933157555187 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 97785, 5, 61⟩], residual := [((4238644719121606010764621135185413098022294640887365526575084778074895914597 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow557 (rho : Nat -> F) : Prop :=
    (relationLc271 rho) * (relationLc272 rho) = ((1 : F) * rho 98086)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 97785, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 97784, 5, 61⟩], residual := [((4047251108373685273174184597169858851108951039121401643780880198158852193995 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98087) * ((1 : F) + (1 : F) * rho 98086) = (relationLc273 rho)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 97784, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 97785, 5, 61⟩], residual := [((2519224524602260538067412646708043802373803742617841216289952063342850795165 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98088) * ((1 : F) + (-1 : F) * rho 98086) = (relationLc274 rho)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 61⟩], residual := [((1 : F), 98087), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97592) * (relationLc275 rho) = ((1 : F) * rho 98089)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 61⟩], residual := [((1 : F), 98088), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97592) * (relationLc276 rho) = ((1 : F) * rho 98090)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8104899636678543604657262777441996492681450007842513561438126999479804123625 : F), 97784, 5, 62⟩], residual := [((7860504369378455773331695889377182530776402391681277877526940376923990757318 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 97785, 5, 62⟩], residual := [((4094745204734227454523259541864877269488153888968154424022635492436875126558 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow562 (rho : Nat -> F) : Prop :=
    (relationLc277 rho) * (relationLc278 rho) = ((1 : F) * rho 98091)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 97785, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 97784, 5, 62⟩], residual := [((882805281704354057597467756459580570199339644335419526886590628508342642566 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98092) * ((1 : F) + (1 : F) * rho 98091) = (relationLc279 rho)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 97784, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 97785, 5, 62⟩], residual := [((1365556802616877375954001694639792525481792047346366026008002783409929961333 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98093) * ((1 : F) + (-1 : F) * rho 98091) = (relationLc280 rho)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 62⟩], residual := [((1 : F), 98092), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97593) * (relationLc281 rho) = ((1 : F) * rho 98094)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 62⟩], residual := [((1 : F), 98093), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97593) * (relationLc282 rho) = ((1 : F) * rho 98095)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6011334678039591808234449784869804372031718158751584830130446658022560656768 : F), 97784, 5, 63⟩], residual := [((2896601315595281826483492482886891517188844246350138873647231071697040228255 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 97785, 5, 63⟩], residual := [((3632840430158228762076042235044308132661818045554303185557551945106229637474 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow567 (rho : Nat -> F) : Prop :=
    (relationLc283 rho) * (relationLc284 rho) = ((1 : F) * rho 98096)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 97785, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 97784, 5, 63⟩], residual := [((422052628510561653292389020156155178992927118097941318816758827007121337100 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98097) * ((1 : F) + (1 : F) * rho 98096) = (relationLc285 rho)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 97784, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 97785, 5, 63⟩], residual := [((2598290662687356450350434728849758433307111346405199677646573938046939128067 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98098) * ((1 : F) + (-1 : F) * rho 98096) = (relationLc286 rho)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 63⟩], residual := [((1 : F), 98097), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97594) * (relationLc287 rho) = ((1 : F) * rho 98099)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 63⟩], residual := [((1 : F), 98098), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97594) * (relationLc288 rho) = ((1 : F) * rho 98100)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1468539582095666279378991410533170917245967249536948894488180590741816634177 : F), 97784, 5, 64⟩], residual := [((2441858149594684419669229541998122896554895397549907271029031954323754410683 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 97785, 5, 64⟩], residual := [((5734647455186279297627215050346085835678696177385387464145726860498976860026 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow572 (rho : Nat -> F) : Prop :=
    (relationLc289 rho) * (relationLc290 rho) = ((1 : F) * rho 98101)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 97785, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 97784, 5, 64⟩], residual := [((3806730623357089986699700989367181835760518207885634357888102877503714158759 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98102) * ((1 : F) + (1 : F) * rho 98101) = (relationLc291 rho)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (730047353916881942074916352344427942934907545092600995692017250110951879518 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 97784, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 97785, 5, 64⟩], residual := [((1796660262071968910246623980526058329156247328003921086141166780672068447878 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98103) * ((1 : F) + (-1 : F) * rho 98101) = (relationLc292 rho)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 64⟩], residual := [((1 : F), 98102), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97595) * (relationLc293 rho) = ((1 : F) * rho 98104)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 64⟩], residual := [((1 : F), 98103), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97595) * (relationLc294 rho) = ((1 : F) * rho 98105)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6021026344076416619121288468750741828046873078691119012171314382658426450457 : F), 97784, 5, 65⟩], residual := [((7317429427889679080864790959675717489239037886684290610301339332825622009038 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 97785, 5, 65⟩], residual := [((5623423306062474044567382328107422310706576126000140678799979011964140812863 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow577 (rho : Nat -> F) : Prop :=
    (relationLc295 rho) * (relationLc296 rho) = ((1 : F) * rho 98106)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 97784, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 97785, 5, 65⟩], residual := [((7462327244759041091178551734177979010012502938672402918311316224764724557338 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98107) * ((1 : F) + (1 : F) * rho 98106) = (relationLc297 rho)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 97785, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 97784, 5, 65⟩], residual := [((6347859754536564095544343687702155263140218853768682012754218406582542057158 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98108) * ((1 : F) + (-1 : F) * rho 98106) = (relationLc298 rho)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 65⟩], residual := [((1 : F), 98107), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97596) * (relationLc299 rho) = ((1 : F) * rho 98109)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 65⟩], residual := [((1 : F), 98108), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97596) * (relationLc300 rho) = ((1 : F) * rho 98110)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(283579253166981189097466647978536705612250233144289388837895438594313409125 : F), 97784, 5, 66⟩], residual := [((6495894566211403996232269137026018932501953391940325354720954163848318066143 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 97785, 5, 66⟩], residual := [((4408468101015441774814258326413622957135574875933813938428914074908842070788 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow582 (rho : Nat -> F) : Prop :=
    (relationLc301 rho) * (relationLc302 rho) = ((1 : F) * rho 98111)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 97784, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 97785, 5, 66⟩], residual := [((178604084442008667129224003944826058899689526701337172411296564781364656077 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98112) * ((1 : F) + (1 : F) * rho 98111) = (relationLc303 rho)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 97785, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 97784, 5, 66⟩], residual := [((4120489983777216601665037330618917811763519217508859746155615907430572528784 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98113) * ((1 : F) + (-1 : F) * rho 98111) = (relationLc304 rho)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 66⟩], residual := [((1 : F), 98112), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97597) * (relationLc305 rho) = ((1 : F) * rho 98114)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 66⟩], residual := [((1 : F), 98113), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97597) * (relationLc306 rho) = ((1 : F) * rho 98115)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8068015689772184792989167365226394865601744563867089166204480917047383290178 : F), 97784, 5, 67⟩], residual := [((631761650035118282494441602095374805998255137796949998403698007072857970444 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 97785, 5, 67⟩], residual := [((2133162629518657432416682639600108610216712170376817295401199551129982949223 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow587 (rho : Nat -> F) : Prop :=
    (relationLc307 rho) * (relationLc308 rho) = ((1 : F) * rho 98116)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 97785, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 97784, 5, 67⟩], residual := [((2228410382292771868930073731794967252015050082502946100481703237163834247501 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98117) * ((1 : F) + (1 : F) * rho 98116) = (relationLc309 rho)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 97784, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 97785, 5, 67⟩], residual := [((1168696129252342408338407423711147118445105332484515454228740713687607975055 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98118) * ((1 : F) + (-1 : F) * rho 98116) = (relationLc310 rho)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 67⟩], residual := [((1 : F), 98117), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97598) * (relationLc311 rho) = ((1 : F) * rho 98119)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 67⟩], residual := [((1 : F), 98118), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97598) * (relationLc312 rho) = ((1 : F) * rho 98120)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(517925809368660864558072751869487790437935273484529585746369323552734005467 : F), 97784, 5, 68⟩], residual := [((1879049417325825119536558889711291957517960724627912445191850677173291976161 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 97785, 5, 68⟩], residual := [((718961184178561580886179684940049791723993716228098994336875608766544841653 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow592 (rho : Nat -> F) : Prop :=
    (relationLc313 rho) * (relationLc314 rho) = ((1 : F) * rho 98121)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 97784, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 97785, 5, 68⟩], residual := [((4593804955818762584900879428085013308587454305188099119448899912168962086700 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98122) * ((1 : F) + (1 : F) * rho 98121) = (relationLc315 rho)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 97785, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 97784, 5, 68⟩], residual := [((4317293776341917983161643856627357891656090044601391905393571122349505951615 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98123) * ((1 : F) + (-1 : F) * rho 98121) = (relationLc316 rho)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 68⟩], residual := [((1 : F), 98122), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97599) * (relationLc317 rho) = ((1 : F) * rho 98124)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 68⟩], residual := [((1 : F), 98123), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97599) * (relationLc318 rho) = ((1 : F) * rho 98125)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3372123005021887774424946087009289440204555678066507861318664216599352821638 : F), 97784, 5, 69⟩], residual := [((7051893256125772232379071968189882766792145554365486350271113435452976189797 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 97785, 5, 69⟩], residual := [((5119128936249422117446661545040219479495504038648853251610860357079968667357 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow597 (rho : Nat -> F) : Prop :=
    (relationLc319 rho) * (relationLc320 rho) = ((1 : F) * rho 98126)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 97784, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 97785, 5, 69⟩], residual := [((2625301578095364184106104908706644117114873134730212565746612636888378639461 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98127) * ((1 : F) + (1 : F) * rho 98126) = (relationLc321 rho)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 97785, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 97784, 5, 69⟩], residual := [((7079511155079999714398925576408017154871907527630316463077184212265726578920 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98128) * ((1 : F) + (-1 : F) * rho 98126) = (relationLc322 rho)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 69⟩], residual := [((1 : F), 98127), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97600) * (relationLc323 rho) = ((1 : F) * rho 98129)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 69⟩], residual := [((1 : F), 98128), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97600) * (relationLc324 rho) = ((1 : F) * rho 98130)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8185666225749794430846144650787739023696221861934424385315707228887955883205 : F), 97784, 5, 70⟩], residual := [((1138038450385463163308468001875449085299714829408678439768163290155722660408 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 97785, 5, 70⟩], residual := [((5429798299015515662944100111838631597125674244426331474003761181336372146151 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow602 (rho : Nat -> F) : Prop :=
    (relationLc325 rho) * (relationLc326 rho) = ((1 : F) * rho 98131)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 97784, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 97785, 5, 70⟩], residual := [((5922139678144869737035825254912920785674981757771754814671212108688778550895 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98132) * ((1 : F) + (1 : F) * rho 98131) = (relationLc327 rho)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 97785, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 97784, 5, 70⟩], residual := [((1093760832205737787781881875496000658544674873716306113692117833674308804177 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98133) * ((1 : F) + (-1 : F) * rho 98131) = (relationLc328 rho)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 70⟩], residual := [((1 : F), 98132), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97601) * (relationLc329 rho) = ((1 : F) * rho 98134)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 70⟩], residual := [((1 : F), 98133), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97601) * (relationLc330 rho) = ((1 : F) * rho 98135)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1253370348878293429528158011004145692447964637774466349806330659661798099713 : F), 97784, 5, 71⟩], residual := [((5177285811817626865424623719269477408051499024395637386483226684730555701671 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 97785, 5, 71⟩], residual := [((3367592843284670476747272752673000272108909791114671692752080632518020760681 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow607 (rho : Nat -> F) : Prop :=
    (relationLc331 rho) * (relationLc332 rho) = ((1 : F) * rho 98136)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 97785, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 97784, 5, 71⟩], residual := [((8311315338750137718368374081863680094975722609246674501482956493738381598260 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98137) * ((1 : F) + (1 : F) * rho 98136) = (relationLc333 rho)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (61910469657829342192321187244024551268691741149011542722403663253838067315 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 97784, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 97785, 5, 71⟩], residual := [((4705419314553287616991508755795092976095130005674868138925901345366955008146 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98138) * ((1 : F) + (-1 : F) * rho 98136) = (relationLc334 rho)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 71⟩], residual := [((1 : F), 98137), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97602) * (relationLc335 rho) = ((1 : F) * rho 98139)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 71⟩], residual := [((1 : F), 98138), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97602) * (relationLc336 rho) = ((1 : F) * rho 98140)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3225038647207066965249142518288305004231848817992616889755291892327653920728 : F), 97784, 5, 72⟩], residual := [((4944622807462013599979574477380851123515144290853061497859212195669938643605 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 97785, 5, 72⟩], residual := [((522070924770264662150994421644969496201813472832552067666639466908629057618 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow612 (rho : Nat -> F) : Prop :=
    (relationLc337 rho) * (relationLc338 rho) = ((1 : F) * rho 98141)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 97785, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 97784, 5, 72⟩], residual := [((7662785896914428871727783057237637716081840631480129716804158652148196464157 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98142) * ((1 : F) + (1 : F) * rho 98141) = (relationLc339 rho)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 97784, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 97785, 5, 72⟩], residual := [((4485325941707069071562287047850445223888634056987251509239894560844401571231 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98143) * ((1 : F) + (-1 : F) * rho 98141) = (relationLc340 rho)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 72⟩], residual := [((1 : F), 98142), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97603) * (relationLc341 rho) = ((1 : F) * rho 98144)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 72⟩], residual := [((1 : F), 98143), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97603) * (relationLc342 rho) = ((1 : F) * rho 98145)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7082044748100286856446498151604694946338813897682899219296387993480553190970 : F), 97784, 5, 73⟩], residual := [((2222557722432484492449536154567798044442158058598341703639917393362435335170 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 97785, 5, 73⟩], residual := [((3488455227260224643982284464778928384077632489165373676849410455541685060493 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow617 (rho : Nat -> F) : Prop :=
    (relationLc343 rho) * (relationLc344 rho) = ((1 : F) * rho 98146)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 97785, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 97784, 5, 73⟩], residual := [((4562568391610746566327202807263761772390372476837587795230995879065567080727 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98147) * ((1 : F) + (1 : F) * rho 98146) = (relationLc345 rho)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 97784, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 97785, 5, 73⟩], residual := [((5645150321476377598825970278298423837635391407433943536163340744350743001087 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98148) * ((1 : F) + (-1 : F) * rho 98146) = (relationLc346 rho)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 73⟩], residual := [((1 : F), 98147), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97604) * (relationLc347 rho) = ((1 : F) * rho 98149)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 73⟩], residual := [((1 : F), 98148), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97604) * (relationLc348 rho) = ((1 : F) * rho 98150)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4918521206950981825770953658416051531484273050008271601171788979158884211260 : F), 97784, 5, 74⟩], residual := [((3308180320148395003367060148951043770841781088811203563984909743407139154718 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 97785, 5, 74⟩], residual := [((4861157098069046986977954560327357125608545616175092050901033138595367913567 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow622 (rho : Nat -> F) : Prop :=
    (relationLc349 rho) * (relationLc350 rho) = ((1 : F) * rho 98151)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 97785, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 97784, 5, 74⟩], residual := [((1147359850578098327983144469797160403851601413814635373058616603285593090816 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98152) * ((1 : F) + (1 : F) * rho 98151) = (relationLc351 rho)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 97784, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 97785, 5, 74⟩], residual := [((5166411239745686018772196721073052671964494181791787460721779345450459005469 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98153) * ((1 : F) + (-1 : F) * rho 98151) = (relationLc352 rho)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 74⟩], residual := [((1 : F), 98152), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97605) * (relationLc353 rho) = ((1 : F) * rho 98154)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 74⟩], residual := [((1 : F), 98153), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97605) * (relationLc354 rho) = ((1 : F) * rho 98155)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1907361968556614937174139049099394714103623578024562286894512067867392714475 : F), 97784, 5, 75⟩], residual := [((7289856983649835644629295581964117196732447368103852467141767418370340514806 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 97785, 5, 75⟩], residual := [((4222272296493463434832385019891670295293017199428378413167607751933780996762 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow627 (rho : Nat -> F) : Prop :=
    (relationLc355 rho) * (relationLc356 rho) = ((1 : F) * rho 98156)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 97785, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 97784, 5, 75⟩], residual := [((7061867970989804320716922129605418672169306597822777167825470620247101327163 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98157) * ((1 : F) + (1 : F) * rho 98156) = (relationLc357 rho)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 97784, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 97785, 5, 75⟩], residual := [((1409662585539875679999185781335179769950752419417490626659213358189333655745 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98158) * ((1 : F) + (-1 : F) * rho 98156) = (relationLc358 rho)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 75⟩], residual := [((1 : F), 98157), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97606) * (relationLc359 rho) = ((1 : F) * rho 98159)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 75⟩], residual := [((1 : F), 98158), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97606) * (relationLc360 rho) = ((1 : F) * rho 98160)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5280468971504914988808723380835196575529785503777731781354790395125657121753 : F), 97784, 5, 76⟩], residual := [((4556647832234439029301725765286109558286714328354525395674184535529452263012 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 97785, 5, 76⟩], residual := [((3600144711730309239972511100011485673137307178139337070672969143704325140384 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow632 (rho : Nat -> F) : Prop :=
    (relationLc361 rho) * (relationLc362 rho) = ((1 : F) * rho 98161)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 97784, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 97785, 5, 76⟩], residual := [((3411575777228854506500277280060522728888623152829134550016258885357137329728 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98162) * ((1 : F) + (1 : F) * rho 98161) = (relationLc363 rho)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742490179599478013046920666056916592979193349658922425085796642242052004458 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 97785, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 97784, 5, 76⟩], residual := [((5126820015755109312404685105978555226239595498435133393189054043085659429469 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98163) * ((1 : F) + (-1 : F) * rho 98161) = (relationLc364 rho)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 76⟩], residual := [((1 : F), 98162), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97607) * (relationLc365 rho) = ((1 : F) * rho 98164)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 76⟩], residual := [((1 : F), 98163), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97607) * (relationLc366 rho) = ((1 : F) * rho 98165)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4195623733406376273792904174350645917923395446527071264275902358499815355703 : F), 97784, 5, 77⟩], residual := [((6306593912445370681793633410212297214903176766492704290603546068880324800889 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 97785, 5, 77⟩], residual := [((5474128706966524990545732930483669184775460332410376694904291933835612399336 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow637 (rho : Nat -> F) : Prop :=
    (relationLc367 rho) * (relationLc368 rho) = ((1 : F) * rho 98166)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 97785, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 97784, 5, 77⟩], residual := [((1889905658107155945981201727886346476221876859972054554238849703490310933302 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98167) * ((1 : F) + (1 : F) * rho 98166) = (relationLc369 rho)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 97784, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 97785, 5, 77⟩], residual := [((2096538376241753716798571118297109287092753035399130962288541335804405738151 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98168) * ((1 : F) + (-1 : F) * rho 98166) = (relationLc370 rho)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 77⟩], residual := [((1 : F), 98167), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97608) * (relationLc371 rho) = ((1 : F) * rho 98169)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 77⟩], residual := [((1 : F), 98168), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97608) * (relationLc372 rho) = ((1 : F) * rho 98170)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1413911105099657135291792788556059165546956689872882273894997138390302031093 : F), 97784, 5, 78⟩], residual := [((8353451365575389895420713276252437744296542059476952895769368578101377270479 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 97785, 5, 78⟩], residual := [((1627794521326751861359370178242313064265856034398423533990142366307677810046 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow642 (rho : Nat -> F) : Prop :=
    (relationLc373 rho) * (relationLc374 rho) = ((1 : F) * rho 98171)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 97785, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 97784, 5, 78⟩], residual := [((1963194852193203854203140744608170884516775783800214513275167904153514644444 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98172) * ((1 : F) + (1 : F) * rho 98171) = (relationLc375 rho)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 97784, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 97785, 5, 78⟩], residual := [((4713702755110331543474491408240107297403414201301135916108963537789741442495 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98173) * ((1 : F) + (-1 : F) * rho 98171) = (relationLc376 rho)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 78⟩], residual := [((1 : F), 98172), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97609) * (relationLc377 rho) = ((1 : F) * rho 98174)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 78⟩], residual := [((1 : F), 98173), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97609) * (relationLc378 rho) = ((1 : F) * rho 98175)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(435443019248027373572209328981659234170213225482121712799853667443266468176 : F), 97784, 5, 79⟩], residual := [((3240388181392711470302623400092573262502763043986311877675923455854650277543 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 97785, 5, 79⟩], residual := [((8359927174140099073163808715029987177202746736101787838973659665157973465362 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow647 (rho : Nat -> F) : Prop :=
    (relationLc379 rho) * (relationLc380 rho) = ((1 : F) * rho 98176)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 97784, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 97785, 5, 79⟩], residual := [((1255464619070411914285884063926842950292772109515344959551717420376047071663 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98177) * ((1 : F) + (1 : F) * rho 98176) = (relationLc381 rho)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 97785, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 97784, 5, 79⟩], residual := [((5201334774209604017645676000956203413974006481900791533392360915641172360594 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98178) * ((1 : F) + (-1 : F) * rho 98176) = (relationLc382 rho)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 79⟩], residual := [((1 : F), 98177), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97610) * (relationLc383 rho) = ((1 : F) * rho 98179)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 79⟩], residual := [((1 : F), 98178), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97610) * (relationLc384 rho) = ((1 : F) * rho 98180)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4171148466704651220389908484425727516067988246936310646425350299083169892930 : F), 97784, 5, 80⟩], residual := [((3095872043888969263896429164308195273262937578393571560685502100763634414657 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 97785, 5, 80⟩], residual := [((2753830212946274734080901510274114235564601986241285087182291927643562326665 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow652 (rho : Nat -> F) : Prop :=
    (relationLc385 rho) * (relationLc386 rho) = ((1 : F) * rho 98181)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 97784, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 97785, 5, 80⟩], residual := [((6643053041644967957978290427523183888135650947769817479177854734423396780793 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98182) * ((1 : F) + (1 : F) * rho 98181) = (relationLc387 rho)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 97785, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 97784, 5, 80⟩], residual := [((1944190991534382356061877854857180638324709297848421504967051709312870947874 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98183) * ((1 : F) + (-1 : F) * rho 98181) = (relationLc388 rho)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 80⟩], residual := [((1 : F), 98182), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97611) * (relationLc389 rho) = ((1 : F) * rho 98184)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 80⟩], residual := [((1 : F), 98183), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97611) * (relationLc390 rho) = ((1 : F) * rho 98185)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3606477877692461662957109389413456453654481356050762715016429689958378271754 : F), 97784, 5, 81⟩], residual := [((3909475824386380137549903929611434474143820228075144355006436974185598099324 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 97785, 5, 81⟩], residual := [((795231880928258437557794133498488588455906730014666906275286167459374319483 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow657 (rho : Nat -> F) : Prop :=
    (relationLc391 rho) * (relationLc392 rho) = ((1 : F) * rho 98186)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 97784, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 97785, 5, 81⟩], residual := [((7728755420950352125831423975308434577296149752659537292781206527488954098007 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98187) * ((1 : F) + (1 : F) * rho 98186) = (relationLc393 rho)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (143751746805209981231263548913363895913215937586530293922447314115109648945 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 97785, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 97784, 5, 81⟩], residual := [((3014817936280911672026913628016558529560374790681053700727771705456056218127 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98188) * ((1 : F) + (-1 : F) * rho 98186) = (relationLc394 rho)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 81⟩], residual := [((1 : F), 98187), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97612) * (relationLc395 rho) = ((1 : F) * rho 98189)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 81⟩], residual := [((1 : F), 98188), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97612) * (relationLc396 rho) = ((1 : F) * rho 98190)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3766554936473951255540249522715488611853256733758667611827960753981783105824 : F), 97784, 5, 82⟩], residual := [((7621915444124325191480647678072558098704848408090815923787421731984216850880 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 97785, 5, 82⟩], residual := [((8201295156430902398006891467380246727186705512452201264592190614802423168295 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow662 (rho : Nat -> F) : Prop :=
    (relationLc397 rho) * (relationLc398 rho) = ((1 : F) * rho 98191)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 97784, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 97785, 5, 82⟩], residual := [((2126936358743662087803162646051875459026328052598893106363984685827758001521 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98192) * ((1 : F) + (1 : F) * rho 98191) = (relationLc399 rho)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 97785, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 97784, 5, 82⟩], residual := [((4445652771961411157792133795511392792424747091865093974256457248476981814276 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98193) * ((1 : F) + (-1 : F) * rho 98191) = (relationLc400 rho)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 82⟩], residual := [((1 : F), 98192), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97613) * (relationLc401 rho) = ((1 : F) * rho 98194)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 82⟩], residual := [((1 : F), 98193), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97613) * (relationLc402 rho) = ((1 : F) * rho 98195)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4057618003226322301380722646054133515350344497494379614603511631974896775073 : F), 97784, 5, 83⟩], residual := [((1114119046654488412156978360057755686609664720675475355766786494969526974976 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 97785, 5, 83⟩], residual := [((8415988326101532143562530920364287788294739843006614146358467532537182975184 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow667 (rho : Nat -> F) : Prop :=
    (relationLc403 rho) * (relationLc404 rho) = ((1 : F) * rho 98196)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 97785, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 97784, 5, 83⟩], residual := [((5422640290818139149203598602894913879186173632073371218730904392916999006949 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98197) * ((1 : F) + (1 : F) * rho 98196) = (relationLc405 rho)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (702951842803623733461713267884879944684111578159935253368535951362874748684 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 97784, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 97785, 5, 83⟩], residual := [((5025556459589336422978363340047262187464658303343479376519996551711562936563 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98198) * ((1 : F) + (-1 : F) * rho 98196) = (relationLc406 rho)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 83⟩], residual := [((1 : F), 98197), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97614) * (relationLc407 rho) = ((1 : F) * rho 98199)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 83⟩], residual := [((1 : F), 98198), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97614) * (relationLc408 rho) = ((1 : F) * rho 98200)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5521699295475871864753056508204148223678162633978526892347350614954837511571 : F), 97784, 5, 84⟩], residual := [((2752875008010564020883566174142247157044480591208246799816422655462893432145 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 97785, 5, 84⟩], residual := [((999253345431023173700117287462072931709406681660084743379432615777357612207 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow672 (rho : Nat -> F) : Prop :=
    (relationLc409 rho) * (relationLc410 rho) = ((1 : F) * rho 98201)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 97785, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 97784, 5, 84⟩], residual := [((8396406163701621884916030678455159449146571236909625006708278741898816645618 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98202) * ((1 : F) + (1 : F) * rho 98201) = (relationLc411 rho)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 97784, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 97785, 5, 84⟩], residual := [((7059873362166045987362961083589418026509864897316794138950051358551377495103 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98203) * ((1 : F) + (-1 : F) * rho 98201) = (relationLc412 rho)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 84⟩], residual := [((1 : F), 98202), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97615) * (relationLc413 rho) = ((1 : F) * rho 98204)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 84⟩], residual := [((1 : F), 98203), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97615) * (relationLc414 rho) = ((1 : F) * rho 98205)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5875314823000567718468398952994848754922664908524519324365751156649417451005 : F), 97784, 5, 85⟩], residual := [((5477888473051844104213404977281314913536255982406650950202859066687533352604 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 97785, 5, 85⟩], residual := [((483659877864017298282645335160677740150049015512611850596575714024882099756 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow677 (rho : Nat -> F) : Prop :=
    (relationLc415 rho) * (relationLc416 rho) = ((1 : F) * rho 98206)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 97785, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 97784, 5, 85⟩], residual := [((3697219771464232280595162137423927749903258082733540678550162638856325578409 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98207) * ((1 : F) + (1 : F) * rho 98206) = (relationLc417 rho)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 97784, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 97785, 5, 85⟩], residual := [((3869906991999287255572332967163802692740859564722218277265168257637774615890 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98208) * ((1 : F) + (-1 : F) * rho 98206) = (relationLc418 rho)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 85⟩], residual := [((1 : F), 98207), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97616) * (relationLc419 rho) = ((1 : F) * rho 98209)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 85⟩], residual := [((1 : F), 98208), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97616) * (relationLc420 rho) = ((1 : F) * rho 98210)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3266100972727780920478745108358337853971524136114438455381086990522349021937 : F), 97784, 5, 86⟩], residual := [((108787566386572987969553219646625715175982685210276690626178449889909211465 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 97785, 5, 86⟩], residual := [((8364191030312960177030230610335616396614882005722442462220723820210297943600 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow682 (rho : Nat -> F) : Prop :=
    (relationLc421 rho) * (relationLc422 rho) = ((1 : F) * rho 98211)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 97784, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 97785, 5, 86⟩], residual := [((8255212142308551082837004983260861782576985914565276552720939667171274755546 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98212) * ((1 : F) + (1 : F) * rho 98211) = (relationLc423 rho)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 97785, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 97784, 5, 86⟩], residual := [((4736156545623580777384540766592061019307340316099661050493041670764466775994 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98213) * ((1 : F) + (-1 : F) * rho 98211) = (relationLc424 rho)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 86⟩], residual := [((1 : F), 98212), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97617) * (relationLc425 rho) = ((1 : F) * rho 98214)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 86⟩], residual := [((1 : F), 98213), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97617) * (relationLc426 rho) = ((1 : F) * rho 98215)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(26200193764347171125407596709908285096460117738061776850047079451019047352 : F), 97784, 5, 87⟩], residual := [((529502284087046459666488542980438945459686277092178839399050484959576701564 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 97785, 5, 87⟩], residual := [((1570170090437106096843875560441493473645609531430524209506513015550493859267 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow687 (rho : Nat -> F) : Prop :=
    (relationLc427 rho) * (relationLc428 rho) = ((1 : F) * rho 98216)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 97784, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 97785, 5, 87⟩], residual := [((7904390489804459432761619287625195850025367088443500314419004926041658676337 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98217) * ((1 : F) + (1 : F) * rho 98216) = (relationLc429 rho)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 97785, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 97784, 5, 87⟩], residual := [((1144087987983058011604391365965542383344283330920575228737270886315331523144 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98218) * ((1 : F) + (-1 : F) * rho 98216) = (relationLc430 rho)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 87⟩], residual := [((1 : F), 98217), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97618) * (relationLc431 rho) = ((1 : F) * rho 98219)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 87⟩], residual := [((1 : F), 98218), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97618) * (relationLc432 rho) = ((1 : F) * rho 98220)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087097300354708100130994740412149671502360901401685447105460186367585798810 : F), 97784, 5, 88⟩], residual := [((7582837550068422223735267140763712102417066333942182552409190141783131332570 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 97785, 5, 88⟩], residual := [((7824856292175594371432062421309296506730692337607393469994065188588716269062 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow692 (rho : Nat -> F) : Prop :=
    (relationLc433 rho) * (relationLc434 rho) = ((1 : F) * rho 98221)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 97784, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 97785, 5, 88⟩], residual := [((8419960141374165358576877434272703185563564805461284139995613908481557675884 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98222) * ((1 : F) + (1 : F) * rho 98221) = (relationLc435 rho)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 97785, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 97784, 5, 88⟩], residual := [((8183137533133929953836593527067042140091951128981924624733209100941525274475 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98223) * ((1 : F) + (-1 : F) * rho 98221) = (relationLc436 rho)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 88⟩], residual := [((1 : F), 98222), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97619) * (relationLc437 rho) = ((1 : F) * rho 98224)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 88⟩], residual := [((1 : F), 98223), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97619) * (relationLc438 rho) = ((1 : F) * rho 98225)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5553937132187018911618187782803373191498878807145456404870079374753212848821 : F), 97784, 5, 89⟩], residual := [((8106250636419396786282151843311679883550901458438273481039369926572772228425 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 97785, 5, 89⟩], residual := [((1113765216506362856953168545775460761137336684574255069943489410559258707144 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow697 (rho : Nat -> F) : Prop :=
    (relationLc439 rho) * (relationLc440 rho) = ((1 : F) * rho 98226)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 97785, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 97784, 5, 89⟩], residual := [((6301644328001247508978276924882736661695378448284690910493273399520982279024 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98227) * ((1 : F) + (1 : F) * rho 98226) = (relationLc441 rho)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (683880372059817743273198104218967469992458893275318447673309183256736533325 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 97784, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 97785, 5, 89⟩], residual := [((4716674405789172745841800507991441449338750937613045759663632659674869388009 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98228) * ((1 : F) + (-1 : F) * rho 98226) = (relationLc442 rho)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 89⟩], residual := [((1 : F), 98227), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97620) * (relationLc443 rho) = ((1 : F) * rho 98229)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 89⟩], residual := [((1 : F), 98228), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97620) * (relationLc444 rho) = ((1 : F) * rho 98230)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(416901722813894028244973649619309201824033459802693192096545298596434456705 : F), 97784, 5, 90⟩], residual := [((5389722288278426713369559430097372389797259323563071839234918205001124245927 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 97785, 5, 90⟩], residual := [((2844526279434391185474169943104742618961444464907013672005077469127649057606 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow702 (rho : Nat -> F) : Prop :=
    (relationLc445 rho) * (relationLc446 rho) = ((1 : F) * rho 98231)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 97785, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 97784, 5, 90⟩], residual := [((5116056455807815618179703014842813839043214580586809401936439430203431059045 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98232) * ((1 : F) + (1 : F) * rho 98231) = (relationLc447 rho)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (28090539297284871986340027486737760514923213111997130576447825176355685815 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 97784, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 97785, 5, 90⟩], residual := [((4458287442263740785262441721229653695101228679984538103063021122821012133541 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98233) * ((1 : F) + (-1 : F) * rho 98231) = (relationLc448 rho)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 90⟩], residual := [((1 : F), 98232), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97621) * (relationLc449 rho) = ((1 : F) * rho 98234)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 90⟩], residual := [((1 : F), 98233), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97621) * (relationLc450 rho) = ((1 : F) * rho 98235)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8339597046261833337760335063215216078969421923029246720831548189814301480772 : F), 97784, 5, 91⟩], residual := [((6326468848790444497198581113203078955764617576924413867089125979139173942337 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 97785, 5, 91⟩], residual := [((3270113702474803028094885201150201488877397205225361062087494797364316023631 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow707 (rho : Nat -> F) : Prop :=
    (relationLc451 rho) * (relationLc452 rho) = ((1 : F) * rho 98236)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 97784, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 97785, 5, 91⟩], residual := [((5589473271864048154278094223117465690620656114996841805955550957885557808837 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98237) * ((1 : F) + (1 : F) * rho 98236) = (relationLc453 rho)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 97785, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 97784, 5, 91⟩], residual := [((5866324979306886411374123066060365086744916503349938728262095692376973547345 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98238) * ((1 : F) + (-1 : F) * rho 98236) = (relationLc454 rho)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 91⟩], residual := [((1 : F), 98237), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97622) * (relationLc455 rho) = ((1 : F) * rho 98239)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 91⟩], residual := [((1 : F), 98238), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97622) * (relationLc456 rho) = ((1 : F) * rho 98240)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(906651443227238370999930576736507201843788420062155760822097063588325148631 : F), 97784, 5, 92⟩], residual := [((171856542169036465662660088707309910549636242610598401756383291275222624429 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 97785, 5, 92⟩], residual := [((239656307825519749788656889954205843971214536386488825615388180129073822859 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow712 (rho : Nat -> F) : Prop :=
    (relationLc457 rho) * (relationLc458 rho) = ((1 : F) * rho 98241)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 97784, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 97785, 5, 92⟩], residual := [((7613592736668356630170670411501517018972926579544062799959943704790245883506 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98242) * ((1 : F) + (1 : F) * rho 98241) = (relationLc459 rho)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 97785, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 97784, 5, 92⟩], residual := [((282282767984487211898132991613997864338075755356622244673057499008739425679 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98243) * ((1 : F) + (-1 : F) * rho 98241) = (relationLc460 rho)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 92⟩], residual := [((1 : F), 98242), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97623) * (relationLc461 rho) = ((1 : F) * rho 98244)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 92⟩], residual := [((1 : F), 98243), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97623) * (relationLc462 rho) = ((1 : F) * rho 98245)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8179997532971249348010168698851349345970456620578852397081600124288614754658 : F), 97784, 5, 93⟩], residual := [((67165515290697416187595235537827856610906086241323537994573544540646218256 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 97785, 5, 93⟩], residual := [((7300898220308033915871176265277384593103237625616658863561297474360981627294 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow717 (rho : Nat -> F) : Prop :=
    (relationLc463 rho) * (relationLc464 rho) = ((1 : F) * rho 98246)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 97784, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 97785, 5, 93⟩], residual := [((4863459133917352581038740730228734891844325571936386657529675825895096089318 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98247) * ((1 : F) + (1 : F) * rho 98246) = (relationLc465 rho)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 97785, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 97784, 5, 93⟩], residual := [((3999197093751402518624046588967473794431069856960421232165216655853348727802 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98248) * ((1 : F) + (-1 : F) * rho 98246) = (relationLc466 rho)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 97784, 5, 93⟩], residual := [((1 : F), 98247), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97624) * (relationLc467 rho) = ((1 : F) * rho 98249)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 97785, 5, 93⟩], residual := [((1 : F), 98248), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97624) * (relationLc468 rho) = ((1 : F) * rho 98250)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1431114787603952086392307633768073599645790269787901765432457889890133132379 : F), 97784, 5, 94⟩], residual := [((3657714537796633005479171841637416164237211678381198199859328213321907096082 : F), 97530)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
