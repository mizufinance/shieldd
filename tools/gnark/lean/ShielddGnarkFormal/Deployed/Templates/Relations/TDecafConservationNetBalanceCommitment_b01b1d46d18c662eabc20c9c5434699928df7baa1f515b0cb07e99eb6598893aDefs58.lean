import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs57

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1338) * (relationLc995 rho) = ((1 : F) * rho 2373)

def relationLc996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 26⟩], residual := [((1 : F), 2372), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1338) * (relationLc996 rho) = ((1 : F) * rho 2374)

def relationLc997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 27⟩, ⟨(1 : F), 2166, 8, 27⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc997 rho) = ((1 : F) * rho 2375)

def relationLc998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3427246152066830642651633155480150319949091894012217168241442214195913275978 : F), 1417, 5, 149⟩, ⟨(3427246152066830642651633155480150319949091894012217168241442214195913275978 : F), 2165, 8, 27⟩], residual := [((2826500319246157779873389090194830972712374672212742612497212842223396009465 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3636053712089879338690869825299855140209253247089434682864164838528816194568 : F), runs := [⟨(3636053712089879338690869825299855140209253247089434682864164838528816194568 : F), 1418, 5, 149⟩, ⟨(3636053712089879338690869825299855140209253247089434682864164838528816194568 : F), 2166, 8, 27⟩], residual := [((5128864072279759294272138083283133430709790815935273100211408962448730416752 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2376 (rho : Nat -> F) : Prop :=
    (relationLc998 rho) * (relationLc999 rho) = ((1 : F) * rho 2376)

def relationLc1000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3636053712089879338690869825299855140209253247089434682864164838528816194568 : F), runs := [⟨(3636053712089879338690869825299855140209253247089434682864164838528816194568 : F), 1418, 5, 149⟩, ⟨(3636053712089879338690869825299855140209253247089434682864164838528816194568 : F), 2166, 8, 27⟩, ⟨(7618201096770730300139258388392980618443983707444169529391510297778595196843 : F), 1417, 5, 149⟩, ⟨(7618201096770730300139258388392980618443983707444169529391510297778595196843 : F), 2165, 8, 27⟩], residual := [((4716102126369083139022567510012867275241098089377646915530204944364138172009 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1000 rho) = ((1 : F) * rho 2377)

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2378) * ((1 : F) + (1 : F) * rho 2376) = ((1 : F) * rho 2377)

def relationLc1001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4808408037338491085557955113481691391166646088064629145071068617388593044473 : F), runs := [⟨(4808408037338491085557955113481691391166646088064629145071068617388593044473 : F), 1418, 5, 149⟩, ⟨(4808408037338491085557955113481691391166646088064629145071068617388593044473 : F), 2166, 8, 27⟩, ⟨(826260652657640124109566550388565912931915627709894298543723158138814042198 : F), 1417, 5, 149⟩, ⟨(826260652657640124109566550388565912931915627709894298543723158138814042198 : F), 2165, 8, 27⟩], residual := [((3728359623059287285226257428768679256134801245776416912405028511553271067032 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1001 rho) = ((1 : F) * rho 2379)

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2380) * ((1 : F) + (-1 : F) * rho 2376) = ((2809793059432239214581303274911289227277337619379540384320441680390002152370 : F) * rho 2375 + (1 : F) * rho 2379)

def relationLc1002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 27⟩], residual := [((1 : F), 2378), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1339) * (relationLc1002 rho) = ((1 : F) * rho 2381)

def relationLc1003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 27⟩], residual := [((1 : F), 2380), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1339) * (relationLc1003 rho) = ((1 : F) * rho 2382)

def relationLc1004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 28⟩, ⟨(1 : F), 2166, 8, 28⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1004 rho) = ((1 : F) * rho 2383)

def relationLc1005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2005404213375380235131062636073370246919867125121168227416183880132590237138 : F), 1417, 5, 149⟩, ⟨(2005404213375380235131062636073370246919867125121168227416183880132590237138 : F), 2165, 8, 28⟩], residual := [((4784214778175042884149442557764463818562024273545516578202392105623304844875 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3208908907049162934313763394970265570586756908930088916345667543871796142882 : F), runs := [⟨(3208908907049162934313763394970265570586756908930088916345667543871796142882 : F), 1418, 5, 149⟩, ⟨(3208908907049162934313763394970265570586756908930088916345667543871796142882 : F), 2166, 8, 28⟩], residual := [((1376415166243034028495377564207046757430797731801850254468886873759465321306 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2384 (rho : Nat -> F) : Prop :=
    (relationLc1005 rho) * (relationLc1006 rho) = ((1 : F) * rho 2384)

def relationLc1007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3208908907049162934313763394970265570586756908930088916345667543871796142882 : F), runs := [⟨(3208908907049162934313763394970265570586756908930088916345667543871796142882 : F), 1418, 5, 149⟩, ⟨(3208908907049162934313763394970265570586756908930088916345667543871796142882 : F), 2166, 8, 28⟩, ⟨(4573699048751469511521419616842993543719924256682280566279198317696462795534 : F), 1417, 5, 149⟩, ⟨(4573699048751469511521419616842993543719924256682280566279198317696462795534 : F), 2165, 8, 28⟩], residual := [((1920278057394069746862945085121109813010237154275678092667376672684854496155 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1007 rho) = ((1 : F) * rho 2385)

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2386) * ((1 : F) + (1 : F) * rho 2384) = ((1 : F) * rho 2385)

def relationLc1008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5235552842379207489935061543811280960789142426223974911589565912045613096159 : F), runs := [⟨(3870762700676900912727405321938552987655975078471783261656035138220946443507 : F), 1417, 5, 149⟩, ⟨(3870762700676900912727405321938552987655975078471783261656035138220946443507 : F), 2165, 8, 28⟩, ⟨(5235552842379207489935061543811280960789142426223974911589565912045613096159 : F), 1418, 5, 149⟩, ⟨(5235552842379207489935061543811280960789142426223974911589565912045613096159 : F), 2166, 8, 28⟩], residual := [((6524183692034300677385879853660436718365662180878385735267856783232554742886 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1008 rho) = ((1 : F) * rho 2387)

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2388) * ((1 : F) + (-1 : F) * rho 2384) = ((7782607955800632445835183011813259114306681165612369482624865861568258938416 : F) * rho 2383 + (1 : F) * rho 2387)

def relationLc1009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 28⟩], residual := [((1 : F), 2386), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1340) * (relationLc1009 rho) = ((1 : F) * rho 2389)

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 28⟩], residual := [((1 : F), 2388), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1340) * (relationLc1010 rho) = ((1 : F) * rho 2390)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 29⟩, ⟨(1 : F), 2166, 8, 29⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1011 rho) = ((1 : F) * rho 2391)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4108357388061236572813112521456755833627089174705441165679412082848428423135 : F), 1417, 5, 149⟩, ⟨(4108357388061236572813112521456755833627089174705441165679412082848428423135 : F), 2165, 8, 29⟩], residual := [((4123372059699344288277837313666126440828906553166339005009536672862144757468 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), runs := [⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 1418, 5, 149⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 2166, 8, 29⟩], residual := [((5807655721081984382075658649034336050204781834756902235012964053436416760975 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2392 (rho : Nat -> F) : Prop :=
    (relationLc1012 rho) * (relationLc1013 rho) = ((1 : F) * rho 2392)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), runs := [⟨(1614221379281109225873679279112349918714836479827408232335090736890828718752 : F), 1417, 5, 149⟩, ⟨(1614221379281109225873679279112349918714836479827408232335090736890828718752 : F), 2165, 8, 29⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 1418, 5, 149⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 2166, 8, 29⟩], residual := [((6122089050441692039078024167226060425562256059215830234924832866324735853835 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1014 rho) = ((1 : F) * rho 2393)

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2394) * ((1 : F) + (1 : F) * rho 2392) = ((1 : F) * rho 2393)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), runs := [⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 1418, 5, 149⟩, ⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 2166, 8, 29⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 1417, 5, 149⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 2165, 8, 29⟩], residual := [((2322372698986678385170800771555486105813643275938233593010400589592673385206 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1015 rho) = ((1 : F) * rho 2395)

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2396) * ((1 : F) + (-1 : F) * rho 2392) = ((6409374326668287048524850472784877527334496763268196648541433676811571450528 : F) * rho 2391 + (1 : F) * rho 2395)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 29⟩], residual := [((1 : F), 2394), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1341) * (relationLc1016 rho) = ((1 : F) * rho 2397)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 29⟩], residual := [((1 : F), 2396), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1341) * (relationLc1017 rho) = ((1 : F) * rho 2398)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 30⟩, ⟨(1 : F), 2166, 8, 30⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1018 rho) = ((1 : F) * rho 2399)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 1417, 5, 149⟩, ⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 2165, 8, 30⟩], residual := [((1747355640068679147516328884857115463749624824253420006611042383112582562104 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 1418, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 2166, 8, 30⟩], residual := [((7305892694301029992493071465213924921567977686636080727368555182846421408795 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2400 (rho : Nat -> F) : Prop :=
    (relationLc1019 rho) * (relationLc1020 rho) = ((1 : F) * rho 2400)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
