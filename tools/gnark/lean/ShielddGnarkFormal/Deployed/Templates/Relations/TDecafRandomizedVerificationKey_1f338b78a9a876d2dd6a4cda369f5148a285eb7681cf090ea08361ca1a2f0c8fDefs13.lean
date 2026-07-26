import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs12

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 52⟩], residual := [((1 : F), 514), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 54) * (relationLc269 rho) = ((1 : F) * rho 516)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 52⟩], residual := [((1 : F), 515), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 54) * (relationLc270 rho) = ((1 : F) * rho 517)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5846523051446967967440159082631275298002440439864756615500920460162638843764 : F), 256, 5, 53⟩], residual := [((5485200669001964675903116690389524045452503466510717669914562100715921570316 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 257, 5, 53⟩], residual := [((7291182270810181618096149122593319263114027650082957086263435969101109264147 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow517 (rho : Nat -> F) : Prop :=
    (relationLc271 rho) * (relationLc272 rho) = ((1 : F) * rho 518)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 256, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 257, 5, 53⟩], residual := [((3265037226037828153459719589295133553856424724399244653828892159807408240682 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 519) * ((1 : F) + (1 : F) * rho 518) = (relationLc273 rho)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 257, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 256, 5, 53⟩], residual := [((8364348212655621776185922730037361598719148012242692402802574383202708885440 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 520) * ((1 : F) + (-1 : F) * rho 518) = (relationLc274 rho)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 53⟩], residual := [((1 : F), 519), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 55) * (relationLc275 rho) = ((1 : F) * rho 521)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 53⟩], residual := [((1 : F), 520), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 55) * (relationLc276 rho) = ((1 : F) * rho 522)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3270625457551667644453406806086445794893819027444377513267150979927668756102 : F), 256, 5, 54⟩], residual := [((1313990169365511817090899843224152567995448967037380651344274914537076948048 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 257, 5, 54⟩], residual := [((4242920238461437888072824133392194042958901485991965180008883918058321798559 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow522 (rho : Nat -> F) : Prop :=
    (relationLc277 rho) * (relationLc278 rho) = ((1 : F) * rho 523)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 257, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 256, 5, 54⟩], residual := [((254528008648488836902356643224023653119307675234662398872758838058452249680 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 524) * ((1 : F) + (1 : F) * rho 523) = (relationLc279 rho)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 256, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 257, 5, 54⟩], residual := [((2289707880837953908755208871389624432709260619033607367296000191999872925118 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 525) * ((1 : F) + (-1 : F) * rho 523) = (relationLc280 rho)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 54⟩], residual := [((1 : F), 524), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 56) * (relationLc281 rho) = ((1 : F) * rho 526)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 54⟩], residual := [((1 : F), 525), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 56) * (relationLc282 rho) = ((1 : F) * rho 527)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3233995703196325388481299497442317849571724715469973779048454502475618732286 : F), 256, 5, 55⟩], residual := [((8427363959673275445356636965346819445583959661557314661313584705058592663131 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 257, 5, 55⟩], residual := [((3675494411708184879950187669845890975019109332169909707887469082384047256779 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow527 (rho : Nat -> F) : Prop :=
    (relationLc283 rho) * (relationLc284 rho) = ((1 : F) * rho 528)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 256, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 257, 5, 55⟩], residual := [((1411333168799633030026175624699751478991214462541181323314757811929244112059 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 529) * ((1 : F) + (1 : F) * rho 528) = (relationLc285 rho)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (470673144524052484826972488981377734233936714009054186319817171498378143294 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 257, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 256, 5, 55⟩], residual := [((2267358468243705539888602275044934994867174603928525323102004785228563668611 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 530) * ((1 : F) + (-1 : F) * rho 528) = (relationLc286 rho)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 55⟩], residual := [((1 : F), 529), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 57) * (relationLc287 rho) = ((1 : F) * rho 531)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 55⟩], residual := [((1 : F), 530), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 57) * (relationLc288 rho) = ((1 : F) * rho 532)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6984451028592461867390374761534058577866431087611019337585209388902324145485 : F), 256, 5, 56⟩], residual := [((6268515690606711675820373018132505629153826392182024131345248525914402666900 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 257, 5, 56⟩], residual := [((7115815826549671405340392110243331685100108865524818480158285579730834185347 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow532 (rho : Nat -> F) : Prop :=
    (relationLc289 rho) * (relationLc290 rho) = ((1 : F) * rho 533)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 256, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 257, 5, 56⟩], residual := [((7710484613894729744174080048025463552124552587949460504538826705576714741899 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 534) * ((1 : F) + (1 : F) * rho 533) = (relationLc291 rho)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 257, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 256, 5, 56⟩], residual := [((5561583927891243347137693310954441770830459976203518871196116942379669336356 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 535) * ((1 : F) + (-1 : F) * rho 533) = (relationLc292 rho)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 56⟩], residual := [((1 : F), 534), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 58) * (relationLc293 rho) = ((1 : F) * rho 536)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 56⟩], residual := [((1 : F), 535), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 58) * (relationLc294 rho) = ((1 : F) * rho 537)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1575422911388496626730629818346833710771077486342176306515899025137426598458 : F), 256, 5, 57⟩], residual := [((2280674101688118451702959074318755416748900744787404058007147376446815225484 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 257, 5, 57⟩], residual := [((7612865992649868553776640700840008593526902917162252084467998826231105017371 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow537 (rho : Nat -> F) : Prop :=
    (relationLc295 rho) * (relationLc296 rho) = ((1 : F) * rho 538)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 256, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 257, 5, 57⟩], residual := [((3689084588447371381584106025244188476136961253537121925460034369186551638891 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 539) * ((1 : F) + (1 : F) * rho 538) = (relationLc297 rho)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 257, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 256, 5, 57⟩], residual := [((8103381537400898634954171877401300506786451891081291608583421318233370836558 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 540) * ((1 : F) + (-1 : F) * rho 538) = (relationLc298 rho)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 57⟩], residual := [((1 : F), 539), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 59) * (relationLc299 rho) = ((1 : F) * rho 541)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 57⟩], residual := [((1 : F), 540), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 59) * (relationLc300 rho) = ((1 : F) * rho 542)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
