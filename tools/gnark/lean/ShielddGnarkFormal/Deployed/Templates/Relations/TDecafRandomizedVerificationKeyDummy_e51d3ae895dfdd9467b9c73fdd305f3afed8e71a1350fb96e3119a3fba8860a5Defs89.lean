import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs88

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (143751746805209981231263548913363895913215937586530293922447314115109648945 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 2062, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 2061, 5, 81⟩], residual := [((3014817936280911672026913628016558529560374790681053700727771705456056218127 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2465) * ((1 : F) + (-1 : F) * rho 2463) = (relationLc1900 rho)

def relationLc1901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 81⟩], residual := [((1 : F), 2464), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1888) * (relationLc1901 rho) = ((1 : F) * rho 2466)

def relationLc1902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 81⟩], residual := [((1 : F), 2465), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1888) * (relationLc1902 rho) = ((1 : F) * rho 2467)

def relationLc1903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3766554936473951255540249522715488611853256733758667611827960753981783105824 : F), 2061, 5, 82⟩], residual := [((7621915444124325191480647678072558098704848408090815923787421731984216850880 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 2062, 5, 82⟩], residual := [((8201295156430902398006891467380246727186705512452201264592190614802423168295 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2467 (rho : Nat -> F) : Prop :=
    (relationLc1903 rho) * (relationLc1904 rho) = ((1 : F) * rho 2468)

def relationLc1905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 2061, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 2062, 5, 82⟩], residual := [((2126936358743662087803162646051875459026328052598893106363984685827758001521 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2469) * ((1 : F) + (1 : F) * rho 2468) = (relationLc1905 rho)

def relationLc1906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 2062, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 2061, 5, 82⟩], residual := [((4445652771961411157792133795511392792424747091865093974256457248476981814276 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2470) * ((1 : F) + (-1 : F) * rho 2468) = (relationLc1906 rho)

def relationLc1907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 82⟩], residual := [((1 : F), 2469), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1889) * (relationLc1907 rho) = ((1 : F) * rho 2471)

def relationLc1908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 82⟩], residual := [((1 : F), 2470), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1889) * (relationLc1908 rho) = ((1 : F) * rho 2472)

def relationLc1909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4057618003226322301380722646054133515350344497494379614603511631974896775073 : F), 2061, 5, 83⟩], residual := [((1114119046654488412156978360057755686609664720675475355766786494969526974976 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 2062, 5, 83⟩], residual := [((8415988326101532143562530920364287788294739843006614146358467532537182975184 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2472 (rho : Nat -> F) : Prop :=
    (relationLc1909 rho) * (relationLc1910 rho) = ((1 : F) * rho 2473)

def relationLc1911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 2062, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 2061, 5, 83⟩], residual := [((5422640290818139149203598602894913879186173632073371218730904392916999006949 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2474) * ((1 : F) + (1 : F) * rho 2473) = (relationLc1911 rho)

def relationLc1912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (702951842803623733461713267884879944684111578159935253368535951362874748684 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 2061, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 2062, 5, 83⟩], residual := [((5025556459589336422978363340047262187464658303343479376519996551711562936563 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2475) * ((1 : F) + (-1 : F) * rho 2473) = (relationLc1912 rho)

def relationLc1913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 83⟩], residual := [((1 : F), 2474), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1890) * (relationLc1913 rho) = ((1 : F) * rho 2476)

def relationLc1914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 83⟩], residual := [((1 : F), 2475), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1890) * (relationLc1914 rho) = ((1 : F) * rho 2477)

def relationLc1915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5521699295475871864753056508204148223678162633978526892347350614954837511571 : F), 2061, 5, 84⟩], residual := [((2752875008010564020883566174142247157044480591208246799816422655462893432145 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 2062, 5, 84⟩], residual := [((999253345431023173700117287462072931709406681660084743379432615777357612207 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2477 (rho : Nat -> F) : Prop :=
    (relationLc1915 rho) * (relationLc1916 rho) = ((1 : F) * rho 2478)

def relationLc1917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 2062, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 2061, 5, 84⟩], residual := [((8396406163701621884916030678455159449146571236909625006708278741898816645618 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2479) * ((1 : F) + (1 : F) * rho 2478) = (relationLc1917 rho)

def relationLc1918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 2061, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 2062, 5, 84⟩], residual := [((7059873362166045987362961083589418026509864897316794138950051358551377495103 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2480) * ((1 : F) + (-1 : F) * rho 2478) = (relationLc1918 rho)

def relationLc1919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 84⟩], residual := [((1 : F), 2479), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1891) * (relationLc1919 rho) = ((1 : F) * rho 2481)

def relationLc1920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 84⟩], residual := [((1 : F), 2480), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1891) * (relationLc1920 rho) = ((1 : F) * rho 2482)

def relationLc1921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5875314823000567718468398952994848754922664908524519324365751156649417451005 : F), 2061, 5, 85⟩], residual := [((5477888473051844104213404977281314913536255982406650950202859066687533352604 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 2062, 5, 85⟩], residual := [((483659877864017298282645335160677740150049015512611850596575714024882099756 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2482 (rho : Nat -> F) : Prop :=
    (relationLc1921 rho) * (relationLc1922 rho) = ((1 : F) * rho 2483)

def relationLc1923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 2062, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 2061, 5, 85⟩], residual := [((3697219771464232280595162137423927749903258082733540678550162638856325578409 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2484) * ((1 : F) + (1 : F) * rho 2483) = (relationLc1923 rho)

def relationLc1924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 2061, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 2062, 5, 85⟩], residual := [((3869906991999287255572332967163802692740859564722218277265168257637774615890 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2485) * ((1 : F) + (-1 : F) * rho 2483) = (relationLc1924 rho)

def relationLc1925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 85⟩], residual := [((1 : F), 2484), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1892) * (relationLc1925 rho) = ((1 : F) * rho 2486)

def relationLc1926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 85⟩], residual := [((1 : F), 2485), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1892) * (relationLc1926 rho) = ((1 : F) * rho 2487)

def relationLc1927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3266100972727780920478745108358337853971524136114438455381086990522349021937 : F), 2061, 5, 86⟩], residual := [((108787566386572987969553219646625715175982685210276690626178449889909211465 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 2062, 5, 86⟩], residual := [((8364191030312960177030230610335616396614882005722442462220723820210297943600 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2487 (rho : Nat -> F) : Prop :=
    (relationLc1927 rho) * (relationLc1928 rho) = ((1 : F) * rho 2488)

def relationLc1929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 2061, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 2062, 5, 86⟩], residual := [((8255212142308551082837004983260861782576985914565276552720939667171274755546 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2489) * ((1 : F) + (1 : F) * rho 2488) = (relationLc1929 rho)

def relationLc1930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 2062, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 2061, 5, 86⟩], residual := [((4736156545623580777384540766592061019307340316099661050493041670764466775994 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
