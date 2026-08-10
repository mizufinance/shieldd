import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6657259362711039144743913495888109165349691744994353821451845158638640565674 : F), 256, 5, 27⟩], residual := [((51775443479241098402096956665878702576057514874494739998865276011239223123 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), runs := [⟨(8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), 257, 5, 27⟩], residual := [((15583042519391411716071670939216949319487308301399490898260719631782627533 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow387 (rho : Nat -> F) : Prop :=
    (relationLc67 rho) * (relationLc68 rho) = ((1 : F) * rho 388)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), runs := [⟨(1424987848335568217506585834934026909511976978926982072903173013644687170883 : F), 256, 5, 27⟩, ⟨(8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), 257, 5, 27⟩], residual := [((6757752362302479364177696248661082593934265611481299010169952861620793658248 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 389) * ((1 : F) + (1 : F) * rho 388) = (relationLc69 rho)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1424987848335568217506585834934026909511976978926982072903173013644687170883 : F), runs := [⟨(1424987848335568217506585834934026909511976978926982072903173013644687170883 : F), 257, 5, 27⟩, ⟨(8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), 256, 5, 27⟩], residual := [((952752598305257443954382774282681094589157431297876586238579574428526020928 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 390) * ((1 : F) + (-1 : F) * rho 388) = (relationLc70 rho)

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 27⟩], residual := [((1 : F), 389), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 29) * (relationLc71 rho) = ((1 : F) * rho 391)

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 27⟩], residual := [((1 : F), 390), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 29) * (relationLc72 rho) = ((1 : F) * rho 392)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3255355479230520239245265985447735669454046199262866440804262736175046838601 : F), 256, 5, 28⟩], residual := [((8287900179260966111444378413809228467020578025432864718202026527358461568844 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), runs := [⟨(5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), 257, 5, 28⟩], residual := [((4325764255755994515121180166218221802812203229701451380124336007235305163801 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow392 (rho : Nat -> F) : Prop :=
    (relationLc73 rho) * (relationLc74 rho) = ((1 : F) * rho 393)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), runs := [⟨(4129667447661348439872479212368683205068406939497456186792831538274143824198 : F), 256, 5, 28⟩, ⟨(5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), 257, 5, 28⟩], residual := [((8370444689338478659303651281707108102989816939287088308264868812195229765331 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 394) * ((1 : F) + (1 : F) * rho 393) = (relationLc75 rho)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4129667447661348439872479212368683205068406939497456186792831538274143824198 : F), runs := [⟨(4129667447661348439872479212368683205068406939497456186792831538274143824198 : F), 257, 5, 28⟩, ⟨(5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), 256, 5, 28⟩], residual := [((812275852709380879569251977185394380921504104105348386868355806098719545544 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 395) * ((1 : F) + (-1 : F) * rho 393) = (relationLc76 rho)

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 28⟩], residual := [((1 : F), 394), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 30) * (relationLc77 rho) = ((1 : F) * rho 396)

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 28⟩], residual := [((1 : F), 395), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 30) * (relationLc78 rho) = ((1 : F) * rho 397)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2482903988982329001690011278047306563612807287735381104470528168701567236474 : F), 256, 5, 29⟩], residual := [((3792710696943158094812238770333875087580948594544730296037051640413483001663 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), runs := [⟨(4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), 257, 5, 29⟩], residual := [((5312731399566427291778421010003633059438986778264109638919940457273932823088 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow397 (rho : Nat -> F) : Prop :=
    (relationLc79 rho) * (relationLc80 rho) = ((1 : F) * rho 398)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), runs := [⟨(1745060256746867088292935045705968997729948358961890503057284410678968862098 : F), 256, 5, 29⟩, ⟨(4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), 257, 5, 29⟩], residual := [((2054720909948242334287749828325728597175922337285925695498409454970296381605 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 399) * ((1 : F) + (1 : F) * rho 398) = (relationLc81 rho)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1745060256746867088292935045705968997729948358961890503057284410678968862098 : F), runs := [⟨(1745060256746867088292935045705968997729948358961890503057284410678968862098 : F), 257, 5, 29⟩, ⟨(4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), 256, 5, 29⟩], residual := [((3927021965593039847225469137067229232210731564349263077539774261082516873640 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 400) * ((1 : F) + (-1 : F) * rho 398) = (relationLc82 rho)

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 29⟩], residual := [((1 : F), 399), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31) * (relationLc83 rho) = ((1 : F) * rho 401)

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 29⟩], residual := [((1 : F), 400), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31) * (relationLc84 rho) = ((1 : F) * rho 402)

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6239473800542177955912286854217196612304894561077124215846141335882663981489 : F), 256, 5, 30⟩], residual := [((4581169201032225273346815198674222137244651689521475375102896469810765099874 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), runs := [⟨(7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), 257, 5, 30⟩], residual := [((3705126959081868329560129378476674408048362276472695522288315318682167365101 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow402 (rho : Nat -> F) : Prop :=
    (relationLc85 rho) * (relationLc86 rho) = ((1 : F) * rho 403)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), runs := [⟨(2917515087207657242782997913936898453769403476043285566617773795384885965012 : F), 256, 5, 30⟩, ⟨(7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), 257, 5, 30⟩], residual := [((4036483349559716702726202916369721979329262896544758086694624634891391150373 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 404) * ((1 : F) + (1 : F) * rho 403) = (relationLc87 rho)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2917515087207657242782997913936898453769403476043285566617773795384885965012 : F), runs := [⟨(2917515087207657242782997913936898453769403476043285566617773795384885965012 : F), 257, 5, 30⟩, ⟨(7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), 256, 5, 30⟩], residual := [((4721939043766132390365156950830445930758152113648870963101837212571466540881 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 405) * ((1 : F) + (-1 : F) * rho 403) = (relationLc88 rho)

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 30⟩], residual := [((1 : F), 404), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32) * (relationLc89 rho) = ((1 : F) * rho 406)

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 30⟩], residual := [((1 : F), 405), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32) * (relationLc90 rho) = ((1 : F) * rho 407)

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(136614437469717025728540285685024726697946417222084284029518632750850413301 : F), 256, 5, 31⟩], residual := [((7203414340787563976155236541638779635986213038456604732762385849135341147546 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), runs := [⟨(4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), 257, 5, 31⟩], residual := [((2540880036486131943961124182899818153723310999553178717815323475067300526429 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow407 (rho : Nat -> F) : Prop :=
    (relationLc91 rho) * (relationLc92 rho) = ((1 : F) * rho 408)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), runs := [⟨(4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), 257, 5, 31⟩, ⟨(5199217301679655314838974818410910815321373952268712613122662610605472371741 : F), 256, 5, 31⟩], residual := [((3365069102581043717779498816644741510181603160285966327926452578638586080029 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 409) * ((1 : F) + (1 : F) * rho 408) = (relationLc93 rho)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5199217301679655314838974818410910815321373952268712613122662610605472371741 : F), runs := [⟨(4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), 256, 5, 31⟩, ⟨(5199217301679655314838974818410910815321373952268712613122662610605472371741 : F), 257, 5, 31⟩], residual := [((2917606646628830688575648961145231231134156944394659783256745266509429338581 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 410) * ((1 : F) + (-1 : F) * rho 408) = (relationLc94 rho)

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 31⟩], residual := [((1 : F), 409), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 33) * (relationLc95 rho) = ((1 : F) * rho 411)

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 31⟩], residual := [((1 : F), 410), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 33) * (relationLc96 rho) = ((1 : F) * rho 412)

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1543965350493936645240803205024551544750903601537073662569060821766604821295 : F), 256, 5, 32⟩], residual := [((3360975926604625167541495984214134574008106726344771564779072438371774310356 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), runs := [⟨(6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), 257, 5, 32⟩], residual := [((7137487175674098003771138708922956629581657025759195104399955519750233128346 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow412 (rho : Nat -> F) : Prop :=
    (relationLc97 rho) * (relationLc98 rho) = ((1 : F) * rho 413)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
