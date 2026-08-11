import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 256, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 257, 5, 58⟩], residual := [((8037383549421691466757036345025357349622246770121874476649744840456289462477 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 545) * ((1 : F) + (-1 : F) * rho 543) = (relationLc256 rho)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 58⟩], residual := [((1 : F), 544), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 60) * (relationLc257 rho) = ((1 : F) * rho 546)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 58⟩], residual := [((1 : F), 545), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 60) * (relationLc258 rho) = ((1 : F) * rho 547)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2176686707172346089764861149147128588707699343836468076549025280019693811766 : F), 256, 5, 59⟩], residual := [((5344909994604615257630325697143396666051053670561830463561362977461125484596 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 257, 5, 59⟩], residual := [((2214981955855980363476769290924158600072872287107850573391034021018292460131 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow547 (rho : Nat -> F) : Prop :=
    (relationLc259 rho) * (relationLc260 rho) = ((1 : F) * rho 548)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 257, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 256, 5, 59⟩], residual := [((6487899024085425786684261787499910502293469850095593492804671254920729548095 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 549) * ((1 : F) + (1 : F) * rho 548) = (relationLc261 rho)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 256, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 257, 5, 59⟩], residual := [((1140136143485807931745155331023219576130803482552960585340507993082385214402 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 550) * ((1 : F) + (-1 : F) * rho 548) = (relationLc262 rho)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 59⟩], residual := [((1 : F), 549), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 61) * (relationLc263 rho) = ((1 : F) * rho 551)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 59⟩], residual := [((1 : F), 550), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 61) * (relationLc264 rho) = ((1 : F) * rho 552)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5615196394253809742051837972053350097436945599023299075757788719623911014164 : F), 256, 5, 60⟩], residual := [((2192973411531826120347442314194415155367589721663284732414709266599801162341 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 257, 5, 60⟩], residual := [((3632481104554618013980636857969656708838921269583913130983900467527162348250 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow552 (rho : Nat -> F) : Prop :=
    (relationLc265 rho) * (relationLc266 rho) = ((1 : F) * rho 553)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 257, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 256, 5, 60⟩], residual := [((147525517621269423143848623495511025465740574047516471366945349929542513784 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 554) * ((1 : F) + (1 : F) * rho 553) = (relationLc267 rho)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 256, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 257, 5, 60⟩], residual := [((7835467099238429573137548256885374856751082605880225412215512677951913505295 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 555) * ((1 : F) + (-1 : F) * rho 553) = (relationLc268 rho)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 60⟩], residual := [((1 : F), 554), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 62) * (relationLc269 rho) = ((1 : F) * rho 556)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 60⟩], residual := [((1 : F), 555), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 62) * (relationLc270 rho) = ((1 : F) * rho 557)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6158233270979310956638021131007359831823461191922592329001496000280905611254 : F), 256, 5, 61⟩], residual := [((4467762641089011012460139430937330739726033190653514206239072531933157555187 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 257, 5, 61⟩], residual := [((4238644719121606010764621135185413098022294640887365526575084778074895914597 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow557 (rho : Nat -> F) : Prop :=
    (relationLc271 rho) * (relationLc272 rho) = ((1 : F) * rho 558)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 257, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 256, 5, 61⟩], residual := [((4047251108373685273174184597169858851108951039121401643780880198158852193995 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 559) * ((1 : F) + (1 : F) * rho 558) = (relationLc273 rho)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 256, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 257, 5, 61⟩], residual := [((2519224524602260538067412646708043802373803742617841216289952063342850795165 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 560) * ((1 : F) + (-1 : F) * rho 558) = (relationLc274 rho)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 61⟩], residual := [((1 : F), 559), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 63) * (relationLc275 rho) = ((1 : F) * rho 561)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 61⟩], residual := [((1 : F), 560), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 63) * (relationLc276 rho) = ((1 : F) * rho 562)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8104899636678543604657262777441996492681450007842513561438126999479804123625 : F), 256, 5, 62⟩], residual := [((7860504369378455773331695889377182530776402391681277877526940376923990757318 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 257, 5, 62⟩], residual := [((4094745204734227454523259541864877269488153888968154424022635492436875126558 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow562 (rho : Nat -> F) : Prop :=
    (relationLc277 rho) * (relationLc278 rho) = ((1 : F) * rho 563)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 257, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 256, 5, 62⟩], residual := [((882805281704354057597467756459580570199339644335419526886590628508342642566 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 564) * ((1 : F) + (1 : F) * rho 563) = (relationLc279 rho)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 256, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 257, 5, 62⟩], residual := [((1365556802616877375954001694639792525481792047346366026008002783409929961333 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 565) * ((1 : F) + (-1 : F) * rho 563) = (relationLc280 rho)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 62⟩], residual := [((1 : F), 564), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 64) * (relationLc281 rho) = ((1 : F) * rho 566)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 62⟩], residual := [((1 : F), 565), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 64) * (relationLc282 rho) = ((1 : F) * rho 567)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6011334678039591808234449784869804372031718158751584830130446658022560656768 : F), 256, 5, 63⟩], residual := [((2896601315595281826483492482886891517188844246350138873647231071697040228255 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 257, 5, 63⟩], residual := [((3632840430158228762076042235044308132661818045554303185557551945106229637474 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow567 (rho : Nat -> F) : Prop :=
    (relationLc283 rho) * (relationLc284 rho) = ((1 : F) * rho 568)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 257, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 256, 5, 63⟩], residual := [((422052628510561653292389020156155178992927118097941318816758827007121337100 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 569) * ((1 : F) + (1 : F) * rho 568) = (relationLc285 rho)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 256, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 257, 5, 63⟩], residual := [((2598290662687356450350434728849758433307111346405199677646573938046939128067 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 570) * ((1 : F) + (-1 : F) * rho 568) = (relationLc286 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
