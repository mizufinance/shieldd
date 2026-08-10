import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 21⟩], residual := [((1 : F), 360), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24) * (relationLc35 rho) = ((1 : F) * rho 362)

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 21⟩], residual := [((1 : F), 361), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24) * (relationLc36 rho) = ((1 : F) * rho 363)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(366653356134228893884451650551569358790369043609706051437573096230856149808 : F), 257, 5, 22⟩], residual := [((3794014873575794920651820584378408566178653587646231018843184137808113802147 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), runs := [⟨(6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), 258, 5, 22⟩], residual := [((3864890959518274530276501341500014850868021279626352307800892084975932123580 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow363 (rho : Nat -> F) : Prop :=
    (relationLc37 rho) * (relationLc38 rho) = ((1 : F) * rho 364)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), runs := [⟨(4145482763243431833185995311441107274210277750108270891386755639927755298791 : F), 257, 5, 22⟩, ⟨(6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), 258, 5, 22⟩], residual := [((8173632955791923857879312017185794928132648730490324035661546815100571564548 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 365) * ((1 : F) + (1 : F) * rho 364) = (relationLc39 rho)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145482763243431833185995311441107274210277750108270891386755639927755298791 : F), runs := [⟨(4145482763243431833185995311441107274210277750108270891386755639927755298791 : F), 258, 5, 22⟩, ⟨(6971869847316631555946269356928124873336607269769416978032128120736419456575 : F), 257, 5, 22⟩], residual := [((3016766427198289168164936169171255022675347485263062160990907667127278435084 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 366) * ((1 : F) + (-1 : F) * rho 364) = (relationLc40 rho)

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 22⟩], residual := [((1 : F), 365), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 25) * (relationLc41 rho) = ((1 : F) * rho 367)

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 22⟩], residual := [((1 : F), 366), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 25) * (relationLc42 rho) = ((1 : F) * rho 368)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(224205272964481342216886934734197252310330975741562383175585311846170893212 : F), 257, 5, 23⟩], residual := [((613254355233494454694824345050167882855780969268338428712171464921401776251 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (698332092399450389416901304074919166827933635593005989524634246935338237515 : F), runs := [⟨(698332092399450389416901304074919166827933635593005989524634246935338237515 : F), 258, 5, 23⟩], residual := [((7098153646342492011616147110488161240205223740082633386383934714859952227897 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow368 (rho : Nat -> F) : Prop :=
    (relationLc43 rho) * (relationLc44 rho) = ((1 : F) * rho 369)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (698332092399450389416901304074919166827933635593005989524634246935338237515 : F), runs := [⟨(3860319722354698456547449231179096311513547604377194210116429324042962042373 : F), 257, 5, 23⟩, ⟨(698332092399450389416901304074919166827933635593005989524634246935338237515 : F), 258, 5, 23⟩], residual := [((6653911288247861954350053651063727036098665576123603988762951613891416422789 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 370) * ((1 : F) + (1 : F) * rho 369) = (relationLc45 rho)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3860319722354698456547449231179096311513547604377194210116429324042962042373 : F), runs := [⟨(3860319722354698456547449231179096311513547604377194210116429324042962042373 : F), 258, 5, 23⟩, ⟨(698332092399450389416901304074919166827933635593005989524634246935338237515 : F), 257, 5, 23⟩], residual := [((7577817630127451382183922625957816194436849239543951783993455713375576444765 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 371) * ((1 : F) + (-1 : F) * rho 369) = (relationLc46 rho)

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 23⟩], residual := [((1 : F), 370), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 26) * (relationLc47 rho) = ((1 : F) * rho 372)

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 23⟩], residual := [((1 : F), 371), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 26) * (relationLc48 rho) = ((1 : F) * rho 373)

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(744659538135431695640052302004022517269629365141333120367383144383183361999 : F), 257, 5, 24⟩], residual := [((4904364982033510618908166838756101712951906426882430087867630809757628845898 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), runs := [⟨(4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), 258, 5, 24⟩], residual := [((4730818462444899340376522439439081382488617158581323273235571344276354859762 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow373 (rho : Nat -> F) : Prop :=
    (relationLc49 rho) * (relationLc50 rho) = ((1 : F) * rho 374)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), runs := [⟨(4120450605162381144335785505483615892011037818398620130915889274136591989973 : F), 257, 5, 24⟩, ⟨(4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), 258, 5, 24⟩], residual := [((6633214475219916023298769750001877722458350178883092830694633370371553771180 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 375) * ((1 : F) + (1 : F) * rho 374) = (relationLc51 rho)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4120450605162381144335785505483615892011037818398620130915889274136591989973 : F), runs := [⟨(4120450605162381144335785505483615892011037818398620130915889274136591989973 : F), 258, 5, 24⟩, ⟨(4422303164723061947314828228297415934576038778891527859445088569956345713070 : F), 257, 5, 24⟩], residual := [((5582238607082076851740208724543319935652510014722270641306989023073106136612 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 376) * ((1 : F) + (-1 : F) * rho 374) = (relationLc52 rho)

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 24⟩], residual := [((1 : F), 375), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 27) * (relationLc53 rho) = ((1 : F) * rho 377)

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 24⟩], residual := [((1 : F), 376), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 27) * (relationLc54 rho) = ((1 : F) * rho 378)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4890907553779944807975903433943833282279984360614217206940673761332356401398 : F), 257, 5, 25⟩], residual := [((3181154236042176302739631238677614333633729020480263984298601966094552420095 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), runs := [⟨(5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), 258, 5, 25⟩], residual := [((2273277479857444792629862347610339458674584985123334673990832939068658499065 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow378 (rho : Nat -> F) : Prop :=
    (relationLc55 rho) * (relationLc56 rho) = ((1 : F) * rho 379)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), runs := [⟨(1242711659814623109293099694224743625691221214554458310761398321148183402362 : F), 257, 5, 25⟩, ⟨(5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), 258, 5, 25⟩], residual := [((3968254300244612834138477886882201362794885788209677919178866727963741104586 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 380) * ((1 : F) + (1 : F) * rho 379) = (relationLc57 rho)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1242711659814623109293099694224743625691221214554458310761398321148183402362 : F), runs := [⟨(1242711659814623109293099694224743625691221214554458310761398321148183402362 : F), 258, 5, 25⟩, ⟨(5009073828216417788897901053664247942048164297341996689155967268504146970488 : F), 257, 5, 25⟩], residual := [((1277533753130263419990014577813148196003567629970333625767474906860595977965 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 381) * ((1 : F) + (-1 : F) * rho 379) = (relationLc58 rho)

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 25⟩], residual := [((1 : F), 380), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 28) * (relationLc59 rho) = ((1 : F) * rho 382)

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 25⟩], residual := [((1 : F), 381), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 28) * (relationLc60 rho) = ((1 : F) * rho 383)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5639654883578048587855815085709177653534889323307110513317475998985015187139 : F), 257, 5, 26⟩], residual := [((2990996184029959469754256850927685604426134109320164096964810921611337490383 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), runs := [⟨(8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), 258, 5, 26⟩], residual := [((5725940096275979895123831451837528871125802679170251880960374703431973559897 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow383 (rho : Nat -> F) : Prop :=
    (relationLc61 rho) * (relationLc62 rho) = ((1 : F) * rho 384)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), runs := [⟨(4714664734994972056892212731503275944903442955442919140818312175662276395965 : F), 257, 5, 26⟩, ⟨(8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), 258, 5, 26⟩], residual := [((5332799377810117508381252815784145761122632976374024527222571622874958212259 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 385) * ((1 : F) + (1 : F) * rho 384) = (relationLc63 rho)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4714664734994972056892212731503275944903442955442919140818312175662276395965 : F), runs := [⟨(4714664734994972056892212731503275944903442955442919140818312175662276395965 : F), 258, 5, 26⟩, ⟨(8185232629601049131891743339013796454202168853641452678982161646728702859559 : F), 257, 5, 26⟩], residual := [((6945482531101436755048336049615192206891233569969970194408248179185271119242 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 386) * ((1 : F) + (-1 : F) * rho 384) = (relationLc64 rho)

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 26⟩], residual := [((1 : F), 385), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 29) * (relationLc65 rho) = ((1 : F) * rho 387)

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 26⟩], residual := [((1 : F), 386), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 29) * (relationLc66 rho) = ((1 : F) * rho 388)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
