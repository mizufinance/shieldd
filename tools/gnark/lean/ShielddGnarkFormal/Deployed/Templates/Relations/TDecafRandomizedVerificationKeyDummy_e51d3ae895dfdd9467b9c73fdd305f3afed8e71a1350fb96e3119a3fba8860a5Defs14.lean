import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs13

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 42⟩], residual := [((1 : F), 464), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * (relationLc161 rho) = ((1 : F) * rho 466)

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 42⟩], residual := [((1 : F), 465), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * (relationLc162 rho) = ((1 : F) * rho 467)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(253089603964650935448206421407193034317991595603061543628178986213350722919 : F), 256, 5, 43⟩], residual := [((5565364441469160997639354677560474059820633437251138032940141926493929785286 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), runs := [⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 257, 5, 43⟩], residual := [((7168001934527135594203266092691074200102188849944056533311839492900430642746 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow467 (rho : Nat -> F) : Prop :=
    (relationLc163 rho) * (relationLc164 rho) = ((1 : F) * rho 468)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), runs := [⟨(2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), 256, 5, 43⟩, ⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 257, 5, 43⟩], residual := [((5663202358724281407618533458687203592239961405981531122777529433048398318993 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 469) * ((1 : F) + (1 : F) * rho 468) = (relationLc165 rho)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), runs := [⟨(2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), 257, 5, 43⟩, ⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 256, 5, 43⟩], residual := [((4759701143005603929059858651671846902254791926688977767922809708738066053159 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 470) * ((1 : F) + (-1 : F) * rho 468) = (relationLc166 rho)

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 43⟩], residual := [((1 : F), 469), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * (relationLc167 rho) = ((1 : F) * rho 471)

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 43⟩], residual := [((1 : F), 470), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * (relationLc168 rho) = ((1 : F) * rho 472)

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6971088294453342499407001133603161768056707092278706015455281787411030167211 : F), 256, 5, 44⟩], residual := [((5869792174701010066534460370998374031738396009957497491190853942678029269047 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 257, 5, 44⟩], residual := [((3614041244887921594902320472204306523496704967327648395438467763982255265225 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow472 (rho : Nat -> F) : Prop :=
    (relationLc169 rho) * (relationLc170 rho) = ((1 : F) * rho 473)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 257, 5, 44⟩, ⟨(6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), 256, 5, 44⟩], residual := [((71602414665984260284321279220525448437816532714806476758995679188942823704 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 474) * ((1 : F) + (1 : F) * rho 473) = (relationLc171 rho)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 256, 5, 44⟩, ⟨(6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), 257, 5, 44⟩], residual := [((7428878532806775174158131155894163114944477458452568001406209860826617970898 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 475) * ((1 : F) + (-1 : F) * rho 473) = (relationLc172 rho)

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 44⟩], residual := [((1 : F), 474), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * (relationLc173 rho) = ((1 : F) * rho 476)

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 44⟩], residual := [((1 : F), 475), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * (relationLc174 rho) = ((1 : F) * rho 477)

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1971851832335678008122963964257464482273943743281012573309109172950046803432 : F), 256, 5, 45⟩], residual := [((4458658022404426310591096814393615713405161516003240642232664938122910999835 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 257, 5, 45⟩], residual := [((3924399849183403800635904052424757915833669252134527332175691182188838126604 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow477 (rho : Nat -> F) : Prop :=
    (relationLc175 rho) * (relationLc176 rho) = ((1 : F) * rho 478)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 257, 5, 45⟩, ⟨(8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), 256, 5, 45⟩], residual := [((2265494976247936205239276804221565256474556692198906453939578634066753327865 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 479) * ((1 : F) + (1 : F) * rho 478) = (relationLc177 rho)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 256, 5, 45⟩, ⟨(8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), 257, 5, 45⟩], residual := [((6558436434314105277867274208453340390424657597047880838203572116993711254360 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 480) * ((1 : F) + (-1 : F) * rho 478) = (relationLc178 rho)

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 45⟩], residual := [((1 : F), 479), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * (relationLc179 rho) = ((1 : F) * rho 481)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 45⟩], residual := [((1 : F), 480), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * (relationLc180 rho) = ((1 : F) * rho 482)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3714855261533166382040088455134618451429590638829032915074360568190070575219 : F), 256, 5, 46⟩], residual := [((6428693841809995416207046926203669269885730368447761649130921761657402840377 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), runs := [⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 257, 5, 46⟩], residual := [((7072166311046371974940295729410239865239300401239924761117325870390291740566 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow482 (rho : Nat -> F) : Prop :=
    (relationLc181 rho) * (relationLc182 rho) = ((1 : F) * rho 483)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), runs := [⟨(3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), 256, 5, 46⟩, ⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 257, 5, 46⟩], residual := [((6244103932450405069748076609949162192101678298567859486291892763920310561766 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 484) * ((1 : F) + (1 : F) * rho 483) = (relationLc183 rho)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), runs := [⟨(3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), 257, 5, 46⟩, ⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 256, 5, 46⟩], residual := [((5886078833584473605719416950822767817067481112901899389994814173454995030912 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 485) * ((1 : F) + (-1 : F) * rho 483) = (relationLc184 rho)

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 46⟩], residual := [((1 : F), 484), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * (relationLc185 rho) = ((1 : F) * rho 486)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 46⟩], residual := [((1 : F), 485), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * (relationLc186 rho) = ((1 : F) * rho 487)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2007142405865741212583418405001667830225331770762763980966094406287848002234 : F), 256, 5, 47⟩], residual := [((3511421809349194497240159582276503343772566217816153827660309415506614430722 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 257, 5, 47⟩], residual := [((6068222480634586193480125141746175465742028006835934070153620006128481423330 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow487 (rho : Nat -> F) : Prop :=
    (relationLc187 rho) * (relationLc188 rho) = ((1 : F) * rho 488)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 257, 5, 47⟩, ⟨(763768685865544808683387165406277348856618950767236739161630197905243485687 : F), 256, 5, 47⟩], residual := [((780764616315113287759656216028727755043772801310057668754811204678553695480 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 489) * ((1 : F) + (1 : F) * rho 488) = (relationLc189 rho)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (763768685865544808683387165406277348856618950767236739161630197905243485687 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 256, 5, 47⟩, ⟨(763768685865544808683387165406277348856618950767236739161630197905243485687 : F), 257, 5, 47⟩], residual := [((107088271911004464855019895567003286826177788836370390458748736964608633495 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 490) * ((1 : F) + (-1 : F) * rho 488) = (relationLc190 rho)

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 47⟩], residual := [((1 : F), 489), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * (relationLc191 rho) = ((1 : F) * rho 491)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 47⟩], residual := [((1 : F), 490), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * (relationLc192 rho) = ((1 : F) * rho 492)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
