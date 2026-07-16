import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs86

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 2062, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 2061, 5, 71⟩], residual := [((8311315338750137718368374081863680094975722609246674501482956493738381598260 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2414) * ((1 : F) + (1 : F) * rho 2413) = (relationLc1839 rho)

def relationLc1840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (61910469657829342192321187244024551268691741149011542722403663253838067315 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 2061, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 2062, 5, 71⟩], residual := [((4705419314553287616991508755795092976095130005674868138925901345366955008146 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2415) * ((1 : F) + (-1 : F) * rho 2413) = (relationLc1840 rho)

def relationLc1841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 71⟩], residual := [((1 : F), 2414), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1878) * (relationLc1841 rho) = ((1 : F) * rho 2416)

def relationLc1842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 71⟩], residual := [((1 : F), 2415), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1878) * (relationLc1842 rho) = ((1 : F) * rho 2417)

def relationLc1843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3225038647207066965249142518288305004231848817992616889755291892327653920728 : F), 2061, 5, 72⟩], residual := [((4944622807462013599979574477380851123515144290853061497859212195669938643605 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 2062, 5, 72⟩], residual := [((522070924770264662150994421644969496201813472832552067666639466908629057618 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2417 (rho : Nat -> F) : Prop :=
    (relationLc1843 rho) * (relationLc1844 rho) = ((1 : F) * rho 2418)

def relationLc1845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 2062, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 2061, 5, 72⟩], residual := [((7662785896914428871727783057237637716081840631480129716804158652148196464157 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2419) * ((1 : F) + (1 : F) * rho 2418) = (relationLc1845 rho)

def relationLc1846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 2061, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 2062, 5, 72⟩], residual := [((4485325941707069071562287047850445223888634056987251509239894560844401571231 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2420) * ((1 : F) + (-1 : F) * rho 2418) = (relationLc1846 rho)

def relationLc1847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 72⟩], residual := [((1 : F), 2419), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1879) * (relationLc1847 rho) = ((1 : F) * rho 2421)

def relationLc1848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 72⟩], residual := [((1 : F), 2420), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1879) * (relationLc1848 rho) = ((1 : F) * rho 2422)

def relationLc1849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7082044748100286856446498151604694946338813897682899219296387993480553190970 : F), 2061, 5, 73⟩], residual := [((2222557722432484492449536154567798044442158058598341703639917393362435335170 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 2062, 5, 73⟩], residual := [((3488455227260224643982284464778928384077632489165373676849410455541685060493 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2422 (rho : Nat -> F) : Prop :=
    (relationLc1849 rho) * (relationLc1850 rho) = ((1 : F) * rho 2423)

def relationLc1851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 2062, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 2061, 5, 73⟩], residual := [((4562568391610746566327202807263761772390372476837587795230995879065567080727 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2424) * ((1 : F) + (1 : F) * rho 2423) = (relationLc1851 rho)

def relationLc1852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 2061, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 2062, 5, 73⟩], residual := [((5645150321476377598825970278298423837635391407433943536163340744350743001087 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2425) * ((1 : F) + (-1 : F) * rho 2423) = (relationLc1852 rho)

def relationLc1853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 73⟩], residual := [((1 : F), 2424), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * (relationLc1853 rho) = ((1 : F) * rho 2426)

def relationLc1854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 73⟩], residual := [((1 : F), 2425), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * (relationLc1854 rho) = ((1 : F) * rho 2427)

def relationLc1855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4918521206950981825770953658416051531484273050008271601171788979158884211260 : F), 2061, 5, 74⟩], residual := [((3308180320148395003367060148951043770841781088811203563984909743407139154718 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 2062, 5, 74⟩], residual := [((4861157098069046986977954560327357125608545616175092050901033138595367913567 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2427 (rho : Nat -> F) : Prop :=
    (relationLc1855 rho) * (relationLc1856 rho) = ((1 : F) * rho 2428)

def relationLc1857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 2062, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 2061, 5, 74⟩], residual := [((1147359850578098327983144469797160403851601413814635373058616603285593090816 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2429) * ((1 : F) + (1 : F) * rho 2428) = (relationLc1857 rho)

def relationLc1858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 2061, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 2062, 5, 74⟩], residual := [((5166411239745686018772196721073052671964494181791787460721779345450459005469 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2430) * ((1 : F) + (-1 : F) * rho 2428) = (relationLc1858 rho)

def relationLc1859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 74⟩], residual := [((1 : F), 2429), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1881) * (relationLc1859 rho) = ((1 : F) * rho 2431)

def relationLc1860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 74⟩], residual := [((1 : F), 2430), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1881) * (relationLc1860 rho) = ((1 : F) * rho 2432)

def relationLc1861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1907361968556614937174139049099394714103623578024562286894512067867392714475 : F), 2061, 5, 75⟩], residual := [((7289856983649835644629295581964117196732447368103852467141767418370340514806 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 2062, 5, 75⟩], residual := [((4222272296493463434832385019891670295293017199428378413167607751933780996762 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2432 (rho : Nat -> F) : Prop :=
    (relationLc1861 rho) * (relationLc1862 rho) = ((1 : F) * rho 2433)

def relationLc1863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 2062, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 2061, 5, 75⟩], residual := [((7061867970989804320716922129605418672169306597822777167825470620247101327163 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2434) * ((1 : F) + (1 : F) * rho 2433) = (relationLc1863 rho)

def relationLc1864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 2061, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 2062, 5, 75⟩], residual := [((1409662585539875679999185781335179769950752419417490626659213358189333655745 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2435) * ((1 : F) + (-1 : F) * rho 2433) = (relationLc1864 rho)

def relationLc1865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 75⟩], residual := [((1 : F), 2434), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1882) * (relationLc1865 rho) = ((1 : F) * rho 2436)

def relationLc1866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 75⟩], residual := [((1 : F), 2435), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1882) * (relationLc1866 rho) = ((1 : F) * rho 2437)

def relationLc1867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5280468971504914988808723380835196575529785503777731781354790395125657121753 : F), 2061, 5, 76⟩], residual := [((4556647832234439029301725765286109558286714328354525395674184535529452263012 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 2062, 5, 76⟩], residual := [((3600144711730309239972511100011485673137307178139337070672969143704325140384 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2437 (rho : Nat -> F) : Prop :=
    (relationLc1867 rho) * (relationLc1868 rho) = ((1 : F) * rho 2438)

def relationLc1869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 2061, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 2062, 5, 76⟩], residual := [((3411575777228854506500277280060522728888623152829134550016258885357137329728 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
