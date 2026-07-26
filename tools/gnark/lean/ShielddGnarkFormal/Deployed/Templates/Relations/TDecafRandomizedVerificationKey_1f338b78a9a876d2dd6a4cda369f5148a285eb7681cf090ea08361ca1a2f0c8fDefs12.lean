import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs11

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (763768685865544808683387165406277348856618950767236739161630197905243485687 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 256, 5, 47⟩, ⟨(763768685865544808683387165406277348856618950767236739161630197905243485687 : F), 257, 5, 47⟩], residual := [((107088271911004464855019895567003286826177788836370390458748736964608633495 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 490) * ((1 : F) + (-1 : F) * rho 488) = (relationLc238 rho)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 47⟩], residual := [((1 : F), 489), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * (relationLc239 rho) = ((1 : F) * rho 491)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 47⟩], residual := [((1 : F), 490), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * (relationLc240 rho) = ((1 : F) * rho 492)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7131980987787590468573539042986597887856792265009045865825068848096274401597 : F), 256, 5, 48⟩], residual := [((199289372013081093119932530062502091506822441066130532790911115384456320001 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), runs := [⟨(6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), 257, 5, 48⟩], residual := [((1215377124295615599958014940754530322716279139256294403912972852801120695446 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow492 (rho : Nat -> F) : Prop :=
    (relationLc241 rho) * (relationLc242 rho) = ((1 : F) * rho 493)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), runs := [⟨(6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), 257, 5, 48⟩, ⟨(6652269607043323677509608761471130683889811754583424989249832989233900315816 : F), 256, 5, 48⟩], residual := [((3949201315064552824720832127996640554353861519998346887942581999111154026165 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 494) * ((1 : F) + (1 : F) * rho 493) = (relationLc243 rho)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6652269607043323677509608761471130683889811754583424989249832989233900315816 : F), runs := [⟨(6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), 256, 5, 48⟩, ⟨(6652269607043323677509608761471130683889811754583424989249832989233900315816 : F), 257, 5, 48⟩], residual := [((4831331157148550733639228106541538266651135708129441846890548289973548468579 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 495) * ((1 : F) + (-1 : F) * rho 493) = (relationLc244 rho)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 48⟩], residual := [((1 : F), 494), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 50) * (relationLc245 rho) = ((1 : F) * rho 496)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 48⟩], residual := [((1 : F), 495), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 50) * (relationLc246 rho) = ((1 : F) * rho 497)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(320055141918587978338726536121412824693252616933599943700096885295036456032 : F), 256, 5, 49⟩], residual := [((5950474546882210499012341232813126805028943304936432907267999291294648134291 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), runs := [⟨(8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), 257, 5, 49⟩], residual := [((1501841507962387672917297163067361290383322419628080489436301334333518676056 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow497 (rho : Nat -> F) : Prop :=
    (relationLc247 rho) * (relationLc248 rho) = ((1 : F) * rho 498)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), runs := [⟨(1341827770561912079317369975885886708998717290132699184823770988323618494272 : F), 256, 5, 49⟩, ⟨(8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), 257, 5, 49⟩], residual := [((2233372455048679262201625415386062638113921118661561817472833585669413565008 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 499) * ((1 : F) + (1 : F) * rho 498) = (relationLc249 rho)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1341827770561912079317369975885886708998717290132699184823770988323618494272 : F), runs := [⟨(1341827770561912079317369975885886708998717290132699184823770988323618494272 : F), 257, 5, 49⟩, ⟨(8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), 256, 5, 49⟩], residual := [((5451793768867332841443815958080869119356458762955377112331473906239847057792 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 500) * ((1 : F) + (-1 : F) * rho 498) = (relationLc250 rho)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 49⟩], residual := [((1 : F), 499), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 51) * (relationLc251 rho) = ((1 : F) * rho 501)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 49⟩], residual := [((1 : F), 500), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 51) * (relationLc252 rho) = ((1 : F) * rho 502)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5107748505877890801883930202609992877975194663178272094077896319286077365369 : F), 256, 5, 50⟩], residual := [((7951490232008115975286127579907409914560856182774254771782297894440063486475 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (823083494539051004312126362108186731208135674306211154180233814990883104587 : F), runs := [⟨(823083494539051004312126362108186731208135674306211154180233814990883104587 : F), 257, 5, 50⟩], residual := [((269469382135806435828200452609097401317921355988942707487639244015825367612 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow502 (rho : Nat -> F) : Prop :=
    (relationLc253 rho) * (relationLc254 rho) = ((1 : F) * rho 503)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (823083494539051004312126362108186731208135674306211154180233814990883104587 : F), runs := [⟨(10076509021570010617222907983765187842470338519907468910256073050989177452 : F), 256, 5, 50⟩, ⟨(823083494539051004312126362108186731208135674306211154180233814990883104587 : F), 257, 5, 50⟩], residual := [((3483848078039548816972585087577619206834461969121942903803218700733317350116 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 504) * ((1 : F) + (1 : F) * rho 503) = (relationLc255 rho)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (10076509021570010617222907983765187842470338519907468910256073050989177452 : F), runs := [⟨(10076509021570010617222907983765187842470338519907468910256073050989177452 : F), 257, 5, 50⟩, ⟨(823083494539051004312126362108186731208135674306211154180233814990883104587 : F), 256, 5, 50⟩], residual := [((784226967580008301639074108881556619633174470864297411870558003367441031934 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 505) * ((1 : F) + (-1 : F) * rho 503) = (relationLc256 rho)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 50⟩], residual := [((1 : F), 504), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 52) * (relationLc257 rho) = ((1 : F) * rho 506)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 50⟩], residual := [((1 : F), 505), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 52) * (relationLc258 rho) = ((1 : F) * rho 507)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6178153492810837321873108985276510456890801263430899812036496871227230386120 : F), 256, 5, 51⟩], residual := [((8215797647988851489209436139152836975875997321450035911852191941941828385271 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), runs := [⟨(7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), 257, 5, 51⟩], residual := [((2917334971477552096792936140409115364710338386293267745427394798241615520212 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow507 (rho : Nat -> F) : Prop :=
    (relationLc259 rho) * (relationLc260 rho) = ((1 : F) * rho 508)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), runs := [⟨(7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), 257, 5, 51⟩, ⟨(7848322503852448400591964485979833705405177171479936466344335255753523655867 : F), 256, 5, 51⟩], residual := [((3604891716349428828150159426122664433615658258664732715224145671674818794608 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 509) * ((1 : F) + (1 : F) * rho 508) = (relationLc261 rho)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7848322503852448400591964485979833705405177171479936466344335255753523655867 : F), runs := [⟨(7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), 256, 5, 51⟩, ⟨(7848322503852448400591964485979833705405177171479936466344335255753523655867 : F), 257, 5, 51⟩], residual := [((5087843415398648340158033115839661935992070534691455337732849271367643704829 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 510) * ((1 : F) + (-1 : F) * rho 508) = (relationLc262 rho)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 51⟩], residual := [((1 : F), 509), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 53) * (relationLc263 rho) = ((1 : F) * rho 511)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 51⟩], residual := [((1 : F), 510), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 53) * (relationLc264 rho) = ((1 : F) * rho 512)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2118582982988257504473440225491591734796304383057197015068125790043029382166 : F), 256, 5, 52⟩], residual := [((8442565229902995211953908369690446822943561671847732130643978236599649982557 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), runs := [⟨(2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), 257, 5, 52⟩], residual := [((1513218976093308884816939156906656843199549780839367688545811288964805344056 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow512 (rho : Nat -> F) : Prop :=
    (relationLc265 rho) * (relationLc266 rho) = ((1 : F) * rho 513)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), runs := [⟨(1800844736714617282595404402780803561052921375776985866337424187818885991170 : F), 256, 5, 52⟩, ⟨(2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), 257, 5, 52⟩], residual := [((2128174185743992803427480888109188831678287124788585732388399870587616424272 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 514) * ((1 : F) + (1 : F) * rho 513) = (relationLc267 rho)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1800844736714617282595404402780803561052921375776985866337424187818885991170 : F), runs := [⟨(1800844736714617282595404402780803561052921375776985866337424187818885991170 : F), 257, 5, 52⟩, ⟨(2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), 256, 5, 52⟩], residual := [((4584281417295305356797355705327174107158956341988320145094872581481604524700 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 515) * ((1 : F) + (-1 : F) * rho 513) = (relationLc268 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
