import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs80

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2259) * ((1 : F) + (1 : F) * rho 2258) = (relationLc1653 rho)

def relationLc1654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (44904698983055701426762562604192635411742513653435806164959563737310625134 : F), runs := [⟨(44904698983055701426762562604192635411742513653435806164959563737310625134 : F), 2062, 5, 40⟩, ⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 2061, 5, 40⟩], residual := [((7860310894553269756280238549700692882381083328300356953251934111449264246407 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2260) * ((1 : F) + (-1 : F) * rho 2258) = (relationLc1654 rho)

def relationLc1655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 40⟩], residual := [((1 : F), 2259), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1847) * (relationLc1655 rho) = ((1 : F) * rho 2261)

def relationLc1656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 40⟩], residual := [((1 : F), 2260), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1847) * (relationLc1656 rho) = ((1 : F) * rho 2262)

def relationLc1657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2276932546380933870225228921511621554726597530816646260591385143214032842447 : F), 2061, 5, 41⟩], residual := [((5185411658465475973318981105133659618627589062199339752884966290682921774597 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 2062, 5, 41⟩], residual := [((5846162809411592435527463114932061406630928699960866773281871945282257768489 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2262 (rho : Nat -> F) : Prop :=
    (relationLc1657 rho) * (relationLc1658 rho) = ((1 : F) * rho 2263)

def relationLc1659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 2062, 5, 41⟩, ⟨(2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), 2061, 5, 41⟩], residual := [((1386654189607152276266355660052811289299810609976197283168747936889837303830 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2264) * ((1 : F) + (1 : F) * rho 2263) = (relationLc1659 rho)

def relationLc1660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 2061, 5, 41⟩, ⟨(2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), 2062, 5, 41⟩], residual := [((7097948268939892520401588775257677409780701028932676067280934208059187180420 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2265) * ((1 : F) + (-1 : F) * rho 2263) = (relationLc1660 rho)

def relationLc1661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 41⟩], residual := [((1 : F), 2264), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1848) * (relationLc1661 rho) = ((1 : F) * rho 2266)

def relationLc1662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 41⟩], residual := [((1 : F), 2265), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1848) * (relationLc1662 rho) = ((1 : F) * rho 2267)

def relationLc1663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(482825218398770967544548674690245367257088234990090761451761925117301640544 : F), 2061, 5, 42⟩], residual := [((949690325413438538305997154209657878966567982879223149845296457864483296248 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 2062, 5, 42⟩], residual := [((4417333435990880862685875555964743816569557333763586801868360197118446857184 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2267 (rho : Nat -> F) : Prop :=
    (relationLc1663 rho) * (relationLc1664 rho) = ((1 : F) * rho 2268)

def relationLc1665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 2062, 5, 42⟩, ⟨(6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), 2061, 5, 42⟩], residual := [((1359640134584318861497557619561962536382113671176474387233702764375718878298 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2269) * ((1 : F) + (1 : F) * rho 2268) = (relationLc1665 rho)

def relationLc1666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 2061, 5, 42⟩, ⟨(6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), 2062, 5, 42⟩], residual := [((5391288324706657434524820133139641588046669216494177533991455354458955462869 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2270) * ((1 : F) + (-1 : F) * rho 2268) = (relationLc1666 rho)

def relationLc1667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 42⟩], residual := [((1 : F), 2269), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1849) * (relationLc1667 rho) = ((1 : F) * rho 2271)

def relationLc1668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 42⟩], residual := [((1 : F), 2270), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1849) * (relationLc1668 rho) = ((1 : F) * rho 2272)

def relationLc1669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(253089603964650935448206421407193034317991595603061543628178986213350722919 : F), 2061, 5, 43⟩], residual := [((5565364441469160997639354677560474059820633437251138032940141926493929785286 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), runs := [⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 2062, 5, 43⟩], residual := [((7168001934527135594203266092691074200102188849944056533311839492900430642746 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2272 (rho : Nat -> F) : Prop :=
    (relationLc1669 rho) * (relationLc1670 rho) = ((1 : F) * rho 2273)

def relationLc1671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), runs := [⟨(2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), 2061, 5, 43⟩, ⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 2062, 5, 43⟩], residual := [((5663202358724281407618533458687203592239961405981531122777529433048398318993 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2274) * ((1 : F) + (1 : F) * rho 2273) = (relationLc1671 rho)

def relationLc1672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), runs := [⟨(2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), 2062, 5, 43⟩, ⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 2061, 5, 43⟩], residual := [((4759701143005603929059858651671846902254791926688977767922809708738066053159 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2275) * ((1 : F) + (-1 : F) * rho 2273) = (relationLc1672 rho)

def relationLc1673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 43⟩], residual := [((1 : F), 2274), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1850) * (relationLc1673 rho) = ((1 : F) * rho 2276)

def relationLc1674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 43⟩], residual := [((1 : F), 2275), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1850) * (relationLc1674 rho) = ((1 : F) * rho 2277)

def relationLc1675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6971088294453342499407001133603161768056707092278706015455281787411030167211 : F), 2061, 5, 44⟩], residual := [((5869792174701010066534460370998374031738396009957497491190853942678029269047 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 2062, 5, 44⟩], residual := [((3614041244887921594902320472204306523496704967327648395438467763982255265225 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2277 (rho : Nat -> F) : Prop :=
    (relationLc1675 rho) * (relationLc1676 rho) = ((1 : F) * rho 2278)

def relationLc1677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 2062, 5, 44⟩, ⟨(6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), 2061, 5, 44⟩], residual := [((71602414665984260284321279220525448437816532714806476758995679188942823704 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2279) * ((1 : F) + (1 : F) * rho 2278) = (relationLc1677 rho)

def relationLc1678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 2061, 5, 44⟩, ⟨(6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), 2062, 5, 44⟩], residual := [((7428878532806775174158131155894163114944477458452568001406209860826617970898 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2280) * ((1 : F) + (-1 : F) * rho 2278) = (relationLc1678 rho)

def relationLc1679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 44⟩], residual := [((1 : F), 2279), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1851) * (relationLc1679 rho) = ((1 : F) * rho 2281)

def relationLc1680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 44⟩], residual := [((1 : F), 2280), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1851) * (relationLc1680 rho) = ((1 : F) * rho 2282)

def relationLc1681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1971851832335678008122963964257464482273943743281012573309109172950046803432 : F), 2061, 5, 45⟩], residual := [((4458658022404426310591096814393615713405161516003240642232664938122910999835 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 2062, 5, 45⟩], residual := [((3924399849183403800635904052424757915833669252134527332175691182188838126604 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2282 (rho : Nat -> F) : Prop :=
    (relationLc1681 rho) * (relationLc1682 rho) = ((1 : F) * rho 2283)

def relationLc1683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 2062, 5, 45⟩, ⟨(8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), 2061, 5, 45⟩], residual := [((2265494976247936205239276804221565256474556692198906453939578634066753327865 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2284) * ((1 : F) + (1 : F) * rho 2283) = (relationLc1683 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
