import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs81

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 2061, 5, 45⟩, ⟨(8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), 2062, 5, 45⟩], residual := [((6558436434314105277867274208453340390424657597047880838203572116993711254360 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2285) * ((1 : F) + (-1 : F) * rho 2283) = (relationLc1684 rho)

def relationLc1685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 45⟩], residual := [((1 : F), 2284), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1852) * (relationLc1685 rho) = ((1 : F) * rho 2286)

def relationLc1686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 45⟩], residual := [((1 : F), 2285), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1852) * (relationLc1686 rho) = ((1 : F) * rho 2287)

def relationLc1687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3714855261533166382040088455134618451429590638829032915074360568190070575219 : F), 2061, 5, 46⟩], residual := [((6428693841809995416207046926203669269885730368447761649130921761657402840377 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), runs := [⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 2062, 5, 46⟩], residual := [((7072166311046371974940295729410239865239300401239924761117325870390291740566 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2287 (rho : Nat -> F) : Prop :=
    (relationLc1687 rho) * (relationLc1688 rho) = ((1 : F) * rho 2288)

def relationLc1689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), runs := [⟨(3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), 2061, 5, 46⟩, ⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 2062, 5, 46⟩], residual := [((6244103932450405069748076609949162192101678298567859486291892763920310561766 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2289) * ((1 : F) + (1 : F) * rho 2288) = (relationLc1689 rho)

def relationLc1690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), runs := [⟨(3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), 2062, 5, 46⟩, ⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 2061, 5, 46⟩], residual := [((5886078833584473605719416950822767817067481112901899389994814173454995030912 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2290) * ((1 : F) + (-1 : F) * rho 2288) = (relationLc1690 rho)

def relationLc1691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 46⟩], residual := [((1 : F), 2289), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1853) * (relationLc1691 rho) = ((1 : F) * rho 2291)

def relationLc1692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 46⟩], residual := [((1 : F), 2290), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1853) * (relationLc1692 rho) = ((1 : F) * rho 2292)

def relationLc1693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2007142405865741212583418405001667830225331770762763980966094406287848002234 : F), 2061, 5, 47⟩], residual := [((3511421809349194497240159582276503343772566217816153827660309415506614430722 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 2062, 5, 47⟩], residual := [((6068222480634586193480125141746175465742028006835934070153620006128481423330 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2292 (rho : Nat -> F) : Prop :=
    (relationLc1693 rho) * (relationLc1694 rho) = ((1 : F) * rho 2293)

def relationLc1695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 2062, 5, 47⟩, ⟨(763768685865544808683387165406277348856618950767236739161630197905243485687 : F), 2061, 5, 47⟩], residual := [((780764616315113287759656216028727755043772801310057668754811204678553695480 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2294) * ((1 : F) + (1 : F) * rho 2293) = (relationLc1695 rho)

def relationLc1696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (763768685865544808683387165406277348856618950767236739161630197905243485687 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 2061, 5, 47⟩, ⟨(763768685865544808683387165406277348856618950767236739161630197905243485687 : F), 2062, 5, 47⟩], residual := [((107088271911004464855019895567003286826177788836370390458748736964608633495 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2295) * ((1 : F) + (-1 : F) * rho 2293) = (relationLc1696 rho)

def relationLc1697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 47⟩], residual := [((1 : F), 2294), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1854) * (relationLc1697 rho) = ((1 : F) * rho 2296)

def relationLc1698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 47⟩], residual := [((1 : F), 2295), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1854) * (relationLc1698 rho) = ((1 : F) * rho 2297)

def relationLc1699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7131980987787590468573539042986597887856792265009045865825068848096274401597 : F), 2061, 5, 48⟩], residual := [((199289372013081093119932530062502091506822441066130532790911115384456320001 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), runs := [⟨(6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), 2062, 5, 48⟩], residual := [((1215377124295615599958014940754530322716279139256294403912972852801120695446 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2297 (rho : Nat -> F) : Prop :=
    (relationLc1699 rho) * (relationLc1700 rho) = ((1 : F) * rho 2298)

def relationLc1701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), runs := [⟨(6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), 2062, 5, 48⟩, ⟨(6652269607043323677509608761471130683889811754583424989249832989233900315816 : F), 2061, 5, 48⟩], residual := [((3949201315064552824720832127996640554353861519998346887942581999111154026165 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2299) * ((1 : F) + (1 : F) * rho 2298) = (relationLc1701 rho)

def relationLc1702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6652269607043323677509608761471130683889811754583424989249832989233900315816 : F), runs := [⟨(6413150907754487484553184556397225887436800208469961830346758525473488342650 : F), 2061, 5, 48⟩, ⟨(6652269607043323677509608761471130683889811754583424989249832989233900315816 : F), 2062, 5, 48⟩], residual := [((4831331157148550733639228106541538266651135708129441846890548289973548468579 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2300) * ((1 : F) + (-1 : F) * rho 2298) = (relationLc1702 rho)

def relationLc1703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 48⟩], residual := [((1 : F), 2299), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1855) * (relationLc1703 rho) = ((1 : F) * rho 2301)

def relationLc1704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 48⟩], residual := [((1 : F), 2300), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1855) * (relationLc1704 rho) = ((1 : F) * rho 2302)

def relationLc1705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(320055141918587978338726536121412824693252616933599943700096885295036456032 : F), 2061, 5, 49⟩], residual := [((5950474546882210499012341232813126805028943304936432907267999291294648134291 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), runs := [⟨(8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), 2062, 5, 49⟩], residual := [((1501841507962387672917297163067361290383322419628080489436301334333518676056 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2302 (rho : Nat -> F) : Prop :=
    (relationLc1705 rho) * (relationLc1706 rho) = ((1 : F) * rho 2303)

def relationLc1707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), runs := [⟨(1341827770561912079317369975885886708998717290132699184823770988323618494272 : F), 2061, 5, 49⟩, ⟨(8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), 2062, 5, 49⟩], residual := [((2233372455048679262201625415386062638113921118661561817472833585669413565008 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2304) * ((1 : F) + (1 : F) * rho 2303) = (relationLc1707 rho)

def relationLc1708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1341827770561912079317369975885886708998717290132699184823770988323618494272 : F), runs := [⟨(1341827770561912079317369975885886708998717290132699184823770988323618494272 : F), 2062, 5, 49⟩, ⟨(8155076340509630276151890452332611038410993615687632835162132366439369052755 : F), 2061, 5, 49⟩], residual := [((5451793768867332841443815958080869119356458762955377112331473906239847057792 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2305) * ((1 : F) + (-1 : F) * rho 2303) = (relationLc1708 rho)

def relationLc1709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 49⟩], residual := [((1 : F), 2304), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1856) * (relationLc1709 rho) = ((1 : F) * rho 2306)

def relationLc1710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 49⟩], residual := [((1 : F), 2305), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1856) * (relationLc1710 rho) = ((1 : F) * rho 2307)

def relationLc1711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5107748505877890801883930202609992877975194663178272094077896319286077365369 : F), 2061, 5, 50⟩], residual := [((7951490232008115975286127579907409914560856182774254771782297894440063486475 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (823083494539051004312126362108186731208135674306211154180233814990883104587 : F), runs := [⟨(823083494539051004312126362108186731208135674306211154180233814990883104587 : F), 2062, 5, 50⟩], residual := [((269469382135806435828200452609097401317921355988942707487639244015825367612 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2307 (rho : Nat -> F) : Prop :=
    (relationLc1711 rho) * (relationLc1712 rho) = ((1 : F) * rho 2308)

def relationLc1713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (823083494539051004312126362108186731208135674306211154180233814990883104587 : F), runs := [⟨(10076509021570010617222907983765187842470338519907468910256073050989177452 : F), 2061, 5, 50⟩, ⟨(823083494539051004312126362108186731208135674306211154180233814990883104587 : F), 2062, 5, 50⟩], residual := [((3483848078039548816972585087577619206834461969121942903803218700733317350116 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2309) * ((1 : F) + (1 : F) * rho 2308) = (relationLc1713 rho)

def relationLc1714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (10076509021570010617222907983765187842470338519907468910256073050989177452 : F), runs := [⟨(10076509021570010617222907983765187842470338519907468910256073050989177452 : F), 2062, 5, 50⟩, ⟨(823083494539051004312126362108186731208135674306211154180233814990883104587 : F), 2061, 5, 50⟩], residual := [((784226967580008301639074108881556619633174470864297411870558003367441031934 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
