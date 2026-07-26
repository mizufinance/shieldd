import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs55

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1331) * (relationLc946 rho) = ((1 : F) * rho 2317)

def relationLc947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 19⟩], residual := [((1 : F), 2316), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1331) * (relationLc947 rho) = ((1 : F) * rho 2318)

def relationLc948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 20⟩, ⟨(1 : F), 2166, 8, 20⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc948 rho) = ((1 : F) * rho 2319)

def relationLc949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2711085072445282795087457743897524825526859287267865861923990182475486671273 : F), 1417, 5, 149⟩, ⟨(2711085072445282795087457743897524825526859287267865861923990182475486671273 : F), 2165, 8, 20⟩], residual := [((2815337370501420512367345064868368945741396836244984675210978293144578630164 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (14615198357844142493633676529185613307937073000081044855882952481351169849 : F), runs := [⟨(14615198357844142493633676529185613307937073000081044855882952481351169849 : F), 1418, 5, 149⟩, ⟨(14615198357844142493633676529185613307937073000081044855882952481351169849 : F), 2166, 8, 20⟩], residual := [((8337230938626305099367911797941917241220481641091522792192706609686119681774 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2320 (rho : Nat -> F) : Prop :=
    (relationLc949 rho) * (relationLc950 rho) = ((1 : F) * rho 2320)

def relationLc951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (14615198357844142493633676529185613307937073000081044855882952481351169849 : F), runs := [⟨(14615198357844142493633676529185613307937073000081044855882952481351169849 : F), 1418, 5, 149⟩, ⟨(14615198357844142493633676529185613307937073000081044855882952481351169849 : F), 2166, 8, 20⟩, ⟨(4453736726882436070381815817683846788913384475401420570593429621138334460266 : F), 1417, 5, 149⟩, ⟨(4453736726882436070381815817683846788913384475401420570593429621138334460266 : F), 2165, 8, 20⟩], residual := [((1542900857365177300348869732032261084706390318045086452889382692757262587607 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc951 rho) = ((1 : F) * rho 2321)

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2322) * ((1 : F) + (1 : F) * rho 2320) = ((1 : F) * rho 2321)

def relationLc952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8429846551070526281755191262252360918067962262153982783079350503436058069192 : F), runs := [⟨(3990725022545934353867009121097699742462514859752643257341803834779074778775 : F), 1417, 5, 149⟩, ⟨(3990725022545934353867009121097699742462514859752643257341803834779074778775 : F), 2165, 8, 20⟩, ⟨(8429846551070526281755191262252360918067962262153982783079350503436058069192 : F), 1418, 5, 149⟩, ⟨(8429846551070526281755191262252360918067962262153982783079350503436058069192 : F), 2166, 8, 20⟩], residual := [((6901560892063193123899955206749285446669509017108977375045850763160146651434 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc952 rho) = ((1 : F) * rho 2323)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2324) * ((1 : F) + (-1 : F) * rho 2320) = ((4468351925240280212875449494213032402221321548401501615449312573619685630115 : F) * rho 2319 + (1 : F) * rho 2323)

def relationLc953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 20⟩], residual := [((1 : F), 2322), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1332) * (relationLc953 rho) = ((1 : F) * rho 2325)

def relationLc954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 20⟩], residual := [((1 : F), 2324), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1332) * (relationLc954 rho) = ((1 : F) * rho 2326)

def relationLc955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 21⟩, ⟨(1 : F), 2166, 8, 21⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc955 rho) = ((1 : F) * rho 2327)

def relationLc956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1686004396913441460072685296709927726913449622447854640167601256082561526691 : F), 1417, 5, 149⟩, ⟨(1686004396913441460072685296709927726913449622447854640167601256082561526691 : F), 2165, 8, 21⟩], residual := [((4104337676065758380785832857057132723398202689245960146757014008748361465404 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4539074155643860541030658495777936422967191037167360927204655615187737478918 : F), runs := [⟨(4539074155643860541030658495777936422967191037167360927204655615187737478918 : F), 1418, 5, 149⟩, ⟨(4539074155643860541030658495777936422967191037167360927204655615187737478918 : F), 2166, 8, 21⟩], residual := [((1217750448352328848459051523113928039998561399160614947061724317152803199570 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2328 (rho : Nat -> F) : Prop :=
    (relationLc956 rho) * (relationLc957 rho) = ((1 : F) * rho 2328)

def relationLc958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4539074155643860541030658495777936422967191037167360927204655615187737478918 : F), runs := [⟨(4539074155643860541030658495777936422967191037167360927204655615187737478918 : F), 1418, 5, 149⟩, ⟨(4539074155643860541030658495777936422967191037167360927204655615187737478918 : F), 2166, 8, 21⟩, ⟨(6105392408192146457470872675139227921963547698642477078732445372055512856535 : F), 1417, 5, 149⟩, ⟨(6105392408192146457470872675139227921963547698642477078732445372055512856535 : F), 2165, 8, 21⟩], residual := [((6901860039303650540242781060816656021134146156213729055747287584246097255987 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc958 rho) = ((1 : F) * rho 2329)

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2330) * ((1 : F) + (1 : F) * rho 2328) = ((1 : F) * rho 2329)

def relationLc959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3905387593784509883218166443003610108408708297986702900730577840729671760123 : F), runs := [⟨(2339069341236223966777952263642318609412351636511586749202788083861896382506 : F), 1417, 5, 149⟩, ⟨(2339069341236223966777952263642318609412351636511586749202788083861896382506 : F), 2165, 8, 21⟩, ⟨(3905387593784509883218166443003610108408708297986702900730577840729671760123 : F), 1418, 5, 149⟩, ⟨(3905387593784509883218166443003610108408708297986702900730577840729671760123 : F), 2166, 8, 21⟩], residual := [((1542601710124719884006043877964890510241753178940334772187945871671311983054 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc959 rho) = ((1 : F) * rho 2331)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2332) * ((1 : F) + (-1 : F) * rho 2328) = ((2200004814407636574252706232135617813554839400655774178001867531325841096412 : F) * rho 2327 + (1 : F) * rho 2331)

def relationLc960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 21⟩], residual := [((1 : F), 2330), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1333) * (relationLc960 rho) = ((1 : F) * rho 2333)

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 21⟩], residual := [((1 : F), 2332), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1333) * (relationLc961 rho) = ((1 : F) * rho 2334)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 22⟩, ⟨(1 : F), 2166, 8, 22⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc962 rho) = ((1 : F) * rho 2335)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4109344957650684209641652373467078246637936756406747145698087831051865324874 : F), 1417, 5, 149⟩, ⟨(4109344957650684209641652373467078246637936756406747145698087831051865324874 : F), 2165, 8, 22⟩], residual := [((8185075041605189891702230811232664311135334879558914454024211833472237572350 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), runs := [⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 1418, 5, 149⟩, ⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 2166, 8, 22⟩], residual := [((5633231909779173705243818096630389247657880760377004305002706642023381431345 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2336 (rho : Nat -> F) : Prop :=
    (relationLc963 rho) * (relationLc964 rho) = ((1 : F) * rho 2336)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), runs := [⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 1418, 5, 149⟩, ⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 2166, 8, 22⟩, ⟨(1368239371210898318989512428810871675633714899585151922875215904592739153663 : F), 1417, 5, 149⟩, ⟨(1368239371210898318989512428810871675633714899585151922875215904592739153663 : F), 2165, 8, 22⟩], residual := [((8294227672357123213139327778057891205833854147537240523082955310812169390266 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc965 rho) = ((1 : F) * rho 2337)

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2338) * ((1 : F) + (1 : F) * rho 2336) = ((1 : F) * rho 2337)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), runs := [⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 1417, 5, 149⟩, ⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 2165, 8, 22⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 1418, 5, 149⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 2166, 8, 22⟩], residual := [((150234077071247211109497160723655325542045187616823304852278145105239848775 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc966 rho) = ((1 : F) * rho 2339)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2340) * ((1 : F) + (-1 : F) * rho 2336) = ((2557966410468316092136476320616339769911641258366434575134271639927644982353 : F) * rho 2335 + (1 : F) * rho 2339)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 22⟩], residual := [((1 : F), 2338), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1334) * (relationLc967 rho) = ((1 : F) * rho 2341)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 22⟩], residual := [((1 : F), 2340), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1334) * (relationLc968 rho) = ((1 : F) * rho 2342)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 23⟩, ⟨(1 : F), 2166, 8, 23⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc969 rho) = ((1 : F) * rho 2343)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 1417, 5, 149⟩, ⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 2165, 8, 23⟩], residual := [((5261268698174490817639752183640085875124473451973826038092695836296690717596 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 1418, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 2166, 8, 23⟩], residual := [((3277399131366304628572171477952357502603016755363655206256944844257262755626 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2344 (rho : Nat -> F) : Prop :=
    (relationLc970 rho) * (relationLc971 rho) = ((1 : F) * rho 2344)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
