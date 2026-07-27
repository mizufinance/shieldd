import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs76

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1826) * (relationLc1529 rho) = ((1 : F) * rho 2156)

def relationLc1530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 19⟩], residual := [((1 : F), 2155), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1826) * (relationLc1530 rho) = ((1 : F) * rho 2157)

def relationLc1531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2221768204210492498020933308195187315476565815756952625735581012389492030511 : F), 2061, 5, 20⟩], residual := [((3859030896250291175109147461089968864885390873142426417620530283286390990479 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), runs := [⟨(1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), 2062, 5, 20⟩], residual := [((8373778597553758246218115803666110330487320618829657481734343292439764354698 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2157 (rho : Nat -> F) : Prop :=
    (relationLc1531 rho) * (relationLc1532 rho) = ((1 : F) * rho 2158)

def relationLc1533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), runs := [⟨(1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), 2062, 5, 20⟩, ⟨(2290048308833514025143266652820351471867705435718945788713899960744371949290 : F), 2061, 5, 20⟩], residual := [((3502928614648296691007724303886187908996652909362464225966885039086319166794 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2159) * ((1 : F) + (1 : F) * rho 2158) = (relationLc1533 rho)

def relationLc1534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2290048308833514025143266652820351471867705435718945788713899960744371949290 : F), runs := [⟨(1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), 2061, 5, 20⟩, ⟨(2290048308833514025143266652820351471867705435718945788713899960744371949290 : F), 2062, 5, 20⟩], residual := [((77001094337513284289421777759057518406237692400016935885954782956546695152 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2160) * ((1 : F) + (-1 : F) * rho 2158) = (relationLc1534 rho)

def relationLc1535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 20⟩], residual := [((1 : F), 2159), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1827) * (relationLc1535 rho) = ((1 : F) * rho 2161)

def relationLc1536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 20⟩], residual := [((1 : F), 2160), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1827) * (relationLc1536 rho) = ((1 : F) * rho 2162)

def relationLc1537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1947879467774202825890220935283645743249202955426461317518953481162964368709 : F), 2061, 5, 21⟩], residual := [((3794550865036835053360616874229700906540341768858835895454352617313486757936 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), runs := [⟨(5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), 2062, 5, 21⟩], residual := [((4613681404561041414491686275647308176147390102568119351747506750787165972295 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2162 (rho : Nat -> F) : Prop :=
    (relationLc1537 rho) * (relationLc1538 rho) = ((1 : F) * rho 2163)

def relationLc1539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), runs := [⟨(5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), 2062, 5, 21⟩, ⟨(7424838889754891112092277146090391007308056218842972521785335654550745416505 : F), 2061, 5, 21⟩], residual := [((2593968960346650490400809144278612896015567898811903094977655894775589211928 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2164) * ((1 : F) + (1 : F) * rho 2163) = (relationLc1539 rho)

def relationLc1540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7424838889754891112092277146090391007308056218842972521785335654550745416505 : F), runs := [⟨(5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), 2061, 5, 21⟩, ⟨(7424838889754891112092277146090391007308056218842972521785335654550745416505 : F), 2062, 5, 21⟩], residual := [((4042513875459441486946433019879151653837647891745054679547516776865583323229 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2165) * ((1 : F) + (-1 : F) * rho 2163) = (relationLc1540 rho)

def relationLc1541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 21⟩], residual := [((1 : F), 2164), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1828) * (relationLc1541 rho) = ((1 : F) * rho 2166)

def relationLc1542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 21⟩], residual := [((1 : F), 2165), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1828) * (relationLc1542 rho) = ((1 : F) * rho 2167)

def relationLc1543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(366653356134228893884451650551569358790369043609706051437573096230856149808 : F), 2061, 5, 22⟩], residual := [((3794014873575794920651820584378408566178653587646231018843184137808113802147 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), runs := [⟨(6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), 2062, 5, 22⟩], residual := [((3864890959518274530276501341500014850868021279626352307800892084975932123580 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2167 (rho : Nat -> F) : Prop :=
    (relationLc1543 rho) * (relationLc1544 rho) = ((1 : F) * rho 2168)

def relationLc1545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), runs := [⟨(4145482763243431833185995311441107274210277750108270891386755639927755298791 : F), 2061, 5, 22⟩, ⟨(6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), 2062, 5, 22⟩], residual := [((8173632955791923857879312017185794928132648730490324035661546815100571564548 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2169) * ((1 : F) + (1 : F) * rho 2168) = (relationLc1545 rho)

def relationLc1546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145482763243431833185995311441107274210277750108270891386755639927755298791 : F), runs := [⟨(4145482763243431833185995311441107274210277750108270891386755639927755298791 : F), 2062, 5, 22⟩, ⟨(6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), 2061, 5, 22⟩], residual := [((3016766427198289168164936169171255022675347485263062160990907667127278435084 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2170) * ((1 : F) + (-1 : F) * rho 2168) = (relationLc1546 rho)

def relationLc1547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 22⟩], residual := [((1 : F), 2169), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1829) * (relationLc1547 rho) = ((1 : F) * rho 2171)

def relationLc1548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 22⟩], residual := [((1 : F), 2170), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1829) * (relationLc1548 rho) = ((1 : F) * rho 2172)

def relationLc1549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(224205272964481342216886934734197252310330975741562383175585311846170893212 : F), 2061, 5, 23⟩], residual := [((613254355233494454694824345050167882855780969268338428712171464921401776251 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (698332092399450389416901304074919166827933635593005989524634246935338237515 : F), runs := [⟨(698332092399450389416901304074919166827933635593005989524634246935338237515 : F), 2062, 5, 23⟩], residual := [((7098153646342492011616147110488161240205223740082633386383934714859952227897 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2172 (rho : Nat -> F) : Prop :=
    (relationLc1549 rho) * (relationLc1550 rho) = ((1 : F) * rho 2173)

def relationLc1551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (698332092399450389416901304074919166827933635593005989524634246935338237515 : F), runs := [⟨(3860319722354698456547449231179096311513547604377194210116429324042962042373 : F), 2061, 5, 23⟩, ⟨(698332092399450389416901304074919166827933635593005989524634246935338237515 : F), 2062, 5, 23⟩], residual := [((6653911288247861954350053651063727036098665576123603988762951613891416422789 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2174) * ((1 : F) + (1 : F) * rho 2173) = (relationLc1551 rho)

def relationLc1552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3860319722354698456547449231179096311513547604377194210116429324042962042373 : F), runs := [⟨(3860319722354698456547449231179096311513547604377194210116429324042962042373 : F), 2062, 5, 23⟩, ⟨(698332092399450389416901304074919166827933635593005989524634246935338237515 : F), 2061, 5, 23⟩], residual := [((7577817630127451382183922625957816194436849239543951783993455713375576444765 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2175) * ((1 : F) + (-1 : F) * rho 2173) = (relationLc1552 rho)

def relationLc1553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 23⟩], residual := [((1 : F), 2174), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1830) * (relationLc1553 rho) = ((1 : F) * rho 2176)

def relationLc1554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 23⟩], residual := [((1 : F), 2175), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1830) * (relationLc1554 rho) = ((1 : F) * rho 2177)

def relationLc1555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(744659538135431695640052302004022517269629365141333120367383144383183361999 : F), 2061, 5, 24⟩], residual := [((4904364982033510618908166838756101712951906426882430087867630809757628845898 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), runs := [⟨(4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), 2062, 5, 24⟩], residual := [((4730818462444899340376522439439081382488617158581323273235571344276354859762 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2177 (rho : Nat -> F) : Prop :=
    (relationLc1555 rho) * (relationLc1556 rho) = ((1 : F) * rho 2178)

def relationLc1557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), runs := [⟨(4120450605162381144335785505483615892011037818398620130915889274136591989973 : F), 2061, 5, 24⟩, ⟨(4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), 2062, 5, 24⟩], residual := [((6633214475219916023298769750001877722458350178883092830694633370371553771180 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2179) * ((1 : F) + (1 : F) * rho 2178) = (relationLc1557 rho)

def relationLc1558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4120450605162381144335785505483615892011037818398620130915889274136591989973 : F), runs := [⟨(4120450605162381144335785505483615892011037818398620130915889274136591989973 : F), 2062, 5, 24⟩, ⟨(4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), 2061, 5, 24⟩], residual := [((5582238607082076851740208724543319935652510014722270641306989023073106136612 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2180) * ((1 : F) + (-1 : F) * rho 2178) = (relationLc1558 rho)

def relationLc1559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 24⟩], residual := [((1 : F), 2179), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1831) * (relationLc1559 rho) = ((1 : F) * rho 2181)

def relationLc1560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 24⟩], residual := [((1 : F), 2180), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1831) * (relationLc1560 rho) = ((1 : F) * rho 2182)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
