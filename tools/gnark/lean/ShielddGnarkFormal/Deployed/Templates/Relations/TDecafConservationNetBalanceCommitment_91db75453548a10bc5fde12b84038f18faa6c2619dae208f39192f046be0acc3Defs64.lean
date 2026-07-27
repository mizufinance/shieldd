import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs63

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1359) * (relationLc1142 rho) = ((1 : F) * rho 2541)

def relationLc1143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 47⟩], residual := [((1 : F), 2540), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1359) * (relationLc1143 rho) = ((1 : F) * rho 2542)

def relationLc1144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 48⟩, ⟨(1 : F), 2166, 8, 48⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1144 rho) = ((1 : F) * rho 2543)

def relationLc1145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8436572706276275314380493294944270256704509001530835535945046916979407143175 : F), 1417, 5, 149⟩, ⟨(8436572706276275314380493294944270256704509001530835535945046916979407143175 : F), 2165, 8, 48⟩], residual := [((1602782074949261827795561264723734697894838837521197630438188003049246203409 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189785845959812492681481939094349700657637573249984492101068248967037471045 : F), runs := [⟨(1189785845959812492681481939094349700657637573249984492101068248967037471045 : F), 1418, 5, 149⟩, ⟨(1189785845959812492681481939094349700657637573249984492101068248967037471045 : F), 2166, 8, 48⟩], residual := [((6751606183813397713597296114152273309656750207528415013862084614103750643323 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2544 (rho : Nat -> F) : Prop :=
    (relationLc1145 rho) * (relationLc1146 rho) = ((1 : F) * rho 2544)

def relationLc1147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189785845959812492681481939094349700657637573249984492101068248967037471045 : F), runs := [⟨(1189785845959812492681481939094349700657637573249984492101068248967037471045 : F), 1418, 5, 149⟩, ⟨(1189785845959812492681481939094349700657637573249984492101068248967037471045 : F), 2166, 8, 48⟩, ⟨(313065814926456601259847752896291272836620104337514703885056590706326326606 : F), 1417, 5, 149⟩, ⟨(313065814926456601259847752896291272836620104337514703885056590706326326606 : F), 2165, 8, 48⟩], residual := [((1360092137943693216229474947106632950727185500916475945190576124046937278243 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1147 rho) = ((1 : F) * rho 2545)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2546) * ((1 : F) + (1 : F) * rho 2544) = ((1 : F) * rho 2545)

def relationLc1148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7254675903468557931567342999687196830718261761904079335834165206950371767996 : F), runs := [⟨(7254675903468557931567342999687196830718261761904079335834165206950371767996 : F), 1418, 5, 149⟩, ⟨(7254675903468557931567342999687196830718261761904079335834165206950371767996 : F), 2166, 8, 48⟩, ⟨(8131395934501913822988977185885255258539279230816549124050176865211082912435 : F), 1417, 5, 149⟩, ⟨(8131395934501913822988977185885255258539279230816549124050176865211082912435 : F), 2165, 8, 48⟩], residual := [((7084369611484677208019349991674913580648713834237587882744657331870471960798 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1148 rho) = ((1 : F) * rho 2547)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2548) * ((1 : F) + (-1 : F) * rho 2544) = ((1502851660886269093941329691990640973494257677587499195986124839673363797651 : F) * rho 2543 + (1 : F) * rho 2547)

def relationLc1149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 48⟩], residual := [((1 : F), 2546), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1360) * (relationLc1149 rho) = ((1 : F) * rho 2549)

def relationLc1150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 48⟩], residual := [((1 : F), 2548), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1360) * (relationLc1150 rho) = ((1 : F) * rho 2550)

def relationLc1151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 49⟩, ⟨(1 : F), 2166, 8, 49⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1151 rho) = ((1 : F) * rho 2551)

def relationLc1152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8226744364247675495825082831103556151548859404841517754312782244706255110239 : F), 1417, 5, 149⟩, ⟨(8226744364247675495825082831103556151548859404841517754312782244706255110239 : F), 2165, 8, 49⟩], residual := [((4248897056721397889874420512898227115066472860817192579095222727956920142414 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3551123497965750934797699834002404728361160069706598447696579925198710334471 : F), runs := [⟨(3551123497965750934797699834002404728361160069706598447696579925198710334471 : F), 1418, 5, 149⟩, ⟨(3551123497965750934797699834002404728361160069706598447696579925198710334471 : F), 2166, 8, 49⟩], residual := [((560917769939457241020240338036935902182861430632256579106756322648974055852 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2552 (rho : Nat -> F) : Prop :=
    (relationLc1152 rho) * (relationLc1153 rho) = ((1 : F) * rho 2552)

def relationLc1154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3551123497965750934797699834002404728361160069706598447696579925198710334471 : F), runs := [⟨(3002030520192283727479249997399438260283975122815343265517649215638558877392 : F), 1417, 5, 149⟩, ⟨(3002030520192283727479249997399438260283975122815343265517649215638558877392 : F), 2165, 8, 49⟩, ⟨(3551123497965750934797699834002404728361160069706598447696579925198710334471 : F), 1418, 5, 149⟩, ⟨(3551123497965750934797699834002404728361160069706598447696579925198710334471 : F), 2166, 8, 49⟩], residual := [((394608995391631743646835811120684804941058223995902180862129118204390264326 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1154 rho) = ((1 : F) * rho 2553)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2554) * ((1 : F) + (1 : F) * rho 2552) = ((1 : F) * rho 2553)

def relationLc1155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4893338251462619489451125104779141803014739265447465380238653530718698904570 : F), runs := [⟨(4893338251462619489451125104779141803014739265447465380238653530718698904570 : F), 1418, 5, 149⟩, ⟨(4893338251462619489451125104779141803014739265447465380238653530718698904570 : F), 2166, 8, 49⟩, ⟨(5442431229236086696769574941382108271091924212338720562417584240278850361649 : F), 1417, 5, 149⟩, ⟨(5442431229236086696769574941382108271091924212338720562417584240278850361649 : F), 2165, 8, 49⟩], residual := [((8049852754036738680601989127660861726434841111158161647073104337713018974715 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1155 rho) = ((1 : F) * rho 2555)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2556) * ((1 : F) + (-1 : F) * rho 2552) = ((6553154018158034662276949831401842988645135192521941713214229140837269211863 : F) * rho 2551 + (1 : F) * rho 2555)

def relationLc1156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 49⟩], residual := [((1 : F), 2554), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1361) * (relationLc1156 rho) = ((1 : F) * rho 2557)

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 49⟩], residual := [((1 : F), 2556), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1361) * (relationLc1157 rho) = ((1 : F) * rho 2558)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 50⟩, ⟨(1 : F), 2166, 8, 50⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1158 rho) = ((1 : F) * rho 2559)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7294741384406122612791044117814251732765985977416739593294040271150085610129 : F), 1417, 5, 149⟩, ⟨(7294741384406122612791044117814251732765985977416739593294040271150085610129 : F), 2165, 8, 50⟩], residual := [((8280214252583025169891409716798129779029250702630506565416096652795038393465 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (237407082182476649271201308514110417937957700889391563201001451196613456842 : F), runs := [⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 1418, 5, 149⟩, ⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 2166, 8, 50⟩], residual := [((4440596737623467634352615922521817381278024270263026038921952693420240567282 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2560 (rho : Nat -> F) : Prop :=
    (relationLc1159 rho) * (relationLc1160 rho) = ((1 : F) * rho 2560)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (237407082182476649271201308514110417937957700889391563201001451196613456842 : F), runs := [⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 1418, 5, 149⟩, ⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 2166, 8, 50⟩, ⟨(961186733346023561115570340324357733199172280018292165698470412330626102152 : F), 1417, 5, 149⟩, ⟨(961186733346023561115570340324357733199172280018292165698470412330626102152 : F), 2165, 8, 50⟩], residual := [((429353156714312750522287818459088917432687562358820428081310804626925562691 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1161 rho) = ((1 : F) * rho 2561)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2562) * ((1 : F) + (1 : F) * rho 2560) = ((1 : F) * rho 2561)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), runs := [⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 1417, 5, 149⟩, ⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 2165, 8, 50⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 1418, 5, 149⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 2166, 8, 50⟩], residual := [((8015108592714057673726537120322457613943211772795243399853922651290483676350 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1162 rho) = ((1 : F) * rho 2563)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2564) * ((1 : F) + (-1 : F) * rho 2560) = ((1198593815528500210386771648838468151137129980907683728899471863527239558994 : F) * rho 2559 + (1 : F) * rho 2563)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 50⟩], residual := [((1 : F), 2562), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1362) * (relationLc1163 rho) = ((1 : F) * rho 2565)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 50⟩], residual := [((1 : F), 2564), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1362) * (relationLc1164 rho) = ((1 : F) * rho 2566)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 51⟩, ⟨(1 : F), 2166, 8, 51⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1165 rho) = ((1 : F) * rho 2567)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 1417, 5, 149⟩, ⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 2165, 8, 51⟩], residual := [((5568233743258565406855880537247248386639754788323356025239016120687784694847 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 1418, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 2166, 8, 51⟩], residual := [((7604009220590200803672988464630369465922061573662031730530357480128314349007 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2568 (rho : Nat -> F) : Prop :=
    (relationLc1166 rho) * (relationLc1167 rho) = ((1 : F) * rho 2568)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
