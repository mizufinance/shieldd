import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs77

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4890907553779944807975903433943833282279984360614217206940673761332356401398 : F), 2061, 5, 25⟩], residual := [((3181154236042176302739631238677614333633729020480263984298601966094552420095 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), runs := [⟨(5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), 2062, 5, 25⟩], residual := [((2273277479857444792629862347610339458674584985123334673990832939068658499065 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2182 (rho : Nat -> F) : Prop :=
    (relationLc1561 rho) * (relationLc1562 rho) = ((1 : F) * rho 2183)

def relationLc1563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), runs := [⟨(1242711659814623109293099694224743625691221214554458310761398321148183402362 : F), 2061, 5, 25⟩, ⟨(5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), 2062, 5, 25⟩], residual := [((3968254300244612834138477886882201362794885788209677919178866727963741104586 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2184) * ((1 : F) + (1 : F) * rho 2183) = (relationLc1563 rho)

def relationLc1564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1242711659814623109293099694224743625691221214554458310761398321148183402362 : F), runs := [⟨(1242711659814623109293099694224743625691221214554458310761398321148183402362 : F), 2062, 5, 25⟩, ⟨(5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), 2061, 5, 25⟩], residual := [((1277533753130263419990014577813148196003567629970333625767474906860595977965 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2185) * ((1 : F) + (-1 : F) * rho 2183) = (relationLc1564 rho)

def relationLc1565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 25⟩], residual := [((1 : F), 2184), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1832) * (relationLc1565 rho) = ((1 : F) * rho 2186)

def relationLc1566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 25⟩], residual := [((1 : F), 2185), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1832) * (relationLc1566 rho) = ((1 : F) * rho 2187)

def relationLc1567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5639654883578048587855815085709177653534889323307110513317475998985015187139 : F), 2061, 5, 26⟩], residual := [((2990996184029959469754256850927685604426134109320164096964810921611337490383 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), runs := [⟨(8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), 2062, 5, 26⟩], residual := [((5725940096275979895123831451837528871125802679170251880960374703431973559897 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2187 (rho : Nat -> F) : Prop :=
    (relationLc1567 rho) * (relationLc1568 rho) = ((1 : F) * rho 2188)

def relationLc1569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), runs := [⟨(4714664734994972056892212731503275944903442955442919140818312175662276395965 : F), 2061, 5, 26⟩, ⟨(8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), 2062, 5, 26⟩], residual := [((5332799377810117508381252815784145761122632976374024527222571622874958212259 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2189) * ((1 : F) + (1 : F) * rho 2188) = (relationLc1569 rho)

def relationLc1570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4714664734994972056892212731503275944903442955442919140818312175662276395965 : F), runs := [⟨(4714664734994972056892212731503275944903442955442919140818312175662276395965 : F), 2062, 5, 26⟩, ⟨(8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), 2061, 5, 26⟩], residual := [((6945482531101436755048336049615192206891233569969970194408248179185271119242 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2190) * ((1 : F) + (-1 : F) * rho 2188) = (relationLc1570 rho)

def relationLc1571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 26⟩], residual := [((1 : F), 2189), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1833) * (relationLc1571 rho) = ((1 : F) * rho 2191)

def relationLc1572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 26⟩], residual := [((1 : F), 2190), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1833) * (relationLc1572 rho) = ((1 : F) * rho 2192)

def relationLc1573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6657259362711039144743913495888109165349691744994353821451845158638640565674 : F), 2061, 5, 27⟩], residual := [((51775443479241098402096956665878702576057514874494739998865276011239223123 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), runs := [⟨(8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), 2062, 5, 27⟩], residual := [((15583042519391411716071670939216949319487308301399490898260719631782627533 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2192 (rho : Nat -> F) : Prop :=
    (relationLc1573 rho) * (relationLc1574 rho) = ((1 : F) * rho 2193)

def relationLc1575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), runs := [⟨(1424987848335568217506585834934026909511976978926982072903173013644687170883 : F), 2061, 5, 27⟩, ⟨(8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), 2062, 5, 27⟩], residual := [((6757752362302479364177696248661082593934265611481299010169952861620793658248 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2194) * ((1 : F) + (1 : F) * rho 2193) = (relationLc1575 rho)

def relationLc1576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1424987848335568217506585834934026909511976978926982072903173013644687170883 : F), runs := [⟨(1424987848335568217506585834934026909511976978926982072903173013644687170883 : F), 2062, 5, 27⟩, ⟨(8018423678882544554730157100009757083911394055734846144581939446224183505653 : F), 2061, 5, 27⟩], residual := [((952752598305257443954382774282681094589157431297876586238579574428526020928 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2195) * ((1 : F) + (-1 : F) * rho 2193) = (relationLc1576 rho)

def relationLc1577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 27⟩], residual := [((1 : F), 2194), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1834) * (relationLc1577 rho) = ((1 : F) * rho 2196)

def relationLc1578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 27⟩], residual := [((1 : F), 2195), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1834) * (relationLc1578 rho) = ((1 : F) * rho 2197)

def relationLc1579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3255355479230520239245265985447735669454046199262866440804262736175046838601 : F), 2061, 5, 28⟩], residual := [((8287900179260966111444378413809228467020578025432864718202026527358461568844 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), runs := [⟨(5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), 2062, 5, 28⟩], residual := [((4325764255755994515121180166218221802812203229701451380124336007235305163801 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2197 (rho : Nat -> F) : Prop :=
    (relationLc1579 rho) * (relationLc1580 rho) = ((1 : F) * rho 2198)

def relationLc1581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), runs := [⟨(4129667447661348439872479212368683205068406939497456186792831538274143824198 : F), 2061, 5, 28⟩, ⟨(5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), 2062, 5, 28⟩], residual := [((8370444689338478659303651281707108102989816939287088308264868812195229765331 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2199) * ((1 : F) + (1 : F) * rho 2198) = (relationLc1581 rho)

def relationLc1582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4129667447661348439872479212368683205068406939497456186792831538274143824198 : F), runs := [⟨(4129667447661348439872479212368683205068406939497456186792831538274143824198 : F), 2062, 5, 28⟩, ⟨(5110522837724527965219539961208608400431488223749802596080918536465326249033 : F), 2061, 5, 28⟩], residual := [((812275852709380879569251977185394380921504104105348386868355806098719545544 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2200) * ((1 : F) + (-1 : F) * rho 2198) = (relationLc1582 rho)

def relationLc1583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 28⟩], residual := [((1 : F), 2199), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1835) * (relationLc1583 rho) = ((1 : F) * rho 2201)

def relationLc1584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 28⟩], residual := [((1 : F), 2200), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1835) * (relationLc1584 rho) = ((1 : F) * rho 2202)

def relationLc1585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2482903988982329001690011278047306563612807287735381104470528168701567236474 : F), 2061, 5, 29⟩], residual := [((3792710696943158094812238770333875087580948594544730296037051640413483001663 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), runs := [⟨(4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), 2062, 5, 29⟩], residual := [((5312731399566427291778421010003633059438986778264109638919940457273932823088 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2202 (rho : Nat -> F) : Prop :=
    (relationLc1585 rho) * (relationLc1586 rho) = ((1 : F) * rho 2203)

def relationLc1587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), runs := [⟨(1745060256746867088292935045705968997729948358961890503057284410678968862098 : F), 2061, 5, 29⟩, ⟨(4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), 2062, 5, 29⟩], residual := [((2054720909948242334287749828325728597175922337285925695498409454970296381605 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2204) * ((1 : F) + (1 : F) * rho 2203) = (relationLc1587 rho)

def relationLc1588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1745060256746867088292935045705968997729948358961890503057284410678968862098 : F), runs := [⟨(1745060256746867088292935045705968997729948358961890503057284410678968862098 : F), 2062, 5, 29⟩, ⟨(4989723386215557328560709349941277692369421468468569422839497865672353596284 : F), 2061, 5, 29⟩], residual := [((3927021965593039847225469137067229232210731564349263077539774261082516873640 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2205) * ((1 : F) + (-1 : F) * rho 2203) = (relationLc1588 rho)

def relationLc1589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 29⟩], residual := [((1 : F), 2204), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * (relationLc1589 rho) = ((1 : F) * rho 2206)

def relationLc1590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 29⟩], residual := [((1 : F), 2205), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * (relationLc1590 rho) = ((1 : F) * rho 2207)

def relationLc1591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6239473800542177955912286854217196612304894561077124215846141335882663981489 : F), 2061, 5, 30⟩], residual := [((4581169201032225273346815198674222137244651689521475375102896469810765099874 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
