import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationRow462 (rho : Nat -> F) : Prop :=
    (relationLc205 rho) * (relationLc206 rho) = ((1 : F) * rho 463)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 257, 5, 42⟩, ⟨(6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), 256, 5, 42⟩], residual := [((1359640134584318861497557619561962536382113671176474387233702764375718878298 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 464) * ((1 : F) + (1 : F) * rho 463) = (relationLc207 rho)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 256, 5, 42⟩, ⟨(6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), 257, 5, 42⟩], residual := [((5391288324706657434524820133139641588046669216494177533991455354458955462869 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 465) * ((1 : F) + (-1 : F) * rho 463) = (relationLc208 rho)

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 42⟩], residual := [((1 : F), 464), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * (relationLc209 rho) = ((1 : F) * rho 466)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 42⟩], residual := [((1 : F), 465), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * (relationLc210 rho) = ((1 : F) * rho 467)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(253089603964650935448206421407193034317991595603061543628178986213350722919 : F), 256, 5, 43⟩], residual := [((5565364441469160997639354677560474059820633437251138032940141926493929785286 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), runs := [⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 257, 5, 43⟩], residual := [((7168001934527135594203266092691074200102188849944056533311839492900430642746 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow467 (rho : Nat -> F) : Prop :=
    (relationLc211 rho) * (relationLc212 rho) = ((1 : F) * rho 468)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), runs := [⟨(2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), 256, 5, 43⟩, ⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 257, 5, 43⟩], residual := [((5663202358724281407618533458687203592239961405981531122777529433048398318993 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 469) * ((1 : F) + (1 : F) * rho 468) = (relationLc213 rho)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), runs := [⟨(2230696314348826299068523835673313910980564601472540879257181223703510732697 : F), 257, 5, 43⟩, ⟨(5776415041600723616987865468613667215653188335306682971288130904195616148297 : F), 256, 5, 43⟩], residual := [((4759701143005603929059858651671846902254791926688977767922809708738066053159 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 470) * ((1 : F) + (-1 : F) * rho 468) = (relationLc214 rho)

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 43⟩], residual := [((1 : F), 469), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * (relationLc215 rho) = ((1 : F) * rho 471)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 43⟩], residual := [((1 : F), 470), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * (relationLc216 rho) = ((1 : F) * rho 472)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6971088294453342499407001133603161768056707092278706015455281787411030167211 : F), 256, 5, 44⟩], residual := [((5869792174701010066534460370998374031738396009957497491190853942678029269047 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 257, 5, 44⟩], residual := [((3614041244887921594902320472204306523496704967327648395438467763982255265225 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow472 (rho : Nat -> F) : Prop :=
    (relationLc217 rho) * (relationLc218 rho) = ((1 : F) * rho 473)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 257, 5, 44⟩, ⟨(6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), 256, 5, 44⟩], residual := [((71602414665984260284321279220525448437816532714806476758995679188942823704 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 474) * ((1 : F) + (1 : F) * rho 473) = (relationLc219 rho)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), runs := [⟨(5591127919911936148301669060372646140553395998192005828700726987510335923070 : F), 256, 5, 44⟩, ⟨(6031670003909780982325098442265938109879467584581130216111139968951096576888 : F), 257, 5, 44⟩], residual := [((7428878532806775174158131155894163114944477458452568001406209860826617970898 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 475) * ((1 : F) + (-1 : F) * rho 473) = (relationLc220 rho)

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 44⟩], residual := [((1 : F), 474), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * (relationLc221 rho) = ((1 : F) * rho 476)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 44⟩], residual := [((1 : F), 475), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * (relationLc222 rho) = ((1 : F) * rho 477)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1971851832335678008122963964257464482273943743281012573309109172950046803432 : F), 256, 5, 45⟩], residual := [((4458658022404426310591096814393615713405161516003240642232664938122910999835 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 257, 5, 45⟩], residual := [((3924399849183403800635904052424757915833669252134527332175691182188838126604 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow477 (rho : Nat -> F) : Prop :=
    (relationLc223 rho) * (relationLc224 rho) = ((1 : F) * rho 478)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 257, 5, 45⟩, ⟨(8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), 256, 5, 45⟩], residual := [((2265494976247936205239276804221565256474556692198906453939578634066753327865 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 479) * ((1 : F) + (1 : F) * rho 478) = (relationLc225 rho)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), runs := [⟨(5295429543189611642323085798747987418252628832516403932838817415870149721893 : F), 256, 5, 45⟩, ⟨(8115274515201223111420874465821611070859486830087894175792549431215223127355 : F), 257, 5, 45⟩], residual := [((6558436434314105277867274208453340390424657597047880838203572116993711254360 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 480) * ((1 : F) + (-1 : F) * rho 478) = (relationLc226 rho)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 45⟩], residual := [((1 : F), 479), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * (relationLc227 rho) = ((1 : F) * rho 481)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 45⟩], residual := [((1 : F), 480), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * (relationLc228 rho) = ((1 : F) * rho 482)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3714855261533166382040088455134618451429590638829032915074360568190070575219 : F), 256, 5, 46⟩], residual := [((6428693841809995416207046926203669269885730368447761649130921761657402840377 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), runs := [⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 257, 5, 46⟩], residual := [((7072166311046371974940295729410239865239300401239924761117325870390291740566 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow482 (rho : Nat -> F) : Prop :=
    (relationLc229 rho) * (relationLc230 rho) = ((1 : F) * rho 483)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), runs := [⟨(3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), 256, 5, 46⟩, ⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 257, 5, 46⟩], residual := [((6244103932450405069748076609949162192101678298567859486291892763920310561766 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 484) * ((1 : F) + (1 : F) * rho 483) = (relationLc231 rho)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), runs := [⟨(3260495615721619689194362782877993337979387029271257019625142856725550891525 : F), 257, 5, 46⟩, ⟨(7737473502847796137662188758983025773166559853165714458430886678788360801100 : F), 256, 5, 46⟩], residual := [((5886078833584473605719416950822767817067481112901899389994814173454995030912 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 485) * ((1 : F) + (-1 : F) * rho 483) = (relationLc232 rho)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 46⟩], residual := [((1 : F), 484), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * (relationLc233 rho) = ((1 : F) * rho 486)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 46⟩], residual := [((1 : F), 485), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * (relationLc234 rho) = ((1 : F) * rho 487)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2007142405865741212583418405001667830225331770762763980966094406287848002234 : F), 256, 5, 47⟩], residual := [((3511421809349194497240159582276503343772566217816153827660309415506614430722 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 257, 5, 47⟩], residual := [((6068222480634586193480125141746175465742028006835934070153620006128481423330 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow487 (rho : Nat -> F) : Prop :=
    (relationLc235 rho) * (relationLc236 rho) = ((1 : F) * rho 488)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), runs := [⟨(3553871732159176106131237839496950048487401019092119754128431311280642137912 : F), 257, 5, 47⟩, ⟨(763768685865544808683387165406277348856618950767236739161630197905243485687 : F), 256, 5, 47⟩], residual := [((780764616315113287759656216028727755043772801310057668754811204678553695480 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 489) * ((1 : F) + (1 : F) * rho 488) = (relationLc237 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
