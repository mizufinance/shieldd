import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs1

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 52⟩], residual := [((1 : F), 89013), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88554) * (relationLc223 rho) = ((1 : F) * rho 89015)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 52⟩], residual := [((1 : F), 89014), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88554) * (relationLc224 rho) = ((1 : F) * rho 89016)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5846523051446967967440159082631275298002440439864756615500920460162638843764 : F), 88755, 5, 53⟩], residual := [((5485200669001964675903116690389524045452503466510717669914562100715921570316 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 88756, 5, 53⟩], residual := [((7291182270810181618096149122593319263114027650082957086263435969101109264147 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow518 (rho : Nat -> F) : Prop :=
    (relationLc225 rho) * (relationLc226 rho) = ((1 : F) * rho 89017)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 88755, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 88756, 5, 53⟩], residual := [((3265037226037828153459719589295133553856424724399244653828892159807408240682 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89018) * ((1 : F) + (1 : F) * rho 89017) = (relationLc227 rho)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 88756, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 88755, 5, 53⟩], residual := [((8364348212655621776185922730037361598719148012242692402802574383202708885440 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89019) * ((1 : F) + (-1 : F) * rho 89017) = (relationLc228 rho)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 53⟩], residual := [((1 : F), 89018), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88555) * (relationLc229 rho) = ((1 : F) * rho 89020)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 53⟩], residual := [((1 : F), 89019), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88555) * (relationLc230 rho) = ((1 : F) * rho 89021)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3270625457551667644453406806086445794893819027444377513267150979927668756102 : F), 88755, 5, 54⟩], residual := [((1313990169365511817090899843224152567995448967037380651344274914537076948048 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 88756, 5, 54⟩], residual := [((4242920238461437888072824133392194042958901485991965180008883918058321798559 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow523 (rho : Nat -> F) : Prop :=
    (relationLc231 rho) * (relationLc232 rho) = ((1 : F) * rho 89022)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 88756, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 88755, 5, 54⟩], residual := [((254528008648488836902356643224023653119307675234662398872758838058452249680 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89023) * ((1 : F) + (1 : F) * rho 89022) = (relationLc233 rho)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 88755, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 88756, 5, 54⟩], residual := [((2289707880837953908755208871389624432709260619033607367296000191999872925118 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89024) * ((1 : F) + (-1 : F) * rho 89022) = (relationLc234 rho)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 54⟩], residual := [((1 : F), 89023), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88556) * (relationLc235 rho) = ((1 : F) * rho 89025)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 54⟩], residual := [((1 : F), 89024), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88556) * (relationLc236 rho) = ((1 : F) * rho 89026)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3233995703196325388481299497442317849571724715469973779048454502475618732286 : F), 88755, 5, 55⟩], residual := [((8427363959673275445356636965346819445583959661557314661313584705058592663131 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 88756, 5, 55⟩], residual := [((3675494411708184879950187669845890975019109332169909707887469082384047256779 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow528 (rho : Nat -> F) : Prop :=
    (relationLc237 rho) * (relationLc238 rho) = ((1 : F) * rho 89027)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 88755, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 88756, 5, 55⟩], residual := [((1411333168799633030026175624699751478991214462541181323314757811929244112059 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89028) * ((1 : F) + (1 : F) * rho 89027) = (relationLc239 rho)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (470673144524052484826972488981377734233936714009054186319817171498378143294 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 88756, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 88755, 5, 55⟩], residual := [((2267358468243705539888602275044934994867174603928525323102004785228563668611 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89029) * ((1 : F) + (-1 : F) * rho 89027) = (relationLc240 rho)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 55⟩], residual := [((1 : F), 89028), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88557) * (relationLc241 rho) = ((1 : F) * rho 89030)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 55⟩], residual := [((1 : F), 89029), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88557) * (relationLc242 rho) = ((1 : F) * rho 89031)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6984451028592461867390374761534058577866431087611019337585209388902324145485 : F), 88755, 5, 56⟩], residual := [((6268515690606711675820373018132505629153826392182024131345248525914402666900 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 88756, 5, 56⟩], residual := [((7115815826549671405340392110243331685100108865524818480158285579730834185347 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow533 (rho : Nat -> F) : Prop :=
    (relationLc243 rho) * (relationLc244 rho) = ((1 : F) * rho 89032)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 88755, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 88756, 5, 56⟩], residual := [((7710484613894729744174080048025463552124552587949460504538826705576714741899 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89033) * ((1 : F) + (1 : F) * rho 89032) = (relationLc245 rho)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 88756, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 88755, 5, 56⟩], residual := [((5561583927891243347137693310954441770830459976203518871196116942379669336356 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89034) * ((1 : F) + (-1 : F) * rho 89032) = (relationLc246 rho)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 56⟩], residual := [((1 : F), 89033), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88558) * (relationLc247 rho) = ((1 : F) * rho 89035)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 56⟩], residual := [((1 : F), 89034), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88558) * (relationLc248 rho) = ((1 : F) * rho 89036)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1575422911388496626730629818346833710771077486342176306515899025137426598458 : F), 88755, 5, 57⟩], residual := [((2280674101688118451702959074318755416748900744787404058007147376446815225484 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 88756, 5, 57⟩], residual := [((7612865992649868553776640700840008593526902917162252084467998826231105017371 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow538 (rho : Nat -> F) : Prop :=
    (relationLc249 rho) * (relationLc250 rho) = ((1 : F) * rho 89037)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 88755, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 88756, 5, 57⟩], residual := [((3689084588447371381584106025244188476136961253537121925460034369186551638891 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89038) * ((1 : F) + (1 : F) * rho 89037) = (relationLc251 rho)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 88756, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 88755, 5, 57⟩], residual := [((8103381537400898634954171877401300506786451891081291608583421318233370836558 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89039) * ((1 : F) + (-1 : F) * rho 89037) = (relationLc252 rho)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 57⟩], residual := [((1 : F), 89038), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88559) * (relationLc253 rho) = ((1 : F) * rho 89040)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 57⟩], residual := [((1 : F), 89039), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88559) * (relationLc254 rho) = ((1 : F) * rho 89041)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2156487065597549056324983678614439370425622070883240801164137263655924233376 : F), 88755, 5, 58⟩], residual := [((5216000986918399100658725928726594776545297115515760187025219720411965230869 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 88756, 5, 58⟩], residual := [((2766414637686983554196240388590361588031805575494008592258454326579377809996 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow543 (rho : Nat -> F) : Prop :=
    (relationLc255 rho) * (relationLc256 rho) = ((1 : F) * rho 89042)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 88756, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 88755, 5, 58⟩], residual := [((1549410558983292357284016308027624847580515667181643127580289292796001953329 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89043) * ((1 : F) + (1 : F) * rho 89042) = (relationLc257 rho)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 88755, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 88756, 5, 58⟩], residual := [((8037383549421691466757036345025357349622246770121874476649744840456289462477 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89044) * ((1 : F) + (-1 : F) * rho 89042) = (relationLc258 rho)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 58⟩], residual := [((1 : F), 89043), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88560) * (relationLc259 rho) = ((1 : F) * rho 89045)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 58⟩], residual := [((1 : F), 89044), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88560) * (relationLc260 rho) = ((1 : F) * rho 89046)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2176686707172346089764861149147128588707699343836468076549025280019693811766 : F), 88755, 5, 59⟩], residual := [((5344909994604615257630325697143396666051053670561830463561362977461125484596 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 88756, 5, 59⟩], residual := [((2214981955855980363476769290924158600072872287107850573391034021018292460131 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow548 (rho : Nat -> F) : Prop :=
    (relationLc261 rho) * (relationLc262 rho) = ((1 : F) * rho 89047)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 88756, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 88755, 5, 59⟩], residual := [((6487899024085425786684261787499910502293469850095593492804671254920729548095 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89048) * ((1 : F) + (1 : F) * rho 89047) = (relationLc263 rho)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 88755, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 88756, 5, 59⟩], residual := [((1140136143485807931745155331023219576130803482552960585340507993082385214402 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89049) * ((1 : F) + (-1 : F) * rho 89047) = (relationLc264 rho)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 59⟩], residual := [((1 : F), 89048), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88561) * (relationLc265 rho) = ((1 : F) * rho 89050)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 59⟩], residual := [((1 : F), 89049), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88561) * (relationLc266 rho) = ((1 : F) * rho 89051)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5615196394253809742051837972053350097436945599023299075757788719623911014164 : F), 88755, 5, 60⟩], residual := [((2192973411531826120347442314194415155367589721663284732414709266599801162341 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 88756, 5, 60⟩], residual := [((3632481104554618013980636857969656708838921269583913130983900467527162348250 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow553 (rho : Nat -> F) : Prop :=
    (relationLc267 rho) * (relationLc268 rho) = ((1 : F) * rho 89052)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 88756, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 88755, 5, 60⟩], residual := [((147525517621269423143848623495511025465740574047516471366945349929542513784 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89053) * ((1 : F) + (1 : F) * rho 89052) = (relationLc269 rho)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 88755, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 88756, 5, 60⟩], residual := [((7835467099238429573137548256885374856751082605880225412215512677951913505295 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89054) * ((1 : F) + (-1 : F) * rho 89052) = (relationLc270 rho)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 60⟩], residual := [((1 : F), 89053), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88562) * (relationLc271 rho) = ((1 : F) * rho 89055)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 60⟩], residual := [((1 : F), 89054), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88562) * (relationLc272 rho) = ((1 : F) * rho 89056)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6158233270979310956638021131007359831823461191922592329001496000280905611254 : F), 88755, 5, 61⟩], residual := [((4467762641089011012460139430937330739726033190653514206239072531933157555187 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 88756, 5, 61⟩], residual := [((4238644719121606010764621135185413098022294640887365526575084778074895914597 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow558 (rho : Nat -> F) : Prop :=
    (relationLc273 rho) * (relationLc274 rho) = ((1 : F) * rho 89057)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 88756, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 88755, 5, 61⟩], residual := [((4047251108373685273174184597169858851108951039121401643780880198158852193995 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89058) * ((1 : F) + (1 : F) * rho 89057) = (relationLc275 rho)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 88755, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 88756, 5, 61⟩], residual := [((2519224524602260538067412646708043802373803742617841216289952063342850795165 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89059) * ((1 : F) + (-1 : F) * rho 89057) = (relationLc276 rho)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 61⟩], residual := [((1 : F), 89058), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88563) * (relationLc277 rho) = ((1 : F) * rho 89060)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 61⟩], residual := [((1 : F), 89059), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88563) * (relationLc278 rho) = ((1 : F) * rho 89061)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8104899636678543604657262777441996492681450007842513561438126999479804123625 : F), 88755, 5, 62⟩], residual := [((7860504369378455773331695889377182530776402391681277877526940376923990757318 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 88756, 5, 62⟩], residual := [((4094745204734227454523259541864877269488153888968154424022635492436875126558 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow563 (rho : Nat -> F) : Prop :=
    (relationLc279 rho) * (relationLc280 rho) = ((1 : F) * rho 89062)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 88756, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 88755, 5, 62⟩], residual := [((882805281704354057597467756459580570199339644335419526886590628508342642566 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89063) * ((1 : F) + (1 : F) * rho 89062) = (relationLc281 rho)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 88755, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 88756, 5, 62⟩], residual := [((1365556802616877375954001694639792525481792047346366026008002783409929961333 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89064) * ((1 : F) + (-1 : F) * rho 89062) = (relationLc282 rho)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 62⟩], residual := [((1 : F), 89063), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88564) * (relationLc283 rho) = ((1 : F) * rho 89065)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 62⟩], residual := [((1 : F), 89064), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88564) * (relationLc284 rho) = ((1 : F) * rho 89066)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6011334678039591808234449784869804372031718158751584830130446658022560656768 : F), 88755, 5, 63⟩], residual := [((2896601315595281826483492482886891517188844246350138873647231071697040228255 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 88756, 5, 63⟩], residual := [((3632840430158228762076042235044308132661818045554303185557551945106229637474 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow568 (rho : Nat -> F) : Prop :=
    (relationLc285 rho) * (relationLc286 rho) = ((1 : F) * rho 89067)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 88756, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 88755, 5, 63⟩], residual := [((422052628510561653292389020156155178992927118097941318816758827007121337100 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89068) * ((1 : F) + (1 : F) * rho 89067) = (relationLc287 rho)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 88755, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 88756, 5, 63⟩], residual := [((2598290662687356450350434728849758433307111346405199677646573938046939128067 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89069) * ((1 : F) + (-1 : F) * rho 89067) = (relationLc288 rho)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 63⟩], residual := [((1 : F), 89068), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88565) * (relationLc289 rho) = ((1 : F) * rho 89070)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 63⟩], residual := [((1 : F), 89069), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88565) * (relationLc290 rho) = ((1 : F) * rho 89071)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1468539582095666279378991410533170917245967249536948894488180590741816634177 : F), 88755, 5, 64⟩], residual := [((2441858149594684419669229541998122896554895397549907271029031954323754410683 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 88756, 5, 64⟩], residual := [((5734647455186279297627215050346085835678696177385387464145726860498976860026 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow573 (rho : Nat -> F) : Prop :=
    (relationLc291 rho) * (relationLc292 rho) = ((1 : F) * rho 89072)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 88756, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 88755, 5, 64⟩], residual := [((3806730623357089986699700989367181835760518207885634357888102877503714158759 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89073) * ((1 : F) + (1 : F) * rho 89072) = (relationLc293 rho)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (730047353916881942074916352344427942934907545092600995692017250110951879518 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 88755, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 88756, 5, 64⟩], residual := [((1796660262071968910246623980526058329156247328003921086141166780672068447878 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89074) * ((1 : F) + (-1 : F) * rho 89072) = (relationLc294 rho)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 64⟩], residual := [((1 : F), 89073), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88566) * (relationLc295 rho) = ((1 : F) * rho 89075)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 64⟩], residual := [((1 : F), 89074), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88566) * (relationLc296 rho) = ((1 : F) * rho 89076)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6021026344076416619121288468750741828046873078691119012171314382658426450457 : F), 88755, 5, 65⟩], residual := [((7317429427889679080864790959675717489239037886684290610301339332825622009038 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 88756, 5, 65⟩], residual := [((5623423306062474044567382328107422310706576126000140678799979011964140812863 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow578 (rho : Nat -> F) : Prop :=
    (relationLc297 rho) * (relationLc298 rho) = ((1 : F) * rho 89077)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 88755, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 88756, 5, 65⟩], residual := [((7462327244759041091178551734177979010012502938672402918311316224764724557338 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89078) * ((1 : F) + (1 : F) * rho 89077) = (relationLc299 rho)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 88756, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 88755, 5, 65⟩], residual := [((6347859754536564095544343687702155263140218853768682012754218406582542057158 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89079) * ((1 : F) + (-1 : F) * rho 89077) = (relationLc300 rho)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 65⟩], residual := [((1 : F), 89078), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88567) * (relationLc301 rho) = ((1 : F) * rho 89080)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 65⟩], residual := [((1 : F), 89079), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88567) * (relationLc302 rho) = ((1 : F) * rho 89081)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(283579253166981189097466647978536705612250233144289388837895438594313409125 : F), 88755, 5, 66⟩], residual := [((6495894566211403996232269137026018932501953391940325354720954163848318066143 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 88756, 5, 66⟩], residual := [((4408468101015441774814258326413622957135574875933813938428914074908842070788 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow583 (rho : Nat -> F) : Prop :=
    (relationLc303 rho) * (relationLc304 rho) = ((1 : F) * rho 89082)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 88755, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 88756, 5, 66⟩], residual := [((178604084442008667129224003944826058899689526701337172411296564781364656077 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89083) * ((1 : F) + (1 : F) * rho 89082) = (relationLc305 rho)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 88756, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 88755, 5, 66⟩], residual := [((4120489983777216601665037330618917811763519217508859746155615907430572528784 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89084) * ((1 : F) + (-1 : F) * rho 89082) = (relationLc306 rho)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 66⟩], residual := [((1 : F), 89083), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88568) * (relationLc307 rho) = ((1 : F) * rho 89085)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 66⟩], residual := [((1 : F), 89084), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88568) * (relationLc308 rho) = ((1 : F) * rho 89086)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8068015689772184792989167365226394865601744563867089166204480917047383290178 : F), 88755, 5, 67⟩], residual := [((631761650035118282494441602095374805998255137796949998403698007072857970444 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 88756, 5, 67⟩], residual := [((2133162629518657432416682639600108610216712170376817295401199551129982949223 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow588 (rho : Nat -> F) : Prop :=
    (relationLc309 rho) * (relationLc310 rho) = ((1 : F) * rho 89087)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 88756, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 88755, 5, 67⟩], residual := [((2228410382292771868930073731794967252015050082502946100481703237163834247501 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89088) * ((1 : F) + (1 : F) * rho 89087) = (relationLc311 rho)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 88755, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 88756, 5, 67⟩], residual := [((1168696129252342408338407423711147118445105332484515454228740713687607975055 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89089) * ((1 : F) + (-1 : F) * rho 89087) = (relationLc312 rho)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 67⟩], residual := [((1 : F), 89088), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88569) * (relationLc313 rho) = ((1 : F) * rho 89090)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 67⟩], residual := [((1 : F), 89089), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88569) * (relationLc314 rho) = ((1 : F) * rho 89091)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(517925809368660864558072751869487790437935273484529585746369323552734005467 : F), 88755, 5, 68⟩], residual := [((1879049417325825119536558889711291957517960724627912445191850677173291976161 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 88756, 5, 68⟩], residual := [((718961184178561580886179684940049791723993716228098994336875608766544841653 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow593 (rho : Nat -> F) : Prop :=
    (relationLc315 rho) * (relationLc316 rho) = ((1 : F) * rho 89092)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 88755, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 88756, 5, 68⟩], residual := [((4593804955818762584900879428085013308587454305188099119448899912168962086700 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89093) * ((1 : F) + (1 : F) * rho 89092) = (relationLc317 rho)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 88756, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 88755, 5, 68⟩], residual := [((4317293776341917983161643856627357891656090044601391905393571122349505951615 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89094) * ((1 : F) + (-1 : F) * rho 89092) = (relationLc318 rho)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 68⟩], residual := [((1 : F), 89093), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88570) * (relationLc319 rho) = ((1 : F) * rho 89095)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 68⟩], residual := [((1 : F), 89094), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88570) * (relationLc320 rho) = ((1 : F) * rho 89096)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3372123005021887774424946087009289440204555678066507861318664216599352821638 : F), 88755, 5, 69⟩], residual := [((7051893256125772232379071968189882766792145554365486350271113435452976189797 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 88756, 5, 69⟩], residual := [((5119128936249422117446661545040219479495504038648853251610860357079968667357 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow598 (rho : Nat -> F) : Prop :=
    (relationLc321 rho) * (relationLc322 rho) = ((1 : F) * rho 89097)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 88755, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 88756, 5, 69⟩], residual := [((2625301578095364184106104908706644117114873134730212565746612636888378639461 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89098) * ((1 : F) + (1 : F) * rho 89097) = (relationLc323 rho)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 88756, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 88755, 5, 69⟩], residual := [((7079511155079999714398925576408017154871907527630316463077184212265726578920 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89099) * ((1 : F) + (-1 : F) * rho 89097) = (relationLc324 rho)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 69⟩], residual := [((1 : F), 89098), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88571) * (relationLc325 rho) = ((1 : F) * rho 89100)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 69⟩], residual := [((1 : F), 89099), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88571) * (relationLc326 rho) = ((1 : F) * rho 89101)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8185666225749794430846144650787739023696221861934424385315707228887955883205 : F), 88755, 5, 70⟩], residual := [((1138038450385463163308468001875449085299714829408678439768163290155722660408 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 88756, 5, 70⟩], residual := [((5429798299015515662944100111838631597125674244426331474003761181336372146151 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow603 (rho : Nat -> F) : Prop :=
    (relationLc327 rho) * (relationLc328 rho) = ((1 : F) * rho 89102)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 88755, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 88756, 5, 70⟩], residual := [((5922139678144869737035825254912920785674981757771754814671212108688778550895 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89103) * ((1 : F) + (1 : F) * rho 89102) = (relationLc329 rho)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 88756, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 88755, 5, 70⟩], residual := [((1093760832205737787781881875496000658544674873716306113692117833674308804177 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89104) * ((1 : F) + (-1 : F) * rho 89102) = (relationLc330 rho)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 70⟩], residual := [((1 : F), 89103), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88572) * (relationLc331 rho) = ((1 : F) * rho 89105)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 70⟩], residual := [((1 : F), 89104), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88572) * (relationLc332 rho) = ((1 : F) * rho 89106)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1253370348878293429528158011004145692447964637774466349806330659661798099713 : F), 88755, 5, 71⟩], residual := [((5177285811817626865424623719269477408051499024395637386483226684730555701671 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 88756, 5, 71⟩], residual := [((3367592843284670476747272752673000272108909791114671692752080632518020760681 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow608 (rho : Nat -> F) : Prop :=
    (relationLc333 rho) * (relationLc334 rho) = ((1 : F) * rho 89107)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 88756, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 88755, 5, 71⟩], residual := [((8311315338750137718368374081863680094975722609246674501482956493738381598260 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89108) * ((1 : F) + (1 : F) * rho 89107) = (relationLc335 rho)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (61910469657829342192321187244024551268691741149011542722403663253838067315 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 88755, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 88756, 5, 71⟩], residual := [((4705419314553287616991508755795092976095130005674868138925901345366955008146 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89109) * ((1 : F) + (-1 : F) * rho 89107) = (relationLc336 rho)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 71⟩], residual := [((1 : F), 89108), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88573) * (relationLc337 rho) = ((1 : F) * rho 89110)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 71⟩], residual := [((1 : F), 89109), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88573) * (relationLc338 rho) = ((1 : F) * rho 89111)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3225038647207066965249142518288305004231848817992616889755291892327653920728 : F), 88755, 5, 72⟩], residual := [((4944622807462013599979574477380851123515144290853061497859212195669938643605 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 88756, 5, 72⟩], residual := [((522070924770264662150994421644969496201813472832552067666639466908629057618 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow613 (rho : Nat -> F) : Prop :=
    (relationLc339 rho) * (relationLc340 rho) = ((1 : F) * rho 89112)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 88756, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 88755, 5, 72⟩], residual := [((7662785896914428871727783057237637716081840631480129716804158652148196464157 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89113) * ((1 : F) + (1 : F) * rho 89112) = (relationLc341 rho)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 88755, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 88756, 5, 72⟩], residual := [((4485325941707069071562287047850445223888634056987251509239894560844401571231 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89114) * ((1 : F) + (-1 : F) * rho 89112) = (relationLc342 rho)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 72⟩], residual := [((1 : F), 89113), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88574) * (relationLc343 rho) = ((1 : F) * rho 89115)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 72⟩], residual := [((1 : F), 89114), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88574) * (relationLc344 rho) = ((1 : F) * rho 89116)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7082044748100286856446498151604694946338813897682899219296387993480553190970 : F), 88755, 5, 73⟩], residual := [((2222557722432484492449536154567798044442158058598341703639917393362435335170 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 88756, 5, 73⟩], residual := [((3488455227260224643982284464778928384077632489165373676849410455541685060493 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow618 (rho : Nat -> F) : Prop :=
    (relationLc345 rho) * (relationLc346 rho) = ((1 : F) * rho 89117)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 88756, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 88755, 5, 73⟩], residual := [((4562568391610746566327202807263761772390372476837587795230995879065567080727 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89118) * ((1 : F) + (1 : F) * rho 89117) = (relationLc347 rho)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 88755, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 88756, 5, 73⟩], residual := [((5645150321476377598825970278298423837635391407433943536163340744350743001087 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89119) * ((1 : F) + (-1 : F) * rho 89117) = (relationLc348 rho)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 73⟩], residual := [((1 : F), 89118), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88575) * (relationLc349 rho) = ((1 : F) * rho 89120)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 73⟩], residual := [((1 : F), 89119), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88575) * (relationLc350 rho) = ((1 : F) * rho 89121)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4918521206950981825770953658416051531484273050008271601171788979158884211260 : F), 88755, 5, 74⟩], residual := [((3308180320148395003367060148951043770841781088811203563984909743407139154718 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 88756, 5, 74⟩], residual := [((4861157098069046986977954560327357125608545616175092050901033138595367913567 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow623 (rho : Nat -> F) : Prop :=
    (relationLc351 rho) * (relationLc352 rho) = ((1 : F) * rho 89122)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 88756, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 88755, 5, 74⟩], residual := [((1147359850578098327983144469797160403851601413814635373058616603285593090816 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89123) * ((1 : F) + (1 : F) * rho 89122) = (relationLc353 rho)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 88755, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 88756, 5, 74⟩], residual := [((5166411239745686018772196721073052671964494181791787460721779345450459005469 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89124) * ((1 : F) + (-1 : F) * rho 89122) = (relationLc354 rho)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 74⟩], residual := [((1 : F), 89123), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88576) * (relationLc355 rho) = ((1 : F) * rho 89125)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 74⟩], residual := [((1 : F), 89124), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88576) * (relationLc356 rho) = ((1 : F) * rho 89126)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1907361968556614937174139049099394714103623578024562286894512067867392714475 : F), 88755, 5, 75⟩], residual := [((7289856983649835644629295581964117196732447368103852467141767418370340514806 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 88756, 5, 75⟩], residual := [((4222272296493463434832385019891670295293017199428378413167607751933780996762 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow628 (rho : Nat -> F) : Prop :=
    (relationLc357 rho) * (relationLc358 rho) = ((1 : F) * rho 89127)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 88756, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 88755, 5, 75⟩], residual := [((7061867970989804320716922129605418672169306597822777167825470620247101327163 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89128) * ((1 : F) + (1 : F) * rho 89127) = (relationLc359 rho)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 88755, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 88756, 5, 75⟩], residual := [((1409662585539875679999185781335179769950752419417490626659213358189333655745 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89129) * ((1 : F) + (-1 : F) * rho 89127) = (relationLc360 rho)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 75⟩], residual := [((1 : F), 89128), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88577) * (relationLc361 rho) = ((1 : F) * rho 89130)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 75⟩], residual := [((1 : F), 89129), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88577) * (relationLc362 rho) = ((1 : F) * rho 89131)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5280468971504914988808723380835196575529785503777731781354790395125657121753 : F), 88755, 5, 76⟩], residual := [((4556647832234439029301725765286109558286714328354525395674184535529452263012 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 88756, 5, 76⟩], residual := [((3600144711730309239972511100011485673137307178139337070672969143704325140384 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow633 (rho : Nat -> F) : Prop :=
    (relationLc363 rho) * (relationLc364 rho) = ((1 : F) * rho 89132)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 88755, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 88756, 5, 76⟩], residual := [((3411575777228854506500277280060522728888623152829134550016258885357137329728 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89133) * ((1 : F) + (1 : F) * rho 89132) = (relationLc365 rho)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742490179599478013046920666056916592979193349658922425085796642242052004458 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 88756, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 88755, 5, 76⟩], residual := [((5126820015755109312404685105978555226239595498435133393189054043085659429469 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89134) * ((1 : F) + (-1 : F) * rho 89132) = (relationLc366 rho)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 76⟩], residual := [((1 : F), 89133), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88578) * (relationLc367 rho) = ((1 : F) * rho 89135)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 76⟩], residual := [((1 : F), 89134), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88578) * (relationLc368 rho) = ((1 : F) * rho 89136)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4195623733406376273792904174350645917923395446527071264275902358499815355703 : F), 88755, 5, 77⟩], residual := [((6306593912445370681793633410212297214903176766492704290603546068880324800889 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 88756, 5, 77⟩], residual := [((5474128706966524990545732930483669184775460332410376694904291933835612399336 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow638 (rho : Nat -> F) : Prop :=
    (relationLc369 rho) * (relationLc370 rho) = ((1 : F) * rho 89137)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 88756, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 88755, 5, 77⟩], residual := [((1889905658107155945981201727886346476221876859972054554238849703490310933302 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89138) * ((1 : F) + (1 : F) * rho 89137) = (relationLc371 rho)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 88755, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 88756, 5, 77⟩], residual := [((2096538376241753716798571118297109287092753035399130962288541335804405738151 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89139) * ((1 : F) + (-1 : F) * rho 89137) = (relationLc372 rho)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 77⟩], residual := [((1 : F), 89138), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88579) * (relationLc373 rho) = ((1 : F) * rho 89140)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 77⟩], residual := [((1 : F), 89139), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88579) * (relationLc374 rho) = ((1 : F) * rho 89141)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1413911105099657135291792788556059165546956689872882273894997138390302031093 : F), 88755, 5, 78⟩], residual := [((8353451365575389895420713276252437744296542059476952895769368578101377270479 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 88756, 5, 78⟩], residual := [((1627794521326751861359370178242313064265856034398423533990142366307677810046 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow643 (rho : Nat -> F) : Prop :=
    (relationLc375 rho) * (relationLc376 rho) = ((1 : F) * rho 89142)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 88756, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 88755, 5, 78⟩], residual := [((1963194852193203854203140744608170884516775783800214513275167904153514644444 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89143) * ((1 : F) + (1 : F) * rho 89142) = (relationLc377 rho)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 88755, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 88756, 5, 78⟩], residual := [((4713702755110331543474491408240107297403414201301135916108963537789741442495 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89144) * ((1 : F) + (-1 : F) * rho 89142) = (relationLc378 rho)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 78⟩], residual := [((1 : F), 89143), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88580) * (relationLc379 rho) = ((1 : F) * rho 89145)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 78⟩], residual := [((1 : F), 89144), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88580) * (relationLc380 rho) = ((1 : F) * rho 89146)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(435443019248027373572209328981659234170213225482121712799853667443266468176 : F), 88755, 5, 79⟩], residual := [((3240388181392711470302623400092573262502763043986311877675923455854650277543 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 88756, 5, 79⟩], residual := [((8359927174140099073163808715029987177202746736101787838973659665157973465362 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow648 (rho : Nat -> F) : Prop :=
    (relationLc381 rho) * (relationLc382 rho) = ((1 : F) * rho 89147)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 88755, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 88756, 5, 79⟩], residual := [((1255464619070411914285884063926842950292772109515344959551717420376047071663 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89148) * ((1 : F) + (1 : F) * rho 89147) = (relationLc383 rho)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 88756, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 88755, 5, 79⟩], residual := [((5201334774209604017645676000956203413974006481900791533392360915641172360594 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89149) * ((1 : F) + (-1 : F) * rho 89147) = (relationLc384 rho)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 79⟩], residual := [((1 : F), 89148), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88581) * (relationLc385 rho) = ((1 : F) * rho 89150)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 79⟩], residual := [((1 : F), 89149), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88581) * (relationLc386 rho) = ((1 : F) * rho 89151)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4171148466704651220389908484425727516067988246936310646425350299083169892930 : F), 88755, 5, 80⟩], residual := [((3095872043888969263896429164308195273262937578393571560685502100763634414657 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 88756, 5, 80⟩], residual := [((2753830212946274734080901510274114235564601986241285087182291927643562326665 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow653 (rho : Nat -> F) : Prop :=
    (relationLc387 rho) * (relationLc388 rho) = ((1 : F) * rho 89152)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 88755, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 88756, 5, 80⟩], residual := [((6643053041644967957978290427523183888135650947769817479177854734423396780793 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89153) * ((1 : F) + (1 : F) * rho 89152) = (relationLc389 rho)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 88756, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 88755, 5, 80⟩], residual := [((1944190991534382356061877854857180638324709297848421504967051709312870947874 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89154) * ((1 : F) + (-1 : F) * rho 89152) = (relationLc390 rho)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 80⟩], residual := [((1 : F), 89153), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88582) * (relationLc391 rho) = ((1 : F) * rho 89155)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 80⟩], residual := [((1 : F), 89154), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88582) * (relationLc392 rho) = ((1 : F) * rho 89156)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3606477877692461662957109389413456453654481356050762715016429689958378271754 : F), 88755, 5, 81⟩], residual := [((3909475824386380137549903929611434474143820228075144355006436974185598099324 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 88756, 5, 81⟩], residual := [((795231880928258437557794133498488588455906730014666906275286167459374319483 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow658 (rho : Nat -> F) : Prop :=
    (relationLc393 rho) * (relationLc394 rho) = ((1 : F) * rho 89157)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 88755, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 88756, 5, 81⟩], residual := [((7728755420950352125831423975308434577296149752659537292781206527488954098007 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89158) * ((1 : F) + (1 : F) * rho 89157) = (relationLc395 rho)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (143751746805209981231263548913363895913215937586530293922447314115109648945 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 88756, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 88755, 5, 81⟩], residual := [((3014817936280911672026913628016558529560374790681053700727771705456056218127 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89159) * ((1 : F) + (-1 : F) * rho 89157) = (relationLc396 rho)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 81⟩], residual := [((1 : F), 89158), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88583) * (relationLc397 rho) = ((1 : F) * rho 89160)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 81⟩], residual := [((1 : F), 89159), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88583) * (relationLc398 rho) = ((1 : F) * rho 89161)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3766554936473951255540249522715488611853256733758667611827960753981783105824 : F), 88755, 5, 82⟩], residual := [((7621915444124325191480647678072558098704848408090815923787421731984216850880 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 88756, 5, 82⟩], residual := [((8201295156430902398006891467380246727186705512452201264592190614802423168295 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow663 (rho : Nat -> F) : Prop :=
    (relationLc399 rho) * (relationLc400 rho) = ((1 : F) * rho 89162)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 88755, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 88756, 5, 82⟩], residual := [((2126936358743662087803162646051875459026328052598893106363984685827758001521 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89163) * ((1 : F) + (1 : F) * rho 89162) = (relationLc401 rho)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 88756, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 88755, 5, 82⟩], residual := [((4445652771961411157792133795511392792424747091865093974256457248476981814276 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89164) * ((1 : F) + (-1 : F) * rho 89162) = (relationLc402 rho)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 82⟩], residual := [((1 : F), 89163), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88584) * (relationLc403 rho) = ((1 : F) * rho 89165)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 82⟩], residual := [((1 : F), 89164), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88584) * (relationLc404 rho) = ((1 : F) * rho 89166)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4057618003226322301380722646054133515350344497494379614603511631974896775073 : F), 88755, 5, 83⟩], residual := [((1114119046654488412156978360057755686609664720675475355766786494969526974976 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 88756, 5, 83⟩], residual := [((8415988326101532143562530920364287788294739843006614146358467532537182975184 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow668 (rho : Nat -> F) : Prop :=
    (relationLc405 rho) * (relationLc406 rho) = ((1 : F) * rho 89167)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 88756, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 88755, 5, 83⟩], residual := [((5422640290818139149203598602894913879186173632073371218730904392916999006949 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89168) * ((1 : F) + (1 : F) * rho 89167) = (relationLc407 rho)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (702951842803623733461713267884879944684111578159935253368535951362874748684 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 88755, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 88756, 5, 83⟩], residual := [((5025556459589336422978363340047262187464658303343479376519996551711562936563 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89169) * ((1 : F) + (-1 : F) * rho 89167) = (relationLc408 rho)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 83⟩], residual := [((1 : F), 89168), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88585) * (relationLc409 rho) = ((1 : F) * rho 89170)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 83⟩], residual := [((1 : F), 89169), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88585) * (relationLc410 rho) = ((1 : F) * rho 89171)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5521699295475871864753056508204148223678162633978526892347350614954837511571 : F), 88755, 5, 84⟩], residual := [((2752875008010564020883566174142247157044480591208246799816422655462893432145 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 88756, 5, 84⟩], residual := [((999253345431023173700117287462072931709406681660084743379432615777357612207 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow673 (rho : Nat -> F) : Prop :=
    (relationLc411 rho) * (relationLc412 rho) = ((1 : F) * rho 89172)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 88756, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 88755, 5, 84⟩], residual := [((8396406163701621884916030678455159449146571236909625006708278741898816645618 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89173) * ((1 : F) + (1 : F) * rho 89172) = (relationLc413 rho)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 88755, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 88756, 5, 84⟩], residual := [((7059873362166045987362961083589418026509864897316794138950051358551377495103 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89174) * ((1 : F) + (-1 : F) * rho 89172) = (relationLc414 rho)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 84⟩], residual := [((1 : F), 89173), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88586) * (relationLc415 rho) = ((1 : F) * rho 89175)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 84⟩], residual := [((1 : F), 89174), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88586) * (relationLc416 rho) = ((1 : F) * rho 89176)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5875314823000567718468398952994848754922664908524519324365751156649417451005 : F), 88755, 5, 85⟩], residual := [((5477888473051844104213404977281314913536255982406650950202859066687533352604 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 88756, 5, 85⟩], residual := [((483659877864017298282645335160677740150049015512611850596575714024882099756 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow678 (rho : Nat -> F) : Prop :=
    (relationLc417 rho) * (relationLc418 rho) = ((1 : F) * rho 89177)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 88756, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 88755, 5, 85⟩], residual := [((3697219771464232280595162137423927749903258082733540678550162638856325578409 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89178) * ((1 : F) + (1 : F) * rho 89177) = (relationLc419 rho)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 88755, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 88756, 5, 85⟩], residual := [((3869906991999287255572332967163802692740859564722218277265168257637774615890 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89179) * ((1 : F) + (-1 : F) * rho 89177) = (relationLc420 rho)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 85⟩], residual := [((1 : F), 89178), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88587) * (relationLc421 rho) = ((1 : F) * rho 89180)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 85⟩], residual := [((1 : F), 89179), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88587) * (relationLc422 rho) = ((1 : F) * rho 89181)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3266100972727780920478745108358337853971524136114438455381086990522349021937 : F), 88755, 5, 86⟩], residual := [((108787566386572987969553219646625715175982685210276690626178449889909211465 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 88756, 5, 86⟩], residual := [((8364191030312960177030230610335616396614882005722442462220723820210297943600 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow683 (rho : Nat -> F) : Prop :=
    (relationLc423 rho) * (relationLc424 rho) = ((1 : F) * rho 89182)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 88755, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 88756, 5, 86⟩], residual := [((8255212142308551082837004983260861782576985914565276552720939667171274755546 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89183) * ((1 : F) + (1 : F) * rho 89182) = (relationLc425 rho)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 88756, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 88755, 5, 86⟩], residual := [((4736156545623580777384540766592061019307340316099661050493041670764466775994 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89184) * ((1 : F) + (-1 : F) * rho 89182) = (relationLc426 rho)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 86⟩], residual := [((1 : F), 89183), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88588) * (relationLc427 rho) = ((1 : F) * rho 89185)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 86⟩], residual := [((1 : F), 89184), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88588) * (relationLc428 rho) = ((1 : F) * rho 89186)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(26200193764347171125407596709908285096460117738061776850047079451019047352 : F), 88755, 5, 87⟩], residual := [((529502284087046459666488542980438945459686277092178839399050484959576701564 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 88756, 5, 87⟩], residual := [((1570170090437106096843875560441493473645609531430524209506513015550493859267 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow688 (rho : Nat -> F) : Prop :=
    (relationLc429 rho) * (relationLc430 rho) = ((1 : F) * rho 89187)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 88755, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 88756, 5, 87⟩], residual := [((7904390489804459432761619287625195850025367088443500314419004926041658676337 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89188) * ((1 : F) + (1 : F) * rho 89187) = (relationLc431 rho)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 88756, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 88755, 5, 87⟩], residual := [((1144087987983058011604391365965542383344283330920575228737270886315331523144 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89189) * ((1 : F) + (-1 : F) * rho 89187) = (relationLc432 rho)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 87⟩], residual := [((1 : F), 89188), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88589) * (relationLc433 rho) = ((1 : F) * rho 89190)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 87⟩], residual := [((1 : F), 89189), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88589) * (relationLc434 rho) = ((1 : F) * rho 89191)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087097300354708100130994740412149671502360901401685447105460186367585798810 : F), 88755, 5, 88⟩], residual := [((7582837550068422223735267140763712102417066333942182552409190141783131332570 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 88756, 5, 88⟩], residual := [((7824856292175594371432062421309296506730692337607393469994065188588716269062 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow693 (rho : Nat -> F) : Prop :=
    (relationLc435 rho) * (relationLc436 rho) = ((1 : F) * rho 89192)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 88755, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 88756, 5, 88⟩], residual := [((8419960141374165358576877434272703185563564805461284139995613908481557675884 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89193) * ((1 : F) + (1 : F) * rho 89192) = (relationLc437 rho)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 88756, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 88755, 5, 88⟩], residual := [((8183137533133929953836593527067042140091951128981924624733209100941525274475 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89194) * ((1 : F) + (-1 : F) * rho 89192) = (relationLc438 rho)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 88⟩], residual := [((1 : F), 89193), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88590) * (relationLc439 rho) = ((1 : F) * rho 89195)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 88⟩], residual := [((1 : F), 89194), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88590) * (relationLc440 rho) = ((1 : F) * rho 89196)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5553937132187018911618187782803373191498878807145456404870079374753212848821 : F), 88755, 5, 89⟩], residual := [((8106250636419396786282151843311679883550901458438273481039369926572772228425 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 88756, 5, 89⟩], residual := [((1113765216506362856953168545775460761137336684574255069943489410559258707144 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow698 (rho : Nat -> F) : Prop :=
    (relationLc441 rho) * (relationLc442 rho) = ((1 : F) * rho 89197)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 88756, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 88755, 5, 89⟩], residual := [((6301644328001247508978276924882736661695378448284690910493273399520982279024 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89198) * ((1 : F) + (1 : F) * rho 89197) = (relationLc443 rho)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (683880372059817743273198104218967469992458893275318447673309183256736533325 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 88755, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 88756, 5, 89⟩], residual := [((4716674405789172745841800507991441449338750937613045759663632659674869388009 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89199) * ((1 : F) + (-1 : F) * rho 89197) = (relationLc444 rho)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 89⟩], residual := [((1 : F), 89198), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88591) * (relationLc445 rho) = ((1 : F) * rho 89200)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 89⟩], residual := [((1 : F), 89199), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88591) * (relationLc446 rho) = ((1 : F) * rho 89201)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(416901722813894028244973649619309201824033459802693192096545298596434456705 : F), 88755, 5, 90⟩], residual := [((5389722288278426713369559430097372389797259323563071839234918205001124245927 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 88756, 5, 90⟩], residual := [((2844526279434391185474169943104742618961444464907013672005077469127649057606 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow703 (rho : Nat -> F) : Prop :=
    (relationLc447 rho) * (relationLc448 rho) = ((1 : F) * rho 89202)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 88756, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 88755, 5, 90⟩], residual := [((5116056455807815618179703014842813839043214580586809401936439430203431059045 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89203) * ((1 : F) + (1 : F) * rho 89202) = (relationLc449 rho)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (28090539297284871986340027486737760514923213111997130576447825176355685815 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 88755, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 88756, 5, 90⟩], residual := [((4458287442263740785262441721229653695101228679984538103063021122821012133541 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89204) * ((1 : F) + (-1 : F) * rho 89202) = (relationLc450 rho)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 90⟩], residual := [((1 : F), 89203), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88592) * (relationLc451 rho) = ((1 : F) * rho 89205)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 90⟩], residual := [((1 : F), 89204), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88592) * (relationLc452 rho) = ((1 : F) * rho 89206)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8339597046261833337760335063215216078969421923029246720831548189814301480772 : F), 88755, 5, 91⟩], residual := [((6326468848790444497198581113203078955764617576924413867089125979139173942337 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 88756, 5, 91⟩], residual := [((3270113702474803028094885201150201488877397205225361062087494797364316023631 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow708 (rho : Nat -> F) : Prop :=
    (relationLc453 rho) * (relationLc454 rho) = ((1 : F) * rho 89207)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 88755, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 88756, 5, 91⟩], residual := [((5589473271864048154278094223117465690620656114996841805955550957885557808837 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89208) * ((1 : F) + (1 : F) * rho 89207) = (relationLc455 rho)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 88756, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 88755, 5, 91⟩], residual := [((5866324979306886411374123066060365086744916503349938728262095692376973547345 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89209) * ((1 : F) + (-1 : F) * rho 89207) = (relationLc456 rho)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 91⟩], residual := [((1 : F), 89208), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88593) * (relationLc457 rho) = ((1 : F) * rho 89210)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 91⟩], residual := [((1 : F), 89209), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88593) * (relationLc458 rho) = ((1 : F) * rho 89211)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(906651443227238370999930576736507201843788420062155760822097063588325148631 : F), 88755, 5, 92⟩], residual := [((171856542169036465662660088707309910549636242610598401756383291275222624429 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 88756, 5, 92⟩], residual := [((239656307825519749788656889954205843971214536386488825615388180129073822859 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow713 (rho : Nat -> F) : Prop :=
    (relationLc459 rho) * (relationLc460 rho) = ((1 : F) * rho 89212)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 88755, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 88756, 5, 92⟩], residual := [((7613592736668356630170670411501517018972926579544062799959943704790245883506 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89213) * ((1 : F) + (1 : F) * rho 89212) = (relationLc461 rho)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 88756, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 88755, 5, 92⟩], residual := [((282282767984487211898132991613997864338075755356622244673057499008739425679 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89214) * ((1 : F) + (-1 : F) * rho 89212) = (relationLc462 rho)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 92⟩], residual := [((1 : F), 89213), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88594) * (relationLc463 rho) = ((1 : F) * rho 89215)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 92⟩], residual := [((1 : F), 89214), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88594) * (relationLc464 rho) = ((1 : F) * rho 89216)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8179997532971249348010168698851349345970456620578852397081600124288614754658 : F), 88755, 5, 93⟩], residual := [((67165515290697416187595235537827856610906086241323537994573544540646218256 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 88756, 5, 93⟩], residual := [((7300898220308033915871176265277384593103237625616658863561297474360981627294 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow718 (rho : Nat -> F) : Prop :=
    (relationLc465 rho) * (relationLc466 rho) = ((1 : F) * rho 89217)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 88755, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 88756, 5, 93⟩], residual := [((4863459133917352581038740730228734891844325571936386657529675825895096089318 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89218) * ((1 : F) + (1 : F) * rho 89217) = (relationLc467 rho)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 88756, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 88755, 5, 93⟩], residual := [((3999197093751402518624046588967473794431069856960421232165216655853348727802 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89219) * ((1 : F) + (-1 : F) * rho 89217) = (relationLc468 rho)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 93⟩], residual := [((1 : F), 89218), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88595) * (relationLc469 rho) = ((1 : F) * rho 89220)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 93⟩], residual := [((1 : F), 89219), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88595) * (relationLc470 rho) = ((1 : F) * rho 89221)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1431114787603952086392307633768073599645790269787901765432457889890133132379 : F), 88755, 5, 94⟩], residual := [((3657714537796633005479171841637416164237211678381198199859328213321907096082 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
