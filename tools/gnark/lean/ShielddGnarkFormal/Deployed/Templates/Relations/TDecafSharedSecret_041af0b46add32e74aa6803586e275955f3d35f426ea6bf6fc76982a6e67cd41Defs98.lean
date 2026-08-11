import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs97

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow5157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5162) * ((1 : F) * rho 5162) = ((1 : F) * rho 5165)

def relationRow5158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((-1 : F) * rho 5164 + (1 : F) * rho 5165) = ((2 : F) * rho 5163)

def relationRow5159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5167) * ((2 : F) + (1 : F) * rho 5164 + (-1 : F) * rho 5165) = ((1 : F) * rho 5164 + (1 : F) * rho 5165)

def relationRow5160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((1 : F) * rho 5167) = ((1 : F) * rho 5168)

def relationRow5161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5166) * ((1 : F) * rho 5166) = ((1 : F) * rho 5169)

def relationRow5162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5167) * ((1 : F) * rho 5167) = ((1 : F) * rho 5170)

def relationRow5163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5171) * ((-1 : F) * rho 5169 + (1 : F) * rho 5170) = ((2 : F) * rho 5168)

def relationRow5164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * ((2 : F) + (1 : F) * rho 5169 + (-1 : F) * rho 5170) = ((1 : F) * rho 5169 + (1 : F) * rho 5170)

def relationRow5165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5173)

def relationRow5166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 197) * ((1 : F) * rho 4577 + (1 : F) * rho 5173) = ((1 : F) * rho 5174)

def relationRow5167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5175)

def relationRow5168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5176)

def relationRow5169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 197) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5176) = ((1 : F) * rho 5177)

def relationRow5170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5178)

def relationRow5171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5171 + (1 : F) * rho 5172) * ((1 : F) + (1 : F) * rho 5174 + (1 : F) * rho 5175 + (1 : F) * rho 5177 + (1 : F) * rho 5178) = ((1 : F) * rho 5179)

def relationRow5172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5171) * ((1 : F) + (1 : F) * rho 5177 + (1 : F) * rho 5178) = ((1 : F) * rho 5180)

def relationRow5173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5172) * ((1 : F) * rho 5174 + (1 : F) * rho 5175) = ((1 : F) * rho 5181)

def relationRow5174 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5180) * ((1 : F) * rho 5181) = ((1 : F) * rho 5182)

def relationRow5175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5183) * ((1 : F) + (1 : F) * rho 5182) = ((1 : F) * rho 5180 + (1 : F) * rho 5181)

def relationRow5176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5184) * ((1 : F) + (-1 : F) * rho 5182) = ((1 : F) * rho 5179 + (-1 : F) * rho 5180 + (-1 : F) * rho 5181)

def relationRow5177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5183) * ((1 : F) * rho 5184) = ((1 : F) * rho 5185)

def relationRow5178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5183) * ((1 : F) * rho 5183) = ((1 : F) * rho 5186)

def relationRow5179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5184) * ((1 : F) * rho 5184) = ((1 : F) * rho 5187)

def relationRow5180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5188) * ((-1 : F) * rho 5186 + (1 : F) * rho 5187) = ((2 : F) * rho 5185)

def relationRow5181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5189) * ((2 : F) + (1 : F) * rho 5186 + (-1 : F) * rho 5187) = ((1 : F) * rho 5186 + (1 : F) * rho 5187)

def relationRow5182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5188) * ((1 : F) * rho 5189) = ((1 : F) * rho 5190)

def relationRow5183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5188) * ((1 : F) * rho 5188) = ((1 : F) * rho 5191)

def relationRow5184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5189) * ((1 : F) * rho 5189) = ((1 : F) * rho 5192)

def relationRow5185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5193) * ((-1 : F) * rho 5191 + (1 : F) * rho 5192) = ((2 : F) * rho 5190)

def relationRow5186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((2 : F) + (1 : F) * rho 5191 + (-1 : F) * rho 5192) = ((1 : F) * rho 5191 + (1 : F) * rho 5192)

def relationRow5187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5195)

def relationRow5188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * ((1 : F) * rho 4577 + (1 : F) * rho 5195) = ((1 : F) * rho 5196)

def relationRow5189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5197)

def relationRow5190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5198)

def relationRow5191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5198) = ((1 : F) * rho 5199)

def relationRow5192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5200)

def relationRow5193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5193 + (1 : F) * rho 5194) * ((1 : F) + (1 : F) * rho 5196 + (1 : F) * rho 5197 + (1 : F) * rho 5199 + (1 : F) * rho 5200) = ((1 : F) * rho 5201)

def relationRow5194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5193) * ((1 : F) + (1 : F) * rho 5199 + (1 : F) * rho 5200) = ((1 : F) * rho 5202)

def relationRow5195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((1 : F) * rho 5196 + (1 : F) * rho 5197) = ((1 : F) * rho 5203)

def relationRow5196 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5202) * ((1 : F) * rho 5203) = ((1 : F) * rho 5204)

def relationRow5197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((1 : F) + (1 : F) * rho 5204) = ((1 : F) * rho 5202 + (1 : F) * rho 5203)

def relationRow5198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5206) * ((1 : F) + (-1 : F) * rho 5204) = ((1 : F) * rho 5201 + (-1 : F) * rho 5202 + (-1 : F) * rho 5203)

def relationRow5199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((1 : F) * rho 5206) = ((1 : F) * rho 5207)

def relationRow5200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((1 : F) * rho 5205) = ((1 : F) * rho 5208)

def relationRow5201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5206) * ((1 : F) * rho 5206) = ((1 : F) * rho 5209)

def relationRow5202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5210) * ((-1 : F) * rho 5208 + (1 : F) * rho 5209) = ((2 : F) * rho 5207)

def relationRow5203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5211) * ((2 : F) + (1 : F) * rho 5208 + (-1 : F) * rho 5209) = ((1 : F) * rho 5208 + (1 : F) * rho 5209)

def relationRow5204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5210) * ((1 : F) * rho 5211) = ((1 : F) * rho 5212)

def relationRow5205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5210) * ((1 : F) * rho 5210) = ((1 : F) * rho 5213)

def relationRow5206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5211) * ((1 : F) * rho 5211) = ((1 : F) * rho 5214)

def relationRow5207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * ((-1 : F) * rho 5213 + (1 : F) * rho 5214) = ((2 : F) * rho 5212)

def relationRow5208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5216) * ((2 : F) + (1 : F) * rho 5213 + (-1 : F) * rho 5214) = ((1 : F) * rho 5213 + (1 : F) * rho 5214)

def relationRow5209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5217)

def relationRow5210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 193) * ((1 : F) * rho 4577 + (1 : F) * rho 5217) = ((1 : F) * rho 5218)

def relationRow5211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5219)

def relationRow5212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5220)

def relationRow5213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 193) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5220) = ((1 : F) * rho 5221)

def relationRow5214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5222)

def relationRow5215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215 + (1 : F) * rho 5216) * ((1 : F) + (1 : F) * rho 5218 + (1 : F) * rho 5219 + (1 : F) * rho 5221 + (1 : F) * rho 5222) = ((1 : F) * rho 5223)

def relationRow5216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5215) * ((1 : F) + (1 : F) * rho 5221 + (1 : F) * rho 5222) = ((1 : F) * rho 5224)

def relationRow5217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5216) * ((1 : F) * rho 5218 + (1 : F) * rho 5219) = ((1 : F) * rho 5225)

def relationRow5218 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5224) * ((1 : F) * rho 5225) = ((1 : F) * rho 5226)

def relationRow5219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5227) * ((1 : F) + (1 : F) * rho 5226) = ((1 : F) * rho 5224 + (1 : F) * rho 5225)

def relationRow5220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * ((1 : F) + (-1 : F) * rho 5226) = ((1 : F) * rho 5223 + (-1 : F) * rho 5224 + (-1 : F) * rho 5225)

def relationRow5221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5227) * ((1 : F) * rho 5228) = ((1 : F) * rho 5229)

def relationRow5222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5227) * ((1 : F) * rho 5227) = ((1 : F) * rho 5230)

def relationRow5223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5228) * ((1 : F) * rho 5228) = ((1 : F) * rho 5231)

def relationRow5224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5232) * ((-1 : F) * rho 5230 + (1 : F) * rho 5231) = ((2 : F) * rho 5229)

def relationRow5225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5233) * ((2 : F) + (1 : F) * rho 5230 + (-1 : F) * rho 5231) = ((1 : F) * rho 5230 + (1 : F) * rho 5231)

def relationRow5226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5232) * ((1 : F) * rho 5233) = ((1 : F) * rho 5234)

def relationRow5227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5232) * ((1 : F) * rho 5232) = ((1 : F) * rho 5235)

def relationRow5228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5233) * ((1 : F) * rho 5233) = ((1 : F) * rho 5236)

def relationRow5229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5237) * ((-1 : F) * rho 5235 + (1 : F) * rho 5236) = ((2 : F) * rho 5234)

def relationRow5230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5238) * ((2 : F) + (1 : F) * rho 5235 + (-1 : F) * rho 5236) = ((1 : F) * rho 5235 + (1 : F) * rho 5236)

def relationRow5231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5239)

def relationRow5232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 191) * ((1 : F) * rho 4577 + (1 : F) * rho 5239) = ((1 : F) * rho 5240)

def relationRow5233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5241)

def relationRow5234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5242)

def relationRow5235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 191) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5242) = ((1 : F) * rho 5243)

def relationRow5236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5244)

def relationRow5237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5237 + (1 : F) * rho 5238) * ((1 : F) + (1 : F) * rho 5240 + (1 : F) * rho 5241 + (1 : F) * rho 5243 + (1 : F) * rho 5244) = ((1 : F) * rho 5245)

def relationRow5238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5237) * ((1 : F) + (1 : F) * rho 5243 + (1 : F) * rho 5244) = ((1 : F) * rho 5246)

def relationRow5239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5238) * ((1 : F) * rho 5240 + (1 : F) * rho 5241) = ((1 : F) * rho 5247)

def relationRow5240 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5246) * ((1 : F) * rho 5247) = ((1 : F) * rho 5248)

def relationRow5241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5249) * ((1 : F) + (1 : F) * rho 5248) = ((1 : F) * rho 5246 + (1 : F) * rho 5247)

def relationRow5242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((1 : F) + (-1 : F) * rho 5248) = ((1 : F) * rho 5245 + (-1 : F) * rho 5246 + (-1 : F) * rho 5247)

def relationRow5243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5249) * ((1 : F) * rho 5250) = ((1 : F) * rho 5251)

def relationRow5244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5249) * ((1 : F) * rho 5249) = ((1 : F) * rho 5252)

def relationRow5245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5250) * ((1 : F) * rho 5250) = ((1 : F) * rho 5253)

def relationRow5246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5254) * ((-1 : F) * rho 5252 + (1 : F) * rho 5253) = ((2 : F) * rho 5251)

def relationRow5247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5255) * ((2 : F) + (1 : F) * rho 5252 + (-1 : F) * rho 5253) = ((1 : F) * rho 5252 + (1 : F) * rho 5253)

def relationRow5248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5254) * ((1 : F) * rho 5255) = ((1 : F) * rho 5256)

def relationRow5249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5254) * ((1 : F) * rho 5254) = ((1 : F) * rho 5257)

def relationRow5250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5255) * ((1 : F) * rho 5255) = ((1 : F) * rho 5258)

def relationRow5251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5259) * ((-1 : F) * rho 5257 + (1 : F) * rho 5258) = ((2 : F) * rho 5256)

def relationRow5252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5260) * ((2 : F) + (1 : F) * rho 5257 + (-1 : F) * rho 5258) = ((1 : F) * rho 5257 + (1 : F) * rho 5258)

def relationRow5253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5261)

def relationRow5254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 189) * ((1 : F) * rho 4577 + (1 : F) * rho 5261) = ((1 : F) * rho 5262)

def relationRow5255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5263)

def relationRow5256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5264)

def relationRow5257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 189) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5264) = ((1 : F) * rho 5265)

def relationRow5258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5266)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
