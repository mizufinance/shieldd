import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs14

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationRow5705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94199 + (1 : F) * rho 94200) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195) = ((1 : F) * rho 94201)

def relationRow5706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94200) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194) = ((1 : F) * rho 94202)

def relationRow5707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94199) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195) = ((1 : F) * rho 94203)

def relationRow5708 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94202) * ((1 : F) * rho 94203) = ((1 : F) * rho 94204)

def relationRow5709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94205) * ((1 : F) + (1 : F) * rho 94204) = ((1 : F) * rho 94202 + (1 : F) * rho 94203)

def relationRow5710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94206) * ((1 : F) + (-1 : F) * rho 94204) = ((1 : F) * rho 94201 + (-1 : F) * rho 94202 + (-1 : F) * rho 94203)

def relationRow5711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93920) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (1 : F) * rho 94205) = ((1 : F) * rho 94207)

def relationRow5712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93920) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (1 : F) * rho 94206) = ((1 : F) * rho 94208)

def relationRow5713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94199) * ((1 : F) * rho 94200) = ((1 : F) * rho 94209)

def relationRow5714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94199) * ((1 : F) * rho 94199) = ((1 : F) * rho 94210)

def relationRow5715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94200) * ((1 : F) * rho 94200) = ((1 : F) * rho 94211)

def relationRow5716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94212) * ((-1 : F) * rho 94210 + (1 : F) * rho 94211) = ((2 : F) * rho 94209)

def relationRow5717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94213) * ((2 : F) + (1 : F) * rho 94210 + (-1 : F) * rho 94211) = ((1 : F) * rho 94210 + (1 : F) * rho 94211)

def relationRow5718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94212 + (1 : F) * rho 94213) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208) = ((1 : F) * rho 94214)

def relationRow5719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94213) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207) = ((1 : F) * rho 94215)

def relationRow5720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94212) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208) = ((1 : F) * rho 94216)

def relationRow5721 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94215) * ((1 : F) * rho 94216) = ((1 : F) * rho 94217)

def relationRow5722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94218) * ((1 : F) + (1 : F) * rho 94217) = ((1 : F) * rho 94215 + (1 : F) * rho 94216)

def relationRow5723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94219) * ((1 : F) + (-1 : F) * rho 94217) = ((1 : F) * rho 94214 + (-1 : F) * rho 94215 + (-1 : F) * rho 94216)

def relationRow5724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93921) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (1 : F) * rho 94218) = ((1 : F) * rho 94220)

def relationRow5725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93921) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (1 : F) * rho 94219) = ((1 : F) * rho 94221)

def relationRow5726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94212) * ((1 : F) * rho 94213) = ((1 : F) * rho 94222)

def relationRow5727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94212) * ((1 : F) * rho 94212) = ((1 : F) * rho 94223)

def relationRow5728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94213) * ((1 : F) * rho 94213) = ((1 : F) * rho 94224)

def relationRow5729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94225) * ((-1 : F) * rho 94223 + (1 : F) * rho 94224) = ((2 : F) * rho 94222)

def relationRow5730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94226) * ((2 : F) + (1 : F) * rho 94223 + (-1 : F) * rho 94224) = ((1 : F) * rho 94223 + (1 : F) * rho 94224)

def relationRow5731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94225 + (1 : F) * rho 94226) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221) = ((1 : F) * rho 94227)

def relationRow5732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94226) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220) = ((1 : F) * rho 94228)

def relationRow5733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94225) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221) = ((1 : F) * rho 94229)

def relationRow5734 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94228) * ((1 : F) * rho 94229) = ((1 : F) * rho 94230)

def relationRow5735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94231) * ((1 : F) + (1 : F) * rho 94230) = ((1 : F) * rho 94228 + (1 : F) * rho 94229)

def relationRow5736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94232) * ((1 : F) + (-1 : F) * rho 94230) = ((1 : F) * rho 94227 + (-1 : F) * rho 94228 + (-1 : F) * rho 94229)

def relationRow5737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93922) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (1 : F) * rho 94231) = ((1 : F) * rho 94233)

def relationRow5738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93922) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (1 : F) * rho 94232) = ((1 : F) * rho 94234)

def relationRow5739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94225) * ((1 : F) * rho 94226) = ((1 : F) * rho 94235)

def relationRow5740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94225) * ((1 : F) * rho 94225) = ((1 : F) * rho 94236)

def relationRow5741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94226) * ((1 : F) * rho 94226) = ((1 : F) * rho 94237)

def relationRow5742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94238) * ((-1 : F) * rho 94236 + (1 : F) * rho 94237) = ((2 : F) * rho 94235)

def relationRow5743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94239) * ((2 : F) + (1 : F) * rho 94236 + (-1 : F) * rho 94237) = ((1 : F) * rho 94236 + (1 : F) * rho 94237)

def relationRow5744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94238 + (1 : F) * rho 94239) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234) = ((1 : F) * rho 94240)

def relationRow5745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94239) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233) = ((1 : F) * rho 94241)

def relationRow5746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94238) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234) = ((1 : F) * rho 94242)

def relationRow5747 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94241) * ((1 : F) * rho 94242) = ((1 : F) * rho 94243)

def relationRow5748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94244) * ((1 : F) + (1 : F) * rho 94243) = ((1 : F) * rho 94241 + (1 : F) * rho 94242)

def relationRow5749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94245) * ((1 : F) + (-1 : F) * rho 94243) = ((1 : F) * rho 94240 + (-1 : F) * rho 94241 + (-1 : F) * rho 94242)

def relationRow5750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93923) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (1 : F) * rho 94244) = ((1 : F) * rho 94246)

def relationRow5751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93923) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (1 : F) * rho 94245) = ((1 : F) * rho 94247)

def relationRow5752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94238) * ((1 : F) * rho 94239) = ((1 : F) * rho 94248)

def relationRow5753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94238) * ((1 : F) * rho 94238) = ((1 : F) * rho 94249)

def relationRow5754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94239) * ((1 : F) * rho 94239) = ((1 : F) * rho 94250)

def relationRow5755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94251) * ((-1 : F) * rho 94249 + (1 : F) * rho 94250) = ((2 : F) * rho 94248)

def relationRow5756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94252) * ((2 : F) + (1 : F) * rho 94249 + (-1 : F) * rho 94250) = ((1 : F) * rho 94249 + (1 : F) * rho 94250)

def relationRow5757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94251 + (1 : F) * rho 94252) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247) = ((1 : F) * rho 94253)

def relationRow5758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94252) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246) = ((1 : F) * rho 94254)

def relationRow5759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94251) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247) = ((1 : F) * rho 94255)

def relationRow5760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94254) * ((1 : F) * rho 94255) = ((1 : F) * rho 94256)

def relationRow5761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94257) * ((1 : F) + (1 : F) * rho 94256) = ((1 : F) * rho 94254 + (1 : F) * rho 94255)

def relationRow5762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94258) * ((1 : F) + (-1 : F) * rho 94256) = ((1 : F) * rho 94253 + (-1 : F) * rho 94254 + (-1 : F) * rho 94255)

def relationRow5763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93924) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (1 : F) * rho 94257) = ((1 : F) * rho 94259)

def relationRow5764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93924) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (1 : F) * rho 94258) = ((1 : F) * rho 94260)

def relationRow5765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94251) * ((1 : F) * rho 94252) = ((1 : F) * rho 94261)

def relationRow5766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94251) * ((1 : F) * rho 94251) = ((1 : F) * rho 94262)

def relationRow5767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94252) * ((1 : F) * rho 94252) = ((1 : F) * rho 94263)

def relationRow5768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94264) * ((-1 : F) * rho 94262 + (1 : F) * rho 94263) = ((2 : F) * rho 94261)

def relationRow5769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94265) * ((2 : F) + (1 : F) * rho 94262 + (-1 : F) * rho 94263) = ((1 : F) * rho 94262 + (1 : F) * rho 94263)

def relationRow5770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94264 + (1 : F) * rho 94265) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260) = ((1 : F) * rho 94266)

def relationRow5771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94265) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259) = ((1 : F) * rho 94267)

def relationRow5772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94264) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260) = ((1 : F) * rho 94268)

def relationRow5773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94267) * ((1 : F) * rho 94268) = ((1 : F) * rho 94269)

def relationRow5774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94270) * ((1 : F) + (1 : F) * rho 94269) = ((1 : F) * rho 94267 + (1 : F) * rho 94268)

def relationRow5775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94271) * ((1 : F) + (-1 : F) * rho 94269) = ((1 : F) * rho 94266 + (-1 : F) * rho 94267 + (-1 : F) * rho 94268)

def relationRow5776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93925) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (1 : F) * rho 94270) = ((1 : F) * rho 94272)

def relationRow5777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93925) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (1 : F) * rho 94271) = ((1 : F) * rho 94273)

def relationRow5778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94264) * ((1 : F) * rho 94265) = ((1 : F) * rho 94274)

def relationRow5779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94264) * ((1 : F) * rho 94264) = ((1 : F) * rho 94275)

def relationRow5780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94265) * ((1 : F) * rho 94265) = ((1 : F) * rho 94276)

def relationRow5781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94277) * ((-1 : F) * rho 94275 + (1 : F) * rho 94276) = ((2 : F) * rho 94274)

def relationRow5782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94278) * ((2 : F) + (1 : F) * rho 94275 + (-1 : F) * rho 94276) = ((1 : F) * rho 94275 + (1 : F) * rho 94276)

def relationRow5783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94277 + (1 : F) * rho 94278) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273) = ((1 : F) * rho 94279)

def relationRow5784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94278) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272) = ((1 : F) * rho 94280)

def relationRow5785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94277) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273) = ((1 : F) * rho 94281)

def relationRow5786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94280) * ((1 : F) * rho 94281) = ((1 : F) * rho 94282)

def relationRow5787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94283) * ((1 : F) + (1 : F) * rho 94282) = ((1 : F) * rho 94280 + (1 : F) * rho 94281)

def relationRow5788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94284) * ((1 : F) + (-1 : F) * rho 94282) = ((1 : F) * rho 94279 + (-1 : F) * rho 94280 + (-1 : F) * rho 94281)

def relationRow5789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93926) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (1 : F) * rho 94283) = ((1 : F) * rho 94285)

def relationRow5790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93926) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (1 : F) * rho 94284) = ((1 : F) * rho 94286)

def relationRow5791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94277) * ((1 : F) * rho 94278) = ((1 : F) * rho 94287)

def relationRow5792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94277) * ((1 : F) * rho 94277) = ((1 : F) * rho 94288)

def relationRow5793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94278) * ((1 : F) * rho 94278) = ((1 : F) * rho 94289)

def relationRow5794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94290) * ((-1 : F) * rho 94288 + (1 : F) * rho 94289) = ((2 : F) * rho 94287)

def relationRow5795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94291) * ((2 : F) + (1 : F) * rho 94288 + (-1 : F) * rho 94289) = ((1 : F) * rho 94288 + (1 : F) * rho 94289)

def relationRow5796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94290 + (1 : F) * rho 94291) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273 + (1 : F) * rho 94285 + (1 : F) * rho 94286) = ((1 : F) * rho 94292)

def relationRow5797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94291) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272 + (1 : F) * rho 94285) = ((1 : F) * rho 94293)

def relationRow5798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94290) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273 + (1 : F) * rho 94286) = ((1 : F) * rho 94294)

def relationRow5799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94293) * ((1 : F) * rho 94294) = ((1 : F) * rho 94295)

def relationRow5800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94296) * ((1 : F) + (1 : F) * rho 94295) = ((1 : F) * rho 94293 + (1 : F) * rho 94294)

def relationRow5801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94297) * ((1 : F) + (-1 : F) * rho 94295) = ((1 : F) * rho 94292 + (-1 : F) * rho 94293 + (-1 : F) * rho 94294)

def relationRow5802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93927) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (-1 : F) * rho 94285 + (1 : F) * rho 94296) = ((1 : F) * rho 94298)

def relationRow5803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93927) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (-1 : F) * rho 94286 + (1 : F) * rho 94297) = ((1 : F) * rho 94299)

def relationRow5804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94290) * ((1 : F) * rho 94291) = ((1 : F) * rho 94300)

def relationRow5805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94290) * ((1 : F) * rho 94290) = ((1 : F) * rho 94301)

def relationRow5806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94291) * ((1 : F) * rho 94291) = ((1 : F) * rho 94302)

def relationRow5807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94303) * ((-1 : F) * rho 94301 + (1 : F) * rho 94302) = ((2 : F) * rho 94300)

def relationRow5808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94304) * ((2 : F) + (1 : F) * rho 94301 + (-1 : F) * rho 94302) = ((1 : F) * rho 94301 + (1 : F) * rho 94302)

def relationRow5809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94303 + (1 : F) * rho 94304) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273 + (1 : F) * rho 94285 + (1 : F) * rho 94286 + (1 : F) * rho 94298 + (1 : F) * rho 94299) = ((1 : F) * rho 94305)

def relationRow5810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94304) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272 + (1 : F) * rho 94285 + (1 : F) * rho 94298) = ((1 : F) * rho 94306)

def relationRow5811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94303) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273 + (1 : F) * rho 94286 + (1 : F) * rho 94299) = ((1 : F) * rho 94307)

def relationRow5812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94306) * ((1 : F) * rho 94307) = ((1 : F) * rho 94308)

def relationRow5813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94309) * ((1 : F) + (1 : F) * rho 94308) = ((1 : F) * rho 94306 + (1 : F) * rho 94307)

def relationRow5814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94310) * ((1 : F) + (-1 : F) * rho 94308) = ((1 : F) * rho 94305 + (-1 : F) * rho 94306 + (-1 : F) * rho 94307)

def relationRow5815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93928) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (-1 : F) * rho 94285 + (-1 : F) * rho 94298 + (1 : F) * rho 94309) = ((1 : F) * rho 94311)

def relationRow5816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93928) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (-1 : F) * rho 94286 + (-1 : F) * rho 94299 + (1 : F) * rho 94310) = ((1 : F) * rho 94312)

def relationRow5817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94303) * ((1 : F) * rho 94304) = ((1 : F) * rho 94313)

def relationRow5818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94303) * ((1 : F) * rho 94303) = ((1 : F) * rho 94314)

def relationRow5819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94304) * ((1 : F) * rho 94304) = ((1 : F) * rho 94315)

def relationRow5820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94316) * ((-1 : F) * rho 94314 + (1 : F) * rho 94315) = ((2 : F) * rho 94313)

def relationRow5821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94317) * ((2 : F) + (1 : F) * rho 94314 + (-1 : F) * rho 94315) = ((1 : F) * rho 94314 + (1 : F) * rho 94315)

def relationRow5822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94316 + (1 : F) * rho 94317) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273 + (1 : F) * rho 94285 + (1 : F) * rho 94286 + (1 : F) * rho 94298 + (1 : F) * rho 94299 + (1 : F) * rho 94311 + (1 : F) * rho 94312) = ((1 : F) * rho 94318)

def relationRow5823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94317) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272 + (1 : F) * rho 94285 + (1 : F) * rho 94298 + (1 : F) * rho 94311) = ((1 : F) * rho 94319)

def relationRow5824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94316) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273 + (1 : F) * rho 94286 + (1 : F) * rho 94299 + (1 : F) * rho 94312) = ((1 : F) * rho 94320)

def relationRow5825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94319) * ((1 : F) * rho 94320) = ((1 : F) * rho 94321)

def relationRow5826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94322) * ((1 : F) + (1 : F) * rho 94321) = ((1 : F) * rho 94319 + (1 : F) * rho 94320)

def relationRow5827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94323) * ((1 : F) + (-1 : F) * rho 94321) = ((1 : F) * rho 94318 + (-1 : F) * rho 94319 + (-1 : F) * rho 94320)

def relationRow5828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93929) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (-1 : F) * rho 94285 + (-1 : F) * rho 94298 + (-1 : F) * rho 94311 + (1 : F) * rho 94322) = ((1 : F) * rho 94324)

def relationRow5829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93929) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (-1 : F) * rho 94286 + (-1 : F) * rho 94299 + (-1 : F) * rho 94312 + (1 : F) * rho 94323) = ((1 : F) * rho 94325)

def relationRow5830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94316) * ((1 : F) * rho 94317) = ((1 : F) * rho 94326)

def relationRow5831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94316) * ((1 : F) * rho 94316) = ((1 : F) * rho 94327)

def relationRow5832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94317) * ((1 : F) * rho 94317) = ((1 : F) * rho 94328)

def relationRow5833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94329) * ((-1 : F) * rho 94327 + (1 : F) * rho 94328) = ((2 : F) * rho 94326)

def relationRow5834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94330) * ((2 : F) + (1 : F) * rho 94327 + (-1 : F) * rho 94328) = ((1 : F) * rho 94327 + (1 : F) * rho 94328)

def relationRow5835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94329 + (1 : F) * rho 94330) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273 + (1 : F) * rho 94285 + (1 : F) * rho 94286 + (1 : F) * rho 94298 + (1 : F) * rho 94299 + (1 : F) * rho 94311 + (1 : F) * rho 94312 + (1 : F) * rho 94324 + (1 : F) * rho 94325) = ((1 : F) * rho 94331)

def relationRow5836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94330) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272 + (1 : F) * rho 94285 + (1 : F) * rho 94298 + (1 : F) * rho 94311 + (1 : F) * rho 94324) = ((1 : F) * rho 94332)

def relationRow5837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94329) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273 + (1 : F) * rho 94286 + (1 : F) * rho 94299 + (1 : F) * rho 94312 + (1 : F) * rho 94325) = ((1 : F) * rho 94333)

def relationRow5838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94332) * ((1 : F) * rho 94333) = ((1 : F) * rho 94334)

def relationRow5839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94335) * ((1 : F) + (1 : F) * rho 94334) = ((1 : F) * rho 94332 + (1 : F) * rho 94333)

def relationRow5840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94336) * ((1 : F) + (-1 : F) * rho 94334) = ((1 : F) * rho 94331 + (-1 : F) * rho 94332 + (-1 : F) * rho 94333)

def relationRow5841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93930) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (-1 : F) * rho 94285 + (-1 : F) * rho 94298 + (-1 : F) * rho 94311 + (-1 : F) * rho 94324 + (1 : F) * rho 94335) = ((1 : F) * rho 94337)

def relationRow5842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93930) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (-1 : F) * rho 94286 + (-1 : F) * rho 94299 + (-1 : F) * rho 94312 + (-1 : F) * rho 94325 + (1 : F) * rho 94336) = ((1 : F) * rho 94338)

def relationRow5843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94329) * ((1 : F) * rho 94330) = ((1 : F) * rho 94339)

def relationRow5844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94329) * ((1 : F) * rho 94329) = ((1 : F) * rho 94340)

def relationRow5845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94330) * ((1 : F) * rho 94330) = ((1 : F) * rho 94341)

def relationRow5846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94342) * ((-1 : F) * rho 94340 + (1 : F) * rho 94341) = ((2 : F) * rho 94339)

def relationRow5847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94343) * ((2 : F) + (1 : F) * rho 94340 + (-1 : F) * rho 94341) = ((1 : F) * rho 94340 + (1 : F) * rho 94341)

def relationRow5848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94342 + (1 : F) * rho 94343) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273 + (1 : F) * rho 94285 + (1 : F) * rho 94286 + (1 : F) * rho 94298 + (1 : F) * rho 94299 + (1 : F) * rho 94311 + (1 : F) * rho 94312 + (1 : F) * rho 94324 + (1 : F) * rho 94325 + (1 : F) * rho 94337 + (1 : F) * rho 94338) = ((1 : F) * rho 94344)

def relationRow5849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94343) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272 + (1 : F) * rho 94285 + (1 : F) * rho 94298 + (1 : F) * rho 94311 + (1 : F) * rho 94324 + (1 : F) * rho 94337) = ((1 : F) * rho 94345)

def relationRow5850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94342) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273 + (1 : F) * rho 94286 + (1 : F) * rho 94299 + (1 : F) * rho 94312 + (1 : F) * rho 94325 + (1 : F) * rho 94338) = ((1 : F) * rho 94346)

def relationRow5851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94345) * ((1 : F) * rho 94346) = ((1 : F) * rho 94347)

def relationRow5852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94348) * ((1 : F) + (1 : F) * rho 94347) = ((1 : F) * rho 94345 + (1 : F) * rho 94346)

def relationRow5853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94349) * ((1 : F) + (-1 : F) * rho 94347) = ((1 : F) * rho 94344 + (-1 : F) * rho 94345 + (-1 : F) * rho 94346)

def relationRow5854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93931) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (-1 : F) * rho 94285 + (-1 : F) * rho 94298 + (-1 : F) * rho 94311 + (-1 : F) * rho 94324 + (-1 : F) * rho 94337 + (1 : F) * rho 94348) = ((1 : F) * rho 94350)

def relationRow5855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93931) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (-1 : F) * rho 94286 + (-1 : F) * rho 94299 + (-1 : F) * rho 94312 + (-1 : F) * rho 94325 + (-1 : F) * rho 94338 + (1 : F) * rho 94349) = ((1 : F) * rho 94351)

def relationRow5856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94342) * ((1 : F) * rho 94343) = ((1 : F) * rho 94352)

def relationRow5857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94342) * ((1 : F) * rho 94342) = ((1 : F) * rho 94353)

def relationRow5858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94343) * ((1 : F) * rho 94343) = ((1 : F) * rho 94354)

def relationRow5859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94355) * ((-1 : F) * rho 94353 + (1 : F) * rho 94354) = ((2 : F) * rho 94352)

def relationRow5860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94356) * ((2 : F) + (1 : F) * rho 94353 + (-1 : F) * rho 94354) = ((1 : F) * rho 94353 + (1 : F) * rho 94354)

def relationRow5861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94355 + (1 : F) * rho 94356) * ((1 : F) + (1 : F) * rho 94168 + (1 : F) * rho 94169 + (1 : F) * rho 94181 + (1 : F) * rho 94182 + (1 : F) * rho 94194 + (1 : F) * rho 94195 + (1 : F) * rho 94207 + (1 : F) * rho 94208 + (1 : F) * rho 94220 + (1 : F) * rho 94221 + (1 : F) * rho 94233 + (1 : F) * rho 94234 + (1 : F) * rho 94246 + (1 : F) * rho 94247 + (1 : F) * rho 94259 + (1 : F) * rho 94260 + (1 : F) * rho 94272 + (1 : F) * rho 94273 + (1 : F) * rho 94285 + (1 : F) * rho 94286 + (1 : F) * rho 94298 + (1 : F) * rho 94299 + (1 : F) * rho 94311 + (1 : F) * rho 94312 + (1 : F) * rho 94324 + (1 : F) * rho 94325 + (1 : F) * rho 94337 + (1 : F) * rho 94338 + (1 : F) * rho 94350 + (1 : F) * rho 94351) = ((1 : F) * rho 94357)

def relationRow5862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94356) * ((1 : F) * rho 94168 + (1 : F) * rho 94181 + (1 : F) * rho 94194 + (1 : F) * rho 94207 + (1 : F) * rho 94220 + (1 : F) * rho 94233 + (1 : F) * rho 94246 + (1 : F) * rho 94259 + (1 : F) * rho 94272 + (1 : F) * rho 94285 + (1 : F) * rho 94298 + (1 : F) * rho 94311 + (1 : F) * rho 94324 + (1 : F) * rho 94337 + (1 : F) * rho 94350) = ((1 : F) * rho 94358)

def relationRow5863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94355) * ((1 : F) + (1 : F) * rho 94169 + (1 : F) * rho 94182 + (1 : F) * rho 94195 + (1 : F) * rho 94208 + (1 : F) * rho 94221 + (1 : F) * rho 94234 + (1 : F) * rho 94247 + (1 : F) * rho 94260 + (1 : F) * rho 94273 + (1 : F) * rho 94286 + (1 : F) * rho 94299 + (1 : F) * rho 94312 + (1 : F) * rho 94325 + (1 : F) * rho 94338 + (1 : F) * rho 94351) = ((1 : F) * rho 94359)

def relationRow5864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94358) * ((1 : F) * rho 94359) = ((1 : F) * rho 94360)

def relationRow5865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94361) * ((1 : F) + (1 : F) * rho 94360) = ((1 : F) * rho 94358 + (1 : F) * rho 94359)

def relationRow5866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94362) * ((1 : F) + (-1 : F) * rho 94360) = ((1 : F) * rho 94357 + (-1 : F) * rho 94358 + (-1 : F) * rho 94359)

def relationRow5867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93932) * ((-1 : F) * rho 94168 + (-1 : F) * rho 94181 + (-1 : F) * rho 94194 + (-1 : F) * rho 94207 + (-1 : F) * rho 94220 + (-1 : F) * rho 94233 + (-1 : F) * rho 94246 + (-1 : F) * rho 94259 + (-1 : F) * rho 94272 + (-1 : F) * rho 94285 + (-1 : F) * rho 94298 + (-1 : F) * rho 94311 + (-1 : F) * rho 94324 + (-1 : F) * rho 94337 + (-1 : F) * rho 94350 + (1 : F) * rho 94361) = ((1 : F) * rho 94363)

def relationRow5868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93932) * ((-1 : F) + (-1 : F) * rho 94169 + (-1 : F) * rho 94182 + (-1 : F) * rho 94195 + (-1 : F) * rho 94208 + (-1 : F) * rho 94221 + (-1 : F) * rho 94234 + (-1 : F) * rho 94247 + (-1 : F) * rho 94260 + (-1 : F) * rho 94273 + (-1 : F) * rho 94286 + (-1 : F) * rho 94299 + (-1 : F) * rho 94312 + (-1 : F) * rho 94325 + (-1 : F) * rho 94338 + (-1 : F) * rho 94351 + (1 : F) * rho 94362) = ((1 : F) * rho 94364)

def relationRow5869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94355) * ((1 : F) * rho 94356) = ((1 : F) * rho 94365)

def relationRow5870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94355) * ((1 : F) * rho 94355) = ((1 : F) * rho 94366)

def relationRow5871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94356) * ((1 : F) * rho 94356) = ((1 : F) * rho 94367)

def relationRow5872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94368) * ((-1 : F) * rho 94366 + (1 : F) * rho 94367) = ((2 : F) * rho 94365)

def relationRow5873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94369) * ((2 : F) + (1 : F) * rho 94366 + (-1 : F) * rho 94367) = ((1 : F) * rho 94366 + (1 : F) * rho 94367)

def relationLc2691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 16⟩, ⟨(1 : F), 94169, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94368 + (1 : F) * rho 94369) * (relationLc2691 rho) = ((1 : F) * rho 94370)

def relationLc2692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94369) * (relationLc2692 rho) = ((1 : F) * rho 94371)

def relationLc2693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94368) * (relationLc2693 rho) = ((1 : F) * rho 94372)

def relationRow5877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94371) * ((1 : F) * rho 94372) = ((1 : F) * rho 94373)

def relationRow5878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94374) * ((1 : F) + (1 : F) * rho 94373) = ((1 : F) * rho 94371 + (1 : F) * rho 94372)

def relationRow5879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94375) * ((1 : F) + (-1 : F) * rho 94373) = ((1 : F) * rho 94370 + (-1 : F) * rho 94371 + (-1 : F) * rho 94372)

def relationLc2694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 16⟩], residual := [((1 : F), 94374)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93933) * (relationLc2694 rho) = ((1 : F) * rho 94376)

def relationLc2695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 16⟩], residual := [((1 : F), 94375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93933) * (relationLc2695 rho) = ((1 : F) * rho 94377)

def relationRow5882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94368) * ((1 : F) * rho 94369) = ((1 : F) * rho 94378)

def relationRow5883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94368) * ((1 : F) * rho 94368) = ((1 : F) * rho 94379)

def relationRow5884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94369) * ((1 : F) * rho 94369) = ((1 : F) * rho 94380)

def relationRow5885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94381) * ((-1 : F) * rho 94379 + (1 : F) * rho 94380) = ((2 : F) * rho 94378)

def relationRow5886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94382) * ((2 : F) + (1 : F) * rho 94379 + (-1 : F) * rho 94380) = ((1 : F) * rho 94379 + (1 : F) * rho 94380)

def relationLc2696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 17⟩, ⟨(1 : F), 94169, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94381 + (1 : F) * rho 94382) * (relationLc2696 rho) = ((1 : F) * rho 94383)

def relationLc2697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94382) * (relationLc2697 rho) = ((1 : F) * rho 94384)

def relationLc2698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94381) * (relationLc2698 rho) = ((1 : F) * rho 94385)

def relationRow5890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94384) * ((1 : F) * rho 94385) = ((1 : F) * rho 94386)

def relationRow5891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94387) * ((1 : F) + (1 : F) * rho 94386) = ((1 : F) * rho 94384 + (1 : F) * rho 94385)

def relationRow5892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94388) * ((1 : F) + (-1 : F) * rho 94386) = ((1 : F) * rho 94383 + (-1 : F) * rho 94384 + (-1 : F) * rho 94385)

def relationLc2699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 17⟩], residual := [((1 : F), 94387)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93934) * (relationLc2699 rho) = ((1 : F) * rho 94389)

def relationLc2700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 17⟩], residual := [((1 : F), 94388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93934) * (relationLc2700 rho) = ((1 : F) * rho 94390)

def relationRow5895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94381) * ((1 : F) * rho 94382) = ((1 : F) * rho 94391)

def relationRow5896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94381) * ((1 : F) * rho 94381) = ((1 : F) * rho 94392)

def relationRow5897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94382) * ((1 : F) * rho 94382) = ((1 : F) * rho 94393)

def relationRow5898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94394) * ((-1 : F) * rho 94392 + (1 : F) * rho 94393) = ((2 : F) * rho 94391)

def relationRow5899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94395) * ((2 : F) + (1 : F) * rho 94392 + (-1 : F) * rho 94393) = ((1 : F) * rho 94392 + (1 : F) * rho 94393)

def relationLc2701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 18⟩, ⟨(1 : F), 94169, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94394 + (1 : F) * rho 94395) * (relationLc2701 rho) = ((1 : F) * rho 94396)

def relationLc2702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94395) * (relationLc2702 rho) = ((1 : F) * rho 94397)

def relationLc2703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94394) * (relationLc2703 rho) = ((1 : F) * rho 94398)

def relationRow5903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94397) * ((1 : F) * rho 94398) = ((1 : F) * rho 94399)

def relationRow5904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94400) * ((1 : F) + (1 : F) * rho 94399) = ((1 : F) * rho 94397 + (1 : F) * rho 94398)

def relationRow5905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94401) * ((1 : F) + (-1 : F) * rho 94399) = ((1 : F) * rho 94396 + (-1 : F) * rho 94397 + (-1 : F) * rho 94398)

def relationLc2704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 18⟩], residual := [((1 : F), 94400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93935) * (relationLc2704 rho) = ((1 : F) * rho 94402)

def relationLc2705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 18⟩], residual := [((1 : F), 94401)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93935) * (relationLc2705 rho) = ((1 : F) * rho 94403)

def relationRow5908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94394) * ((1 : F) * rho 94395) = ((1 : F) * rho 94404)

def relationRow5909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94394) * ((1 : F) * rho 94394) = ((1 : F) * rho 94405)

def relationRow5910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94395) * ((1 : F) * rho 94395) = ((1 : F) * rho 94406)

def relationRow5911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94407) * ((-1 : F) * rho 94405 + (1 : F) * rho 94406) = ((2 : F) * rho 94404)

def relationRow5912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94408) * ((2 : F) + (1 : F) * rho 94405 + (-1 : F) * rho 94406) = ((1 : F) * rho 94405 + (1 : F) * rho 94406)

def relationLc2706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 19⟩, ⟨(1 : F), 94169, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94407 + (1 : F) * rho 94408) * (relationLc2706 rho) = ((1 : F) * rho 94409)

def relationLc2707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94408) * (relationLc2707 rho) = ((1 : F) * rho 94410)

def relationLc2708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94407) * (relationLc2708 rho) = ((1 : F) * rho 94411)

def relationRow5916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94410) * ((1 : F) * rho 94411) = ((1 : F) * rho 94412)

def relationRow5917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94413) * ((1 : F) + (1 : F) * rho 94412) = ((1 : F) * rho 94410 + (1 : F) * rho 94411)

def relationRow5918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94414) * ((1 : F) + (-1 : F) * rho 94412) = ((1 : F) * rho 94409 + (-1 : F) * rho 94410 + (-1 : F) * rho 94411)

def relationLc2709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 19⟩], residual := [((1 : F), 94413)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93936) * (relationLc2709 rho) = ((1 : F) * rho 94415)

def relationLc2710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 19⟩], residual := [((1 : F), 94414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93936) * (relationLc2710 rho) = ((1 : F) * rho 94416)

def relationRow5921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94407) * ((1 : F) * rho 94408) = ((1 : F) * rho 94417)

def relationRow5922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94407) * ((1 : F) * rho 94407) = ((1 : F) * rho 94418)

def relationRow5923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94408) * ((1 : F) * rho 94408) = ((1 : F) * rho 94419)

def relationRow5924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94420) * ((-1 : F) * rho 94418 + (1 : F) * rho 94419) = ((2 : F) * rho 94417)

def relationRow5925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94421) * ((2 : F) + (1 : F) * rho 94418 + (-1 : F) * rho 94419) = ((1 : F) * rho 94418 + (1 : F) * rho 94419)

def relationLc2711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 20⟩, ⟨(1 : F), 94169, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94420 + (1 : F) * rho 94421) * (relationLc2711 rho) = ((1 : F) * rho 94422)

def relationLc2712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94421) * (relationLc2712 rho) = ((1 : F) * rho 94423)

def relationLc2713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94420) * (relationLc2713 rho) = ((1 : F) * rho 94424)

def relationRow5929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94423) * ((1 : F) * rho 94424) = ((1 : F) * rho 94425)

def relationRow5930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94426) * ((1 : F) + (1 : F) * rho 94425) = ((1 : F) * rho 94423 + (1 : F) * rho 94424)

def relationRow5931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94427) * ((1 : F) + (-1 : F) * rho 94425) = ((1 : F) * rho 94422 + (-1 : F) * rho 94423 + (-1 : F) * rho 94424)

def relationLc2714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 20⟩], residual := [((1 : F), 94426)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93937) * (relationLc2714 rho) = ((1 : F) * rho 94428)

def relationLc2715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 20⟩], residual := [((1 : F), 94427)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93937) * (relationLc2715 rho) = ((1 : F) * rho 94429)

def relationRow5934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94420) * ((1 : F) * rho 94421) = ((1 : F) * rho 94430)

def relationRow5935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94420) * ((1 : F) * rho 94420) = ((1 : F) * rho 94431)

def relationRow5936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94421) * ((1 : F) * rho 94421) = ((1 : F) * rho 94432)

def relationRow5937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94433) * ((-1 : F) * rho 94431 + (1 : F) * rho 94432) = ((2 : F) * rho 94430)

def relationRow5938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94434) * ((2 : F) + (1 : F) * rho 94431 + (-1 : F) * rho 94432) = ((1 : F) * rho 94431 + (1 : F) * rho 94432)

def relationLc2716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 21⟩, ⟨(1 : F), 94169, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94433 + (1 : F) * rho 94434) * (relationLc2716 rho) = ((1 : F) * rho 94435)

def relationLc2717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94434) * (relationLc2717 rho) = ((1 : F) * rho 94436)

def relationLc2718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94433) * (relationLc2718 rho) = ((1 : F) * rho 94437)

def relationRow5942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94436) * ((1 : F) * rho 94437) = ((1 : F) * rho 94438)

def relationRow5943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94439) * ((1 : F) + (1 : F) * rho 94438) = ((1 : F) * rho 94436 + (1 : F) * rho 94437)

def relationRow5944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94440) * ((1 : F) + (-1 : F) * rho 94438) = ((1 : F) * rho 94435 + (-1 : F) * rho 94436 + (-1 : F) * rho 94437)

def relationLc2719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 21⟩], residual := [((1 : F), 94439)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93938) * (relationLc2719 rho) = ((1 : F) * rho 94441)

def relationLc2720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 21⟩], residual := [((1 : F), 94440)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93938) * (relationLc2720 rho) = ((1 : F) * rho 94442)

def relationRow5947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94433) * ((1 : F) * rho 94434) = ((1 : F) * rho 94443)

def relationRow5948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94433) * ((1 : F) * rho 94433) = ((1 : F) * rho 94444)

def relationRow5949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94434) * ((1 : F) * rho 94434) = ((1 : F) * rho 94445)

def relationRow5950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94446) * ((-1 : F) * rho 94444 + (1 : F) * rho 94445) = ((2 : F) * rho 94443)

def relationRow5951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94447) * ((2 : F) + (1 : F) * rho 94444 + (-1 : F) * rho 94445) = ((1 : F) * rho 94444 + (1 : F) * rho 94445)

def relationLc2721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 22⟩, ⟨(1 : F), 94169, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94446 + (1 : F) * rho 94447) * (relationLc2721 rho) = ((1 : F) * rho 94448)

def relationLc2722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94447) * (relationLc2722 rho) = ((1 : F) * rho 94449)

def relationLc2723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94446) * (relationLc2723 rho) = ((1 : F) * rho 94450)

def relationRow5955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94449) * ((1 : F) * rho 94450) = ((1 : F) * rho 94451)

def relationRow5956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94452) * ((1 : F) + (1 : F) * rho 94451) = ((1 : F) * rho 94449 + (1 : F) * rho 94450)

def relationRow5957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94453) * ((1 : F) + (-1 : F) * rho 94451) = ((1 : F) * rho 94448 + (-1 : F) * rho 94449 + (-1 : F) * rho 94450)

def relationLc2724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 22⟩], residual := [((1 : F), 94452)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93939) * (relationLc2724 rho) = ((1 : F) * rho 94454)

def relationLc2725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 22⟩], residual := [((1 : F), 94453)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93939) * (relationLc2725 rho) = ((1 : F) * rho 94455)

def relationRow5960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94446) * ((1 : F) * rho 94447) = ((1 : F) * rho 94456)

def relationRow5961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94446) * ((1 : F) * rho 94446) = ((1 : F) * rho 94457)

def relationRow5962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94447) * ((1 : F) * rho 94447) = ((1 : F) * rho 94458)

def relationRow5963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94459) * ((-1 : F) * rho 94457 + (1 : F) * rho 94458) = ((2 : F) * rho 94456)

def relationRow5964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94460) * ((2 : F) + (1 : F) * rho 94457 + (-1 : F) * rho 94458) = ((1 : F) * rho 94457 + (1 : F) * rho 94458)

def relationLc2726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 23⟩, ⟨(1 : F), 94169, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94459 + (1 : F) * rho 94460) * (relationLc2726 rho) = ((1 : F) * rho 94461)

def relationLc2727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94460) * (relationLc2727 rho) = ((1 : F) * rho 94462)

def relationLc2728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94459) * (relationLc2728 rho) = ((1 : F) * rho 94463)

def relationRow5968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94462) * ((1 : F) * rho 94463) = ((1 : F) * rho 94464)

def relationRow5969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94465) * ((1 : F) + (1 : F) * rho 94464) = ((1 : F) * rho 94462 + (1 : F) * rho 94463)

def relationRow5970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94466) * ((1 : F) + (-1 : F) * rho 94464) = ((1 : F) * rho 94461 + (-1 : F) * rho 94462 + (-1 : F) * rho 94463)

def relationLc2729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 23⟩], residual := [((1 : F), 94465)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93940) * (relationLc2729 rho) = ((1 : F) * rho 94467)

def relationLc2730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 23⟩], residual := [((1 : F), 94466)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93940) * (relationLc2730 rho) = ((1 : F) * rho 94468)

def relationRow5973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94459) * ((1 : F) * rho 94460) = ((1 : F) * rho 94469)

def relationRow5974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94459) * ((1 : F) * rho 94459) = ((1 : F) * rho 94470)

def relationRow5975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94460) * ((1 : F) * rho 94460) = ((1 : F) * rho 94471)

def relationRow5976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94472) * ((-1 : F) * rho 94470 + (1 : F) * rho 94471) = ((2 : F) * rho 94469)

def relationRow5977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94473) * ((2 : F) + (1 : F) * rho 94470 + (-1 : F) * rho 94471) = ((1 : F) * rho 94470 + (1 : F) * rho 94471)

def relationLc2731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 24⟩, ⟨(1 : F), 94169, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94472 + (1 : F) * rho 94473) * (relationLc2731 rho) = ((1 : F) * rho 94474)

def relationLc2732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94473) * (relationLc2732 rho) = ((1 : F) * rho 94475)

def relationLc2733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94472) * (relationLc2733 rho) = ((1 : F) * rho 94476)

def relationRow5981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94475) * ((1 : F) * rho 94476) = ((1 : F) * rho 94477)

def relationRow5982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94478) * ((1 : F) + (1 : F) * rho 94477) = ((1 : F) * rho 94475 + (1 : F) * rho 94476)

def relationRow5983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94479) * ((1 : F) + (-1 : F) * rho 94477) = ((1 : F) * rho 94474 + (-1 : F) * rho 94475 + (-1 : F) * rho 94476)

def relationLc2734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 24⟩], residual := [((1 : F), 94478)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93941) * (relationLc2734 rho) = ((1 : F) * rho 94480)

def relationLc2735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 24⟩], residual := [((1 : F), 94479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93941) * (relationLc2735 rho) = ((1 : F) * rho 94481)

def relationRow5986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94472) * ((1 : F) * rho 94473) = ((1 : F) * rho 94482)

def relationRow5987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94472) * ((1 : F) * rho 94472) = ((1 : F) * rho 94483)

def relationRow5988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94473) * ((1 : F) * rho 94473) = ((1 : F) * rho 94484)

def relationRow5989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94485) * ((-1 : F) * rho 94483 + (1 : F) * rho 94484) = ((2 : F) * rho 94482)

def relationRow5990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94486) * ((2 : F) + (1 : F) * rho 94483 + (-1 : F) * rho 94484) = ((1 : F) * rho 94483 + (1 : F) * rho 94484)

def relationLc2736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 25⟩, ⟨(1 : F), 94169, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94485 + (1 : F) * rho 94486) * (relationLc2736 rho) = ((1 : F) * rho 94487)

def relationLc2737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94486) * (relationLc2737 rho) = ((1 : F) * rho 94488)

def relationLc2738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94485) * (relationLc2738 rho) = ((1 : F) * rho 94489)

def relationRow5994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94488) * ((1 : F) * rho 94489) = ((1 : F) * rho 94490)

def relationRow5995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94491) * ((1 : F) + (1 : F) * rho 94490) = ((1 : F) * rho 94488 + (1 : F) * rho 94489)

def relationRow5996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94492) * ((1 : F) + (-1 : F) * rho 94490) = ((1 : F) * rho 94487 + (-1 : F) * rho 94488 + (-1 : F) * rho 94489)

def relationLc2739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 25⟩], residual := [((1 : F), 94491)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93942) * (relationLc2739 rho) = ((1 : F) * rho 94493)

def relationLc2740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 25⟩], residual := [((1 : F), 94492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93942) * (relationLc2740 rho) = ((1 : F) * rho 94494)

def relationRow5999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94485) * ((1 : F) * rho 94486) = ((1 : F) * rho 94495)

def relationRow6000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94485) * ((1 : F) * rho 94485) = ((1 : F) * rho 94496)

def relationRow6001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94486) * ((1 : F) * rho 94486) = ((1 : F) * rho 94497)

def relationRow6002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94498) * ((-1 : F) * rho 94496 + (1 : F) * rho 94497) = ((2 : F) * rho 94495)

def relationRow6003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94499) * ((2 : F) + (1 : F) * rho 94496 + (-1 : F) * rho 94497) = ((1 : F) * rho 94496 + (1 : F) * rho 94497)

def relationLc2741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 26⟩, ⟨(1 : F), 94169, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94498 + (1 : F) * rho 94499) * (relationLc2741 rho) = ((1 : F) * rho 94500)

def relationLc2742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94499) * (relationLc2742 rho) = ((1 : F) * rho 94501)

def relationLc2743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94498) * (relationLc2743 rho) = ((1 : F) * rho 94502)

def relationRow6007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94501) * ((1 : F) * rho 94502) = ((1 : F) * rho 94503)

def relationRow6008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94504) * ((1 : F) + (1 : F) * rho 94503) = ((1 : F) * rho 94501 + (1 : F) * rho 94502)

def relationRow6009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94505) * ((1 : F) + (-1 : F) * rho 94503) = ((1 : F) * rho 94500 + (-1 : F) * rho 94501 + (-1 : F) * rho 94502)

def relationLc2744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 26⟩], residual := [((1 : F), 94504)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93943) * (relationLc2744 rho) = ((1 : F) * rho 94506)

def relationLc2745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 26⟩], residual := [((1 : F), 94505)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93943) * (relationLc2745 rho) = ((1 : F) * rho 94507)

def relationRow6012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94498) * ((1 : F) * rho 94499) = ((1 : F) * rho 94508)

def relationRow6013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94498) * ((1 : F) * rho 94498) = ((1 : F) * rho 94509)

def relationRow6014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94499) * ((1 : F) * rho 94499) = ((1 : F) * rho 94510)

def relationRow6015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94511) * ((-1 : F) * rho 94509 + (1 : F) * rho 94510) = ((2 : F) * rho 94508)

def relationRow6016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94512) * ((2 : F) + (1 : F) * rho 94509 + (-1 : F) * rho 94510) = ((1 : F) * rho 94509 + (1 : F) * rho 94510)

def relationLc2746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 27⟩, ⟨(1 : F), 94169, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94511 + (1 : F) * rho 94512) * (relationLc2746 rho) = ((1 : F) * rho 94513)

def relationLc2747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94512) * (relationLc2747 rho) = ((1 : F) * rho 94514)

def relationLc2748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94511) * (relationLc2748 rho) = ((1 : F) * rho 94515)

def relationRow6020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94514) * ((1 : F) * rho 94515) = ((1 : F) * rho 94516)

def relationRow6021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94517) * ((1 : F) + (1 : F) * rho 94516) = ((1 : F) * rho 94514 + (1 : F) * rho 94515)

def relationRow6022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94518) * ((1 : F) + (-1 : F) * rho 94516) = ((1 : F) * rho 94513 + (-1 : F) * rho 94514 + (-1 : F) * rho 94515)

def relationLc2749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 27⟩], residual := [((1 : F), 94517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93944) * (relationLc2749 rho) = ((1 : F) * rho 94519)

def relationLc2750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 27⟩], residual := [((1 : F), 94518)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93944) * (relationLc2750 rho) = ((1 : F) * rho 94520)

def relationRow6025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94511) * ((1 : F) * rho 94512) = ((1 : F) * rho 94521)

def relationRow6026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94511) * ((1 : F) * rho 94511) = ((1 : F) * rho 94522)

def relationRow6027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94512) * ((1 : F) * rho 94512) = ((1 : F) * rho 94523)

def relationRow6028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94524) * ((-1 : F) * rho 94522 + (1 : F) * rho 94523) = ((2 : F) * rho 94521)

def relationRow6029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94525) * ((2 : F) + (1 : F) * rho 94522 + (-1 : F) * rho 94523) = ((1 : F) * rho 94522 + (1 : F) * rho 94523)

def relationLc2751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 28⟩, ⟨(1 : F), 94169, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94524 + (1 : F) * rho 94525) * (relationLc2751 rho) = ((1 : F) * rho 94526)

def relationLc2752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94525) * (relationLc2752 rho) = ((1 : F) * rho 94527)

def relationLc2753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94524) * (relationLc2753 rho) = ((1 : F) * rho 94528)

def relationRow6033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94527) * ((1 : F) * rho 94528) = ((1 : F) * rho 94529)

def relationRow6034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94530) * ((1 : F) + (1 : F) * rho 94529) = ((1 : F) * rho 94527 + (1 : F) * rho 94528)

def relationRow6035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94531) * ((1 : F) + (-1 : F) * rho 94529) = ((1 : F) * rho 94526 + (-1 : F) * rho 94527 + (-1 : F) * rho 94528)

def relationLc2754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 28⟩], residual := [((1 : F), 94530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93945) * (relationLc2754 rho) = ((1 : F) * rho 94532)

def relationLc2755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 28⟩], residual := [((1 : F), 94531)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93945) * (relationLc2755 rho) = ((1 : F) * rho 94533)

def relationRow6038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94524) * ((1 : F) * rho 94525) = ((1 : F) * rho 94534)

def relationRow6039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94524) * ((1 : F) * rho 94524) = ((1 : F) * rho 94535)

def relationRow6040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94525) * ((1 : F) * rho 94525) = ((1 : F) * rho 94536)

def relationRow6041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94537) * ((-1 : F) * rho 94535 + (1 : F) * rho 94536) = ((2 : F) * rho 94534)

def relationRow6042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94538) * ((2 : F) + (1 : F) * rho 94535 + (-1 : F) * rho 94536) = ((1 : F) * rho 94535 + (1 : F) * rho 94536)

def relationLc2756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 29⟩, ⟨(1 : F), 94169, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94537 + (1 : F) * rho 94538) * (relationLc2756 rho) = ((1 : F) * rho 94539)

def relationLc2757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94538) * (relationLc2757 rho) = ((1 : F) * rho 94540)

def relationLc2758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94537) * (relationLc2758 rho) = ((1 : F) * rho 94541)

def relationRow6046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94540) * ((1 : F) * rho 94541) = ((1 : F) * rho 94542)

def relationRow6047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94543) * ((1 : F) + (1 : F) * rho 94542) = ((1 : F) * rho 94540 + (1 : F) * rho 94541)

def relationRow6048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94544) * ((1 : F) + (-1 : F) * rho 94542) = ((1 : F) * rho 94539 + (-1 : F) * rho 94540 + (-1 : F) * rho 94541)

def relationLc2759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 29⟩], residual := [((1 : F), 94543)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93946) * (relationLc2759 rho) = ((1 : F) * rho 94545)

def relationLc2760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 29⟩], residual := [((1 : F), 94544)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93946) * (relationLc2760 rho) = ((1 : F) * rho 94546)

def relationRow6051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94537) * ((1 : F) * rho 94538) = ((1 : F) * rho 94547)

def relationRow6052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94537) * ((1 : F) * rho 94537) = ((1 : F) * rho 94548)

def relationRow6053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94538) * ((1 : F) * rho 94538) = ((1 : F) * rho 94549)

def relationRow6054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94550) * ((-1 : F) * rho 94548 + (1 : F) * rho 94549) = ((2 : F) * rho 94547)

def relationRow6055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94551) * ((2 : F) + (1 : F) * rho 94548 + (-1 : F) * rho 94549) = ((1 : F) * rho 94548 + (1 : F) * rho 94549)

def relationLc2761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 30⟩, ⟨(1 : F), 94169, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94550 + (1 : F) * rho 94551) * (relationLc2761 rho) = ((1 : F) * rho 94552)

def relationLc2762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94551) * (relationLc2762 rho) = ((1 : F) * rho 94553)

def relationLc2763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94550) * (relationLc2763 rho) = ((1 : F) * rho 94554)

def relationRow6059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94553) * ((1 : F) * rho 94554) = ((1 : F) * rho 94555)

def relationRow6060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94556) * ((1 : F) + (1 : F) * rho 94555) = ((1 : F) * rho 94553 + (1 : F) * rho 94554)

def relationRow6061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94557) * ((1 : F) + (-1 : F) * rho 94555) = ((1 : F) * rho 94552 + (-1 : F) * rho 94553 + (-1 : F) * rho 94554)

def relationLc2764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 30⟩], residual := [((1 : F), 94556)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93947) * (relationLc2764 rho) = ((1 : F) * rho 94558)

def relationLc2765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 30⟩], residual := [((1 : F), 94557)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93947) * (relationLc2765 rho) = ((1 : F) * rho 94559)

def relationRow6064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94550) * ((1 : F) * rho 94551) = ((1 : F) * rho 94560)

def relationRow6065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94550) * ((1 : F) * rho 94550) = ((1 : F) * rho 94561)

def relationRow6066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94551) * ((1 : F) * rho 94551) = ((1 : F) * rho 94562)

def relationRow6067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94563) * ((-1 : F) * rho 94561 + (1 : F) * rho 94562) = ((2 : F) * rho 94560)

def relationRow6068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94564) * ((2 : F) + (1 : F) * rho 94561 + (-1 : F) * rho 94562) = ((1 : F) * rho 94561 + (1 : F) * rho 94562)

def relationLc2766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 31⟩, ⟨(1 : F), 94169, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94563 + (1 : F) * rho 94564) * (relationLc2766 rho) = ((1 : F) * rho 94565)

def relationLc2767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94564) * (relationLc2767 rho) = ((1 : F) * rho 94566)

def relationLc2768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94563) * (relationLc2768 rho) = ((1 : F) * rho 94567)

def relationRow6072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94566) * ((1 : F) * rho 94567) = ((1 : F) * rho 94568)

def relationRow6073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94569) * ((1 : F) + (1 : F) * rho 94568) = ((1 : F) * rho 94566 + (1 : F) * rho 94567)

def relationRow6074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94570) * ((1 : F) + (-1 : F) * rho 94568) = ((1 : F) * rho 94565 + (-1 : F) * rho 94566 + (-1 : F) * rho 94567)

def relationLc2769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 31⟩], residual := [((1 : F), 94569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93948) * (relationLc2769 rho) = ((1 : F) * rho 94571)

def relationLc2770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 31⟩], residual := [((1 : F), 94570)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93948) * (relationLc2770 rho) = ((1 : F) * rho 94572)

def relationRow6077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94563) * ((1 : F) * rho 94564) = ((1 : F) * rho 94573)

def relationRow6078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94563) * ((1 : F) * rho 94563) = ((1 : F) * rho 94574)

def relationRow6079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94564) * ((1 : F) * rho 94564) = ((1 : F) * rho 94575)

def relationRow6080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94576) * ((-1 : F) * rho 94574 + (1 : F) * rho 94575) = ((2 : F) * rho 94573)

def relationRow6081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94577) * ((2 : F) + (1 : F) * rho 94574 + (-1 : F) * rho 94575) = ((1 : F) * rho 94574 + (1 : F) * rho 94575)

def relationLc2771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 32⟩, ⟨(1 : F), 94169, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94576 + (1 : F) * rho 94577) * (relationLc2771 rho) = ((1 : F) * rho 94578)

def relationLc2772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94577) * (relationLc2772 rho) = ((1 : F) * rho 94579)

def relationLc2773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94576) * (relationLc2773 rho) = ((1 : F) * rho 94580)

def relationRow6085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94579) * ((1 : F) * rho 94580) = ((1 : F) * rho 94581)

def relationRow6086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94582) * ((1 : F) + (1 : F) * rho 94581) = ((1 : F) * rho 94579 + (1 : F) * rho 94580)

def relationRow6087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94583) * ((1 : F) + (-1 : F) * rho 94581) = ((1 : F) * rho 94578 + (-1 : F) * rho 94579 + (-1 : F) * rho 94580)

def relationLc2774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 32⟩], residual := [((1 : F), 94582)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93949) * (relationLc2774 rho) = ((1 : F) * rho 94584)

def relationLc2775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 32⟩], residual := [((1 : F), 94583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93949) * (relationLc2775 rho) = ((1 : F) * rho 94585)

def relationRow6090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94576) * ((1 : F) * rho 94577) = ((1 : F) * rho 94586)

def relationRow6091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94576) * ((1 : F) * rho 94576) = ((1 : F) * rho 94587)

def relationRow6092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94577) * ((1 : F) * rho 94577) = ((1 : F) * rho 94588)

def relationRow6093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94589) * ((-1 : F) * rho 94587 + (1 : F) * rho 94588) = ((2 : F) * rho 94586)

def relationRow6094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94590) * ((2 : F) + (1 : F) * rho 94587 + (-1 : F) * rho 94588) = ((1 : F) * rho 94587 + (1 : F) * rho 94588)

def relationLc2776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 33⟩, ⟨(1 : F), 94169, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94589 + (1 : F) * rho 94590) * (relationLc2776 rho) = ((1 : F) * rho 94591)

def relationLc2777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94590) * (relationLc2777 rho) = ((1 : F) * rho 94592)

def relationLc2778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94589) * (relationLc2778 rho) = ((1 : F) * rho 94593)

def relationRow6098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94592) * ((1 : F) * rho 94593) = ((1 : F) * rho 94594)

def relationRow6099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94595) * ((1 : F) + (1 : F) * rho 94594) = ((1 : F) * rho 94592 + (1 : F) * rho 94593)

def relationRow6100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94596) * ((1 : F) + (-1 : F) * rho 94594) = ((1 : F) * rho 94591 + (-1 : F) * rho 94592 + (-1 : F) * rho 94593)

def relationLc2779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 33⟩], residual := [((1 : F), 94595)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93950) * (relationLc2779 rho) = ((1 : F) * rho 94597)

def relationLc2780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 33⟩], residual := [((1 : F), 94596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93950) * (relationLc2780 rho) = ((1 : F) * rho 94598)

def relationRow6103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94589) * ((1 : F) * rho 94590) = ((1 : F) * rho 94599)

def relationRow6104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94589) * ((1 : F) * rho 94589) = ((1 : F) * rho 94600)

def relationRow6105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94590) * ((1 : F) * rho 94590) = ((1 : F) * rho 94601)

def relationRow6106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94602) * ((-1 : F) * rho 94600 + (1 : F) * rho 94601) = ((2 : F) * rho 94599)

def relationRow6107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94603) * ((2 : F) + (1 : F) * rho 94600 + (-1 : F) * rho 94601) = ((1 : F) * rho 94600 + (1 : F) * rho 94601)

def relationLc2781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 34⟩, ⟨(1 : F), 94169, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94602 + (1 : F) * rho 94603) * (relationLc2781 rho) = ((1 : F) * rho 94604)

def relationLc2782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94603) * (relationLc2782 rho) = ((1 : F) * rho 94605)

def relationLc2783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94602) * (relationLc2783 rho) = ((1 : F) * rho 94606)

def relationRow6111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94605) * ((1 : F) * rho 94606) = ((1 : F) * rho 94607)

def relationRow6112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94608) * ((1 : F) + (1 : F) * rho 94607) = ((1 : F) * rho 94605 + (1 : F) * rho 94606)

def relationRow6113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94609) * ((1 : F) + (-1 : F) * rho 94607) = ((1 : F) * rho 94604 + (-1 : F) * rho 94605 + (-1 : F) * rho 94606)

def relationLc2784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 34⟩], residual := [((1 : F), 94608)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93951) * (relationLc2784 rho) = ((1 : F) * rho 94610)

def relationLc2785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 34⟩], residual := [((1 : F), 94609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93951) * (relationLc2785 rho) = ((1 : F) * rho 94611)

def relationRow6116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94602) * ((1 : F) * rho 94603) = ((1 : F) * rho 94612)

def relationRow6117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94602) * ((1 : F) * rho 94602) = ((1 : F) * rho 94613)

def relationRow6118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94603) * ((1 : F) * rho 94603) = ((1 : F) * rho 94614)

def relationRow6119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94615) * ((-1 : F) * rho 94613 + (1 : F) * rho 94614) = ((2 : F) * rho 94612)

def relationRow6120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94616) * ((2 : F) + (1 : F) * rho 94613 + (-1 : F) * rho 94614) = ((1 : F) * rho 94613 + (1 : F) * rho 94614)

def relationLc2786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 35⟩, ⟨(1 : F), 94169, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94615 + (1 : F) * rho 94616) * (relationLc2786 rho) = ((1 : F) * rho 94617)

def relationLc2787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94616) * (relationLc2787 rho) = ((1 : F) * rho 94618)

def relationLc2788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94615) * (relationLc2788 rho) = ((1 : F) * rho 94619)

def relationRow6124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94618) * ((1 : F) * rho 94619) = ((1 : F) * rho 94620)

def relationRow6125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94621) * ((1 : F) + (1 : F) * rho 94620) = ((1 : F) * rho 94618 + (1 : F) * rho 94619)

def relationRow6126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94622) * ((1 : F) + (-1 : F) * rho 94620) = ((1 : F) * rho 94617 + (-1 : F) * rho 94618 + (-1 : F) * rho 94619)

def relationLc2789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 35⟩], residual := [((1 : F), 94621)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93952) * (relationLc2789 rho) = ((1 : F) * rho 94623)

def relationLc2790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 35⟩], residual := [((1 : F), 94622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93952) * (relationLc2790 rho) = ((1 : F) * rho 94624)

def relationRow6129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94615) * ((1 : F) * rho 94616) = ((1 : F) * rho 94625)

def relationRow6130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94615) * ((1 : F) * rho 94615) = ((1 : F) * rho 94626)

def relationRow6131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94616) * ((1 : F) * rho 94616) = ((1 : F) * rho 94627)

def relationRow6132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94628) * ((-1 : F) * rho 94626 + (1 : F) * rho 94627) = ((2 : F) * rho 94625)

def relationRow6133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94629) * ((2 : F) + (1 : F) * rho 94626 + (-1 : F) * rho 94627) = ((1 : F) * rho 94626 + (1 : F) * rho 94627)

def relationLc2791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 36⟩, ⟨(1 : F), 94169, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94628 + (1 : F) * rho 94629) * (relationLc2791 rho) = ((1 : F) * rho 94630)

def relationLc2792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94629) * (relationLc2792 rho) = ((1 : F) * rho 94631)

def relationLc2793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94628) * (relationLc2793 rho) = ((1 : F) * rho 94632)

def relationRow6137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94631) * ((1 : F) * rho 94632) = ((1 : F) * rho 94633)

def relationRow6138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94634) * ((1 : F) + (1 : F) * rho 94633) = ((1 : F) * rho 94631 + (1 : F) * rho 94632)

def relationRow6139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94635) * ((1 : F) + (-1 : F) * rho 94633) = ((1 : F) * rho 94630 + (-1 : F) * rho 94631 + (-1 : F) * rho 94632)

def relationLc2794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 36⟩], residual := [((1 : F), 94634)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93953) * (relationLc2794 rho) = ((1 : F) * rho 94636)

def relationLc2795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 36⟩], residual := [((1 : F), 94635)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93953) * (relationLc2795 rho) = ((1 : F) * rho 94637)

def relationRow6142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94628) * ((1 : F) * rho 94629) = ((1 : F) * rho 94638)

def relationRow6143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94628) * ((1 : F) * rho 94628) = ((1 : F) * rho 94639)

def relationRow6144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94629) * ((1 : F) * rho 94629) = ((1 : F) * rho 94640)

def relationRow6145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94641) * ((-1 : F) * rho 94639 + (1 : F) * rho 94640) = ((2 : F) * rho 94638)

def relationRow6146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94642) * ((2 : F) + (1 : F) * rho 94639 + (-1 : F) * rho 94640) = ((1 : F) * rho 94639 + (1 : F) * rho 94640)

def relationLc2796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 37⟩, ⟨(1 : F), 94169, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94641 + (1 : F) * rho 94642) * (relationLc2796 rho) = ((1 : F) * rho 94643)

def relationLc2797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94642) * (relationLc2797 rho) = ((1 : F) * rho 94644)

def relationLc2798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94641) * (relationLc2798 rho) = ((1 : F) * rho 94645)

def relationRow6150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94644) * ((1 : F) * rho 94645) = ((1 : F) * rho 94646)

def relationRow6151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94647) * ((1 : F) + (1 : F) * rho 94646) = ((1 : F) * rho 94644 + (1 : F) * rho 94645)

def relationRow6152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94648) * ((1 : F) + (-1 : F) * rho 94646) = ((1 : F) * rho 94643 + (-1 : F) * rho 94644 + (-1 : F) * rho 94645)

def relationLc2799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 37⟩], residual := [((1 : F), 94647)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93954) * (relationLc2799 rho) = ((1 : F) * rho 94649)

def relationLc2800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 37⟩], residual := [((1 : F), 94648)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93954) * (relationLc2800 rho) = ((1 : F) * rho 94650)

def relationRow6155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94641) * ((1 : F) * rho 94642) = ((1 : F) * rho 94651)

def relationRow6156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94641) * ((1 : F) * rho 94641) = ((1 : F) * rho 94652)

def relationRow6157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94642) * ((1 : F) * rho 94642) = ((1 : F) * rho 94653)

def relationRow6158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94654) * ((-1 : F) * rho 94652 + (1 : F) * rho 94653) = ((2 : F) * rho 94651)

def relationRow6159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94655) * ((2 : F) + (1 : F) * rho 94652 + (-1 : F) * rho 94653) = ((1 : F) * rho 94652 + (1 : F) * rho 94653)

def relationLc2801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 38⟩, ⟨(1 : F), 94169, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94654 + (1 : F) * rho 94655) * (relationLc2801 rho) = ((1 : F) * rho 94656)

def relationLc2802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94655) * (relationLc2802 rho) = ((1 : F) * rho 94657)

def relationLc2803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94654) * (relationLc2803 rho) = ((1 : F) * rho 94658)

def relationRow6163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94657) * ((1 : F) * rho 94658) = ((1 : F) * rho 94659)

def relationRow6164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94660) * ((1 : F) + (1 : F) * rho 94659) = ((1 : F) * rho 94657 + (1 : F) * rho 94658)

def relationRow6165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94661) * ((1 : F) + (-1 : F) * rho 94659) = ((1 : F) * rho 94656 + (-1 : F) * rho 94657 + (-1 : F) * rho 94658)

def relationLc2804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 38⟩], residual := [((1 : F), 94660)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93955) * (relationLc2804 rho) = ((1 : F) * rho 94662)

def relationLc2805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 38⟩], residual := [((1 : F), 94661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93955) * (relationLc2805 rho) = ((1 : F) * rho 94663)

def relationRow6168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94654) * ((1 : F) * rho 94655) = ((1 : F) * rho 94664)

def relationRow6169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94654) * ((1 : F) * rho 94654) = ((1 : F) * rho 94665)

def relationRow6170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94655) * ((1 : F) * rho 94655) = ((1 : F) * rho 94666)

def relationRow6171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94667) * ((-1 : F) * rho 94665 + (1 : F) * rho 94666) = ((2 : F) * rho 94664)

def relationRow6172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94668) * ((2 : F) + (1 : F) * rho 94665 + (-1 : F) * rho 94666) = ((1 : F) * rho 94665 + (1 : F) * rho 94666)

def relationLc2806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 39⟩, ⟨(1 : F), 94169, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94667 + (1 : F) * rho 94668) * (relationLc2806 rho) = ((1 : F) * rho 94669)

def relationLc2807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94668) * (relationLc2807 rho) = ((1 : F) * rho 94670)

def relationLc2808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94667) * (relationLc2808 rho) = ((1 : F) * rho 94671)

def relationRow6176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94670) * ((1 : F) * rho 94671) = ((1 : F) * rho 94672)

def relationRow6177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94673) * ((1 : F) + (1 : F) * rho 94672) = ((1 : F) * rho 94670 + (1 : F) * rho 94671)

def relationRow6178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94674) * ((1 : F) + (-1 : F) * rho 94672) = ((1 : F) * rho 94669 + (-1 : F) * rho 94670 + (-1 : F) * rho 94671)

def relationLc2809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 39⟩], residual := [((1 : F), 94673)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93956) * (relationLc2809 rho) = ((1 : F) * rho 94675)

def relationLc2810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 39⟩], residual := [((1 : F), 94674)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93956) * (relationLc2810 rho) = ((1 : F) * rho 94676)

def relationRow6181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94667) * ((1 : F) * rho 94668) = ((1 : F) * rho 94677)

def relationRow6182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94667) * ((1 : F) * rho 94667) = ((1 : F) * rho 94678)

def relationRow6183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94668) * ((1 : F) * rho 94668) = ((1 : F) * rho 94679)

def relationRow6184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94680) * ((-1 : F) * rho 94678 + (1 : F) * rho 94679) = ((2 : F) * rho 94677)

def relationRow6185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94681) * ((2 : F) + (1 : F) * rho 94678 + (-1 : F) * rho 94679) = ((1 : F) * rho 94678 + (1 : F) * rho 94679)

def relationLc2811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 40⟩, ⟨(1 : F), 94169, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94680 + (1 : F) * rho 94681) * (relationLc2811 rho) = ((1 : F) * rho 94682)

def relationLc2812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94681) * (relationLc2812 rho) = ((1 : F) * rho 94683)

def relationLc2813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94680) * (relationLc2813 rho) = ((1 : F) * rho 94684)

def relationRow6189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94683) * ((1 : F) * rho 94684) = ((1 : F) * rho 94685)

def relationRow6190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94686) * ((1 : F) + (1 : F) * rho 94685) = ((1 : F) * rho 94683 + (1 : F) * rho 94684)

def relationRow6191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94687) * ((1 : F) + (-1 : F) * rho 94685) = ((1 : F) * rho 94682 + (-1 : F) * rho 94683 + (-1 : F) * rho 94684)

def relationLc2814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 40⟩], residual := [((1 : F), 94686)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93957) * (relationLc2814 rho) = ((1 : F) * rho 94688)

def relationLc2815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 40⟩], residual := [((1 : F), 94687)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93957) * (relationLc2815 rho) = ((1 : F) * rho 94689)

def relationRow6194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94680) * ((1 : F) * rho 94681) = ((1 : F) * rho 94690)

def relationRow6195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94680) * ((1 : F) * rho 94680) = ((1 : F) * rho 94691)

def relationRow6196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94681) * ((1 : F) * rho 94681) = ((1 : F) * rho 94692)

def relationRow6197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94693) * ((-1 : F) * rho 94691 + (1 : F) * rho 94692) = ((2 : F) * rho 94690)

def relationRow6198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94694) * ((2 : F) + (1 : F) * rho 94691 + (-1 : F) * rho 94692) = ((1 : F) * rho 94691 + (1 : F) * rho 94692)

def relationLc2816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 41⟩, ⟨(1 : F), 94169, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94693 + (1 : F) * rho 94694) * (relationLc2816 rho) = ((1 : F) * rho 94695)

def relationLc2817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94694) * (relationLc2817 rho) = ((1 : F) * rho 94696)

def relationLc2818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94693) * (relationLc2818 rho) = ((1 : F) * rho 94697)

def relationRow6202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94696) * ((1 : F) * rho 94697) = ((1 : F) * rho 94698)

def relationRow6203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94699) * ((1 : F) + (1 : F) * rho 94698) = ((1 : F) * rho 94696 + (1 : F) * rho 94697)

def relationRow6204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94700) * ((1 : F) + (-1 : F) * rho 94698) = ((1 : F) * rho 94695 + (-1 : F) * rho 94696 + (-1 : F) * rho 94697)

def relationLc2819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 41⟩], residual := [((1 : F), 94699)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93958) * (relationLc2819 rho) = ((1 : F) * rho 94701)

def relationLc2820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 41⟩], residual := [((1 : F), 94700)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93958) * (relationLc2820 rho) = ((1 : F) * rho 94702)

def relationRow6207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94693) * ((1 : F) * rho 94694) = ((1 : F) * rho 94703)

def relationRow6208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94693) * ((1 : F) * rho 94693) = ((1 : F) * rho 94704)

def relationRow6209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94694) * ((1 : F) * rho 94694) = ((1 : F) * rho 94705)

def relationRow6210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94706) * ((-1 : F) * rho 94704 + (1 : F) * rho 94705) = ((2 : F) * rho 94703)

def relationRow6211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94707) * ((2 : F) + (1 : F) * rho 94704 + (-1 : F) * rho 94705) = ((1 : F) * rho 94704 + (1 : F) * rho 94705)

def relationLc2821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 42⟩, ⟨(1 : F), 94169, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94706 + (1 : F) * rho 94707) * (relationLc2821 rho) = ((1 : F) * rho 94708)

def relationLc2822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94707) * (relationLc2822 rho) = ((1 : F) * rho 94709)

def relationLc2823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94706) * (relationLc2823 rho) = ((1 : F) * rho 94710)

def relationRow6215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94709) * ((1 : F) * rho 94710) = ((1 : F) * rho 94711)

def relationRow6216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94712) * ((1 : F) + (1 : F) * rho 94711) = ((1 : F) * rho 94709 + (1 : F) * rho 94710)

def relationRow6217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94713) * ((1 : F) + (-1 : F) * rho 94711) = ((1 : F) * rho 94708 + (-1 : F) * rho 94709 + (-1 : F) * rho 94710)

def relationLc2824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 42⟩], residual := [((1 : F), 94712)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93959) * (relationLc2824 rho) = ((1 : F) * rho 94714)

def relationLc2825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 42⟩], residual := [((1 : F), 94713)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93959) * (relationLc2825 rho) = ((1 : F) * rho 94715)

def relationRow6220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94706) * ((1 : F) * rho 94707) = ((1 : F) * rho 94716)

def relationRow6221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94706) * ((1 : F) * rho 94706) = ((1 : F) * rho 94717)

def relationRow6222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94707) * ((1 : F) * rho 94707) = ((1 : F) * rho 94718)

def relationRow6223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94719) * ((-1 : F) * rho 94717 + (1 : F) * rho 94718) = ((2 : F) * rho 94716)

def relationRow6224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94720) * ((2 : F) + (1 : F) * rho 94717 + (-1 : F) * rho 94718) = ((1 : F) * rho 94717 + (1 : F) * rho 94718)

def relationLc2826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 43⟩, ⟨(1 : F), 94169, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94719 + (1 : F) * rho 94720) * (relationLc2826 rho) = ((1 : F) * rho 94721)

def relationLc2827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94720) * (relationLc2827 rho) = ((1 : F) * rho 94722)

def relationLc2828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94719) * (relationLc2828 rho) = ((1 : F) * rho 94723)

def relationRow6228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94722) * ((1 : F) * rho 94723) = ((1 : F) * rho 94724)

def relationRow6229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94725) * ((1 : F) + (1 : F) * rho 94724) = ((1 : F) * rho 94722 + (1 : F) * rho 94723)

def relationRow6230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94726) * ((1 : F) + (-1 : F) * rho 94724) = ((1 : F) * rho 94721 + (-1 : F) * rho 94722 + (-1 : F) * rho 94723)

def relationLc2829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 43⟩], residual := [((1 : F), 94725)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93960) * (relationLc2829 rho) = ((1 : F) * rho 94727)

def relationLc2830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 43⟩], residual := [((1 : F), 94726)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93960) * (relationLc2830 rho) = ((1 : F) * rho 94728)

def relationRow6233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94719) * ((1 : F) * rho 94720) = ((1 : F) * rho 94729)

def relationRow6234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94719) * ((1 : F) * rho 94719) = ((1 : F) * rho 94730)

def relationRow6235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94720) * ((1 : F) * rho 94720) = ((1 : F) * rho 94731)

def relationRow6236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94732) * ((-1 : F) * rho 94730 + (1 : F) * rho 94731) = ((2 : F) * rho 94729)

def relationRow6237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94733) * ((2 : F) + (1 : F) * rho 94730 + (-1 : F) * rho 94731) = ((1 : F) * rho 94730 + (1 : F) * rho 94731)

def relationLc2831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 44⟩, ⟨(1 : F), 94169, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94732 + (1 : F) * rho 94733) * (relationLc2831 rho) = ((1 : F) * rho 94734)

def relationLc2832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94733) * (relationLc2832 rho) = ((1 : F) * rho 94735)

def relationLc2833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94732) * (relationLc2833 rho) = ((1 : F) * rho 94736)

def relationRow6241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94735) * ((1 : F) * rho 94736) = ((1 : F) * rho 94737)

def relationRow6242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94738) * ((1 : F) + (1 : F) * rho 94737) = ((1 : F) * rho 94735 + (1 : F) * rho 94736)

def relationRow6243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94739) * ((1 : F) + (-1 : F) * rho 94737) = ((1 : F) * rho 94734 + (-1 : F) * rho 94735 + (-1 : F) * rho 94736)

def relationLc2834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 44⟩], residual := [((1 : F), 94738)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93961) * (relationLc2834 rho) = ((1 : F) * rho 94740)

def relationLc2835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 44⟩], residual := [((1 : F), 94739)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93961) * (relationLc2835 rho) = ((1 : F) * rho 94741)

def relationRow6246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94732) * ((1 : F) * rho 94733) = ((1 : F) * rho 94742)

def relationRow6247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94732) * ((1 : F) * rho 94732) = ((1 : F) * rho 94743)

def relationRow6248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94733) * ((1 : F) * rho 94733) = ((1 : F) * rho 94744)

def relationRow6249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94745) * ((-1 : F) * rho 94743 + (1 : F) * rho 94744) = ((2 : F) * rho 94742)

def relationRow6250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94746) * ((2 : F) + (1 : F) * rho 94743 + (-1 : F) * rho 94744) = ((1 : F) * rho 94743 + (1 : F) * rho 94744)

def relationLc2836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 45⟩, ⟨(1 : F), 94169, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94745 + (1 : F) * rho 94746) * (relationLc2836 rho) = ((1 : F) * rho 94747)

def relationLc2837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94746) * (relationLc2837 rho) = ((1 : F) * rho 94748)

def relationLc2838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94745) * (relationLc2838 rho) = ((1 : F) * rho 94749)

def relationRow6254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94748) * ((1 : F) * rho 94749) = ((1 : F) * rho 94750)

def relationRow6255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94751) * ((1 : F) + (1 : F) * rho 94750) = ((1 : F) * rho 94748 + (1 : F) * rho 94749)

def relationRow6256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94752) * ((1 : F) + (-1 : F) * rho 94750) = ((1 : F) * rho 94747 + (-1 : F) * rho 94748 + (-1 : F) * rho 94749)

def relationLc2839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 45⟩], residual := [((1 : F), 94751)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93962) * (relationLc2839 rho) = ((1 : F) * rho 94753)

def relationLc2840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 45⟩], residual := [((1 : F), 94752)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93962) * (relationLc2840 rho) = ((1 : F) * rho 94754)

def relationRow6259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94745) * ((1 : F) * rho 94746) = ((1 : F) * rho 94755)

def relationRow6260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94745) * ((1 : F) * rho 94745) = ((1 : F) * rho 94756)

def relationRow6261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94746) * ((1 : F) * rho 94746) = ((1 : F) * rho 94757)

def relationRow6262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94758) * ((-1 : F) * rho 94756 + (1 : F) * rho 94757) = ((2 : F) * rho 94755)

def relationRow6263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94759) * ((2 : F) + (1 : F) * rho 94756 + (-1 : F) * rho 94757) = ((1 : F) * rho 94756 + (1 : F) * rho 94757)

def relationLc2841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 46⟩, ⟨(1 : F), 94169, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94758 + (1 : F) * rho 94759) * (relationLc2841 rho) = ((1 : F) * rho 94760)

def relationLc2842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94759) * (relationLc2842 rho) = ((1 : F) * rho 94761)

def relationLc2843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94758) * (relationLc2843 rho) = ((1 : F) * rho 94762)

def relationRow6267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94761) * ((1 : F) * rho 94762) = ((1 : F) * rho 94763)

def relationRow6268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94764) * ((1 : F) + (1 : F) * rho 94763) = ((1 : F) * rho 94761 + (1 : F) * rho 94762)

def relationRow6269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94765) * ((1 : F) + (-1 : F) * rho 94763) = ((1 : F) * rho 94760 + (-1 : F) * rho 94761 + (-1 : F) * rho 94762)

def relationLc2844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 46⟩], residual := [((1 : F), 94764)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93963) * (relationLc2844 rho) = ((1 : F) * rho 94766)

def relationLc2845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 46⟩], residual := [((1 : F), 94765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93963) * (relationLc2845 rho) = ((1 : F) * rho 94767)

def relationRow6272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94758) * ((1 : F) * rho 94759) = ((1 : F) * rho 94768)

def relationRow6273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94758) * ((1 : F) * rho 94758) = ((1 : F) * rho 94769)

def relationRow6274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94759) * ((1 : F) * rho 94759) = ((1 : F) * rho 94770)

def relationRow6275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94771) * ((-1 : F) * rho 94769 + (1 : F) * rho 94770) = ((2 : F) * rho 94768)

def relationRow6276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94772) * ((2 : F) + (1 : F) * rho 94769 + (-1 : F) * rho 94770) = ((1 : F) * rho 94769 + (1 : F) * rho 94770)

def relationLc2846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 47⟩, ⟨(1 : F), 94169, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94771 + (1 : F) * rho 94772) * (relationLc2846 rho) = ((1 : F) * rho 94773)

def relationLc2847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94772) * (relationLc2847 rho) = ((1 : F) * rho 94774)

def relationLc2848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94771) * (relationLc2848 rho) = ((1 : F) * rho 94775)

def relationRow6280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94774) * ((1 : F) * rho 94775) = ((1 : F) * rho 94776)

def relationRow6281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94777) * ((1 : F) + (1 : F) * rho 94776) = ((1 : F) * rho 94774 + (1 : F) * rho 94775)

def relationRow6282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94778) * ((1 : F) + (-1 : F) * rho 94776) = ((1 : F) * rho 94773 + (-1 : F) * rho 94774 + (-1 : F) * rho 94775)

def relationLc2849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 47⟩], residual := [((1 : F), 94777)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93964) * (relationLc2849 rho) = ((1 : F) * rho 94779)

def relationLc2850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 47⟩], residual := [((1 : F), 94778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93964) * (relationLc2850 rho) = ((1 : F) * rho 94780)

def relationRow6285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94771) * ((1 : F) * rho 94772) = ((1 : F) * rho 94781)

def relationRow6286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94771) * ((1 : F) * rho 94771) = ((1 : F) * rho 94782)

def relationRow6287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94772) * ((1 : F) * rho 94772) = ((1 : F) * rho 94783)

def relationRow6288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94784) * ((-1 : F) * rho 94782 + (1 : F) * rho 94783) = ((2 : F) * rho 94781)

def relationRow6289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94785) * ((2 : F) + (1 : F) * rho 94782 + (-1 : F) * rho 94783) = ((1 : F) * rho 94782 + (1 : F) * rho 94783)

def relationLc2851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 48⟩, ⟨(1 : F), 94169, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94784 + (1 : F) * rho 94785) * (relationLc2851 rho) = ((1 : F) * rho 94786)

def relationLc2852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
