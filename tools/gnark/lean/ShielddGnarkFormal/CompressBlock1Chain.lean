import ShielddGnarkFormal.CompressToFieldBridge
import ShielddGnarkFormal.CanonicalFqBitsChainAcc
import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.RvkToBinary

set_option maxHeartbeats 20000000
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.Extracted.DecafCompressToField

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits
variable [Fact (Nat.Prime Order)]

def block1_W : ℕ → ℕ := fun n => (if n ≤ 47 then 569 else (if n ≤ 48 then 568 else (if n ≤ 52 then 567 else (if n ≤ 57 then 566 else (if n ≤ 59 then 565 else (if n ≤ 64 then 564 else (if n ≤ 92 then 563 else (if n ≤ 94 then 562 else (if n ≤ 95 then 561 else (if n ≤ 97 then 560 else (if n ≤ 98 then 559 else (if n ≤ 99 then 558 else (if n ≤ 100 then 557 else (if n ≤ 101 then 556 else (if n ≤ 102 then 555 else (if n ≤ 103 then 554 else (if n ≤ 105 then 553 else (if n ≤ 106 then 552 else (if n ≤ 108 then 551 else (if n ≤ 109 then 550 else (if n ≤ 110 then 549 else (if n ≤ 113 then 548 else (if n ≤ 115 then 547 else (if n ≤ 117 then 546 else (if n ≤ 119 then 545 else (if n ≤ 120 then 544 else (if n ≤ 123 then 543 else (if n ≤ 124 then 542 else (if n ≤ 126 then 541 else (if n ≤ 128 then 540 else (if n ≤ 140 then 539 else (if n ≤ 141 then 538 else (if n ≤ 143 then 537 else (if n ≤ 144 then 536 else (if n ≤ 145 then 535 else (if n ≤ 146 then 534 else (if n ≤ 148 then 533 else (if n ≤ 149 then 532 else (if n ≤ 154 then 531 else (if n ≤ 155 then 530 else (if n ≤ 156 then 529 else (if n ≤ 158 then 528 else (if n ≤ 161 then 527 else (if n ≤ 162 then 526 else (if n ≤ 163 then 525 else (if n ≤ 164 then 524 else (if n ≤ 168 then 523 else (if n ≤ 170 then 522 else (if n ≤ 171 then 521 else (if n ≤ 174 then 520 else (if n ≤ 178 then 519 else (if n ≤ 180 then 518 else (if n ≤ 181 then 517 else (if n ≤ 183 then 516 else (if n ≤ 189 then 515 else (if n ≤ 190 then 514 else (if n ≤ 193 then 513 else (if n ≤ 194 then 512 else (if n ≤ 196 then 511 else (if n ≤ 198 then 510 else (if n ≤ 200 then 509 else (if n ≤ 202 then 508 else (if n ≤ 205 then 507 else (if n ≤ 207 then 506 else (if n ≤ 210 then 505 else (if n ≤ 211 then 504 else (if n ≤ 213 then 503 else (if n ≤ 217 then 502 else (if n ≤ 219 then 501 else (if n ≤ 220 then 500 else (if n ≤ 223 then 499 else (if n ≤ 225 then 498 else (if n ≤ 226 then 497 else (if n ≤ 227 then 496 else (if n ≤ 228 then 495 else (if n ≤ 230 then 494 else (if n ≤ 232 then 493 else (if n ≤ 234 then 492 else (if n ≤ 237 then 491 else (if n ≤ 238 then 490 else (if n ≤ 240 then 489 else (if n ≤ 241 then 488 else (if n ≤ 243 then 487 else (if n ≤ 245 then 486 else (if n ≤ 247 then 485 else (if n ≤ 249 then 484 else (if n ≤ 252 then 483 else 1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
noncomputable def block1_flag (rho : Nat → F) : ℕ → F := fun n => if 253 ≤ n then 1 else rho (block1_W n)

theorem block1_canonical (rho : Nat → F)
    (hb0 : ((1 : F) * rho 231) * ((1 : F) * rho 0 + (-1 : F) * rho 231) = ((0 : F) * rho 0))
    (hb1 : ((1 : F) * rho 232) * ((1 : F) * rho 0 + (-1 : F) * rho 232) = ((0 : F) * rho 0))
    (hb2 : ((1 : F) * rho 233) * ((1 : F) * rho 0 + (-1 : F) * rho 233) = ((0 : F) * rho 0))
    (hb3 : ((1 : F) * rho 234) * ((1 : F) * rho 0 + (-1 : F) * rho 234) = ((0 : F) * rho 0))
    (hb4 : ((1 : F) * rho 235) * ((1 : F) * rho 0 + (-1 : F) * rho 235) = ((0 : F) * rho 0))
    (hb5 : ((1 : F) * rho 236) * ((1 : F) * rho 0 + (-1 : F) * rho 236) = ((0 : F) * rho 0))
    (hb6 : ((1 : F) * rho 237) * ((1 : F) * rho 0 + (-1 : F) * rho 237) = ((0 : F) * rho 0))
    (hb7 : ((1 : F) * rho 238) * ((1 : F) * rho 0 + (-1 : F) * rho 238) = ((0 : F) * rho 0))
    (hb8 : ((1 : F) * rho 239) * ((1 : F) * rho 0 + (-1 : F) * rho 239) = ((0 : F) * rho 0))
    (hb9 : ((1 : F) * rho 240) * ((1 : F) * rho 0 + (-1 : F) * rho 240) = ((0 : F) * rho 0))
    (hb10 : ((1 : F) * rho 241) * ((1 : F) * rho 0 + (-1 : F) * rho 241) = ((0 : F) * rho 0))
    (hb11 : ((1 : F) * rho 242) * ((1 : F) * rho 0 + (-1 : F) * rho 242) = ((0 : F) * rho 0))
    (hb12 : ((1 : F) * rho 243) * ((1 : F) * rho 0 + (-1 : F) * rho 243) = ((0 : F) * rho 0))
    (hb13 : ((1 : F) * rho 244) * ((1 : F) * rho 0 + (-1 : F) * rho 244) = ((0 : F) * rho 0))
    (hb14 : ((1 : F) * rho 245) * ((1 : F) * rho 0 + (-1 : F) * rho 245) = ((0 : F) * rho 0))
    (hb15 : ((1 : F) * rho 246) * ((1 : F) * rho 0 + (-1 : F) * rho 246) = ((0 : F) * rho 0))
    (hb16 : ((1 : F) * rho 247) * ((1 : F) * rho 0 + (-1 : F) * rho 247) = ((0 : F) * rho 0))
    (hb17 : ((1 : F) * rho 248) * ((1 : F) * rho 0 + (-1 : F) * rho 248) = ((0 : F) * rho 0))
    (hb18 : ((1 : F) * rho 249) * ((1 : F) * rho 0 + (-1 : F) * rho 249) = ((0 : F) * rho 0))
    (hb19 : ((1 : F) * rho 250) * ((1 : F) * rho 0 + (-1 : F) * rho 250) = ((0 : F) * rho 0))
    (hb20 : ((1 : F) * rho 251) * ((1 : F) * rho 0 + (-1 : F) * rho 251) = ((0 : F) * rho 0))
    (hb21 : ((1 : F) * rho 252) * ((1 : F) * rho 0 + (-1 : F) * rho 252) = ((0 : F) * rho 0))
    (hb22 : ((1 : F) * rho 253) * ((1 : F) * rho 0 + (-1 : F) * rho 253) = ((0 : F) * rho 0))
    (hb23 : ((1 : F) * rho 254) * ((1 : F) * rho 0 + (-1 : F) * rho 254) = ((0 : F) * rho 0))
    (hb24 : ((1 : F) * rho 255) * ((1 : F) * rho 0 + (-1 : F) * rho 255) = ((0 : F) * rho 0))
    (hb25 : ((1 : F) * rho 256) * ((1 : F) * rho 0 + (-1 : F) * rho 256) = ((0 : F) * rho 0))
    (hb26 : ((1 : F) * rho 257) * ((1 : F) * rho 0 + (-1 : F) * rho 257) = ((0 : F) * rho 0))
    (hb27 : ((1 : F) * rho 258) * ((1 : F) * rho 0 + (-1 : F) * rho 258) = ((0 : F) * rho 0))
    (hb28 : ((1 : F) * rho 259) * ((1 : F) * rho 0 + (-1 : F) * rho 259) = ((0 : F) * rho 0))
    (hb29 : ((1 : F) * rho 260) * ((1 : F) * rho 0 + (-1 : F) * rho 260) = ((0 : F) * rho 0))
    (hb30 : ((1 : F) * rho 261) * ((1 : F) * rho 0 + (-1 : F) * rho 261) = ((0 : F) * rho 0))
    (hb31 : ((1 : F) * rho 262) * ((1 : F) * rho 0 + (-1 : F) * rho 262) = ((0 : F) * rho 0))
    (hb32 : ((1 : F) * rho 263) * ((1 : F) * rho 0 + (-1 : F) * rho 263) = ((0 : F) * rho 0))
    (hb33 : ((1 : F) * rho 264) * ((1 : F) * rho 0 + (-1 : F) * rho 264) = ((0 : F) * rho 0))
    (hb34 : ((1 : F) * rho 265) * ((1 : F) * rho 0 + (-1 : F) * rho 265) = ((0 : F) * rho 0))
    (hb35 : ((1 : F) * rho 266) * ((1 : F) * rho 0 + (-1 : F) * rho 266) = ((0 : F) * rho 0))
    (hb36 : ((1 : F) * rho 267) * ((1 : F) * rho 0 + (-1 : F) * rho 267) = ((0 : F) * rho 0))
    (hb37 : ((1 : F) * rho 268) * ((1 : F) * rho 0 + (-1 : F) * rho 268) = ((0 : F) * rho 0))
    (hb38 : ((1 : F) * rho 269) * ((1 : F) * rho 0 + (-1 : F) * rho 269) = ((0 : F) * rho 0))
    (hb39 : ((1 : F) * rho 270) * ((1 : F) * rho 0 + (-1 : F) * rho 270) = ((0 : F) * rho 0))
    (hb40 : ((1 : F) * rho 271) * ((1 : F) * rho 0 + (-1 : F) * rho 271) = ((0 : F) * rho 0))
    (hb41 : ((1 : F) * rho 272) * ((1 : F) * rho 0 + (-1 : F) * rho 272) = ((0 : F) * rho 0))
    (hb42 : ((1 : F) * rho 273) * ((1 : F) * rho 0 + (-1 : F) * rho 273) = ((0 : F) * rho 0))
    (hb43 : ((1 : F) * rho 274) * ((1 : F) * rho 0 + (-1 : F) * rho 274) = ((0 : F) * rho 0))
    (hb44 : ((1 : F) * rho 275) * ((1 : F) * rho 0 + (-1 : F) * rho 275) = ((0 : F) * rho 0))
    (hb45 : ((1 : F) * rho 276) * ((1 : F) * rho 0 + (-1 : F) * rho 276) = ((0 : F) * rho 0))
    (hb46 : ((1 : F) * rho 277) * ((1 : F) * rho 0 + (-1 : F) * rho 277) = ((0 : F) * rho 0))
    (hb47 : ((1 : F) * rho 278) * ((1 : F) * rho 0 + (-1 : F) * rho 278) = ((0 : F) * rho 0))
    (hb48 : ((1 : F) * rho 279) * ((1 : F) * rho 0 + (-1 : F) * rho 279) = ((0 : F) * rho 0))
    (hb49 : ((1 : F) * rho 280) * ((1 : F) * rho 0 + (-1 : F) * rho 280) = ((0 : F) * rho 0))
    (hb50 : ((1 : F) * rho 281) * ((1 : F) * rho 0 + (-1 : F) * rho 281) = ((0 : F) * rho 0))
    (hb51 : ((1 : F) * rho 282) * ((1 : F) * rho 0 + (-1 : F) * rho 282) = ((0 : F) * rho 0))
    (hb52 : ((1 : F) * rho 283) * ((1 : F) * rho 0 + (-1 : F) * rho 283) = ((0 : F) * rho 0))
    (hb53 : ((1 : F) * rho 284) * ((1 : F) * rho 0 + (-1 : F) * rho 284) = ((0 : F) * rho 0))
    (hb54 : ((1 : F) * rho 285) * ((1 : F) * rho 0 + (-1 : F) * rho 285) = ((0 : F) * rho 0))
    (hb55 : ((1 : F) * rho 286) * ((1 : F) * rho 0 + (-1 : F) * rho 286) = ((0 : F) * rho 0))
    (hb56 : ((1 : F) * rho 287) * ((1 : F) * rho 0 + (-1 : F) * rho 287) = ((0 : F) * rho 0))
    (hb57 : ((1 : F) * rho 288) * ((1 : F) * rho 0 + (-1 : F) * rho 288) = ((0 : F) * rho 0))
    (hb58 : ((1 : F) * rho 289) * ((1 : F) * rho 0 + (-1 : F) * rho 289) = ((0 : F) * rho 0))
    (hb59 : ((1 : F) * rho 290) * ((1 : F) * rho 0 + (-1 : F) * rho 290) = ((0 : F) * rho 0))
    (hb60 : ((1 : F) * rho 291) * ((1 : F) * rho 0 + (-1 : F) * rho 291) = ((0 : F) * rho 0))
    (hb61 : ((1 : F) * rho 292) * ((1 : F) * rho 0 + (-1 : F) * rho 292) = ((0 : F) * rho 0))
    (hb62 : ((1 : F) * rho 293) * ((1 : F) * rho 0 + (-1 : F) * rho 293) = ((0 : F) * rho 0))
    (hb63 : ((1 : F) * rho 294) * ((1 : F) * rho 0 + (-1 : F) * rho 294) = ((0 : F) * rho 0))
    (hb64 : ((1 : F) * rho 295) * ((1 : F) * rho 0 + (-1 : F) * rho 295) = ((0 : F) * rho 0))
    (hb65 : ((1 : F) * rho 296) * ((1 : F) * rho 0 + (-1 : F) * rho 296) = ((0 : F) * rho 0))
    (hb66 : ((1 : F) * rho 297) * ((1 : F) * rho 0 + (-1 : F) * rho 297) = ((0 : F) * rho 0))
    (hb67 : ((1 : F) * rho 298) * ((1 : F) * rho 0 + (-1 : F) * rho 298) = ((0 : F) * rho 0))
    (hb68 : ((1 : F) * rho 299) * ((1 : F) * rho 0 + (-1 : F) * rho 299) = ((0 : F) * rho 0))
    (hb69 : ((1 : F) * rho 300) * ((1 : F) * rho 0 + (-1 : F) * rho 300) = ((0 : F) * rho 0))
    (hb70 : ((1 : F) * rho 301) * ((1 : F) * rho 0 + (-1 : F) * rho 301) = ((0 : F) * rho 0))
    (hb71 : ((1 : F) * rho 302) * ((1 : F) * rho 0 + (-1 : F) * rho 302) = ((0 : F) * rho 0))
    (hb72 : ((1 : F) * rho 303) * ((1 : F) * rho 0 + (-1 : F) * rho 303) = ((0 : F) * rho 0))
    (hb73 : ((1 : F) * rho 304) * ((1 : F) * rho 0 + (-1 : F) * rho 304) = ((0 : F) * rho 0))
    (hb74 : ((1 : F) * rho 305) * ((1 : F) * rho 0 + (-1 : F) * rho 305) = ((0 : F) * rho 0))
    (hb75 : ((1 : F) * rho 306) * ((1 : F) * rho 0 + (-1 : F) * rho 306) = ((0 : F) * rho 0))
    (hb76 : ((1 : F) * rho 307) * ((1 : F) * rho 0 + (-1 : F) * rho 307) = ((0 : F) * rho 0))
    (hb77 : ((1 : F) * rho 308) * ((1 : F) * rho 0 + (-1 : F) * rho 308) = ((0 : F) * rho 0))
    (hb78 : ((1 : F) * rho 309) * ((1 : F) * rho 0 + (-1 : F) * rho 309) = ((0 : F) * rho 0))
    (hb79 : ((1 : F) * rho 310) * ((1 : F) * rho 0 + (-1 : F) * rho 310) = ((0 : F) * rho 0))
    (hb80 : ((1 : F) * rho 311) * ((1 : F) * rho 0 + (-1 : F) * rho 311) = ((0 : F) * rho 0))
    (hb81 : ((1 : F) * rho 312) * ((1 : F) * rho 0 + (-1 : F) * rho 312) = ((0 : F) * rho 0))
    (hb82 : ((1 : F) * rho 313) * ((1 : F) * rho 0 + (-1 : F) * rho 313) = ((0 : F) * rho 0))
    (hb83 : ((1 : F) * rho 314) * ((1 : F) * rho 0 + (-1 : F) * rho 314) = ((0 : F) * rho 0))
    (hb84 : ((1 : F) * rho 315) * ((1 : F) * rho 0 + (-1 : F) * rho 315) = ((0 : F) * rho 0))
    (hb85 : ((1 : F) * rho 316) * ((1 : F) * rho 0 + (-1 : F) * rho 316) = ((0 : F) * rho 0))
    (hb86 : ((1 : F) * rho 317) * ((1 : F) * rho 0 + (-1 : F) * rho 317) = ((0 : F) * rho 0))
    (hb87 : ((1 : F) * rho 318) * ((1 : F) * rho 0 + (-1 : F) * rho 318) = ((0 : F) * rho 0))
    (hb88 : ((1 : F) * rho 319) * ((1 : F) * rho 0 + (-1 : F) * rho 319) = ((0 : F) * rho 0))
    (hb89 : ((1 : F) * rho 320) * ((1 : F) * rho 0 + (-1 : F) * rho 320) = ((0 : F) * rho 0))
    (hb90 : ((1 : F) * rho 321) * ((1 : F) * rho 0 + (-1 : F) * rho 321) = ((0 : F) * rho 0))
    (hb91 : ((1 : F) * rho 322) * ((1 : F) * rho 0 + (-1 : F) * rho 322) = ((0 : F) * rho 0))
    (hb92 : ((1 : F) * rho 323) * ((1 : F) * rho 0 + (-1 : F) * rho 323) = ((0 : F) * rho 0))
    (hb93 : ((1 : F) * rho 324) * ((1 : F) * rho 0 + (-1 : F) * rho 324) = ((0 : F) * rho 0))
    (hb94 : ((1 : F) * rho 325) * ((1 : F) * rho 0 + (-1 : F) * rho 325) = ((0 : F) * rho 0))
    (hb95 : ((1 : F) * rho 326) * ((1 : F) * rho 0 + (-1 : F) * rho 326) = ((0 : F) * rho 0))
    (hb96 : ((1 : F) * rho 327) * ((1 : F) * rho 0 + (-1 : F) * rho 327) = ((0 : F) * rho 0))
    (hb97 : ((1 : F) * rho 328) * ((1 : F) * rho 0 + (-1 : F) * rho 328) = ((0 : F) * rho 0))
    (hb98 : ((1 : F) * rho 329) * ((1 : F) * rho 0 + (-1 : F) * rho 329) = ((0 : F) * rho 0))
    (hb99 : ((1 : F) * rho 330) * ((1 : F) * rho 0 + (-1 : F) * rho 330) = ((0 : F) * rho 0))
    (hb100 : ((1 : F) * rho 331) * ((1 : F) * rho 0 + (-1 : F) * rho 331) = ((0 : F) * rho 0))
    (hb101 : ((1 : F) * rho 332) * ((1 : F) * rho 0 + (-1 : F) * rho 332) = ((0 : F) * rho 0))
    (hb102 : ((1 : F) * rho 333) * ((1 : F) * rho 0 + (-1 : F) * rho 333) = ((0 : F) * rho 0))
    (hb103 : ((1 : F) * rho 334) * ((1 : F) * rho 0 + (-1 : F) * rho 334) = ((0 : F) * rho 0))
    (hb104 : ((1 : F) * rho 335) * ((1 : F) * rho 0 + (-1 : F) * rho 335) = ((0 : F) * rho 0))
    (hb105 : ((1 : F) * rho 336) * ((1 : F) * rho 0 + (-1 : F) * rho 336) = ((0 : F) * rho 0))
    (hb106 : ((1 : F) * rho 337) * ((1 : F) * rho 0 + (-1 : F) * rho 337) = ((0 : F) * rho 0))
    (hb107 : ((1 : F) * rho 338) * ((1 : F) * rho 0 + (-1 : F) * rho 338) = ((0 : F) * rho 0))
    (hb108 : ((1 : F) * rho 339) * ((1 : F) * rho 0 + (-1 : F) * rho 339) = ((0 : F) * rho 0))
    (hb109 : ((1 : F) * rho 340) * ((1 : F) * rho 0 + (-1 : F) * rho 340) = ((0 : F) * rho 0))
    (hb110 : ((1 : F) * rho 341) * ((1 : F) * rho 0 + (-1 : F) * rho 341) = ((0 : F) * rho 0))
    (hb111 : ((1 : F) * rho 342) * ((1 : F) * rho 0 + (-1 : F) * rho 342) = ((0 : F) * rho 0))
    (hb112 : ((1 : F) * rho 343) * ((1 : F) * rho 0 + (-1 : F) * rho 343) = ((0 : F) * rho 0))
    (hb113 : ((1 : F) * rho 344) * ((1 : F) * rho 0 + (-1 : F) * rho 344) = ((0 : F) * rho 0))
    (hb114 : ((1 : F) * rho 345) * ((1 : F) * rho 0 + (-1 : F) * rho 345) = ((0 : F) * rho 0))
    (hb115 : ((1 : F) * rho 346) * ((1 : F) * rho 0 + (-1 : F) * rho 346) = ((0 : F) * rho 0))
    (hb116 : ((1 : F) * rho 347) * ((1 : F) * rho 0 + (-1 : F) * rho 347) = ((0 : F) * rho 0))
    (hb117 : ((1 : F) * rho 348) * ((1 : F) * rho 0 + (-1 : F) * rho 348) = ((0 : F) * rho 0))
    (hb118 : ((1 : F) * rho 349) * ((1 : F) * rho 0 + (-1 : F) * rho 349) = ((0 : F) * rho 0))
    (hb119 : ((1 : F) * rho 350) * ((1 : F) * rho 0 + (-1 : F) * rho 350) = ((0 : F) * rho 0))
    (hb120 : ((1 : F) * rho 351) * ((1 : F) * rho 0 + (-1 : F) * rho 351) = ((0 : F) * rho 0))
    (hb121 : ((1 : F) * rho 352) * ((1 : F) * rho 0 + (-1 : F) * rho 352) = ((0 : F) * rho 0))
    (hb122 : ((1 : F) * rho 353) * ((1 : F) * rho 0 + (-1 : F) * rho 353) = ((0 : F) * rho 0))
    (hb123 : ((1 : F) * rho 354) * ((1 : F) * rho 0 + (-1 : F) * rho 354) = ((0 : F) * rho 0))
    (hb124 : ((1 : F) * rho 355) * ((1 : F) * rho 0 + (-1 : F) * rho 355) = ((0 : F) * rho 0))
    (hb125 : ((1 : F) * rho 356) * ((1 : F) * rho 0 + (-1 : F) * rho 356) = ((0 : F) * rho 0))
    (hb126 : ((1 : F) * rho 357) * ((1 : F) * rho 0 + (-1 : F) * rho 357) = ((0 : F) * rho 0))
    (hb127 : ((1 : F) * rho 358) * ((1 : F) * rho 0 + (-1 : F) * rho 358) = ((0 : F) * rho 0))
    (hb128 : ((1 : F) * rho 359) * ((1 : F) * rho 0 + (-1 : F) * rho 359) = ((0 : F) * rho 0))
    (hb129 : ((1 : F) * rho 360) * ((1 : F) * rho 0 + (-1 : F) * rho 360) = ((0 : F) * rho 0))
    (hb130 : ((1 : F) * rho 361) * ((1 : F) * rho 0 + (-1 : F) * rho 361) = ((0 : F) * rho 0))
    (hb131 : ((1 : F) * rho 362) * ((1 : F) * rho 0 + (-1 : F) * rho 362) = ((0 : F) * rho 0))
    (hb132 : ((1 : F) * rho 363) * ((1 : F) * rho 0 + (-1 : F) * rho 363) = ((0 : F) * rho 0))
    (hb133 : ((1 : F) * rho 364) * ((1 : F) * rho 0 + (-1 : F) * rho 364) = ((0 : F) * rho 0))
    (hb134 : ((1 : F) * rho 365) * ((1 : F) * rho 0 + (-1 : F) * rho 365) = ((0 : F) * rho 0))
    (hb135 : ((1 : F) * rho 366) * ((1 : F) * rho 0 + (-1 : F) * rho 366) = ((0 : F) * rho 0))
    (hb136 : ((1 : F) * rho 367) * ((1 : F) * rho 0 + (-1 : F) * rho 367) = ((0 : F) * rho 0))
    (hb137 : ((1 : F) * rho 368) * ((1 : F) * rho 0 + (-1 : F) * rho 368) = ((0 : F) * rho 0))
    (hb138 : ((1 : F) * rho 369) * ((1 : F) * rho 0 + (-1 : F) * rho 369) = ((0 : F) * rho 0))
    (hb139 : ((1 : F) * rho 370) * ((1 : F) * rho 0 + (-1 : F) * rho 370) = ((0 : F) * rho 0))
    (hb140 : ((1 : F) * rho 371) * ((1 : F) * rho 0 + (-1 : F) * rho 371) = ((0 : F) * rho 0))
    (hb141 : ((1 : F) * rho 372) * ((1 : F) * rho 0 + (-1 : F) * rho 372) = ((0 : F) * rho 0))
    (hb142 : ((1 : F) * rho 373) * ((1 : F) * rho 0 + (-1 : F) * rho 373) = ((0 : F) * rho 0))
    (hb143 : ((1 : F) * rho 374) * ((1 : F) * rho 0 + (-1 : F) * rho 374) = ((0 : F) * rho 0))
    (hb144 : ((1 : F) * rho 375) * ((1 : F) * rho 0 + (-1 : F) * rho 375) = ((0 : F) * rho 0))
    (hb145 : ((1 : F) * rho 376) * ((1 : F) * rho 0 + (-1 : F) * rho 376) = ((0 : F) * rho 0))
    (hb146 : ((1 : F) * rho 377) * ((1 : F) * rho 0 + (-1 : F) * rho 377) = ((0 : F) * rho 0))
    (hb147 : ((1 : F) * rho 378) * ((1 : F) * rho 0 + (-1 : F) * rho 378) = ((0 : F) * rho 0))
    (hb148 : ((1 : F) * rho 379) * ((1 : F) * rho 0 + (-1 : F) * rho 379) = ((0 : F) * rho 0))
    (hb149 : ((1 : F) * rho 380) * ((1 : F) * rho 0 + (-1 : F) * rho 380) = ((0 : F) * rho 0))
    (hb150 : ((1 : F) * rho 381) * ((1 : F) * rho 0 + (-1 : F) * rho 381) = ((0 : F) * rho 0))
    (hb151 : ((1 : F) * rho 382) * ((1 : F) * rho 0 + (-1 : F) * rho 382) = ((0 : F) * rho 0))
    (hb152 : ((1 : F) * rho 383) * ((1 : F) * rho 0 + (-1 : F) * rho 383) = ((0 : F) * rho 0))
    (hb153 : ((1 : F) * rho 384) * ((1 : F) * rho 0 + (-1 : F) * rho 384) = ((0 : F) * rho 0))
    (hb154 : ((1 : F) * rho 385) * ((1 : F) * rho 0 + (-1 : F) * rho 385) = ((0 : F) * rho 0))
    (hb155 : ((1 : F) * rho 386) * ((1 : F) * rho 0 + (-1 : F) * rho 386) = ((0 : F) * rho 0))
    (hb156 : ((1 : F) * rho 387) * ((1 : F) * rho 0 + (-1 : F) * rho 387) = ((0 : F) * rho 0))
    (hb157 : ((1 : F) * rho 388) * ((1 : F) * rho 0 + (-1 : F) * rho 388) = ((0 : F) * rho 0))
    (hb158 : ((1 : F) * rho 389) * ((1 : F) * rho 0 + (-1 : F) * rho 389) = ((0 : F) * rho 0))
    (hb159 : ((1 : F) * rho 390) * ((1 : F) * rho 0 + (-1 : F) * rho 390) = ((0 : F) * rho 0))
    (hb160 : ((1 : F) * rho 391) * ((1 : F) * rho 0 + (-1 : F) * rho 391) = ((0 : F) * rho 0))
    (hb161 : ((1 : F) * rho 392) * ((1 : F) * rho 0 + (-1 : F) * rho 392) = ((0 : F) * rho 0))
    (hb162 : ((1 : F) * rho 393) * ((1 : F) * rho 0 + (-1 : F) * rho 393) = ((0 : F) * rho 0))
    (hb163 : ((1 : F) * rho 394) * ((1 : F) * rho 0 + (-1 : F) * rho 394) = ((0 : F) * rho 0))
    (hb164 : ((1 : F) * rho 395) * ((1 : F) * rho 0 + (-1 : F) * rho 395) = ((0 : F) * rho 0))
    (hb165 : ((1 : F) * rho 396) * ((1 : F) * rho 0 + (-1 : F) * rho 396) = ((0 : F) * rho 0))
    (hb166 : ((1 : F) * rho 397) * ((1 : F) * rho 0 + (-1 : F) * rho 397) = ((0 : F) * rho 0))
    (hb167 : ((1 : F) * rho 398) * ((1 : F) * rho 0 + (-1 : F) * rho 398) = ((0 : F) * rho 0))
    (hb168 : ((1 : F) * rho 399) * ((1 : F) * rho 0 + (-1 : F) * rho 399) = ((0 : F) * rho 0))
    (hb169 : ((1 : F) * rho 400) * ((1 : F) * rho 0 + (-1 : F) * rho 400) = ((0 : F) * rho 0))
    (hb170 : ((1 : F) * rho 401) * ((1 : F) * rho 0 + (-1 : F) * rho 401) = ((0 : F) * rho 0))
    (hb171 : ((1 : F) * rho 402) * ((1 : F) * rho 0 + (-1 : F) * rho 402) = ((0 : F) * rho 0))
    (hb172 : ((1 : F) * rho 403) * ((1 : F) * rho 0 + (-1 : F) * rho 403) = ((0 : F) * rho 0))
    (hb173 : ((1 : F) * rho 404) * ((1 : F) * rho 0 + (-1 : F) * rho 404) = ((0 : F) * rho 0))
    (hb174 : ((1 : F) * rho 405) * ((1 : F) * rho 0 + (-1 : F) * rho 405) = ((0 : F) * rho 0))
    (hb175 : ((1 : F) * rho 406) * ((1 : F) * rho 0 + (-1 : F) * rho 406) = ((0 : F) * rho 0))
    (hb176 : ((1 : F) * rho 407) * ((1 : F) * rho 0 + (-1 : F) * rho 407) = ((0 : F) * rho 0))
    (hb177 : ((1 : F) * rho 408) * ((1 : F) * rho 0 + (-1 : F) * rho 408) = ((0 : F) * rho 0))
    (hb178 : ((1 : F) * rho 409) * ((1 : F) * rho 0 + (-1 : F) * rho 409) = ((0 : F) * rho 0))
    (hb179 : ((1 : F) * rho 410) * ((1 : F) * rho 0 + (-1 : F) * rho 410) = ((0 : F) * rho 0))
    (hb180 : ((1 : F) * rho 411) * ((1 : F) * rho 0 + (-1 : F) * rho 411) = ((0 : F) * rho 0))
    (hb181 : ((1 : F) * rho 412) * ((1 : F) * rho 0 + (-1 : F) * rho 412) = ((0 : F) * rho 0))
    (hb182 : ((1 : F) * rho 413) * ((1 : F) * rho 0 + (-1 : F) * rho 413) = ((0 : F) * rho 0))
    (hb183 : ((1 : F) * rho 414) * ((1 : F) * rho 0 + (-1 : F) * rho 414) = ((0 : F) * rho 0))
    (hb184 : ((1 : F) * rho 415) * ((1 : F) * rho 0 + (-1 : F) * rho 415) = ((0 : F) * rho 0))
    (hb185 : ((1 : F) * rho 416) * ((1 : F) * rho 0 + (-1 : F) * rho 416) = ((0 : F) * rho 0))
    (hb186 : ((1 : F) * rho 417) * ((1 : F) * rho 0 + (-1 : F) * rho 417) = ((0 : F) * rho 0))
    (hb187 : ((1 : F) * rho 418) * ((1 : F) * rho 0 + (-1 : F) * rho 418) = ((0 : F) * rho 0))
    (hb188 : ((1 : F) * rho 419) * ((1 : F) * rho 0 + (-1 : F) * rho 419) = ((0 : F) * rho 0))
    (hb189 : ((1 : F) * rho 420) * ((1 : F) * rho 0 + (-1 : F) * rho 420) = ((0 : F) * rho 0))
    (hb190 : ((1 : F) * rho 421) * ((1 : F) * rho 0 + (-1 : F) * rho 421) = ((0 : F) * rho 0))
    (hb191 : ((1 : F) * rho 422) * ((1 : F) * rho 0 + (-1 : F) * rho 422) = ((0 : F) * rho 0))
    (hb192 : ((1 : F) * rho 423) * ((1 : F) * rho 0 + (-1 : F) * rho 423) = ((0 : F) * rho 0))
    (hb193 : ((1 : F) * rho 424) * ((1 : F) * rho 0 + (-1 : F) * rho 424) = ((0 : F) * rho 0))
    (hb194 : ((1 : F) * rho 425) * ((1 : F) * rho 0 + (-1 : F) * rho 425) = ((0 : F) * rho 0))
    (hb195 : ((1 : F) * rho 426) * ((1 : F) * rho 0 + (-1 : F) * rho 426) = ((0 : F) * rho 0))
    (hb196 : ((1 : F) * rho 427) * ((1 : F) * rho 0 + (-1 : F) * rho 427) = ((0 : F) * rho 0))
    (hb197 : ((1 : F) * rho 428) * ((1 : F) * rho 0 + (-1 : F) * rho 428) = ((0 : F) * rho 0))
    (hb198 : ((1 : F) * rho 429) * ((1 : F) * rho 0 + (-1 : F) * rho 429) = ((0 : F) * rho 0))
    (hb199 : ((1 : F) * rho 430) * ((1 : F) * rho 0 + (-1 : F) * rho 430) = ((0 : F) * rho 0))
    (hb200 : ((1 : F) * rho 431) * ((1 : F) * rho 0 + (-1 : F) * rho 431) = ((0 : F) * rho 0))
    (hb201 : ((1 : F) * rho 432) * ((1 : F) * rho 0 + (-1 : F) * rho 432) = ((0 : F) * rho 0))
    (hb202 : ((1 : F) * rho 433) * ((1 : F) * rho 0 + (-1 : F) * rho 433) = ((0 : F) * rho 0))
    (hb203 : ((1 : F) * rho 434) * ((1 : F) * rho 0 + (-1 : F) * rho 434) = ((0 : F) * rho 0))
    (hb204 : ((1 : F) * rho 435) * ((1 : F) * rho 0 + (-1 : F) * rho 435) = ((0 : F) * rho 0))
    (hb205 : ((1 : F) * rho 436) * ((1 : F) * rho 0 + (-1 : F) * rho 436) = ((0 : F) * rho 0))
    (hb206 : ((1 : F) * rho 437) * ((1 : F) * rho 0 + (-1 : F) * rho 437) = ((0 : F) * rho 0))
    (hb207 : ((1 : F) * rho 438) * ((1 : F) * rho 0 + (-1 : F) * rho 438) = ((0 : F) * rho 0))
    (hb208 : ((1 : F) * rho 439) * ((1 : F) * rho 0 + (-1 : F) * rho 439) = ((0 : F) * rho 0))
    (hb209 : ((1 : F) * rho 440) * ((1 : F) * rho 0 + (-1 : F) * rho 440) = ((0 : F) * rho 0))
    (hb210 : ((1 : F) * rho 441) * ((1 : F) * rho 0 + (-1 : F) * rho 441) = ((0 : F) * rho 0))
    (hb211 : ((1 : F) * rho 442) * ((1 : F) * rho 0 + (-1 : F) * rho 442) = ((0 : F) * rho 0))
    (hb212 : ((1 : F) * rho 443) * ((1 : F) * rho 0 + (-1 : F) * rho 443) = ((0 : F) * rho 0))
    (hb213 : ((1 : F) * rho 444) * ((1 : F) * rho 0 + (-1 : F) * rho 444) = ((0 : F) * rho 0))
    (hb214 : ((1 : F) * rho 445) * ((1 : F) * rho 0 + (-1 : F) * rho 445) = ((0 : F) * rho 0))
    (hb215 : ((1 : F) * rho 446) * ((1 : F) * rho 0 + (-1 : F) * rho 446) = ((0 : F) * rho 0))
    (hb216 : ((1 : F) * rho 447) * ((1 : F) * rho 0 + (-1 : F) * rho 447) = ((0 : F) * rho 0))
    (hb217 : ((1 : F) * rho 448) * ((1 : F) * rho 0 + (-1 : F) * rho 448) = ((0 : F) * rho 0))
    (hb218 : ((1 : F) * rho 449) * ((1 : F) * rho 0 + (-1 : F) * rho 449) = ((0 : F) * rho 0))
    (hb219 : ((1 : F) * rho 450) * ((1 : F) * rho 0 + (-1 : F) * rho 450) = ((0 : F) * rho 0))
    (hb220 : ((1 : F) * rho 451) * ((1 : F) * rho 0 + (-1 : F) * rho 451) = ((0 : F) * rho 0))
    (hb221 : ((1 : F) * rho 452) * ((1 : F) * rho 0 + (-1 : F) * rho 452) = ((0 : F) * rho 0))
    (hb222 : ((1 : F) * rho 453) * ((1 : F) * rho 0 + (-1 : F) * rho 453) = ((0 : F) * rho 0))
    (hb223 : ((1 : F) * rho 454) * ((1 : F) * rho 0 + (-1 : F) * rho 454) = ((0 : F) * rho 0))
    (hb224 : ((1 : F) * rho 455) * ((1 : F) * rho 0 + (-1 : F) * rho 455) = ((0 : F) * rho 0))
    (hb225 : ((1 : F) * rho 456) * ((1 : F) * rho 0 + (-1 : F) * rho 456) = ((0 : F) * rho 0))
    (hb226 : ((1 : F) * rho 457) * ((1 : F) * rho 0 + (-1 : F) * rho 457) = ((0 : F) * rho 0))
    (hb227 : ((1 : F) * rho 458) * ((1 : F) * rho 0 + (-1 : F) * rho 458) = ((0 : F) * rho 0))
    (hb228 : ((1 : F) * rho 459) * ((1 : F) * rho 0 + (-1 : F) * rho 459) = ((0 : F) * rho 0))
    (hb229 : ((1 : F) * rho 460) * ((1 : F) * rho 0 + (-1 : F) * rho 460) = ((0 : F) * rho 0))
    (hb230 : ((1 : F) * rho 461) * ((1 : F) * rho 0 + (-1 : F) * rho 461) = ((0 : F) * rho 0))
    (hb231 : ((1 : F) * rho 462) * ((1 : F) * rho 0 + (-1 : F) * rho 462) = ((0 : F) * rho 0))
    (hb232 : ((1 : F) * rho 463) * ((1 : F) * rho 0 + (-1 : F) * rho 463) = ((0 : F) * rho 0))
    (hb233 : ((1 : F) * rho 464) * ((1 : F) * rho 0 + (-1 : F) * rho 464) = ((0 : F) * rho 0))
    (hb234 : ((1 : F) * rho 465) * ((1 : F) * rho 0 + (-1 : F) * rho 465) = ((0 : F) * rho 0))
    (hb235 : ((1 : F) * rho 466) * ((1 : F) * rho 0 + (-1 : F) * rho 466) = ((0 : F) * rho 0))
    (hb236 : ((1 : F) * rho 467) * ((1 : F) * rho 0 + (-1 : F) * rho 467) = ((0 : F) * rho 0))
    (hb237 : ((1 : F) * rho 468) * ((1 : F) * rho 0 + (-1 : F) * rho 468) = ((0 : F) * rho 0))
    (hb238 : ((1 : F) * rho 469) * ((1 : F) * rho 0 + (-1 : F) * rho 469) = ((0 : F) * rho 0))
    (hb239 : ((1 : F) * rho 470) * ((1 : F) * rho 0 + (-1 : F) * rho 470) = ((0 : F) * rho 0))
    (hb240 : ((1 : F) * rho 471) * ((1 : F) * rho 0 + (-1 : F) * rho 471) = ((0 : F) * rho 0))
    (hb241 : ((1 : F) * rho 472) * ((1 : F) * rho 0 + (-1 : F) * rho 472) = ((0 : F) * rho 0))
    (hb242 : ((1 : F) * rho 473) * ((1 : F) * rho 0 + (-1 : F) * rho 473) = ((0 : F) * rho 0))
    (hb243 : ((1 : F) * rho 474) * ((1 : F) * rho 0 + (-1 : F) * rho 474) = ((0 : F) * rho 0))
    (hb244 : ((1 : F) * rho 475) * ((1 : F) * rho 0 + (-1 : F) * rho 475) = ((0 : F) * rho 0))
    (hb245 : ((1 : F) * rho 476) * ((1 : F) * rho 0 + (-1 : F) * rho 476) = ((0 : F) * rho 0))
    (hb246 : ((1 : F) * rho 477) * ((1 : F) * rho 0 + (-1 : F) * rho 477) = ((0 : F) * rho 0))
    (hb247 : ((1 : F) * rho 478) * ((1 : F) * rho 0 + (-1 : F) * rho 478) = ((0 : F) * rho 0))
    (hb248 : ((1 : F) * rho 479) * ((1 : F) * rho 0 + (-1 : F) * rho 479) = ((0 : F) * rho 0))
    (hb249 : ((1 : F) * rho 480) * ((1 : F) * rho 0 + (-1 : F) * rho 480) = ((0 : F) * rho 0))
    (hb250 : ((1 : F) * rho 481) * ((1 : F) * rho 0 + (-1 : F) * rho 481) = ((0 : F) * rho 0))
    (hb251 : ((1 : F) * rho 482) * ((1 : F) * rho 0 + (-1 : F) * rho 482) = ((0 : F) * rho 0))
    (hb252 : ((1 : F) * rho 483) * ((1 : F) * rho 0 + (-1 : F) * rho 483) = ((0 : F) * rho 0))
    (hc0 : ((1 : F) * rho 231) * ((1 : F) * rho 0 + (-1 : F) * rho 231 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc1 : ((1 : F) * rho 232) * ((1 : F) * rho 0 + (-1 : F) * rho 232 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc2 : ((1 : F) * rho 233) * ((1 : F) * rho 0 + (-1 : F) * rho 233 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc3 : ((1 : F) * rho 234) * ((1 : F) * rho 0 + (-1 : F) * rho 234 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc4 : ((1 : F) * rho 235) * ((1 : F) * rho 0 + (-1 : F) * rho 235 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc5 : ((1 : F) * rho 236) * ((1 : F) * rho 0 + (-1 : F) * rho 236 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc6 : ((1 : F) * rho 237) * ((1 : F) * rho 0 + (-1 : F) * rho 237 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc7 : ((1 : F) * rho 238) * ((1 : F) * rho 0 + (-1 : F) * rho 238 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc8 : ((1 : F) * rho 239) * ((1 : F) * rho 0 + (-1 : F) * rho 239 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc9 : ((1 : F) * rho 240) * ((1 : F) * rho 0 + (-1 : F) * rho 240 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc10 : ((1 : F) * rho 241) * ((1 : F) * rho 0 + (-1 : F) * rho 241 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc11 : ((1 : F) * rho 242) * ((1 : F) * rho 0 + (-1 : F) * rho 242 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc12 : ((1 : F) * rho 243) * ((1 : F) * rho 0 + (-1 : F) * rho 243 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc13 : ((1 : F) * rho 244) * ((1 : F) * rho 0 + (-1 : F) * rho 244 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc14 : ((1 : F) * rho 245) * ((1 : F) * rho 0 + (-1 : F) * rho 245 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc15 : ((1 : F) * rho 246) * ((1 : F) * rho 0 + (-1 : F) * rho 246 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc16 : ((1 : F) * rho 247) * ((1 : F) * rho 0 + (-1 : F) * rho 247 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc17 : ((1 : F) * rho 248) * ((1 : F) * rho 0 + (-1 : F) * rho 248 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc18 : ((1 : F) * rho 249) * ((1 : F) * rho 0 + (-1 : F) * rho 249 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc19 : ((1 : F) * rho 250) * ((1 : F) * rho 0 + (-1 : F) * rho 250 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc20 : ((1 : F) * rho 251) * ((1 : F) * rho 0 + (-1 : F) * rho 251 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc21 : ((1 : F) * rho 252) * ((1 : F) * rho 0 + (-1 : F) * rho 252 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc22 : ((1 : F) * rho 253) * ((1 : F) * rho 0 + (-1 : F) * rho 253 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc23 : ((1 : F) * rho 254) * ((1 : F) * rho 0 + (-1 : F) * rho 254 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc24 : ((1 : F) * rho 255) * ((1 : F) * rho 0 + (-1 : F) * rho 255 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc25 : ((1 : F) * rho 256) * ((1 : F) * rho 0 + (-1 : F) * rho 256 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc26 : ((1 : F) * rho 257) * ((1 : F) * rho 0 + (-1 : F) * rho 257 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc27 : ((1 : F) * rho 258) * ((1 : F) * rho 0 + (-1 : F) * rho 258 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc28 : ((1 : F) * rho 259) * ((1 : F) * rho 0 + (-1 : F) * rho 259 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc29 : ((1 : F) * rho 260) * ((1 : F) * rho 0 + (-1 : F) * rho 260 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc30 : ((1 : F) * rho 261) * ((1 : F) * rho 0 + (-1 : F) * rho 261 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc31 : ((1 : F) * rho 262) * ((1 : F) * rho 0 + (-1 : F) * rho 262 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc32 : ((1 : F) * rho 263) * ((1 : F) * rho 0 + (-1 : F) * rho 263 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc33 : ((1 : F) * rho 264) * ((1 : F) * rho 0 + (-1 : F) * rho 264 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc34 : ((1 : F) * rho 265) * ((1 : F) * rho 0 + (-1 : F) * rho 265 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc35 : ((1 : F) * rho 266) * ((1 : F) * rho 0 + (-1 : F) * rho 266 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc36 : ((1 : F) * rho 267) * ((1 : F) * rho 0 + (-1 : F) * rho 267 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc37 : ((1 : F) * rho 268) * ((1 : F) * rho 0 + (-1 : F) * rho 268 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc38 : ((1 : F) * rho 269) * ((1 : F) * rho 0 + (-1 : F) * rho 269 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc39 : ((1 : F) * rho 270) * ((1 : F) * rho 0 + (-1 : F) * rho 270 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc40 : ((1 : F) * rho 271) * ((1 : F) * rho 0 + (-1 : F) * rho 271 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc41 : ((1 : F) * rho 272) * ((1 : F) * rho 0 + (-1 : F) * rho 272 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc42 : ((1 : F) * rho 273) * ((1 : F) * rho 0 + (-1 : F) * rho 273 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc43 : ((1 : F) * rho 274) * ((1 : F) * rho 0 + (-1 : F) * rho 274 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc44 : ((1 : F) * rho 275) * ((1 : F) * rho 0 + (-1 : F) * rho 275 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc45 : ((1 : F) * rho 276) * ((1 : F) * rho 0 + (-1 : F) * rho 276 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc46 : ((1 : F) * rho 277) * ((1 : F) * rho 0 + (-1 : F) * rho 277 + (-1 : F) * rho 569) = ((0 : F) * rho 0))
    (hc49 : ((1 : F) * rho 280) * ((1 : F) * rho 0 + (-1 : F) * rho 280 + (-1 : F) * rho 567) = ((0 : F) * rho 0))
    (hc50 : ((1 : F) * rho 281) * ((1 : F) * rho 0 + (-1 : F) * rho 281 + (-1 : F) * rho 567) = ((0 : F) * rho 0))
    (hc51 : ((1 : F) * rho 282) * ((1 : F) * rho 0 + (-1 : F) * rho 282 + (-1 : F) * rho 567) = ((0 : F) * rho 0))
    (hc53 : ((1 : F) * rho 284) * ((1 : F) * rho 0 + (-1 : F) * rho 284 + (-1 : F) * rho 566) = ((0 : F) * rho 0))
    (hc54 : ((1 : F) * rho 285) * ((1 : F) * rho 0 + (-1 : F) * rho 285 + (-1 : F) * rho 566) = ((0 : F) * rho 0))
    (hc55 : ((1 : F) * rho 286) * ((1 : F) * rho 0 + (-1 : F) * rho 286 + (-1 : F) * rho 566) = ((0 : F) * rho 0))
    (hc56 : ((1 : F) * rho 287) * ((1 : F) * rho 0 + (-1 : F) * rho 287 + (-1 : F) * rho 566) = ((0 : F) * rho 0))
    (hc58 : ((1 : F) * rho 289) * ((1 : F) * rho 0 + (-1 : F) * rho 289 + (-1 : F) * rho 565) = ((0 : F) * rho 0))
    (hc60 : ((1 : F) * rho 291) * ((1 : F) * rho 0 + (-1 : F) * rho 291 + (-1 : F) * rho 564) = ((0 : F) * rho 0))
    (hc61 : ((1 : F) * rho 292) * ((1 : F) * rho 0 + (-1 : F) * rho 292 + (-1 : F) * rho 564) = ((0 : F) * rho 0))
    (hc62 : ((1 : F) * rho 293) * ((1 : F) * rho 0 + (-1 : F) * rho 293 + (-1 : F) * rho 564) = ((0 : F) * rho 0))
    (hc63 : ((1 : F) * rho 294) * ((1 : F) * rho 0 + (-1 : F) * rho 294 + (-1 : F) * rho 564) = ((0 : F) * rho 0))
    (hc65 : ((1 : F) * rho 296) * ((1 : F) * rho 0 + (-1 : F) * rho 296 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc66 : ((1 : F) * rho 297) * ((1 : F) * rho 0 + (-1 : F) * rho 297 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc67 : ((1 : F) * rho 298) * ((1 : F) * rho 0 + (-1 : F) * rho 298 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc68 : ((1 : F) * rho 299) * ((1 : F) * rho 0 + (-1 : F) * rho 299 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc69 : ((1 : F) * rho 300) * ((1 : F) * rho 0 + (-1 : F) * rho 300 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc70 : ((1 : F) * rho 301) * ((1 : F) * rho 0 + (-1 : F) * rho 301 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc71 : ((1 : F) * rho 302) * ((1 : F) * rho 0 + (-1 : F) * rho 302 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc72 : ((1 : F) * rho 303) * ((1 : F) * rho 0 + (-1 : F) * rho 303 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc73 : ((1 : F) * rho 304) * ((1 : F) * rho 0 + (-1 : F) * rho 304 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc74 : ((1 : F) * rho 305) * ((1 : F) * rho 0 + (-1 : F) * rho 305 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc75 : ((1 : F) * rho 306) * ((1 : F) * rho 0 + (-1 : F) * rho 306 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc76 : ((1 : F) * rho 307) * ((1 : F) * rho 0 + (-1 : F) * rho 307 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc77 : ((1 : F) * rho 308) * ((1 : F) * rho 0 + (-1 : F) * rho 308 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc78 : ((1 : F) * rho 309) * ((1 : F) * rho 0 + (-1 : F) * rho 309 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc79 : ((1 : F) * rho 310) * ((1 : F) * rho 0 + (-1 : F) * rho 310 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc80 : ((1 : F) * rho 311) * ((1 : F) * rho 0 + (-1 : F) * rho 311 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc81 : ((1 : F) * rho 312) * ((1 : F) * rho 0 + (-1 : F) * rho 312 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc82 : ((1 : F) * rho 313) * ((1 : F) * rho 0 + (-1 : F) * rho 313 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc83 : ((1 : F) * rho 314) * ((1 : F) * rho 0 + (-1 : F) * rho 314 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc84 : ((1 : F) * rho 315) * ((1 : F) * rho 0 + (-1 : F) * rho 315 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc85 : ((1 : F) * rho 316) * ((1 : F) * rho 0 + (-1 : F) * rho 316 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc86 : ((1 : F) * rho 317) * ((1 : F) * rho 0 + (-1 : F) * rho 317 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc87 : ((1 : F) * rho 318) * ((1 : F) * rho 0 + (-1 : F) * rho 318 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc88 : ((1 : F) * rho 319) * ((1 : F) * rho 0 + (-1 : F) * rho 319 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc89 : ((1 : F) * rho 320) * ((1 : F) * rho 0 + (-1 : F) * rho 320 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc90 : ((1 : F) * rho 321) * ((1 : F) * rho 0 + (-1 : F) * rho 321 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc91 : ((1 : F) * rho 322) * ((1 : F) * rho 0 + (-1 : F) * rho 322 + (-1 : F) * rho 563) = ((0 : F) * rho 0))
    (hc93 : ((1 : F) * rho 324) * ((1 : F) * rho 0 + (-1 : F) * rho 324 + (-1 : F) * rho 562) = ((0 : F) * rho 0))
    (hc96 : ((1 : F) * rho 327) * ((1 : F) * rho 0 + (-1 : F) * rho 327 + (-1 : F) * rho 560) = ((0 : F) * rho 0))
    (hc104 : ((1 : F) * rho 335) * ((1 : F) * rho 0 + (-1 : F) * rho 335 + (-1 : F) * rho 553) = ((0 : F) * rho 0))
    (hc107 : ((1 : F) * rho 338) * ((1 : F) * rho 0 + (-1 : F) * rho 338 + (-1 : F) * rho 551) = ((0 : F) * rho 0))
    (hc111 : ((1 : F) * rho 342) * ((1 : F) * rho 0 + (-1 : F) * rho 342 + (-1 : F) * rho 548) = ((0 : F) * rho 0))
    (hc112 : ((1 : F) * rho 343) * ((1 : F) * rho 0 + (-1 : F) * rho 343 + (-1 : F) * rho 548) = ((0 : F) * rho 0))
    (hc114 : ((1 : F) * rho 345) * ((1 : F) * rho 0 + (-1 : F) * rho 345 + (-1 : F) * rho 547) = ((0 : F) * rho 0))
    (hc116 : ((1 : F) * rho 347) * ((1 : F) * rho 0 + (-1 : F) * rho 347 + (-1 : F) * rho 546) = ((0 : F) * rho 0))
    (hc118 : ((1 : F) * rho 349) * ((1 : F) * rho 0 + (-1 : F) * rho 349 + (-1 : F) * rho 545) = ((0 : F) * rho 0))
    (hc121 : ((1 : F) * rho 352) * ((1 : F) * rho 0 + (-1 : F) * rho 352 + (-1 : F) * rho 543) = ((0 : F) * rho 0))
    (hc122 : ((1 : F) * rho 353) * ((1 : F) * rho 0 + (-1 : F) * rho 353 + (-1 : F) * rho 543) = ((0 : F) * rho 0))
    (hc125 : ((1 : F) * rho 356) * ((1 : F) * rho 0 + (-1 : F) * rho 356 + (-1 : F) * rho 541) = ((0 : F) * rho 0))
    (hc127 : ((1 : F) * rho 358) * ((1 : F) * rho 0 + (-1 : F) * rho 358 + (-1 : F) * rho 540) = ((0 : F) * rho 0))
    (hc129 : ((1 : F) * rho 360) * ((1 : F) * rho 0 + (-1 : F) * rho 360 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc130 : ((1 : F) * rho 361) * ((1 : F) * rho 0 + (-1 : F) * rho 361 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc131 : ((1 : F) * rho 362) * ((1 : F) * rho 0 + (-1 : F) * rho 362 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc132 : ((1 : F) * rho 363) * ((1 : F) * rho 0 + (-1 : F) * rho 363 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc133 : ((1 : F) * rho 364) * ((1 : F) * rho 0 + (-1 : F) * rho 364 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc134 : ((1 : F) * rho 365) * ((1 : F) * rho 0 + (-1 : F) * rho 365 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc135 : ((1 : F) * rho 366) * ((1 : F) * rho 0 + (-1 : F) * rho 366 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc136 : ((1 : F) * rho 367) * ((1 : F) * rho 0 + (-1 : F) * rho 367 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc137 : ((1 : F) * rho 368) * ((1 : F) * rho 0 + (-1 : F) * rho 368 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc138 : ((1 : F) * rho 369) * ((1 : F) * rho 0 + (-1 : F) * rho 369 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc139 : ((1 : F) * rho 370) * ((1 : F) * rho 0 + (-1 : F) * rho 370 + (-1 : F) * rho 539) = ((0 : F) * rho 0))
    (hc142 : ((1 : F) * rho 373) * ((1 : F) * rho 0 + (-1 : F) * rho 373 + (-1 : F) * rho 537) = ((0 : F) * rho 0))
    (hc147 : ((1 : F) * rho 378) * ((1 : F) * rho 0 + (-1 : F) * rho 378 + (-1 : F) * rho 533) = ((0 : F) * rho 0))
    (hc150 : ((1 : F) * rho 381) * ((1 : F) * rho 0 + (-1 : F) * rho 381 + (-1 : F) * rho 531) = ((0 : F) * rho 0))
    (hc151 : ((1 : F) * rho 382) * ((1 : F) * rho 0 + (-1 : F) * rho 382 + (-1 : F) * rho 531) = ((0 : F) * rho 0))
    (hc152 : ((1 : F) * rho 383) * ((1 : F) * rho 0 + (-1 : F) * rho 383 + (-1 : F) * rho 531) = ((0 : F) * rho 0))
    (hc153 : ((1 : F) * rho 384) * ((1 : F) * rho 0 + (-1 : F) * rho 384 + (-1 : F) * rho 531) = ((0 : F) * rho 0))
    (hc157 : ((1 : F) * rho 388) * ((1 : F) * rho 0 + (-1 : F) * rho 388 + (-1 : F) * rho 528) = ((0 : F) * rho 0))
    (hc159 : ((1 : F) * rho 390) * ((1 : F) * rho 0 + (-1 : F) * rho 390 + (-1 : F) * rho 527) = ((0 : F) * rho 0))
    (hc160 : ((1 : F) * rho 391) * ((1 : F) * rho 0 + (-1 : F) * rho 391 + (-1 : F) * rho 527) = ((0 : F) * rho 0))
    (hc165 : ((1 : F) * rho 396) * ((1 : F) * rho 0 + (-1 : F) * rho 396 + (-1 : F) * rho 523) = ((0 : F) * rho 0))
    (hc166 : ((1 : F) * rho 397) * ((1 : F) * rho 0 + (-1 : F) * rho 397 + (-1 : F) * rho 523) = ((0 : F) * rho 0))
    (hc167 : ((1 : F) * rho 398) * ((1 : F) * rho 0 + (-1 : F) * rho 398 + (-1 : F) * rho 523) = ((0 : F) * rho 0))
    (hc169 : ((1 : F) * rho 400) * ((1 : F) * rho 0 + (-1 : F) * rho 400 + (-1 : F) * rho 522) = ((0 : F) * rho 0))
    (hc172 : ((1 : F) * rho 403) * ((1 : F) * rho 0 + (-1 : F) * rho 403 + (-1 : F) * rho 520) = ((0 : F) * rho 0))
    (hc173 : ((1 : F) * rho 404) * ((1 : F) * rho 0 + (-1 : F) * rho 404 + (-1 : F) * rho 520) = ((0 : F) * rho 0))
    (hc175 : ((1 : F) * rho 406) * ((1 : F) * rho 0 + (-1 : F) * rho 406 + (-1 : F) * rho 519) = ((0 : F) * rho 0))
    (hc176 : ((1 : F) * rho 407) * ((1 : F) * rho 0 + (-1 : F) * rho 407 + (-1 : F) * rho 519) = ((0 : F) * rho 0))
    (hc177 : ((1 : F) * rho 408) * ((1 : F) * rho 0 + (-1 : F) * rho 408 + (-1 : F) * rho 519) = ((0 : F) * rho 0))
    (hc179 : ((1 : F) * rho 410) * ((1 : F) * rho 0 + (-1 : F) * rho 410 + (-1 : F) * rho 518) = ((0 : F) * rho 0))
    (hc182 : ((1 : F) * rho 413) * ((1 : F) * rho 0 + (-1 : F) * rho 413 + (-1 : F) * rho 516) = ((0 : F) * rho 0))
    (hc184 : ((1 : F) * rho 415) * ((1 : F) * rho 0 + (-1 : F) * rho 415 + (-1 : F) * rho 515) = ((0 : F) * rho 0))
    (hc185 : ((1 : F) * rho 416) * ((1 : F) * rho 0 + (-1 : F) * rho 416 + (-1 : F) * rho 515) = ((0 : F) * rho 0))
    (hc186 : ((1 : F) * rho 417) * ((1 : F) * rho 0 + (-1 : F) * rho 417 + (-1 : F) * rho 515) = ((0 : F) * rho 0))
    (hc187 : ((1 : F) * rho 418) * ((1 : F) * rho 0 + (-1 : F) * rho 418 + (-1 : F) * rho 515) = ((0 : F) * rho 0))
    (hc188 : ((1 : F) * rho 419) * ((1 : F) * rho 0 + (-1 : F) * rho 419 + (-1 : F) * rho 515) = ((0 : F) * rho 0))
    (hc191 : ((1 : F) * rho 422) * ((1 : F) * rho 0 + (-1 : F) * rho 422 + (-1 : F) * rho 513) = ((0 : F) * rho 0))
    (hc192 : ((1 : F) * rho 423) * ((1 : F) * rho 0 + (-1 : F) * rho 423 + (-1 : F) * rho 513) = ((0 : F) * rho 0))
    (hc195 : ((1 : F) * rho 426) * ((1 : F) * rho 0 + (-1 : F) * rho 426 + (-1 : F) * rho 511) = ((0 : F) * rho 0))
    (hc197 : ((1 : F) * rho 428) * ((1 : F) * rho 0 + (-1 : F) * rho 428 + (-1 : F) * rho 510) = ((0 : F) * rho 0))
    (hc199 : ((1 : F) * rho 430) * ((1 : F) * rho 0 + (-1 : F) * rho 430 + (-1 : F) * rho 509) = ((0 : F) * rho 0))
    (hc201 : ((1 : F) * rho 432) * ((1 : F) * rho 0 + (-1 : F) * rho 432 + (-1 : F) * rho 508) = ((0 : F) * rho 0))
    (hc203 : ((1 : F) * rho 434) * ((1 : F) * rho 0 + (-1 : F) * rho 434 + (-1 : F) * rho 507) = ((0 : F) * rho 0))
    (hc204 : ((1 : F) * rho 435) * ((1 : F) * rho 0 + (-1 : F) * rho 435 + (-1 : F) * rho 507) = ((0 : F) * rho 0))
    (hc206 : ((1 : F) * rho 437) * ((1 : F) * rho 0 + (-1 : F) * rho 437 + (-1 : F) * rho 506) = ((0 : F) * rho 0))
    (hc208 : ((1 : F) * rho 439) * ((1 : F) * rho 0 + (-1 : F) * rho 439 + (-1 : F) * rho 505) = ((0 : F) * rho 0))
    (hc209 : ((1 : F) * rho 440) * ((1 : F) * rho 0 + (-1 : F) * rho 440 + (-1 : F) * rho 505) = ((0 : F) * rho 0))
    (hc212 : ((1 : F) * rho 443) * ((1 : F) * rho 0 + (-1 : F) * rho 443 + (-1 : F) * rho 503) = ((0 : F) * rho 0))
    (hc214 : ((1 : F) * rho 445) * ((1 : F) * rho 0 + (-1 : F) * rho 445 + (-1 : F) * rho 502) = ((0 : F) * rho 0))
    (hc215 : ((1 : F) * rho 446) * ((1 : F) * rho 0 + (-1 : F) * rho 446 + (-1 : F) * rho 502) = ((0 : F) * rho 0))
    (hc216 : ((1 : F) * rho 447) * ((1 : F) * rho 0 + (-1 : F) * rho 447 + (-1 : F) * rho 502) = ((0 : F) * rho 0))
    (hc218 : ((1 : F) * rho 449) * ((1 : F) * rho 0 + (-1 : F) * rho 449 + (-1 : F) * rho 501) = ((0 : F) * rho 0))
    (hc221 : ((1 : F) * rho 452) * ((1 : F) * rho 0 + (-1 : F) * rho 452 + (-1 : F) * rho 499) = ((0 : F) * rho 0))
    (hc222 : ((1 : F) * rho 453) * ((1 : F) * rho 0 + (-1 : F) * rho 453 + (-1 : F) * rho 499) = ((0 : F) * rho 0))
    (hc224 : ((1 : F) * rho 455) * ((1 : F) * rho 0 + (-1 : F) * rho 455 + (-1 : F) * rho 498) = ((0 : F) * rho 0))
    (hc229 : ((1 : F) * rho 460) * ((1 : F) * rho 0 + (-1 : F) * rho 460 + (-1 : F) * rho 494) = ((0 : F) * rho 0))
    (hc231 : ((1 : F) * rho 462) * ((1 : F) * rho 0 + (-1 : F) * rho 462 + (-1 : F) * rho 493) = ((0 : F) * rho 0))
    (hc233 : ((1 : F) * rho 464) * ((1 : F) * rho 0 + (-1 : F) * rho 464 + (-1 : F) * rho 492) = ((0 : F) * rho 0))
    (hc235 : ((1 : F) * rho 466) * ((1 : F) * rho 0 + (-1 : F) * rho 466 + (-1 : F) * rho 491) = ((0 : F) * rho 0))
    (hc236 : ((1 : F) * rho 467) * ((1 : F) * rho 0 + (-1 : F) * rho 467 + (-1 : F) * rho 491) = ((0 : F) * rho 0))
    (hc239 : ((1 : F) * rho 470) * ((1 : F) * rho 0 + (-1 : F) * rho 470 + (-1 : F) * rho 489) = ((0 : F) * rho 0))
    (hc242 : ((1 : F) * rho 473) * ((1 : F) * rho 0 + (-1 : F) * rho 473 + (-1 : F) * rho 487) = ((0 : F) * rho 0))
    (hc244 : ((1 : F) * rho 475) * ((1 : F) * rho 0 + (-1 : F) * rho 475 + (-1 : F) * rho 486) = ((0 : F) * rho 0))
    (hc246 : ((1 : F) * rho 477) * ((1 : F) * rho 0 + (-1 : F) * rho 477 + (-1 : F) * rho 485) = ((0 : F) * rho 0))
    (hc248 : ((1 : F) * rho 479) * ((1 : F) * rho 0 + (-1 : F) * rho 479 + (-1 : F) * rho 484) = ((0 : F) * rho 0))
    (hc250 : ((1 : F) * rho 481) * ((1 : F) * rho 0 + (-1 : F) * rho 481 + (-1 : F) * rho 483) = ((0 : F) * rho 0))
    (hc251 : ((1 : F) * rho 482) * ((1 : F) * rho 0 + (-1 : F) * rho 482 + (-1 : F) * rho 483) = ((0 : F) * rho 0))
    (ht47 : ((1 : F) * rho 568) * ((1 : F) * rho 278) = ((1 : F) * rho 569))
    (ht48 : ((1 : F) * rho 567) * ((1 : F) * rho 279) = ((1 : F) * rho 568))
    (ht52 : ((1 : F) * rho 566) * ((1 : F) * rho 283) = ((1 : F) * rho 567))
    (ht57 : ((1 : F) * rho 565) * ((1 : F) * rho 288) = ((1 : F) * rho 566))
    (ht59 : ((1 : F) * rho 564) * ((1 : F) * rho 290) = ((1 : F) * rho 565))
    (ht64 : ((1 : F) * rho 563) * ((1 : F) * rho 295) = ((1 : F) * rho 564))
    (ht92 : ((1 : F) * rho 562) * ((1 : F) * rho 323) = ((1 : F) * rho 563))
    (ht94 : ((1 : F) * rho 561) * ((1 : F) * rho 325) = ((1 : F) * rho 562))
    (ht95 : ((1 : F) * rho 560) * ((1 : F) * rho 326) = ((1 : F) * rho 561))
    (ht97 : ((1 : F) * rho 559) * ((1 : F) * rho 328) = ((1 : F) * rho 560))
    (ht98 : ((1 : F) * rho 558) * ((1 : F) * rho 329) = ((1 : F) * rho 559))
    (ht99 : ((1 : F) * rho 557) * ((1 : F) * rho 330) = ((1 : F) * rho 558))
    (ht100 : ((1 : F) * rho 556) * ((1 : F) * rho 331) = ((1 : F) * rho 557))
    (ht101 : ((1 : F) * rho 555) * ((1 : F) * rho 332) = ((1 : F) * rho 556))
    (ht102 : ((1 : F) * rho 554) * ((1 : F) * rho 333) = ((1 : F) * rho 555))
    (ht103 : ((1 : F) * rho 553) * ((1 : F) * rho 334) = ((1 : F) * rho 554))
    (ht105 : ((1 : F) * rho 552) * ((1 : F) * rho 336) = ((1 : F) * rho 553))
    (ht106 : ((1 : F) * rho 551) * ((1 : F) * rho 337) = ((1 : F) * rho 552))
    (ht108 : ((1 : F) * rho 550) * ((1 : F) * rho 339) = ((1 : F) * rho 551))
    (ht109 : ((1 : F) * rho 549) * ((1 : F) * rho 340) = ((1 : F) * rho 550))
    (ht110 : ((1 : F) * rho 548) * ((1 : F) * rho 341) = ((1 : F) * rho 549))
    (ht113 : ((1 : F) * rho 547) * ((1 : F) * rho 344) = ((1 : F) * rho 548))
    (ht115 : ((1 : F) * rho 546) * ((1 : F) * rho 346) = ((1 : F) * rho 547))
    (ht117 : ((1 : F) * rho 545) * ((1 : F) * rho 348) = ((1 : F) * rho 546))
    (ht119 : ((1 : F) * rho 544) * ((1 : F) * rho 350) = ((1 : F) * rho 545))
    (ht120 : ((1 : F) * rho 543) * ((1 : F) * rho 351) = ((1 : F) * rho 544))
    (ht123 : ((1 : F) * rho 542) * ((1 : F) * rho 354) = ((1 : F) * rho 543))
    (ht124 : ((1 : F) * rho 541) * ((1 : F) * rho 355) = ((1 : F) * rho 542))
    (ht126 : ((1 : F) * rho 540) * ((1 : F) * rho 357) = ((1 : F) * rho 541))
    (ht128 : ((1 : F) * rho 539) * ((1 : F) * rho 359) = ((1 : F) * rho 540))
    (ht140 : ((1 : F) * rho 538) * ((1 : F) * rho 371) = ((1 : F) * rho 539))
    (ht141 : ((1 : F) * rho 537) * ((1 : F) * rho 372) = ((1 : F) * rho 538))
    (ht143 : ((1 : F) * rho 536) * ((1 : F) * rho 374) = ((1 : F) * rho 537))
    (ht144 : ((1 : F) * rho 535) * ((1 : F) * rho 375) = ((1 : F) * rho 536))
    (ht145 : ((1 : F) * rho 534) * ((1 : F) * rho 376) = ((1 : F) * rho 535))
    (ht146 : ((1 : F) * rho 533) * ((1 : F) * rho 377) = ((1 : F) * rho 534))
    (ht148 : ((1 : F) * rho 532) * ((1 : F) * rho 379) = ((1 : F) * rho 533))
    (ht149 : ((1 : F) * rho 531) * ((1 : F) * rho 380) = ((1 : F) * rho 532))
    (ht154 : ((1 : F) * rho 530) * ((1 : F) * rho 385) = ((1 : F) * rho 531))
    (ht155 : ((1 : F) * rho 529) * ((1 : F) * rho 386) = ((1 : F) * rho 530))
    (ht156 : ((1 : F) * rho 528) * ((1 : F) * rho 387) = ((1 : F) * rho 529))
    (ht158 : ((1 : F) * rho 527) * ((1 : F) * rho 389) = ((1 : F) * rho 528))
    (ht161 : ((1 : F) * rho 526) * ((1 : F) * rho 392) = ((1 : F) * rho 527))
    (ht162 : ((1 : F) * rho 525) * ((1 : F) * rho 393) = ((1 : F) * rho 526))
    (ht163 : ((1 : F) * rho 524) * ((1 : F) * rho 394) = ((1 : F) * rho 525))
    (ht164 : ((1 : F) * rho 523) * ((1 : F) * rho 395) = ((1 : F) * rho 524))
    (ht168 : ((1 : F) * rho 522) * ((1 : F) * rho 399) = ((1 : F) * rho 523))
    (ht170 : ((1 : F) * rho 521) * ((1 : F) * rho 401) = ((1 : F) * rho 522))
    (ht171 : ((1 : F) * rho 520) * ((1 : F) * rho 402) = ((1 : F) * rho 521))
    (ht174 : ((1 : F) * rho 519) * ((1 : F) * rho 405) = ((1 : F) * rho 520))
    (ht178 : ((1 : F) * rho 518) * ((1 : F) * rho 409) = ((1 : F) * rho 519))
    (ht180 : ((1 : F) * rho 517) * ((1 : F) * rho 411) = ((1 : F) * rho 518))
    (ht181 : ((1 : F) * rho 516) * ((1 : F) * rho 412) = ((1 : F) * rho 517))
    (ht183 : ((1 : F) * rho 515) * ((1 : F) * rho 414) = ((1 : F) * rho 516))
    (ht189 : ((1 : F) * rho 514) * ((1 : F) * rho 420) = ((1 : F) * rho 515))
    (ht190 : ((1 : F) * rho 513) * ((1 : F) * rho 421) = ((1 : F) * rho 514))
    (ht193 : ((1 : F) * rho 512) * ((1 : F) * rho 424) = ((1 : F) * rho 513))
    (ht194 : ((1 : F) * rho 511) * ((1 : F) * rho 425) = ((1 : F) * rho 512))
    (ht196 : ((1 : F) * rho 510) * ((1 : F) * rho 427) = ((1 : F) * rho 511))
    (ht198 : ((1 : F) * rho 509) * ((1 : F) * rho 429) = ((1 : F) * rho 510))
    (ht200 : ((1 : F) * rho 508) * ((1 : F) * rho 431) = ((1 : F) * rho 509))
    (ht202 : ((1 : F) * rho 507) * ((1 : F) * rho 433) = ((1 : F) * rho 508))
    (ht205 : ((1 : F) * rho 506) * ((1 : F) * rho 436) = ((1 : F) * rho 507))
    (ht207 : ((1 : F) * rho 505) * ((1 : F) * rho 438) = ((1 : F) * rho 506))
    (ht210 : ((1 : F) * rho 504) * ((1 : F) * rho 441) = ((1 : F) * rho 505))
    (ht211 : ((1 : F) * rho 503) * ((1 : F) * rho 442) = ((1 : F) * rho 504))
    (ht213 : ((1 : F) * rho 502) * ((1 : F) * rho 444) = ((1 : F) * rho 503))
    (ht217 : ((1 : F) * rho 501) * ((1 : F) * rho 448) = ((1 : F) * rho 502))
    (ht219 : ((1 : F) * rho 500) * ((1 : F) * rho 450) = ((1 : F) * rho 501))
    (ht220 : ((1 : F) * rho 499) * ((1 : F) * rho 451) = ((1 : F) * rho 500))
    (ht223 : ((1 : F) * rho 498) * ((1 : F) * rho 454) = ((1 : F) * rho 499))
    (ht225 : ((1 : F) * rho 497) * ((1 : F) * rho 456) = ((1 : F) * rho 498))
    (ht226 : ((1 : F) * rho 496) * ((1 : F) * rho 457) = ((1 : F) * rho 497))
    (ht227 : ((1 : F) * rho 495) * ((1 : F) * rho 458) = ((1 : F) * rho 496))
    (ht228 : ((1 : F) * rho 494) * ((1 : F) * rho 459) = ((1 : F) * rho 495))
    (ht230 : ((1 : F) * rho 493) * ((1 : F) * rho 461) = ((1 : F) * rho 494))
    (ht232 : ((1 : F) * rho 492) * ((1 : F) * rho 463) = ((1 : F) * rho 493))
    (ht234 : ((1 : F) * rho 491) * ((1 : F) * rho 465) = ((1 : F) * rho 492))
    (ht237 : ((1 : F) * rho 490) * ((1 : F) * rho 468) = ((1 : F) * rho 491))
    (ht238 : ((1 : F) * rho 489) * ((1 : F) * rho 469) = ((1 : F) * rho 490))
    (ht240 : ((1 : F) * rho 488) * ((1 : F) * rho 471) = ((1 : F) * rho 489))
    (ht241 : ((1 : F) * rho 487) * ((1 : F) * rho 472) = ((1 : F) * rho 488))
    (ht243 : ((1 : F) * rho 486) * ((1 : F) * rho 474) = ((1 : F) * rho 487))
    (ht245 : ((1 : F) * rho 485) * ((1 : F) * rho 476) = ((1 : F) * rho 486))
    (ht247 : ((1 : F) * rho 484) * ((1 : F) * rho 478) = ((1 : F) * rho 485))
    (ht249 : ((1 : F) * rho 483) * ((1 : F) * rho 480) = ((1 : F) * rho 484))
    (hrho0 : rho 0 = 1)
    (k : List.Vector F 253 → Prop)
    (hrec : recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val))) = rho 230)
    (hk : k (List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val))))
    : canonicalFqBitsGadget (rho 230) k := by
  set bits : List.Vector F 253 := List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val)) with hbits
  have keyB : ∀ (j : ℕ) (hj : j < 253), bits[j]! = rho (231 + j) := by
    intro j hj
    rw [hbits, getElem!_pos _ j (by simpa using hj)]
    conv_lhs => rw [List.Vector.getElem_def]
    simp only [List.Vector.toList_ofFn, List.getElem_ofFn]
  have keyG : ∀ (j : ℕ) (hj : j < 253), bits[j]'hj = rho (231 + j) := by
    intro j hj
    rw [hbits, List.Vector.getElem_def]
    simp only [List.Vector.toList_ofFn, List.getElem_ofFn]
  refine canonicalFqBitsGadget_of_components (rho 230) bits k hrec ?_ ?_
  · apply isVectorBinary_of_booleanity bits
    intro i hi
    show bits[i]! * (1 - bits[i]!) = 0
    rw [keyB i hi]
    interval_cases i
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb0; linear_combination hb0
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb1; linear_combination hb1
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb2; linear_combination hb2
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb3; linear_combination hb3
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb4; linear_combination hb4
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb5; linear_combination hb5
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb6; linear_combination hb6
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb7; linear_combination hb7
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb8; linear_combination hb8
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb9; linear_combination hb9
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb10; linear_combination hb10
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb11; linear_combination hb11
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb12; linear_combination hb12
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb13; linear_combination hb13
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb14; linear_combination hb14
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb15; linear_combination hb15
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb16; linear_combination hb16
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb17; linear_combination hb17
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb18; linear_combination hb18
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb19; linear_combination hb19
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb20; linear_combination hb20
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb21; linear_combination hb21
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb22; linear_combination hb22
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb23; linear_combination hb23
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb24; linear_combination hb24
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb25; linear_combination hb25
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb26; linear_combination hb26
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb27; linear_combination hb27
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb28; linear_combination hb28
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb29; linear_combination hb29
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb30; linear_combination hb30
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb31; linear_combination hb31
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb32; linear_combination hb32
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb33; linear_combination hb33
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb34; linear_combination hb34
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb35; linear_combination hb35
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb36; linear_combination hb36
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb37; linear_combination hb37
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb38; linear_combination hb38
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb39; linear_combination hb39
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb40; linear_combination hb40
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb41; linear_combination hb41
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb42; linear_combination hb42
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb43; linear_combination hb43
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb44; linear_combination hb44
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb45; linear_combination hb45
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb46; linear_combination hb46
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb47; linear_combination hb47
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb48; linear_combination hb48
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb49; linear_combination hb49
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb50; linear_combination hb50
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb51; linear_combination hb51
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb52; linear_combination hb52
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb53; linear_combination hb53
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb54; linear_combination hb54
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb55; linear_combination hb55
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb56; linear_combination hb56
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb57; linear_combination hb57
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb58; linear_combination hb58
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb59; linear_combination hb59
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb60; linear_combination hb60
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb61; linear_combination hb61
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb62; linear_combination hb62
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb63; linear_combination hb63
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb64; linear_combination hb64
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb65; linear_combination hb65
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb66; linear_combination hb66
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb67; linear_combination hb67
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb68; linear_combination hb68
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb69; linear_combination hb69
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb70; linear_combination hb70
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb71; linear_combination hb71
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb72; linear_combination hb72
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb73; linear_combination hb73
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb74; linear_combination hb74
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb75; linear_combination hb75
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb76; linear_combination hb76
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb77; linear_combination hb77
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb78; linear_combination hb78
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb79; linear_combination hb79
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb80; linear_combination hb80
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb81; linear_combination hb81
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb82; linear_combination hb82
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb83; linear_combination hb83
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb84; linear_combination hb84
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb85; linear_combination hb85
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb86; linear_combination hb86
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb87; linear_combination hb87
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb88; linear_combination hb88
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb89; linear_combination hb89
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb90; linear_combination hb90
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb91; linear_combination hb91
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb92; linear_combination hb92
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb93; linear_combination hb93
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb94; linear_combination hb94
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb95; linear_combination hb95
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb96; linear_combination hb96
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb97; linear_combination hb97
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb98; linear_combination hb98
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb99; linear_combination hb99
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb100; linear_combination hb100
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb101; linear_combination hb101
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb102; linear_combination hb102
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb103; linear_combination hb103
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb104; linear_combination hb104
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb105; linear_combination hb105
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb106; linear_combination hb106
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb107; linear_combination hb107
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb108; linear_combination hb108
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb109; linear_combination hb109
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb110; linear_combination hb110
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb111; linear_combination hb111
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb112; linear_combination hb112
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb113; linear_combination hb113
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb114; linear_combination hb114
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb115; linear_combination hb115
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb116; linear_combination hb116
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb117; linear_combination hb117
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb118; linear_combination hb118
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb119; linear_combination hb119
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb120; linear_combination hb120
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb121; linear_combination hb121
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb122; linear_combination hb122
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb123; linear_combination hb123
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb124; linear_combination hb124
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb125; linear_combination hb125
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb126; linear_combination hb126
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb127; linear_combination hb127
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb128; linear_combination hb128
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb129; linear_combination hb129
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb130; linear_combination hb130
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb131; linear_combination hb131
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb132; linear_combination hb132
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb133; linear_combination hb133
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb134; linear_combination hb134
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb135; linear_combination hb135
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb136; linear_combination hb136
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb137; linear_combination hb137
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb138; linear_combination hb138
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb139; linear_combination hb139
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb140; linear_combination hb140
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb141; linear_combination hb141
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb142; linear_combination hb142
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb143; linear_combination hb143
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb144; linear_combination hb144
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb145; linear_combination hb145
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb146; linear_combination hb146
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb147; linear_combination hb147
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb148; linear_combination hb148
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb149; linear_combination hb149
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb150; linear_combination hb150
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb151; linear_combination hb151
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb152; linear_combination hb152
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb153; linear_combination hb153
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb154; linear_combination hb154
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb155; linear_combination hb155
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb156; linear_combination hb156
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb157; linear_combination hb157
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb158; linear_combination hb158
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb159; linear_combination hb159
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb160; linear_combination hb160
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb161; linear_combination hb161
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb162; linear_combination hb162
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb163; linear_combination hb163
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb164; linear_combination hb164
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb165; linear_combination hb165
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb166; linear_combination hb166
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb167; linear_combination hb167
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb168; linear_combination hb168
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb169; linear_combination hb169
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb170; linear_combination hb170
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb171; linear_combination hb171
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb172; linear_combination hb172
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb173; linear_combination hb173
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb174; linear_combination hb174
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb175; linear_combination hb175
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb176; linear_combination hb176
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb177; linear_combination hb177
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb178; linear_combination hb178
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb179; linear_combination hb179
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb180; linear_combination hb180
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb181; linear_combination hb181
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb182; linear_combination hb182
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb183; linear_combination hb183
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb184; linear_combination hb184
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb185; linear_combination hb185
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb186; linear_combination hb186
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb187; linear_combination hb187
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb188; linear_combination hb188
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb189; linear_combination hb189
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb190; linear_combination hb190
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb191; linear_combination hb191
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb192; linear_combination hb192
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb193; linear_combination hb193
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb194; linear_combination hb194
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb195; linear_combination hb195
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb196; linear_combination hb196
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb197; linear_combination hb197
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb198; linear_combination hb198
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb199; linear_combination hb199
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb200; linear_combination hb200
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb201; linear_combination hb201
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb202; linear_combination hb202
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb203; linear_combination hb203
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb204; linear_combination hb204
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb205; linear_combination hb205
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb206; linear_combination hb206
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb207; linear_combination hb207
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb208; linear_combination hb208
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb209; linear_combination hb209
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb210; linear_combination hb210
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb211; linear_combination hb211
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb212; linear_combination hb212
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb213; linear_combination hb213
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb214; linear_combination hb214
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb215; linear_combination hb215
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb216; linear_combination hb216
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb217; linear_combination hb217
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb218; linear_combination hb218
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb219; linear_combination hb219
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb220; linear_combination hb220
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb221; linear_combination hb221
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb222; linear_combination hb222
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb223; linear_combination hb223
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb224; linear_combination hb224
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb225; linear_combination hb225
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb226; linear_combination hb226
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb227; linear_combination hb227
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb228; linear_combination hb228
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb229; linear_combination hb229
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb230; linear_combination hb230
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb231; linear_combination hb231
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb232; linear_combination hb232
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb233; linear_combination hb233
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb234; linear_combination hb234
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb235; linear_combination hb235
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb236; linear_combination hb236
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb237; linear_combination hb237
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb238; linear_combination hb238
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb239; linear_combination hb239
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb240; linear_combination hb240
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb241; linear_combination hb241
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb242; linear_combination hb242
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb243; linear_combination hb243
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb244; linear_combination hb244
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb245; linear_combination hb245
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb246; linear_combination hb246
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb247; linear_combination hb247
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb248; linear_combination hb248
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb249; linear_combination hb249
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb250; linear_combination hb250
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb251; linear_combination hb251
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb252; linear_combination hb252
  · refine chainK_of_obligations bits k hk ?_
    refine block_hobl_of_truethread bits (block1_flag rho) ?_ ?_ ?_ ?_
    · rw [block1_flag, if_pos (by norm_num : (253 : ℕ) ≤ 253)]
    · intro m hm
      interval_cases m
      · have htf : trueFactor bits 0 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 0 = true))]
        rw [htf, show block1_flag rho 0 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 1 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 1 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 1 = true))]
        rw [htf, show block1_flag rho 1 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 2 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 2 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 2 = true))]
        rw [htf, show block1_flag rho 2 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 3 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 3 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 3 = true))]
        rw [htf, show block1_flag rho 3 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 4 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 4 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 4 = true))]
        rw [htf, show block1_flag rho 4 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 5 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 5 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 5 = true))]
        rw [htf, show block1_flag rho 5 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 6 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 6 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 6 = true))]
        rw [htf, show block1_flag rho 6 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 7 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 7 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 7 = true))]
        rw [htf, show block1_flag rho 7 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 8 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 8 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 8 = true))]
        rw [htf, show block1_flag rho 8 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 9 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 9 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 9 = true))]
        rw [htf, show block1_flag rho 9 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 10 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 10 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 10 = true))]
        rw [htf, show block1_flag rho 10 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 11 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 11 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 11 = true))]
        rw [htf, show block1_flag rho 11 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 12 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 12 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 12 = true))]
        rw [htf, show block1_flag rho 12 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 13 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 13 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 13 = true))]
        rw [htf, show block1_flag rho 13 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 14 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 14 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 14 = true))]
        rw [htf, show block1_flag rho 14 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 15 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 15 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 15 = true))]
        rw [htf, show block1_flag rho 15 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 16 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 16 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 16 = true))]
        rw [htf, show block1_flag rho 16 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 17 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 17 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 17 = true))]
        rw [htf, show block1_flag rho 17 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 18 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 18 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 18 = true))]
        rw [htf, show block1_flag rho 18 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 19 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 19 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 19 = true))]
        rw [htf, show block1_flag rho 19 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 20 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 20 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 20 = true))]
        rw [htf, show block1_flag rho 20 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 21 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 21 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 21 = true))]
        rw [htf, show block1_flag rho 21 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 22 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 22 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 22 = true))]
        rw [htf, show block1_flag rho 22 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 23 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 23 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 23 = true))]
        rw [htf, show block1_flag rho 23 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 24 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 24 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 24 = true))]
        rw [htf, show block1_flag rho 24 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 25 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 25 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 25 = true))]
        rw [htf, show block1_flag rho 25 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 26 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 26 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 26 = true))]
        rw [htf, show block1_flag rho 26 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 27 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 27 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 27 = true))]
        rw [htf, show block1_flag rho 27 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 28 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 28 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 28 = true))]
        rw [htf, show block1_flag rho 28 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 29 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 29 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 29 = true))]
        rw [htf, show block1_flag rho 29 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 30 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 30 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 30 = true))]
        rw [htf, show block1_flag rho 30 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 31 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 31 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 31 = true))]
        rw [htf, show block1_flag rho 31 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 32 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 32 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 32 = true))]
        rw [htf, show block1_flag rho 32 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 33 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 33 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 33 = true))]
        rw [htf, show block1_flag rho 33 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 34 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 34 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 34 = true))]
        rw [htf, show block1_flag rho 34 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 35 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 35 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 35 = true))]
        rw [htf, show block1_flag rho 35 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 36 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 36 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 36 = true))]
        rw [htf, show block1_flag rho 36 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 37 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 37 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 37 = true))]
        rw [htf, show block1_flag rho 37 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 38 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 38 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 38 = true))]
        rw [htf, show block1_flag rho 38 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 39 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 39 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 39 = true))]
        rw [htf, show block1_flag rho 39 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 40 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 40 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 40 = true))]
        rw [htf, show block1_flag rho 40 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 41 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 41 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 41 = true))]
        rw [htf, show block1_flag rho 41 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 42 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 42 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 42 = true))]
        rw [htf, show block1_flag rho 42 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 43 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 43 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 43 = true))]
        rw [htf, show block1_flag rho 43 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 44 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 44 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 44 = true))]
        rw [htf, show block1_flag rho 44 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 45 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 45 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 45 = true))]
        rw [htf, show block1_flag rho 45 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 46 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 46 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 46 = true))]
        rw [htf, show block1_flag rho 46 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 47 = rho 569 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 47 = rho 278 := by
          rw [trueFactor, if_pos (by decide : pmBit 47 = true)]; exact keyB 47 (by omega)
        rw [htf, show block1_flag rho 47 = rho 569 from by norm_num [block1_flag, block1_W], show block1_flag rho 48 = rho 568 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht47 | linear_combination -ht47
      · have htf : trueFactor bits 48 = rho 279 := by
          rw [trueFactor, if_pos (by decide : pmBit 48 = true)]; exact keyB 48 (by omega)
        rw [htf, show block1_flag rho 48 = rho 568 from by norm_num [block1_flag, block1_W], show block1_flag rho 49 = rho 567 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht48 | linear_combination -ht48
      · have htf : trueFactor bits 49 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 49 = true))]
        rw [htf, show block1_flag rho 49 = rho 567 from by norm_num [block1_flag, block1_W], show block1_flag rho 50 = rho 567 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 50 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 50 = true))]
        rw [htf, show block1_flag rho 50 = rho 567 from by norm_num [block1_flag, block1_W], show block1_flag rho 51 = rho 567 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 51 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 51 = true))]
        rw [htf, show block1_flag rho 51 = rho 567 from by norm_num [block1_flag, block1_W], show block1_flag rho 52 = rho 567 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 52 = rho 283 := by
          rw [trueFactor, if_pos (by decide : pmBit 52 = true)]; exact keyB 52 (by omega)
        rw [htf, show block1_flag rho 52 = rho 567 from by norm_num [block1_flag, block1_W], show block1_flag rho 53 = rho 566 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht52 | linear_combination -ht52
      · have htf : trueFactor bits 53 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 53 = true))]
        rw [htf, show block1_flag rho 53 = rho 566 from by norm_num [block1_flag, block1_W], show block1_flag rho 54 = rho 566 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 54 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 54 = true))]
        rw [htf, show block1_flag rho 54 = rho 566 from by norm_num [block1_flag, block1_W], show block1_flag rho 55 = rho 566 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 55 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 55 = true))]
        rw [htf, show block1_flag rho 55 = rho 566 from by norm_num [block1_flag, block1_W], show block1_flag rho 56 = rho 566 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 56 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 56 = true))]
        rw [htf, show block1_flag rho 56 = rho 566 from by norm_num [block1_flag, block1_W], show block1_flag rho 57 = rho 566 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 57 = rho 288 := by
          rw [trueFactor, if_pos (by decide : pmBit 57 = true)]; exact keyB 57 (by omega)
        rw [htf, show block1_flag rho 57 = rho 566 from by norm_num [block1_flag, block1_W], show block1_flag rho 58 = rho 565 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht57 | linear_combination -ht57
      · have htf : trueFactor bits 58 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 58 = true))]
        rw [htf, show block1_flag rho 58 = rho 565 from by norm_num [block1_flag, block1_W], show block1_flag rho 59 = rho 565 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 59 = rho 290 := by
          rw [trueFactor, if_pos (by decide : pmBit 59 = true)]; exact keyB 59 (by omega)
        rw [htf, show block1_flag rho 59 = rho 565 from by norm_num [block1_flag, block1_W], show block1_flag rho 60 = rho 564 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht59 | linear_combination -ht59
      · have htf : trueFactor bits 60 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 60 = true))]
        rw [htf, show block1_flag rho 60 = rho 564 from by norm_num [block1_flag, block1_W], show block1_flag rho 61 = rho 564 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 61 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 61 = true))]
        rw [htf, show block1_flag rho 61 = rho 564 from by norm_num [block1_flag, block1_W], show block1_flag rho 62 = rho 564 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 62 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 62 = true))]
        rw [htf, show block1_flag rho 62 = rho 564 from by norm_num [block1_flag, block1_W], show block1_flag rho 63 = rho 564 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 63 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 63 = true))]
        rw [htf, show block1_flag rho 63 = rho 564 from by norm_num [block1_flag, block1_W], show block1_flag rho 64 = rho 564 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 64 = rho 295 := by
          rw [trueFactor, if_pos (by decide : pmBit 64 = true)]; exact keyB 64 (by omega)
        rw [htf, show block1_flag rho 64 = rho 564 from by norm_num [block1_flag, block1_W], show block1_flag rho 65 = rho 563 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht64 | linear_combination -ht64
      · have htf : trueFactor bits 65 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 65 = true))]
        rw [htf, show block1_flag rho 65 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 66 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 66 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 66 = true))]
        rw [htf, show block1_flag rho 66 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 67 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 67 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 67 = true))]
        rw [htf, show block1_flag rho 67 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 68 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 68 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 68 = true))]
        rw [htf, show block1_flag rho 68 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 69 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 69 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 69 = true))]
        rw [htf, show block1_flag rho 69 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 70 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 70 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 70 = true))]
        rw [htf, show block1_flag rho 70 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 71 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 71 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 71 = true))]
        rw [htf, show block1_flag rho 71 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 72 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 72 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 72 = true))]
        rw [htf, show block1_flag rho 72 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 73 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 73 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 73 = true))]
        rw [htf, show block1_flag rho 73 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 74 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 74 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 74 = true))]
        rw [htf, show block1_flag rho 74 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 75 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 75 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 75 = true))]
        rw [htf, show block1_flag rho 75 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 76 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 76 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 76 = true))]
        rw [htf, show block1_flag rho 76 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 77 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 77 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 77 = true))]
        rw [htf, show block1_flag rho 77 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 78 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 78 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 78 = true))]
        rw [htf, show block1_flag rho 78 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 79 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 79 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 79 = true))]
        rw [htf, show block1_flag rho 79 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 80 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 80 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 80 = true))]
        rw [htf, show block1_flag rho 80 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 81 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 81 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 81 = true))]
        rw [htf, show block1_flag rho 81 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 82 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 82 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 82 = true))]
        rw [htf, show block1_flag rho 82 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 83 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 83 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 83 = true))]
        rw [htf, show block1_flag rho 83 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 84 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 84 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 84 = true))]
        rw [htf, show block1_flag rho 84 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 85 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 85 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 85 = true))]
        rw [htf, show block1_flag rho 85 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 86 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 86 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 86 = true))]
        rw [htf, show block1_flag rho 86 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 87 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 87 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 87 = true))]
        rw [htf, show block1_flag rho 87 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 88 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 88 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 88 = true))]
        rw [htf, show block1_flag rho 88 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 89 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 89 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 89 = true))]
        rw [htf, show block1_flag rho 89 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 90 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 90 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 90 = true))]
        rw [htf, show block1_flag rho 90 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 91 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 91 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 91 = true))]
        rw [htf, show block1_flag rho 91 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 92 = rho 563 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 92 = rho 323 := by
          rw [trueFactor, if_pos (by decide : pmBit 92 = true)]; exact keyB 92 (by omega)
        rw [htf, show block1_flag rho 92 = rho 563 from by norm_num [block1_flag, block1_W], show block1_flag rho 93 = rho 562 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht92 | linear_combination -ht92
      · have htf : trueFactor bits 93 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 93 = true))]
        rw [htf, show block1_flag rho 93 = rho 562 from by norm_num [block1_flag, block1_W], show block1_flag rho 94 = rho 562 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 94 = rho 325 := by
          rw [trueFactor, if_pos (by decide : pmBit 94 = true)]; exact keyB 94 (by omega)
        rw [htf, show block1_flag rho 94 = rho 562 from by norm_num [block1_flag, block1_W], show block1_flag rho 95 = rho 561 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht94 | linear_combination -ht94
      · have htf : trueFactor bits 95 = rho 326 := by
          rw [trueFactor, if_pos (by decide : pmBit 95 = true)]; exact keyB 95 (by omega)
        rw [htf, show block1_flag rho 95 = rho 561 from by norm_num [block1_flag, block1_W], show block1_flag rho 96 = rho 560 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht95 | linear_combination -ht95
      · have htf : trueFactor bits 96 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 96 = true))]
        rw [htf, show block1_flag rho 96 = rho 560 from by norm_num [block1_flag, block1_W], show block1_flag rho 97 = rho 560 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 97 = rho 328 := by
          rw [trueFactor, if_pos (by decide : pmBit 97 = true)]; exact keyB 97 (by omega)
        rw [htf, show block1_flag rho 97 = rho 560 from by norm_num [block1_flag, block1_W], show block1_flag rho 98 = rho 559 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht97 | linear_combination -ht97
      · have htf : trueFactor bits 98 = rho 329 := by
          rw [trueFactor, if_pos (by decide : pmBit 98 = true)]; exact keyB 98 (by omega)
        rw [htf, show block1_flag rho 98 = rho 559 from by norm_num [block1_flag, block1_W], show block1_flag rho 99 = rho 558 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht98 | linear_combination -ht98
      · have htf : trueFactor bits 99 = rho 330 := by
          rw [trueFactor, if_pos (by decide : pmBit 99 = true)]; exact keyB 99 (by omega)
        rw [htf, show block1_flag rho 99 = rho 558 from by norm_num [block1_flag, block1_W], show block1_flag rho 100 = rho 557 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht99 | linear_combination -ht99
      · have htf : trueFactor bits 100 = rho 331 := by
          rw [trueFactor, if_pos (by decide : pmBit 100 = true)]; exact keyB 100 (by omega)
        rw [htf, show block1_flag rho 100 = rho 557 from by norm_num [block1_flag, block1_W], show block1_flag rho 101 = rho 556 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht100 | linear_combination -ht100
      · have htf : trueFactor bits 101 = rho 332 := by
          rw [trueFactor, if_pos (by decide : pmBit 101 = true)]; exact keyB 101 (by omega)
        rw [htf, show block1_flag rho 101 = rho 556 from by norm_num [block1_flag, block1_W], show block1_flag rho 102 = rho 555 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht101 | linear_combination -ht101
      · have htf : trueFactor bits 102 = rho 333 := by
          rw [trueFactor, if_pos (by decide : pmBit 102 = true)]; exact keyB 102 (by omega)
        rw [htf, show block1_flag rho 102 = rho 555 from by norm_num [block1_flag, block1_W], show block1_flag rho 103 = rho 554 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht102 | linear_combination -ht102
      · have htf : trueFactor bits 103 = rho 334 := by
          rw [trueFactor, if_pos (by decide : pmBit 103 = true)]; exact keyB 103 (by omega)
        rw [htf, show block1_flag rho 103 = rho 554 from by norm_num [block1_flag, block1_W], show block1_flag rho 104 = rho 553 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht103 | linear_combination -ht103
      · have htf : trueFactor bits 104 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 104 = true))]
        rw [htf, show block1_flag rho 104 = rho 553 from by norm_num [block1_flag, block1_W], show block1_flag rho 105 = rho 553 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 105 = rho 336 := by
          rw [trueFactor, if_pos (by decide : pmBit 105 = true)]; exact keyB 105 (by omega)
        rw [htf, show block1_flag rho 105 = rho 553 from by norm_num [block1_flag, block1_W], show block1_flag rho 106 = rho 552 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht105 | linear_combination -ht105
      · have htf : trueFactor bits 106 = rho 337 := by
          rw [trueFactor, if_pos (by decide : pmBit 106 = true)]; exact keyB 106 (by omega)
        rw [htf, show block1_flag rho 106 = rho 552 from by norm_num [block1_flag, block1_W], show block1_flag rho 107 = rho 551 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht106 | linear_combination -ht106
      · have htf : trueFactor bits 107 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 107 = true))]
        rw [htf, show block1_flag rho 107 = rho 551 from by norm_num [block1_flag, block1_W], show block1_flag rho 108 = rho 551 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 108 = rho 339 := by
          rw [trueFactor, if_pos (by decide : pmBit 108 = true)]; exact keyB 108 (by omega)
        rw [htf, show block1_flag rho 108 = rho 551 from by norm_num [block1_flag, block1_W], show block1_flag rho 109 = rho 550 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht108 | linear_combination -ht108
      · have htf : trueFactor bits 109 = rho 340 := by
          rw [trueFactor, if_pos (by decide : pmBit 109 = true)]; exact keyB 109 (by omega)
        rw [htf, show block1_flag rho 109 = rho 550 from by norm_num [block1_flag, block1_W], show block1_flag rho 110 = rho 549 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht109 | linear_combination -ht109
      · have htf : trueFactor bits 110 = rho 341 := by
          rw [trueFactor, if_pos (by decide : pmBit 110 = true)]; exact keyB 110 (by omega)
        rw [htf, show block1_flag rho 110 = rho 549 from by norm_num [block1_flag, block1_W], show block1_flag rho 111 = rho 548 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht110 | linear_combination -ht110
      · have htf : trueFactor bits 111 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 111 = true))]
        rw [htf, show block1_flag rho 111 = rho 548 from by norm_num [block1_flag, block1_W], show block1_flag rho 112 = rho 548 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 112 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 112 = true))]
        rw [htf, show block1_flag rho 112 = rho 548 from by norm_num [block1_flag, block1_W], show block1_flag rho 113 = rho 548 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 113 = rho 344 := by
          rw [trueFactor, if_pos (by decide : pmBit 113 = true)]; exact keyB 113 (by omega)
        rw [htf, show block1_flag rho 113 = rho 548 from by norm_num [block1_flag, block1_W], show block1_flag rho 114 = rho 547 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht113 | linear_combination -ht113
      · have htf : trueFactor bits 114 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 114 = true))]
        rw [htf, show block1_flag rho 114 = rho 547 from by norm_num [block1_flag, block1_W], show block1_flag rho 115 = rho 547 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 115 = rho 346 := by
          rw [trueFactor, if_pos (by decide : pmBit 115 = true)]; exact keyB 115 (by omega)
        rw [htf, show block1_flag rho 115 = rho 547 from by norm_num [block1_flag, block1_W], show block1_flag rho 116 = rho 546 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht115 | linear_combination -ht115
      · have htf : trueFactor bits 116 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 116 = true))]
        rw [htf, show block1_flag rho 116 = rho 546 from by norm_num [block1_flag, block1_W], show block1_flag rho 117 = rho 546 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 117 = rho 348 := by
          rw [trueFactor, if_pos (by decide : pmBit 117 = true)]; exact keyB 117 (by omega)
        rw [htf, show block1_flag rho 117 = rho 546 from by norm_num [block1_flag, block1_W], show block1_flag rho 118 = rho 545 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht117 | linear_combination -ht117
      · have htf : trueFactor bits 118 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 118 = true))]
        rw [htf, show block1_flag rho 118 = rho 545 from by norm_num [block1_flag, block1_W], show block1_flag rho 119 = rho 545 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 119 = rho 350 := by
          rw [trueFactor, if_pos (by decide : pmBit 119 = true)]; exact keyB 119 (by omega)
        rw [htf, show block1_flag rho 119 = rho 545 from by norm_num [block1_flag, block1_W], show block1_flag rho 120 = rho 544 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht119 | linear_combination -ht119
      · have htf : trueFactor bits 120 = rho 351 := by
          rw [trueFactor, if_pos (by decide : pmBit 120 = true)]; exact keyB 120 (by omega)
        rw [htf, show block1_flag rho 120 = rho 544 from by norm_num [block1_flag, block1_W], show block1_flag rho 121 = rho 543 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht120 | linear_combination -ht120
      · have htf : trueFactor bits 121 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 121 = true))]
        rw [htf, show block1_flag rho 121 = rho 543 from by norm_num [block1_flag, block1_W], show block1_flag rho 122 = rho 543 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 122 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 122 = true))]
        rw [htf, show block1_flag rho 122 = rho 543 from by norm_num [block1_flag, block1_W], show block1_flag rho 123 = rho 543 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 123 = rho 354 := by
          rw [trueFactor, if_pos (by decide : pmBit 123 = true)]; exact keyB 123 (by omega)
        rw [htf, show block1_flag rho 123 = rho 543 from by norm_num [block1_flag, block1_W], show block1_flag rho 124 = rho 542 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht123 | linear_combination -ht123
      · have htf : trueFactor bits 124 = rho 355 := by
          rw [trueFactor, if_pos (by decide : pmBit 124 = true)]; exact keyB 124 (by omega)
        rw [htf, show block1_flag rho 124 = rho 542 from by norm_num [block1_flag, block1_W], show block1_flag rho 125 = rho 541 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht124 | linear_combination -ht124
      · have htf : trueFactor bits 125 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 125 = true))]
        rw [htf, show block1_flag rho 125 = rho 541 from by norm_num [block1_flag, block1_W], show block1_flag rho 126 = rho 541 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 126 = rho 357 := by
          rw [trueFactor, if_pos (by decide : pmBit 126 = true)]; exact keyB 126 (by omega)
        rw [htf, show block1_flag rho 126 = rho 541 from by norm_num [block1_flag, block1_W], show block1_flag rho 127 = rho 540 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht126 | linear_combination -ht126
      · have htf : trueFactor bits 127 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 127 = true))]
        rw [htf, show block1_flag rho 127 = rho 540 from by norm_num [block1_flag, block1_W], show block1_flag rho 128 = rho 540 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 128 = rho 359 := by
          rw [trueFactor, if_pos (by decide : pmBit 128 = true)]; exact keyB 128 (by omega)
        rw [htf, show block1_flag rho 128 = rho 540 from by norm_num [block1_flag, block1_W], show block1_flag rho 129 = rho 539 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht128 | linear_combination -ht128
      · have htf : trueFactor bits 129 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 129 = true))]
        rw [htf, show block1_flag rho 129 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 130 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 130 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 130 = true))]
        rw [htf, show block1_flag rho 130 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 131 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 131 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 131 = true))]
        rw [htf, show block1_flag rho 131 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 132 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 132 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 132 = true))]
        rw [htf, show block1_flag rho 132 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 133 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 133 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 133 = true))]
        rw [htf, show block1_flag rho 133 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 134 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 134 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 134 = true))]
        rw [htf, show block1_flag rho 134 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 135 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 135 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 135 = true))]
        rw [htf, show block1_flag rho 135 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 136 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 136 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 136 = true))]
        rw [htf, show block1_flag rho 136 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 137 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 137 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 137 = true))]
        rw [htf, show block1_flag rho 137 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 138 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 138 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 138 = true))]
        rw [htf, show block1_flag rho 138 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 139 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 139 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 139 = true))]
        rw [htf, show block1_flag rho 139 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 140 = rho 539 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 140 = rho 371 := by
          rw [trueFactor, if_pos (by decide : pmBit 140 = true)]; exact keyB 140 (by omega)
        rw [htf, show block1_flag rho 140 = rho 539 from by norm_num [block1_flag, block1_W], show block1_flag rho 141 = rho 538 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht140 | linear_combination -ht140
      · have htf : trueFactor bits 141 = rho 372 := by
          rw [trueFactor, if_pos (by decide : pmBit 141 = true)]; exact keyB 141 (by omega)
        rw [htf, show block1_flag rho 141 = rho 538 from by norm_num [block1_flag, block1_W], show block1_flag rho 142 = rho 537 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht141 | linear_combination -ht141
      · have htf : trueFactor bits 142 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 142 = true))]
        rw [htf, show block1_flag rho 142 = rho 537 from by norm_num [block1_flag, block1_W], show block1_flag rho 143 = rho 537 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 143 = rho 374 := by
          rw [trueFactor, if_pos (by decide : pmBit 143 = true)]; exact keyB 143 (by omega)
        rw [htf, show block1_flag rho 143 = rho 537 from by norm_num [block1_flag, block1_W], show block1_flag rho 144 = rho 536 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht143 | linear_combination -ht143
      · have htf : trueFactor bits 144 = rho 375 := by
          rw [trueFactor, if_pos (by decide : pmBit 144 = true)]; exact keyB 144 (by omega)
        rw [htf, show block1_flag rho 144 = rho 536 from by norm_num [block1_flag, block1_W], show block1_flag rho 145 = rho 535 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht144 | linear_combination -ht144
      · have htf : trueFactor bits 145 = rho 376 := by
          rw [trueFactor, if_pos (by decide : pmBit 145 = true)]; exact keyB 145 (by omega)
        rw [htf, show block1_flag rho 145 = rho 535 from by norm_num [block1_flag, block1_W], show block1_flag rho 146 = rho 534 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht145 | linear_combination -ht145
      · have htf : trueFactor bits 146 = rho 377 := by
          rw [trueFactor, if_pos (by decide : pmBit 146 = true)]; exact keyB 146 (by omega)
        rw [htf, show block1_flag rho 146 = rho 534 from by norm_num [block1_flag, block1_W], show block1_flag rho 147 = rho 533 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht146 | linear_combination -ht146
      · have htf : trueFactor bits 147 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 147 = true))]
        rw [htf, show block1_flag rho 147 = rho 533 from by norm_num [block1_flag, block1_W], show block1_flag rho 148 = rho 533 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 148 = rho 379 := by
          rw [trueFactor, if_pos (by decide : pmBit 148 = true)]; exact keyB 148 (by omega)
        rw [htf, show block1_flag rho 148 = rho 533 from by norm_num [block1_flag, block1_W], show block1_flag rho 149 = rho 532 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht148 | linear_combination -ht148
      · have htf : trueFactor bits 149 = rho 380 := by
          rw [trueFactor, if_pos (by decide : pmBit 149 = true)]; exact keyB 149 (by omega)
        rw [htf, show block1_flag rho 149 = rho 532 from by norm_num [block1_flag, block1_W], show block1_flag rho 150 = rho 531 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht149 | linear_combination -ht149
      · have htf : trueFactor bits 150 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 150 = true))]
        rw [htf, show block1_flag rho 150 = rho 531 from by norm_num [block1_flag, block1_W], show block1_flag rho 151 = rho 531 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 151 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 151 = true))]
        rw [htf, show block1_flag rho 151 = rho 531 from by norm_num [block1_flag, block1_W], show block1_flag rho 152 = rho 531 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 152 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 152 = true))]
        rw [htf, show block1_flag rho 152 = rho 531 from by norm_num [block1_flag, block1_W], show block1_flag rho 153 = rho 531 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 153 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 153 = true))]
        rw [htf, show block1_flag rho 153 = rho 531 from by norm_num [block1_flag, block1_W], show block1_flag rho 154 = rho 531 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 154 = rho 385 := by
          rw [trueFactor, if_pos (by decide : pmBit 154 = true)]; exact keyB 154 (by omega)
        rw [htf, show block1_flag rho 154 = rho 531 from by norm_num [block1_flag, block1_W], show block1_flag rho 155 = rho 530 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht154 | linear_combination -ht154
      · have htf : trueFactor bits 155 = rho 386 := by
          rw [trueFactor, if_pos (by decide : pmBit 155 = true)]; exact keyB 155 (by omega)
        rw [htf, show block1_flag rho 155 = rho 530 from by norm_num [block1_flag, block1_W], show block1_flag rho 156 = rho 529 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht155 | linear_combination -ht155
      · have htf : trueFactor bits 156 = rho 387 := by
          rw [trueFactor, if_pos (by decide : pmBit 156 = true)]; exact keyB 156 (by omega)
        rw [htf, show block1_flag rho 156 = rho 529 from by norm_num [block1_flag, block1_W], show block1_flag rho 157 = rho 528 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht156 | linear_combination -ht156
      · have htf : trueFactor bits 157 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 157 = true))]
        rw [htf, show block1_flag rho 157 = rho 528 from by norm_num [block1_flag, block1_W], show block1_flag rho 158 = rho 528 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 158 = rho 389 := by
          rw [trueFactor, if_pos (by decide : pmBit 158 = true)]; exact keyB 158 (by omega)
        rw [htf, show block1_flag rho 158 = rho 528 from by norm_num [block1_flag, block1_W], show block1_flag rho 159 = rho 527 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht158 | linear_combination -ht158
      · have htf : trueFactor bits 159 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 159 = true))]
        rw [htf, show block1_flag rho 159 = rho 527 from by norm_num [block1_flag, block1_W], show block1_flag rho 160 = rho 527 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 160 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 160 = true))]
        rw [htf, show block1_flag rho 160 = rho 527 from by norm_num [block1_flag, block1_W], show block1_flag rho 161 = rho 527 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 161 = rho 392 := by
          rw [trueFactor, if_pos (by decide : pmBit 161 = true)]; exact keyB 161 (by omega)
        rw [htf, show block1_flag rho 161 = rho 527 from by norm_num [block1_flag, block1_W], show block1_flag rho 162 = rho 526 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht161 | linear_combination -ht161
      · have htf : trueFactor bits 162 = rho 393 := by
          rw [trueFactor, if_pos (by decide : pmBit 162 = true)]; exact keyB 162 (by omega)
        rw [htf, show block1_flag rho 162 = rho 526 from by norm_num [block1_flag, block1_W], show block1_flag rho 163 = rho 525 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht162 | linear_combination -ht162
      · have htf : trueFactor bits 163 = rho 394 := by
          rw [trueFactor, if_pos (by decide : pmBit 163 = true)]; exact keyB 163 (by omega)
        rw [htf, show block1_flag rho 163 = rho 525 from by norm_num [block1_flag, block1_W], show block1_flag rho 164 = rho 524 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht163 | linear_combination -ht163
      · have htf : trueFactor bits 164 = rho 395 := by
          rw [trueFactor, if_pos (by decide : pmBit 164 = true)]; exact keyB 164 (by omega)
        rw [htf, show block1_flag rho 164 = rho 524 from by norm_num [block1_flag, block1_W], show block1_flag rho 165 = rho 523 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht164 | linear_combination -ht164
      · have htf : trueFactor bits 165 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 165 = true))]
        rw [htf, show block1_flag rho 165 = rho 523 from by norm_num [block1_flag, block1_W], show block1_flag rho 166 = rho 523 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 166 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 166 = true))]
        rw [htf, show block1_flag rho 166 = rho 523 from by norm_num [block1_flag, block1_W], show block1_flag rho 167 = rho 523 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 167 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 167 = true))]
        rw [htf, show block1_flag rho 167 = rho 523 from by norm_num [block1_flag, block1_W], show block1_flag rho 168 = rho 523 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 168 = rho 399 := by
          rw [trueFactor, if_pos (by decide : pmBit 168 = true)]; exact keyB 168 (by omega)
        rw [htf, show block1_flag rho 168 = rho 523 from by norm_num [block1_flag, block1_W], show block1_flag rho 169 = rho 522 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht168 | linear_combination -ht168
      · have htf : trueFactor bits 169 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 169 = true))]
        rw [htf, show block1_flag rho 169 = rho 522 from by norm_num [block1_flag, block1_W], show block1_flag rho 170 = rho 522 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 170 = rho 401 := by
          rw [trueFactor, if_pos (by decide : pmBit 170 = true)]; exact keyB 170 (by omega)
        rw [htf, show block1_flag rho 170 = rho 522 from by norm_num [block1_flag, block1_W], show block1_flag rho 171 = rho 521 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht170 | linear_combination -ht170
      · have htf : trueFactor bits 171 = rho 402 := by
          rw [trueFactor, if_pos (by decide : pmBit 171 = true)]; exact keyB 171 (by omega)
        rw [htf, show block1_flag rho 171 = rho 521 from by norm_num [block1_flag, block1_W], show block1_flag rho 172 = rho 520 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht171 | linear_combination -ht171
      · have htf : trueFactor bits 172 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 172 = true))]
        rw [htf, show block1_flag rho 172 = rho 520 from by norm_num [block1_flag, block1_W], show block1_flag rho 173 = rho 520 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 173 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 173 = true))]
        rw [htf, show block1_flag rho 173 = rho 520 from by norm_num [block1_flag, block1_W], show block1_flag rho 174 = rho 520 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 174 = rho 405 := by
          rw [trueFactor, if_pos (by decide : pmBit 174 = true)]; exact keyB 174 (by omega)
        rw [htf, show block1_flag rho 174 = rho 520 from by norm_num [block1_flag, block1_W], show block1_flag rho 175 = rho 519 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht174 | linear_combination -ht174
      · have htf : trueFactor bits 175 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 175 = true))]
        rw [htf, show block1_flag rho 175 = rho 519 from by norm_num [block1_flag, block1_W], show block1_flag rho 176 = rho 519 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 176 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 176 = true))]
        rw [htf, show block1_flag rho 176 = rho 519 from by norm_num [block1_flag, block1_W], show block1_flag rho 177 = rho 519 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 177 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 177 = true))]
        rw [htf, show block1_flag rho 177 = rho 519 from by norm_num [block1_flag, block1_W], show block1_flag rho 178 = rho 519 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 178 = rho 409 := by
          rw [trueFactor, if_pos (by decide : pmBit 178 = true)]; exact keyB 178 (by omega)
        rw [htf, show block1_flag rho 178 = rho 519 from by norm_num [block1_flag, block1_W], show block1_flag rho 179 = rho 518 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht178 | linear_combination -ht178
      · have htf : trueFactor bits 179 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 179 = true))]
        rw [htf, show block1_flag rho 179 = rho 518 from by norm_num [block1_flag, block1_W], show block1_flag rho 180 = rho 518 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 180 = rho 411 := by
          rw [trueFactor, if_pos (by decide : pmBit 180 = true)]; exact keyB 180 (by omega)
        rw [htf, show block1_flag rho 180 = rho 518 from by norm_num [block1_flag, block1_W], show block1_flag rho 181 = rho 517 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht180 | linear_combination -ht180
      · have htf : trueFactor bits 181 = rho 412 := by
          rw [trueFactor, if_pos (by decide : pmBit 181 = true)]; exact keyB 181 (by omega)
        rw [htf, show block1_flag rho 181 = rho 517 from by norm_num [block1_flag, block1_W], show block1_flag rho 182 = rho 516 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht181 | linear_combination -ht181
      · have htf : trueFactor bits 182 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 182 = true))]
        rw [htf, show block1_flag rho 182 = rho 516 from by norm_num [block1_flag, block1_W], show block1_flag rho 183 = rho 516 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 183 = rho 414 := by
          rw [trueFactor, if_pos (by decide : pmBit 183 = true)]; exact keyB 183 (by omega)
        rw [htf, show block1_flag rho 183 = rho 516 from by norm_num [block1_flag, block1_W], show block1_flag rho 184 = rho 515 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht183 | linear_combination -ht183
      · have htf : trueFactor bits 184 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 184 = true))]
        rw [htf, show block1_flag rho 184 = rho 515 from by norm_num [block1_flag, block1_W], show block1_flag rho 185 = rho 515 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 185 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 185 = true))]
        rw [htf, show block1_flag rho 185 = rho 515 from by norm_num [block1_flag, block1_W], show block1_flag rho 186 = rho 515 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 186 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 186 = true))]
        rw [htf, show block1_flag rho 186 = rho 515 from by norm_num [block1_flag, block1_W], show block1_flag rho 187 = rho 515 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 187 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 187 = true))]
        rw [htf, show block1_flag rho 187 = rho 515 from by norm_num [block1_flag, block1_W], show block1_flag rho 188 = rho 515 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 188 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 188 = true))]
        rw [htf, show block1_flag rho 188 = rho 515 from by norm_num [block1_flag, block1_W], show block1_flag rho 189 = rho 515 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 189 = rho 420 := by
          rw [trueFactor, if_pos (by decide : pmBit 189 = true)]; exact keyB 189 (by omega)
        rw [htf, show block1_flag rho 189 = rho 515 from by norm_num [block1_flag, block1_W], show block1_flag rho 190 = rho 514 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht189 | linear_combination -ht189
      · have htf : trueFactor bits 190 = rho 421 := by
          rw [trueFactor, if_pos (by decide : pmBit 190 = true)]; exact keyB 190 (by omega)
        rw [htf, show block1_flag rho 190 = rho 514 from by norm_num [block1_flag, block1_W], show block1_flag rho 191 = rho 513 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht190 | linear_combination -ht190
      · have htf : trueFactor bits 191 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 191 = true))]
        rw [htf, show block1_flag rho 191 = rho 513 from by norm_num [block1_flag, block1_W], show block1_flag rho 192 = rho 513 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 192 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 192 = true))]
        rw [htf, show block1_flag rho 192 = rho 513 from by norm_num [block1_flag, block1_W], show block1_flag rho 193 = rho 513 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 193 = rho 424 := by
          rw [trueFactor, if_pos (by decide : pmBit 193 = true)]; exact keyB 193 (by omega)
        rw [htf, show block1_flag rho 193 = rho 513 from by norm_num [block1_flag, block1_W], show block1_flag rho 194 = rho 512 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht193 | linear_combination -ht193
      · have htf : trueFactor bits 194 = rho 425 := by
          rw [trueFactor, if_pos (by decide : pmBit 194 = true)]; exact keyB 194 (by omega)
        rw [htf, show block1_flag rho 194 = rho 512 from by norm_num [block1_flag, block1_W], show block1_flag rho 195 = rho 511 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht194 | linear_combination -ht194
      · have htf : trueFactor bits 195 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 195 = true))]
        rw [htf, show block1_flag rho 195 = rho 511 from by norm_num [block1_flag, block1_W], show block1_flag rho 196 = rho 511 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 196 = rho 427 := by
          rw [trueFactor, if_pos (by decide : pmBit 196 = true)]; exact keyB 196 (by omega)
        rw [htf, show block1_flag rho 196 = rho 511 from by norm_num [block1_flag, block1_W], show block1_flag rho 197 = rho 510 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht196 | linear_combination -ht196
      · have htf : trueFactor bits 197 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 197 = true))]
        rw [htf, show block1_flag rho 197 = rho 510 from by norm_num [block1_flag, block1_W], show block1_flag rho 198 = rho 510 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 198 = rho 429 := by
          rw [trueFactor, if_pos (by decide : pmBit 198 = true)]; exact keyB 198 (by omega)
        rw [htf, show block1_flag rho 198 = rho 510 from by norm_num [block1_flag, block1_W], show block1_flag rho 199 = rho 509 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht198 | linear_combination -ht198
      · have htf : trueFactor bits 199 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 199 = true))]
        rw [htf, show block1_flag rho 199 = rho 509 from by norm_num [block1_flag, block1_W], show block1_flag rho 200 = rho 509 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 200 = rho 431 := by
          rw [trueFactor, if_pos (by decide : pmBit 200 = true)]; exact keyB 200 (by omega)
        rw [htf, show block1_flag rho 200 = rho 509 from by norm_num [block1_flag, block1_W], show block1_flag rho 201 = rho 508 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht200 | linear_combination -ht200
      · have htf : trueFactor bits 201 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 201 = true))]
        rw [htf, show block1_flag rho 201 = rho 508 from by norm_num [block1_flag, block1_W], show block1_flag rho 202 = rho 508 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 202 = rho 433 := by
          rw [trueFactor, if_pos (by decide : pmBit 202 = true)]; exact keyB 202 (by omega)
        rw [htf, show block1_flag rho 202 = rho 508 from by norm_num [block1_flag, block1_W], show block1_flag rho 203 = rho 507 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht202 | linear_combination -ht202
      · have htf : trueFactor bits 203 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 203 = true))]
        rw [htf, show block1_flag rho 203 = rho 507 from by norm_num [block1_flag, block1_W], show block1_flag rho 204 = rho 507 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 204 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 204 = true))]
        rw [htf, show block1_flag rho 204 = rho 507 from by norm_num [block1_flag, block1_W], show block1_flag rho 205 = rho 507 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 205 = rho 436 := by
          rw [trueFactor, if_pos (by decide : pmBit 205 = true)]; exact keyB 205 (by omega)
        rw [htf, show block1_flag rho 205 = rho 507 from by norm_num [block1_flag, block1_W], show block1_flag rho 206 = rho 506 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht205 | linear_combination -ht205
      · have htf : trueFactor bits 206 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 206 = true))]
        rw [htf, show block1_flag rho 206 = rho 506 from by norm_num [block1_flag, block1_W], show block1_flag rho 207 = rho 506 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 207 = rho 438 := by
          rw [trueFactor, if_pos (by decide : pmBit 207 = true)]; exact keyB 207 (by omega)
        rw [htf, show block1_flag rho 207 = rho 506 from by norm_num [block1_flag, block1_W], show block1_flag rho 208 = rho 505 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht207 | linear_combination -ht207
      · have htf : trueFactor bits 208 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 208 = true))]
        rw [htf, show block1_flag rho 208 = rho 505 from by norm_num [block1_flag, block1_W], show block1_flag rho 209 = rho 505 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 209 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 209 = true))]
        rw [htf, show block1_flag rho 209 = rho 505 from by norm_num [block1_flag, block1_W], show block1_flag rho 210 = rho 505 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 210 = rho 441 := by
          rw [trueFactor, if_pos (by decide : pmBit 210 = true)]; exact keyB 210 (by omega)
        rw [htf, show block1_flag rho 210 = rho 505 from by norm_num [block1_flag, block1_W], show block1_flag rho 211 = rho 504 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht210 | linear_combination -ht210
      · have htf : trueFactor bits 211 = rho 442 := by
          rw [trueFactor, if_pos (by decide : pmBit 211 = true)]; exact keyB 211 (by omega)
        rw [htf, show block1_flag rho 211 = rho 504 from by norm_num [block1_flag, block1_W], show block1_flag rho 212 = rho 503 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht211 | linear_combination -ht211
      · have htf : trueFactor bits 212 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 212 = true))]
        rw [htf, show block1_flag rho 212 = rho 503 from by norm_num [block1_flag, block1_W], show block1_flag rho 213 = rho 503 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 213 = rho 444 := by
          rw [trueFactor, if_pos (by decide : pmBit 213 = true)]; exact keyB 213 (by omega)
        rw [htf, show block1_flag rho 213 = rho 503 from by norm_num [block1_flag, block1_W], show block1_flag rho 214 = rho 502 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht213 | linear_combination -ht213
      · have htf : trueFactor bits 214 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 214 = true))]
        rw [htf, show block1_flag rho 214 = rho 502 from by norm_num [block1_flag, block1_W], show block1_flag rho 215 = rho 502 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 215 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 215 = true))]
        rw [htf, show block1_flag rho 215 = rho 502 from by norm_num [block1_flag, block1_W], show block1_flag rho 216 = rho 502 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 216 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 216 = true))]
        rw [htf, show block1_flag rho 216 = rho 502 from by norm_num [block1_flag, block1_W], show block1_flag rho 217 = rho 502 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 217 = rho 448 := by
          rw [trueFactor, if_pos (by decide : pmBit 217 = true)]; exact keyB 217 (by omega)
        rw [htf, show block1_flag rho 217 = rho 502 from by norm_num [block1_flag, block1_W], show block1_flag rho 218 = rho 501 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht217 | linear_combination -ht217
      · have htf : trueFactor bits 218 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 218 = true))]
        rw [htf, show block1_flag rho 218 = rho 501 from by norm_num [block1_flag, block1_W], show block1_flag rho 219 = rho 501 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 219 = rho 450 := by
          rw [trueFactor, if_pos (by decide : pmBit 219 = true)]; exact keyB 219 (by omega)
        rw [htf, show block1_flag rho 219 = rho 501 from by norm_num [block1_flag, block1_W], show block1_flag rho 220 = rho 500 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht219 | linear_combination -ht219
      · have htf : trueFactor bits 220 = rho 451 := by
          rw [trueFactor, if_pos (by decide : pmBit 220 = true)]; exact keyB 220 (by omega)
        rw [htf, show block1_flag rho 220 = rho 500 from by norm_num [block1_flag, block1_W], show block1_flag rho 221 = rho 499 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht220 | linear_combination -ht220
      · have htf : trueFactor bits 221 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 221 = true))]
        rw [htf, show block1_flag rho 221 = rho 499 from by norm_num [block1_flag, block1_W], show block1_flag rho 222 = rho 499 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 222 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 222 = true))]
        rw [htf, show block1_flag rho 222 = rho 499 from by norm_num [block1_flag, block1_W], show block1_flag rho 223 = rho 499 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 223 = rho 454 := by
          rw [trueFactor, if_pos (by decide : pmBit 223 = true)]; exact keyB 223 (by omega)
        rw [htf, show block1_flag rho 223 = rho 499 from by norm_num [block1_flag, block1_W], show block1_flag rho 224 = rho 498 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht223 | linear_combination -ht223
      · have htf : trueFactor bits 224 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 224 = true))]
        rw [htf, show block1_flag rho 224 = rho 498 from by norm_num [block1_flag, block1_W], show block1_flag rho 225 = rho 498 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 225 = rho 456 := by
          rw [trueFactor, if_pos (by decide : pmBit 225 = true)]; exact keyB 225 (by omega)
        rw [htf, show block1_flag rho 225 = rho 498 from by norm_num [block1_flag, block1_W], show block1_flag rho 226 = rho 497 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht225 | linear_combination -ht225
      · have htf : trueFactor bits 226 = rho 457 := by
          rw [trueFactor, if_pos (by decide : pmBit 226 = true)]; exact keyB 226 (by omega)
        rw [htf, show block1_flag rho 226 = rho 497 from by norm_num [block1_flag, block1_W], show block1_flag rho 227 = rho 496 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht226 | linear_combination -ht226
      · have htf : trueFactor bits 227 = rho 458 := by
          rw [trueFactor, if_pos (by decide : pmBit 227 = true)]; exact keyB 227 (by omega)
        rw [htf, show block1_flag rho 227 = rho 496 from by norm_num [block1_flag, block1_W], show block1_flag rho 228 = rho 495 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht227 | linear_combination -ht227
      · have htf : trueFactor bits 228 = rho 459 := by
          rw [trueFactor, if_pos (by decide : pmBit 228 = true)]; exact keyB 228 (by omega)
        rw [htf, show block1_flag rho 228 = rho 495 from by norm_num [block1_flag, block1_W], show block1_flag rho 229 = rho 494 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht228 | linear_combination -ht228
      · have htf : trueFactor bits 229 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 229 = true))]
        rw [htf, show block1_flag rho 229 = rho 494 from by norm_num [block1_flag, block1_W], show block1_flag rho 230 = rho 494 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 230 = rho 461 := by
          rw [trueFactor, if_pos (by decide : pmBit 230 = true)]; exact keyB 230 (by omega)
        rw [htf, show block1_flag rho 230 = rho 494 from by norm_num [block1_flag, block1_W], show block1_flag rho 231 = rho 493 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht230 | linear_combination -ht230
      · have htf : trueFactor bits 231 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 231 = true))]
        rw [htf, show block1_flag rho 231 = rho 493 from by norm_num [block1_flag, block1_W], show block1_flag rho 232 = rho 493 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 232 = rho 463 := by
          rw [trueFactor, if_pos (by decide : pmBit 232 = true)]; exact keyB 232 (by omega)
        rw [htf, show block1_flag rho 232 = rho 493 from by norm_num [block1_flag, block1_W], show block1_flag rho 233 = rho 492 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht232 | linear_combination -ht232
      · have htf : trueFactor bits 233 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 233 = true))]
        rw [htf, show block1_flag rho 233 = rho 492 from by norm_num [block1_flag, block1_W], show block1_flag rho 234 = rho 492 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 234 = rho 465 := by
          rw [trueFactor, if_pos (by decide : pmBit 234 = true)]; exact keyB 234 (by omega)
        rw [htf, show block1_flag rho 234 = rho 492 from by norm_num [block1_flag, block1_W], show block1_flag rho 235 = rho 491 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht234 | linear_combination -ht234
      · have htf : trueFactor bits 235 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 235 = true))]
        rw [htf, show block1_flag rho 235 = rho 491 from by norm_num [block1_flag, block1_W], show block1_flag rho 236 = rho 491 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 236 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 236 = true))]
        rw [htf, show block1_flag rho 236 = rho 491 from by norm_num [block1_flag, block1_W], show block1_flag rho 237 = rho 491 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 237 = rho 468 := by
          rw [trueFactor, if_pos (by decide : pmBit 237 = true)]; exact keyB 237 (by omega)
        rw [htf, show block1_flag rho 237 = rho 491 from by norm_num [block1_flag, block1_W], show block1_flag rho 238 = rho 490 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht237 | linear_combination -ht237
      · have htf : trueFactor bits 238 = rho 469 := by
          rw [trueFactor, if_pos (by decide : pmBit 238 = true)]; exact keyB 238 (by omega)
        rw [htf, show block1_flag rho 238 = rho 490 from by norm_num [block1_flag, block1_W], show block1_flag rho 239 = rho 489 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht238 | linear_combination -ht238
      · have htf : trueFactor bits 239 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 239 = true))]
        rw [htf, show block1_flag rho 239 = rho 489 from by norm_num [block1_flag, block1_W], show block1_flag rho 240 = rho 489 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 240 = rho 471 := by
          rw [trueFactor, if_pos (by decide : pmBit 240 = true)]; exact keyB 240 (by omega)
        rw [htf, show block1_flag rho 240 = rho 489 from by norm_num [block1_flag, block1_W], show block1_flag rho 241 = rho 488 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht240 | linear_combination -ht240
      · have htf : trueFactor bits 241 = rho 472 := by
          rw [trueFactor, if_pos (by decide : pmBit 241 = true)]; exact keyB 241 (by omega)
        rw [htf, show block1_flag rho 241 = rho 488 from by norm_num [block1_flag, block1_W], show block1_flag rho 242 = rho 487 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht241 | linear_combination -ht241
      · have htf : trueFactor bits 242 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 242 = true))]
        rw [htf, show block1_flag rho 242 = rho 487 from by norm_num [block1_flag, block1_W], show block1_flag rho 243 = rho 487 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 243 = rho 474 := by
          rw [trueFactor, if_pos (by decide : pmBit 243 = true)]; exact keyB 243 (by omega)
        rw [htf, show block1_flag rho 243 = rho 487 from by norm_num [block1_flag, block1_W], show block1_flag rho 244 = rho 486 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht243 | linear_combination -ht243
      · have htf : trueFactor bits 244 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 244 = true))]
        rw [htf, show block1_flag rho 244 = rho 486 from by norm_num [block1_flag, block1_W], show block1_flag rho 245 = rho 486 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 245 = rho 476 := by
          rw [trueFactor, if_pos (by decide : pmBit 245 = true)]; exact keyB 245 (by omega)
        rw [htf, show block1_flag rho 245 = rho 486 from by norm_num [block1_flag, block1_W], show block1_flag rho 246 = rho 485 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht245 | linear_combination -ht245
      · have htf : trueFactor bits 246 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 246 = true))]
        rw [htf, show block1_flag rho 246 = rho 485 from by norm_num [block1_flag, block1_W], show block1_flag rho 247 = rho 485 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 247 = rho 478 := by
          rw [trueFactor, if_pos (by decide : pmBit 247 = true)]; exact keyB 247 (by omega)
        rw [htf, show block1_flag rho 247 = rho 485 from by norm_num [block1_flag, block1_W], show block1_flag rho 248 = rho 484 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht247 | linear_combination -ht247
      · have htf : trueFactor bits 248 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 248 = true))]
        rw [htf, show block1_flag rho 248 = rho 484 from by norm_num [block1_flag, block1_W], show block1_flag rho 249 = rho 484 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 249 = rho 480 := by
          rw [trueFactor, if_pos (by decide : pmBit 249 = true)]; exact keyB 249 (by omega)
        rw [htf, show block1_flag rho 249 = rho 484 from by norm_num [block1_flag, block1_W], show block1_flag rho 250 = rho 483 from by norm_num [block1_flag, block1_W]]
        first | linear_combination ht249 | linear_combination -ht249
      · have htf : trueFactor bits 250 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 250 = true))]
        rw [htf, show block1_flag rho 250 = rho 483 from by norm_num [block1_flag, block1_W], show block1_flag rho 251 = rho 483 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 251 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 251 = true))]
        rw [htf, show block1_flag rho 251 = rho 483 from by norm_num [block1_flag, block1_W], show block1_flag rho 252 = rho 483 from by norm_num [block1_flag, block1_W]]
        ring
      · have htf : trueFactor bits 252 = rho 483 := by
          rw [trueFactor, if_pos (by decide : pmBit 252 = true)]; exact keyB 252 (by omega)
        rw [htf, show block1_flag rho 252 = rho 483 from by norm_num [block1_flag, block1_W], show block1_flag rho 253 = (1 : F) from by rw [block1_flag, if_pos (by norm_num : (253 : ℕ) ≤ 253)]]
        ring
    · intro j hj hpm
      show bits[j]! * (1 - bits[j]! - block1_flag rho (j + 1)) = 0
      rw [keyB j hj]
      interval_cases j
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 1 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc0; linear_combination hc0
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 2 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc1; linear_combination hc1
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 3 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc2; linear_combination hc2
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 4 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc3; linear_combination hc3
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 5 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc4; linear_combination hc4
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 6 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc5; linear_combination hc5
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 7 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc6; linear_combination hc6
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 8 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc7; linear_combination hc7
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 9 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc8; linear_combination hc8
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 10 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc9; linear_combination hc9
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 11 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc10; linear_combination hc10
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 12 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc11; linear_combination hc11
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 13 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc12; linear_combination hc12
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 14 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc13; linear_combination hc13
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 15 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc14; linear_combination hc14
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 16 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc15; linear_combination hc15
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 17 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc16; linear_combination hc16
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 18 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc17; linear_combination hc17
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 19 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc18; linear_combination hc18
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 20 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc19; linear_combination hc19
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 21 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc20; linear_combination hc20
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 22 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc21; linear_combination hc21
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 23 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc22; linear_combination hc22
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 24 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc23; linear_combination hc23
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 25 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc24; linear_combination hc24
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 26 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc25; linear_combination hc25
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 27 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc26; linear_combination hc26
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 28 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc27; linear_combination hc27
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 29 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc28; linear_combination hc28
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 30 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc29; linear_combination hc29
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 31 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc30; linear_combination hc30
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 32 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc31; linear_combination hc31
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 33 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc32; linear_combination hc32
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 34 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc33; linear_combination hc33
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 35 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc34; linear_combination hc34
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 36 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc35; linear_combination hc35
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 37 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc36; linear_combination hc36
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 38 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc37; linear_combination hc37
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 39 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc38; linear_combination hc38
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 40 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc39; linear_combination hc39
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 41 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc40; linear_combination hc40
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 42 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc41; linear_combination hc41
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 43 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc42; linear_combination hc42
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 44 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc43; linear_combination hc43
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 45 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc44; linear_combination hc44
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 46 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc45; linear_combination hc45
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 47 = rho 569 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc46; linear_combination hc46
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 50 = rho 567 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc49; linear_combination hc49
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 51 = rho 567 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc50; linear_combination hc50
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 52 = rho 567 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc51; linear_combination hc51
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 54 = rho 566 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc53; linear_combination hc53
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 55 = rho 566 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc54; linear_combination hc54
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 56 = rho 566 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc55; linear_combination hc55
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 57 = rho 566 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc56; linear_combination hc56
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 59 = rho 565 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc58; linear_combination hc58
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 61 = rho 564 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc60; linear_combination hc60
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 62 = rho 564 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc61; linear_combination hc61
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 63 = rho 564 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc62; linear_combination hc62
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 64 = rho 564 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc63; linear_combination hc63
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 66 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc65; linear_combination hc65
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 67 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc66; linear_combination hc66
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 68 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc67; linear_combination hc67
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 69 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc68; linear_combination hc68
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 70 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc69; linear_combination hc69
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 71 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc70; linear_combination hc70
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 72 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc71; linear_combination hc71
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 73 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc72; linear_combination hc72
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 74 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc73; linear_combination hc73
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 75 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc74; linear_combination hc74
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 76 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc75; linear_combination hc75
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 77 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc76; linear_combination hc76
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 78 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc77; linear_combination hc77
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 79 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc78; linear_combination hc78
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 80 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc79; linear_combination hc79
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 81 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc80; linear_combination hc80
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 82 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc81; linear_combination hc81
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 83 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc82; linear_combination hc82
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 84 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc83; linear_combination hc83
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 85 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc84; linear_combination hc84
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 86 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc85; linear_combination hc85
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 87 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc86; linear_combination hc86
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 88 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc87; linear_combination hc87
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 89 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc88; linear_combination hc88
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 90 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc89; linear_combination hc89
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 91 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc90; linear_combination hc90
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 92 = rho 563 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc91; linear_combination hc91
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 94 = rho 562 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc93; linear_combination hc93
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 97 = rho 560 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc96; linear_combination hc96
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 105 = rho 553 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc104; linear_combination hc104
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 108 = rho 551 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc107; linear_combination hc107
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 112 = rho 548 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc111; linear_combination hc111
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 113 = rho 548 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc112; linear_combination hc112
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 115 = rho 547 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc114; linear_combination hc114
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 117 = rho 546 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc116; linear_combination hc116
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 119 = rho 545 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc118; linear_combination hc118
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 122 = rho 543 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc121; linear_combination hc121
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 123 = rho 543 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc122; linear_combination hc122
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 126 = rho 541 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc125; linear_combination hc125
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 128 = rho 540 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc127; linear_combination hc127
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 130 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc129; linear_combination hc129
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 131 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc130; linear_combination hc130
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 132 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc131; linear_combination hc131
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 133 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc132; linear_combination hc132
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 134 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc133; linear_combination hc133
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 135 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc134; linear_combination hc134
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 136 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc135; linear_combination hc135
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 137 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc136; linear_combination hc136
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 138 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc137; linear_combination hc137
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 139 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc138; linear_combination hc138
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 140 = rho 539 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc139; linear_combination hc139
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 143 = rho 537 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc142; linear_combination hc142
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 148 = rho 533 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc147; linear_combination hc147
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 151 = rho 531 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc150; linear_combination hc150
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 152 = rho 531 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc151; linear_combination hc151
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 153 = rho 531 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc152; linear_combination hc152
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 154 = rho 531 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc153; linear_combination hc153
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 158 = rho 528 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc157; linear_combination hc157
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 160 = rho 527 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc159; linear_combination hc159
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 161 = rho 527 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc160; linear_combination hc160
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 166 = rho 523 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc165; linear_combination hc165
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 167 = rho 523 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc166; linear_combination hc166
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 168 = rho 523 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc167; linear_combination hc167
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 170 = rho 522 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc169; linear_combination hc169
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 173 = rho 520 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc172; linear_combination hc172
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 174 = rho 520 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc173; linear_combination hc173
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 176 = rho 519 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc175; linear_combination hc175
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 177 = rho 519 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc176; linear_combination hc176
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 178 = rho 519 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc177; linear_combination hc177
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 180 = rho 518 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc179; linear_combination hc179
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 183 = rho 516 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc182; linear_combination hc182
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 185 = rho 515 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc184; linear_combination hc184
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 186 = rho 515 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc185; linear_combination hc185
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 187 = rho 515 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc186; linear_combination hc186
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 188 = rho 515 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc187; linear_combination hc187
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 189 = rho 515 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc188; linear_combination hc188
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 192 = rho 513 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc191; linear_combination hc191
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 193 = rho 513 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc192; linear_combination hc192
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 196 = rho 511 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc195; linear_combination hc195
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 198 = rho 510 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc197; linear_combination hc197
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 200 = rho 509 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc199; linear_combination hc199
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 202 = rho 508 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc201; linear_combination hc201
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 204 = rho 507 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc203; linear_combination hc203
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 205 = rho 507 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc204; linear_combination hc204
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 207 = rho 506 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc206; linear_combination hc206
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 209 = rho 505 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc208; linear_combination hc208
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 210 = rho 505 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc209; linear_combination hc209
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 213 = rho 503 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc212; linear_combination hc212
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 215 = rho 502 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc214; linear_combination hc214
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 216 = rho 502 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc215; linear_combination hc215
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 217 = rho 502 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc216; linear_combination hc216
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 219 = rho 501 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc218; linear_combination hc218
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 222 = rho 499 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc221; linear_combination hc221
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 223 = rho 499 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc222; linear_combination hc222
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 225 = rho 498 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc224; linear_combination hc224
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 230 = rho 494 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc229; linear_combination hc229
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 232 = rho 493 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc231; linear_combination hc231
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 234 = rho 492 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc233; linear_combination hc233
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 236 = rho 491 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc235; linear_combination hc235
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 237 = rho 491 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc236; linear_combination hc236
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 240 = rho 489 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc239; linear_combination hc239
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 243 = rho 487 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc242; linear_combination hc242
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 245 = rho 486 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc244; linear_combination hc244
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 247 = rho 485 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc246; linear_combination hc246
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 249 = rho 484 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc248; linear_combination hc248
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 251 = rho 483 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc250; linear_combination hc250
      · simp only [Nat.reduceAdd]; rw [show block1_flag rho 252 = rho 483 from by norm_num [block1_flag, block1_W]]; rw [hrho0] at hc251; linear_combination hc251
      · exact absurd hpm (by decide)
    · intro j hj
      show bits[j]! * bits[j]! = bits[j]!
      rw [keyB j hj]
      interval_cases j
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb0; linear_combination -hb0
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb1; linear_combination -hb1
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb2; linear_combination -hb2
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb3; linear_combination -hb3
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb4; linear_combination -hb4
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb5; linear_combination -hb5
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb6; linear_combination -hb6
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb7; linear_combination -hb7
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb8; linear_combination -hb8
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb9; linear_combination -hb9
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb10; linear_combination -hb10
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb11; linear_combination -hb11
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb12; linear_combination -hb12
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb13; linear_combination -hb13
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb14; linear_combination -hb14
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb15; linear_combination -hb15
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb16; linear_combination -hb16
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb17; linear_combination -hb17
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb18; linear_combination -hb18
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb19; linear_combination -hb19
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb20; linear_combination -hb20
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb21; linear_combination -hb21
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb22; linear_combination -hb22
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb23; linear_combination -hb23
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb24; linear_combination -hb24
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb25; linear_combination -hb25
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb26; linear_combination -hb26
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb27; linear_combination -hb27
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb28; linear_combination -hb28
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb29; linear_combination -hb29
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb30; linear_combination -hb30
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb31; linear_combination -hb31
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb32; linear_combination -hb32
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb33; linear_combination -hb33
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb34; linear_combination -hb34
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb35; linear_combination -hb35
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb36; linear_combination -hb36
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb37; linear_combination -hb37
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb38; linear_combination -hb38
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb39; linear_combination -hb39
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb40; linear_combination -hb40
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb41; linear_combination -hb41
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb42; linear_combination -hb42
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb43; linear_combination -hb43
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb44; linear_combination -hb44
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb45; linear_combination -hb45
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb46; linear_combination -hb46
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb47; linear_combination -hb47
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb48; linear_combination -hb48
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb49; linear_combination -hb49
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb50; linear_combination -hb50
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb51; linear_combination -hb51
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb52; linear_combination -hb52
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb53; linear_combination -hb53
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb54; linear_combination -hb54
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb55; linear_combination -hb55
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb56; linear_combination -hb56
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb57; linear_combination -hb57
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb58; linear_combination -hb58
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb59; linear_combination -hb59
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb60; linear_combination -hb60
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb61; linear_combination -hb61
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb62; linear_combination -hb62
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb63; linear_combination -hb63
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb64; linear_combination -hb64
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb65; linear_combination -hb65
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb66; linear_combination -hb66
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb67; linear_combination -hb67
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb68; linear_combination -hb68
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb69; linear_combination -hb69
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb70; linear_combination -hb70
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb71; linear_combination -hb71
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb72; linear_combination -hb72
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb73; linear_combination -hb73
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb74; linear_combination -hb74
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb75; linear_combination -hb75
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb76; linear_combination -hb76
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb77; linear_combination -hb77
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb78; linear_combination -hb78
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb79; linear_combination -hb79
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb80; linear_combination -hb80
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb81; linear_combination -hb81
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb82; linear_combination -hb82
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb83; linear_combination -hb83
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb84; linear_combination -hb84
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb85; linear_combination -hb85
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb86; linear_combination -hb86
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb87; linear_combination -hb87
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb88; linear_combination -hb88
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb89; linear_combination -hb89
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb90; linear_combination -hb90
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb91; linear_combination -hb91
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb92; linear_combination -hb92
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb93; linear_combination -hb93
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb94; linear_combination -hb94
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb95; linear_combination -hb95
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb96; linear_combination -hb96
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb97; linear_combination -hb97
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb98; linear_combination -hb98
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb99; linear_combination -hb99
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb100; linear_combination -hb100
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb101; linear_combination -hb101
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb102; linear_combination -hb102
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb103; linear_combination -hb103
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb104; linear_combination -hb104
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb105; linear_combination -hb105
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb106; linear_combination -hb106
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb107; linear_combination -hb107
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb108; linear_combination -hb108
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb109; linear_combination -hb109
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb110; linear_combination -hb110
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb111; linear_combination -hb111
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb112; linear_combination -hb112
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb113; linear_combination -hb113
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb114; linear_combination -hb114
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb115; linear_combination -hb115
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb116; linear_combination -hb116
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb117; linear_combination -hb117
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb118; linear_combination -hb118
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb119; linear_combination -hb119
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb120; linear_combination -hb120
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb121; linear_combination -hb121
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb122; linear_combination -hb122
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb123; linear_combination -hb123
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb124; linear_combination -hb124
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb125; linear_combination -hb125
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb126; linear_combination -hb126
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb127; linear_combination -hb127
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb128; linear_combination -hb128
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb129; linear_combination -hb129
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb130; linear_combination -hb130
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb131; linear_combination -hb131
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb132; linear_combination -hb132
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb133; linear_combination -hb133
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb134; linear_combination -hb134
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb135; linear_combination -hb135
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb136; linear_combination -hb136
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb137; linear_combination -hb137
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb138; linear_combination -hb138
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb139; linear_combination -hb139
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb140; linear_combination -hb140
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb141; linear_combination -hb141
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb142; linear_combination -hb142
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb143; linear_combination -hb143
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb144; linear_combination -hb144
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb145; linear_combination -hb145
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb146; linear_combination -hb146
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb147; linear_combination -hb147
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb148; linear_combination -hb148
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb149; linear_combination -hb149
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb150; linear_combination -hb150
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb151; linear_combination -hb151
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb152; linear_combination -hb152
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb153; linear_combination -hb153
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb154; linear_combination -hb154
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb155; linear_combination -hb155
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb156; linear_combination -hb156
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb157; linear_combination -hb157
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb158; linear_combination -hb158
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb159; linear_combination -hb159
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb160; linear_combination -hb160
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb161; linear_combination -hb161
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb162; linear_combination -hb162
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb163; linear_combination -hb163
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb164; linear_combination -hb164
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb165; linear_combination -hb165
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb166; linear_combination -hb166
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb167; linear_combination -hb167
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb168; linear_combination -hb168
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb169; linear_combination -hb169
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb170; linear_combination -hb170
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb171; linear_combination -hb171
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb172; linear_combination -hb172
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb173; linear_combination -hb173
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb174; linear_combination -hb174
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb175; linear_combination -hb175
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb176; linear_combination -hb176
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb177; linear_combination -hb177
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb178; linear_combination -hb178
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb179; linear_combination -hb179
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb180; linear_combination -hb180
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb181; linear_combination -hb181
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb182; linear_combination -hb182
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb183; linear_combination -hb183
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb184; linear_combination -hb184
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb185; linear_combination -hb185
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb186; linear_combination -hb186
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb187; linear_combination -hb187
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb188; linear_combination -hb188
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb189; linear_combination -hb189
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb190; linear_combination -hb190
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb191; linear_combination -hb191
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb192; linear_combination -hb192
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb193; linear_combination -hb193
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb194; linear_combination -hb194
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb195; linear_combination -hb195
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb196; linear_combination -hb196
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb197; linear_combination -hb197
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb198; linear_combination -hb198
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb199; linear_combination -hb199
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb200; linear_combination -hb200
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb201; linear_combination -hb201
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb202; linear_combination -hb202
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb203; linear_combination -hb203
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb204; linear_combination -hb204
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb205; linear_combination -hb205
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb206; linear_combination -hb206
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb207; linear_combination -hb207
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb208; linear_combination -hb208
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb209; linear_combination -hb209
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb210; linear_combination -hb210
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb211; linear_combination -hb211
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb212; linear_combination -hb212
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb213; linear_combination -hb213
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb214; linear_combination -hb214
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb215; linear_combination -hb215
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb216; linear_combination -hb216
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb217; linear_combination -hb217
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb218; linear_combination -hb218
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb219; linear_combination -hb219
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb220; linear_combination -hb220
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb221; linear_combination -hb221
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb222; linear_combination -hb222
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb223; linear_combination -hb223
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb224; linear_combination -hb224
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb225; linear_combination -hb225
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb226; linear_combination -hb226
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb227; linear_combination -hb227
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb228; linear_combination -hb228
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb229; linear_combination -hb229
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb230; linear_combination -hb230
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb231; linear_combination -hb231
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb232; linear_combination -hb232
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb233; linear_combination -hb233
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb234; linear_combination -hb234
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb235; linear_combination -hb235
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb236; linear_combination -hb236
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb237; linear_combination -hb237
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb238; linear_combination -hb238
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb239; linear_combination -hb239
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb240; linear_combination -hb240
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb241; linear_combination -hb241
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb242; linear_combination -hb242
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb243; linear_combination -hb243
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb244; linear_combination -hb244
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb245; linear_combination -hb245
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb246; linear_combination -hb246
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb247; linear_combination -hb247
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb248; linear_combination -hb248
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb249; linear_combination -hb249
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb250; linear_combination -hb250
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb251; linear_combination -hb251
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb252; linear_combination -hb252

def block2_W : ℕ → ℕ := fun n => (if n ≤ 47 then 911 else (if n ≤ 48 then 910 else (if n ≤ 52 then 909 else (if n ≤ 57 then 908 else (if n ≤ 59 then 907 else (if n ≤ 64 then 906 else (if n ≤ 92 then 905 else (if n ≤ 94 then 904 else (if n ≤ 95 then 903 else (if n ≤ 97 then 902 else (if n ≤ 98 then 901 else (if n ≤ 99 then 900 else (if n ≤ 100 then 899 else (if n ≤ 101 then 898 else (if n ≤ 102 then 897 else (if n ≤ 103 then 896 else (if n ≤ 105 then 895 else (if n ≤ 106 then 894 else (if n ≤ 108 then 893 else (if n ≤ 109 then 892 else (if n ≤ 110 then 891 else (if n ≤ 113 then 890 else (if n ≤ 115 then 889 else (if n ≤ 117 then 888 else (if n ≤ 119 then 887 else (if n ≤ 120 then 886 else (if n ≤ 123 then 885 else (if n ≤ 124 then 884 else (if n ≤ 126 then 883 else (if n ≤ 128 then 882 else (if n ≤ 140 then 881 else (if n ≤ 141 then 880 else (if n ≤ 143 then 879 else (if n ≤ 144 then 878 else (if n ≤ 145 then 877 else (if n ≤ 146 then 876 else (if n ≤ 148 then 875 else (if n ≤ 149 then 874 else (if n ≤ 154 then 873 else (if n ≤ 155 then 872 else (if n ≤ 156 then 871 else (if n ≤ 158 then 870 else (if n ≤ 161 then 869 else (if n ≤ 162 then 868 else (if n ≤ 163 then 867 else (if n ≤ 164 then 866 else (if n ≤ 168 then 865 else (if n ≤ 170 then 864 else (if n ≤ 171 then 863 else (if n ≤ 174 then 862 else (if n ≤ 178 then 861 else (if n ≤ 180 then 860 else (if n ≤ 181 then 859 else (if n ≤ 183 then 858 else (if n ≤ 189 then 857 else (if n ≤ 190 then 856 else (if n ≤ 193 then 855 else (if n ≤ 194 then 854 else (if n ≤ 196 then 853 else (if n ≤ 198 then 852 else (if n ≤ 200 then 851 else (if n ≤ 202 then 850 else (if n ≤ 205 then 849 else (if n ≤ 207 then 848 else (if n ≤ 210 then 847 else (if n ≤ 211 then 846 else (if n ≤ 213 then 845 else (if n ≤ 217 then 844 else (if n ≤ 219 then 843 else (if n ≤ 220 then 842 else (if n ≤ 223 then 841 else (if n ≤ 225 then 840 else (if n ≤ 226 then 839 else (if n ≤ 227 then 838 else (if n ≤ 228 then 837 else (if n ≤ 230 then 836 else (if n ≤ 232 then 835 else (if n ≤ 234 then 834 else (if n ≤ 237 then 833 else (if n ≤ 238 then 832 else (if n ≤ 240 then 831 else (if n ≤ 241 then 830 else (if n ≤ 243 then 829 else (if n ≤ 245 then 828 else (if n ≤ 247 then 827 else (if n ≤ 249 then 826 else (if n ≤ 252 then 825 else 1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
noncomputable def block2_flag (rho : Nat → F) : ℕ → F := fun n => if 253 ≤ n then 1 else rho (block2_W n)

theorem block2_canonical (rho : Nat → F)
    (hb0 : ((1 : F) * rho 573) * ((1 : F) * rho 0 + (-1 : F) * rho 573) = ((0 : F) * rho 0))
    (hb1 : ((1 : F) * rho 574) * ((1 : F) * rho 0 + (-1 : F) * rho 574) = ((0 : F) * rho 0))
    (hb2 : ((1 : F) * rho 575) * ((1 : F) * rho 0 + (-1 : F) * rho 575) = ((0 : F) * rho 0))
    (hb3 : ((1 : F) * rho 576) * ((1 : F) * rho 0 + (-1 : F) * rho 576) = ((0 : F) * rho 0))
    (hb4 : ((1 : F) * rho 577) * ((1 : F) * rho 0 + (-1 : F) * rho 577) = ((0 : F) * rho 0))
    (hb5 : ((1 : F) * rho 578) * ((1 : F) * rho 0 + (-1 : F) * rho 578) = ((0 : F) * rho 0))
    (hb6 : ((1 : F) * rho 579) * ((1 : F) * rho 0 + (-1 : F) * rho 579) = ((0 : F) * rho 0))
    (hb7 : ((1 : F) * rho 580) * ((1 : F) * rho 0 + (-1 : F) * rho 580) = ((0 : F) * rho 0))
    (hb8 : ((1 : F) * rho 581) * ((1 : F) * rho 0 + (-1 : F) * rho 581) = ((0 : F) * rho 0))
    (hb9 : ((1 : F) * rho 582) * ((1 : F) * rho 0 + (-1 : F) * rho 582) = ((0 : F) * rho 0))
    (hb10 : ((1 : F) * rho 583) * ((1 : F) * rho 0 + (-1 : F) * rho 583) = ((0 : F) * rho 0))
    (hb11 : ((1 : F) * rho 584) * ((1 : F) * rho 0 + (-1 : F) * rho 584) = ((0 : F) * rho 0))
    (hb12 : ((1 : F) * rho 585) * ((1 : F) * rho 0 + (-1 : F) * rho 585) = ((0 : F) * rho 0))
    (hb13 : ((1 : F) * rho 586) * ((1 : F) * rho 0 + (-1 : F) * rho 586) = ((0 : F) * rho 0))
    (hb14 : ((1 : F) * rho 587) * ((1 : F) * rho 0 + (-1 : F) * rho 587) = ((0 : F) * rho 0))
    (hb15 : ((1 : F) * rho 588) * ((1 : F) * rho 0 + (-1 : F) * rho 588) = ((0 : F) * rho 0))
    (hb16 : ((1 : F) * rho 589) * ((1 : F) * rho 0 + (-1 : F) * rho 589) = ((0 : F) * rho 0))
    (hb17 : ((1 : F) * rho 590) * ((1 : F) * rho 0 + (-1 : F) * rho 590) = ((0 : F) * rho 0))
    (hb18 : ((1 : F) * rho 591) * ((1 : F) * rho 0 + (-1 : F) * rho 591) = ((0 : F) * rho 0))
    (hb19 : ((1 : F) * rho 592) * ((1 : F) * rho 0 + (-1 : F) * rho 592) = ((0 : F) * rho 0))
    (hb20 : ((1 : F) * rho 593) * ((1 : F) * rho 0 + (-1 : F) * rho 593) = ((0 : F) * rho 0))
    (hb21 : ((1 : F) * rho 594) * ((1 : F) * rho 0 + (-1 : F) * rho 594) = ((0 : F) * rho 0))
    (hb22 : ((1 : F) * rho 595) * ((1 : F) * rho 0 + (-1 : F) * rho 595) = ((0 : F) * rho 0))
    (hb23 : ((1 : F) * rho 596) * ((1 : F) * rho 0 + (-1 : F) * rho 596) = ((0 : F) * rho 0))
    (hb24 : ((1 : F) * rho 597) * ((1 : F) * rho 0 + (-1 : F) * rho 597) = ((0 : F) * rho 0))
    (hb25 : ((1 : F) * rho 598) * ((1 : F) * rho 0 + (-1 : F) * rho 598) = ((0 : F) * rho 0))
    (hb26 : ((1 : F) * rho 599) * ((1 : F) * rho 0 + (-1 : F) * rho 599) = ((0 : F) * rho 0))
    (hb27 : ((1 : F) * rho 600) * ((1 : F) * rho 0 + (-1 : F) * rho 600) = ((0 : F) * rho 0))
    (hb28 : ((1 : F) * rho 601) * ((1 : F) * rho 0 + (-1 : F) * rho 601) = ((0 : F) * rho 0))
    (hb29 : ((1 : F) * rho 602) * ((1 : F) * rho 0 + (-1 : F) * rho 602) = ((0 : F) * rho 0))
    (hb30 : ((1 : F) * rho 603) * ((1 : F) * rho 0 + (-1 : F) * rho 603) = ((0 : F) * rho 0))
    (hb31 : ((1 : F) * rho 604) * ((1 : F) * rho 0 + (-1 : F) * rho 604) = ((0 : F) * rho 0))
    (hb32 : ((1 : F) * rho 605) * ((1 : F) * rho 0 + (-1 : F) * rho 605) = ((0 : F) * rho 0))
    (hb33 : ((1 : F) * rho 606) * ((1 : F) * rho 0 + (-1 : F) * rho 606) = ((0 : F) * rho 0))
    (hb34 : ((1 : F) * rho 607) * ((1 : F) * rho 0 + (-1 : F) * rho 607) = ((0 : F) * rho 0))
    (hb35 : ((1 : F) * rho 608) * ((1 : F) * rho 0 + (-1 : F) * rho 608) = ((0 : F) * rho 0))
    (hb36 : ((1 : F) * rho 609) * ((1 : F) * rho 0 + (-1 : F) * rho 609) = ((0 : F) * rho 0))
    (hb37 : ((1 : F) * rho 610) * ((1 : F) * rho 0 + (-1 : F) * rho 610) = ((0 : F) * rho 0))
    (hb38 : ((1 : F) * rho 611) * ((1 : F) * rho 0 + (-1 : F) * rho 611) = ((0 : F) * rho 0))
    (hb39 : ((1 : F) * rho 612) * ((1 : F) * rho 0 + (-1 : F) * rho 612) = ((0 : F) * rho 0))
    (hb40 : ((1 : F) * rho 613) * ((1 : F) * rho 0 + (-1 : F) * rho 613) = ((0 : F) * rho 0))
    (hb41 : ((1 : F) * rho 614) * ((1 : F) * rho 0 + (-1 : F) * rho 614) = ((0 : F) * rho 0))
    (hb42 : ((1 : F) * rho 615) * ((1 : F) * rho 0 + (-1 : F) * rho 615) = ((0 : F) * rho 0))
    (hb43 : ((1 : F) * rho 616) * ((1 : F) * rho 0 + (-1 : F) * rho 616) = ((0 : F) * rho 0))
    (hb44 : ((1 : F) * rho 617) * ((1 : F) * rho 0 + (-1 : F) * rho 617) = ((0 : F) * rho 0))
    (hb45 : ((1 : F) * rho 618) * ((1 : F) * rho 0 + (-1 : F) * rho 618) = ((0 : F) * rho 0))
    (hb46 : ((1 : F) * rho 619) * ((1 : F) * rho 0 + (-1 : F) * rho 619) = ((0 : F) * rho 0))
    (hb47 : ((1 : F) * rho 620) * ((1 : F) * rho 0 + (-1 : F) * rho 620) = ((0 : F) * rho 0))
    (hb48 : ((1 : F) * rho 621) * ((1 : F) * rho 0 + (-1 : F) * rho 621) = ((0 : F) * rho 0))
    (hb49 : ((1 : F) * rho 622) * ((1 : F) * rho 0 + (-1 : F) * rho 622) = ((0 : F) * rho 0))
    (hb50 : ((1 : F) * rho 623) * ((1 : F) * rho 0 + (-1 : F) * rho 623) = ((0 : F) * rho 0))
    (hb51 : ((1 : F) * rho 624) * ((1 : F) * rho 0 + (-1 : F) * rho 624) = ((0 : F) * rho 0))
    (hb52 : ((1 : F) * rho 625) * ((1 : F) * rho 0 + (-1 : F) * rho 625) = ((0 : F) * rho 0))
    (hb53 : ((1 : F) * rho 626) * ((1 : F) * rho 0 + (-1 : F) * rho 626) = ((0 : F) * rho 0))
    (hb54 : ((1 : F) * rho 627) * ((1 : F) * rho 0 + (-1 : F) * rho 627) = ((0 : F) * rho 0))
    (hb55 : ((1 : F) * rho 628) * ((1 : F) * rho 0 + (-1 : F) * rho 628) = ((0 : F) * rho 0))
    (hb56 : ((1 : F) * rho 629) * ((1 : F) * rho 0 + (-1 : F) * rho 629) = ((0 : F) * rho 0))
    (hb57 : ((1 : F) * rho 630) * ((1 : F) * rho 0 + (-1 : F) * rho 630) = ((0 : F) * rho 0))
    (hb58 : ((1 : F) * rho 631) * ((1 : F) * rho 0 + (-1 : F) * rho 631) = ((0 : F) * rho 0))
    (hb59 : ((1 : F) * rho 632) * ((1 : F) * rho 0 + (-1 : F) * rho 632) = ((0 : F) * rho 0))
    (hb60 : ((1 : F) * rho 633) * ((1 : F) * rho 0 + (-1 : F) * rho 633) = ((0 : F) * rho 0))
    (hb61 : ((1 : F) * rho 634) * ((1 : F) * rho 0 + (-1 : F) * rho 634) = ((0 : F) * rho 0))
    (hb62 : ((1 : F) * rho 635) * ((1 : F) * rho 0 + (-1 : F) * rho 635) = ((0 : F) * rho 0))
    (hb63 : ((1 : F) * rho 636) * ((1 : F) * rho 0 + (-1 : F) * rho 636) = ((0 : F) * rho 0))
    (hb64 : ((1 : F) * rho 637) * ((1 : F) * rho 0 + (-1 : F) * rho 637) = ((0 : F) * rho 0))
    (hb65 : ((1 : F) * rho 638) * ((1 : F) * rho 0 + (-1 : F) * rho 638) = ((0 : F) * rho 0))
    (hb66 : ((1 : F) * rho 639) * ((1 : F) * rho 0 + (-1 : F) * rho 639) = ((0 : F) * rho 0))
    (hb67 : ((1 : F) * rho 640) * ((1 : F) * rho 0 + (-1 : F) * rho 640) = ((0 : F) * rho 0))
    (hb68 : ((1 : F) * rho 641) * ((1 : F) * rho 0 + (-1 : F) * rho 641) = ((0 : F) * rho 0))
    (hb69 : ((1 : F) * rho 642) * ((1 : F) * rho 0 + (-1 : F) * rho 642) = ((0 : F) * rho 0))
    (hb70 : ((1 : F) * rho 643) * ((1 : F) * rho 0 + (-1 : F) * rho 643) = ((0 : F) * rho 0))
    (hb71 : ((1 : F) * rho 644) * ((1 : F) * rho 0 + (-1 : F) * rho 644) = ((0 : F) * rho 0))
    (hb72 : ((1 : F) * rho 645) * ((1 : F) * rho 0 + (-1 : F) * rho 645) = ((0 : F) * rho 0))
    (hb73 : ((1 : F) * rho 646) * ((1 : F) * rho 0 + (-1 : F) * rho 646) = ((0 : F) * rho 0))
    (hb74 : ((1 : F) * rho 647) * ((1 : F) * rho 0 + (-1 : F) * rho 647) = ((0 : F) * rho 0))
    (hb75 : ((1 : F) * rho 648) * ((1 : F) * rho 0 + (-1 : F) * rho 648) = ((0 : F) * rho 0))
    (hb76 : ((1 : F) * rho 649) * ((1 : F) * rho 0 + (-1 : F) * rho 649) = ((0 : F) * rho 0))
    (hb77 : ((1 : F) * rho 650) * ((1 : F) * rho 0 + (-1 : F) * rho 650) = ((0 : F) * rho 0))
    (hb78 : ((1 : F) * rho 651) * ((1 : F) * rho 0 + (-1 : F) * rho 651) = ((0 : F) * rho 0))
    (hb79 : ((1 : F) * rho 652) * ((1 : F) * rho 0 + (-1 : F) * rho 652) = ((0 : F) * rho 0))
    (hb80 : ((1 : F) * rho 653) * ((1 : F) * rho 0 + (-1 : F) * rho 653) = ((0 : F) * rho 0))
    (hb81 : ((1 : F) * rho 654) * ((1 : F) * rho 0 + (-1 : F) * rho 654) = ((0 : F) * rho 0))
    (hb82 : ((1 : F) * rho 655) * ((1 : F) * rho 0 + (-1 : F) * rho 655) = ((0 : F) * rho 0))
    (hb83 : ((1 : F) * rho 656) * ((1 : F) * rho 0 + (-1 : F) * rho 656) = ((0 : F) * rho 0))
    (hb84 : ((1 : F) * rho 657) * ((1 : F) * rho 0 + (-1 : F) * rho 657) = ((0 : F) * rho 0))
    (hb85 : ((1 : F) * rho 658) * ((1 : F) * rho 0 + (-1 : F) * rho 658) = ((0 : F) * rho 0))
    (hb86 : ((1 : F) * rho 659) * ((1 : F) * rho 0 + (-1 : F) * rho 659) = ((0 : F) * rho 0))
    (hb87 : ((1 : F) * rho 660) * ((1 : F) * rho 0 + (-1 : F) * rho 660) = ((0 : F) * rho 0))
    (hb88 : ((1 : F) * rho 661) * ((1 : F) * rho 0 + (-1 : F) * rho 661) = ((0 : F) * rho 0))
    (hb89 : ((1 : F) * rho 662) * ((1 : F) * rho 0 + (-1 : F) * rho 662) = ((0 : F) * rho 0))
    (hb90 : ((1 : F) * rho 663) * ((1 : F) * rho 0 + (-1 : F) * rho 663) = ((0 : F) * rho 0))
    (hb91 : ((1 : F) * rho 664) * ((1 : F) * rho 0 + (-1 : F) * rho 664) = ((0 : F) * rho 0))
    (hb92 : ((1 : F) * rho 665) * ((1 : F) * rho 0 + (-1 : F) * rho 665) = ((0 : F) * rho 0))
    (hb93 : ((1 : F) * rho 666) * ((1 : F) * rho 0 + (-1 : F) * rho 666) = ((0 : F) * rho 0))
    (hb94 : ((1 : F) * rho 667) * ((1 : F) * rho 0 + (-1 : F) * rho 667) = ((0 : F) * rho 0))
    (hb95 : ((1 : F) * rho 668) * ((1 : F) * rho 0 + (-1 : F) * rho 668) = ((0 : F) * rho 0))
    (hb96 : ((1 : F) * rho 669) * ((1 : F) * rho 0 + (-1 : F) * rho 669) = ((0 : F) * rho 0))
    (hb97 : ((1 : F) * rho 670) * ((1 : F) * rho 0 + (-1 : F) * rho 670) = ((0 : F) * rho 0))
    (hb98 : ((1 : F) * rho 671) * ((1 : F) * rho 0 + (-1 : F) * rho 671) = ((0 : F) * rho 0))
    (hb99 : ((1 : F) * rho 672) * ((1 : F) * rho 0 + (-1 : F) * rho 672) = ((0 : F) * rho 0))
    (hb100 : ((1 : F) * rho 673) * ((1 : F) * rho 0 + (-1 : F) * rho 673) = ((0 : F) * rho 0))
    (hb101 : ((1 : F) * rho 674) * ((1 : F) * rho 0 + (-1 : F) * rho 674) = ((0 : F) * rho 0))
    (hb102 : ((1 : F) * rho 675) * ((1 : F) * rho 0 + (-1 : F) * rho 675) = ((0 : F) * rho 0))
    (hb103 : ((1 : F) * rho 676) * ((1 : F) * rho 0 + (-1 : F) * rho 676) = ((0 : F) * rho 0))
    (hb104 : ((1 : F) * rho 677) * ((1 : F) * rho 0 + (-1 : F) * rho 677) = ((0 : F) * rho 0))
    (hb105 : ((1 : F) * rho 678) * ((1 : F) * rho 0 + (-1 : F) * rho 678) = ((0 : F) * rho 0))
    (hb106 : ((1 : F) * rho 679) * ((1 : F) * rho 0 + (-1 : F) * rho 679) = ((0 : F) * rho 0))
    (hb107 : ((1 : F) * rho 680) * ((1 : F) * rho 0 + (-1 : F) * rho 680) = ((0 : F) * rho 0))
    (hb108 : ((1 : F) * rho 681) * ((1 : F) * rho 0 + (-1 : F) * rho 681) = ((0 : F) * rho 0))
    (hb109 : ((1 : F) * rho 682) * ((1 : F) * rho 0 + (-1 : F) * rho 682) = ((0 : F) * rho 0))
    (hb110 : ((1 : F) * rho 683) * ((1 : F) * rho 0 + (-1 : F) * rho 683) = ((0 : F) * rho 0))
    (hb111 : ((1 : F) * rho 684) * ((1 : F) * rho 0 + (-1 : F) * rho 684) = ((0 : F) * rho 0))
    (hb112 : ((1 : F) * rho 685) * ((1 : F) * rho 0 + (-1 : F) * rho 685) = ((0 : F) * rho 0))
    (hb113 : ((1 : F) * rho 686) * ((1 : F) * rho 0 + (-1 : F) * rho 686) = ((0 : F) * rho 0))
    (hb114 : ((1 : F) * rho 687) * ((1 : F) * rho 0 + (-1 : F) * rho 687) = ((0 : F) * rho 0))
    (hb115 : ((1 : F) * rho 688) * ((1 : F) * rho 0 + (-1 : F) * rho 688) = ((0 : F) * rho 0))
    (hb116 : ((1 : F) * rho 689) * ((1 : F) * rho 0 + (-1 : F) * rho 689) = ((0 : F) * rho 0))
    (hb117 : ((1 : F) * rho 690) * ((1 : F) * rho 0 + (-1 : F) * rho 690) = ((0 : F) * rho 0))
    (hb118 : ((1 : F) * rho 691) * ((1 : F) * rho 0 + (-1 : F) * rho 691) = ((0 : F) * rho 0))
    (hb119 : ((1 : F) * rho 692) * ((1 : F) * rho 0 + (-1 : F) * rho 692) = ((0 : F) * rho 0))
    (hb120 : ((1 : F) * rho 693) * ((1 : F) * rho 0 + (-1 : F) * rho 693) = ((0 : F) * rho 0))
    (hb121 : ((1 : F) * rho 694) * ((1 : F) * rho 0 + (-1 : F) * rho 694) = ((0 : F) * rho 0))
    (hb122 : ((1 : F) * rho 695) * ((1 : F) * rho 0 + (-1 : F) * rho 695) = ((0 : F) * rho 0))
    (hb123 : ((1 : F) * rho 696) * ((1 : F) * rho 0 + (-1 : F) * rho 696) = ((0 : F) * rho 0))
    (hb124 : ((1 : F) * rho 697) * ((1 : F) * rho 0 + (-1 : F) * rho 697) = ((0 : F) * rho 0))
    (hb125 : ((1 : F) * rho 698) * ((1 : F) * rho 0 + (-1 : F) * rho 698) = ((0 : F) * rho 0))
    (hb126 : ((1 : F) * rho 699) * ((1 : F) * rho 0 + (-1 : F) * rho 699) = ((0 : F) * rho 0))
    (hb127 : ((1 : F) * rho 700) * ((1 : F) * rho 0 + (-1 : F) * rho 700) = ((0 : F) * rho 0))
    (hb128 : ((1 : F) * rho 701) * ((1 : F) * rho 0 + (-1 : F) * rho 701) = ((0 : F) * rho 0))
    (hb129 : ((1 : F) * rho 702) * ((1 : F) * rho 0 + (-1 : F) * rho 702) = ((0 : F) * rho 0))
    (hb130 : ((1 : F) * rho 703) * ((1 : F) * rho 0 + (-1 : F) * rho 703) = ((0 : F) * rho 0))
    (hb131 : ((1 : F) * rho 704) * ((1 : F) * rho 0 + (-1 : F) * rho 704) = ((0 : F) * rho 0))
    (hb132 : ((1 : F) * rho 705) * ((1 : F) * rho 0 + (-1 : F) * rho 705) = ((0 : F) * rho 0))
    (hb133 : ((1 : F) * rho 706) * ((1 : F) * rho 0 + (-1 : F) * rho 706) = ((0 : F) * rho 0))
    (hb134 : ((1 : F) * rho 707) * ((1 : F) * rho 0 + (-1 : F) * rho 707) = ((0 : F) * rho 0))
    (hb135 : ((1 : F) * rho 708) * ((1 : F) * rho 0 + (-1 : F) * rho 708) = ((0 : F) * rho 0))
    (hb136 : ((1 : F) * rho 709) * ((1 : F) * rho 0 + (-1 : F) * rho 709) = ((0 : F) * rho 0))
    (hb137 : ((1 : F) * rho 710) * ((1 : F) * rho 0 + (-1 : F) * rho 710) = ((0 : F) * rho 0))
    (hb138 : ((1 : F) * rho 711) * ((1 : F) * rho 0 + (-1 : F) * rho 711) = ((0 : F) * rho 0))
    (hb139 : ((1 : F) * rho 712) * ((1 : F) * rho 0 + (-1 : F) * rho 712) = ((0 : F) * rho 0))
    (hb140 : ((1 : F) * rho 713) * ((1 : F) * rho 0 + (-1 : F) * rho 713) = ((0 : F) * rho 0))
    (hb141 : ((1 : F) * rho 714) * ((1 : F) * rho 0 + (-1 : F) * rho 714) = ((0 : F) * rho 0))
    (hb142 : ((1 : F) * rho 715) * ((1 : F) * rho 0 + (-1 : F) * rho 715) = ((0 : F) * rho 0))
    (hb143 : ((1 : F) * rho 716) * ((1 : F) * rho 0 + (-1 : F) * rho 716) = ((0 : F) * rho 0))
    (hb144 : ((1 : F) * rho 717) * ((1 : F) * rho 0 + (-1 : F) * rho 717) = ((0 : F) * rho 0))
    (hb145 : ((1 : F) * rho 718) * ((1 : F) * rho 0 + (-1 : F) * rho 718) = ((0 : F) * rho 0))
    (hb146 : ((1 : F) * rho 719) * ((1 : F) * rho 0 + (-1 : F) * rho 719) = ((0 : F) * rho 0))
    (hb147 : ((1 : F) * rho 720) * ((1 : F) * rho 0 + (-1 : F) * rho 720) = ((0 : F) * rho 0))
    (hb148 : ((1 : F) * rho 721) * ((1 : F) * rho 0 + (-1 : F) * rho 721) = ((0 : F) * rho 0))
    (hb149 : ((1 : F) * rho 722) * ((1 : F) * rho 0 + (-1 : F) * rho 722) = ((0 : F) * rho 0))
    (hb150 : ((1 : F) * rho 723) * ((1 : F) * rho 0 + (-1 : F) * rho 723) = ((0 : F) * rho 0))
    (hb151 : ((1 : F) * rho 724) * ((1 : F) * rho 0 + (-1 : F) * rho 724) = ((0 : F) * rho 0))
    (hb152 : ((1 : F) * rho 725) * ((1 : F) * rho 0 + (-1 : F) * rho 725) = ((0 : F) * rho 0))
    (hb153 : ((1 : F) * rho 726) * ((1 : F) * rho 0 + (-1 : F) * rho 726) = ((0 : F) * rho 0))
    (hb154 : ((1 : F) * rho 727) * ((1 : F) * rho 0 + (-1 : F) * rho 727) = ((0 : F) * rho 0))
    (hb155 : ((1 : F) * rho 728) * ((1 : F) * rho 0 + (-1 : F) * rho 728) = ((0 : F) * rho 0))
    (hb156 : ((1 : F) * rho 729) * ((1 : F) * rho 0 + (-1 : F) * rho 729) = ((0 : F) * rho 0))
    (hb157 : ((1 : F) * rho 730) * ((1 : F) * rho 0 + (-1 : F) * rho 730) = ((0 : F) * rho 0))
    (hb158 : ((1 : F) * rho 731) * ((1 : F) * rho 0 + (-1 : F) * rho 731) = ((0 : F) * rho 0))
    (hb159 : ((1 : F) * rho 732) * ((1 : F) * rho 0 + (-1 : F) * rho 732) = ((0 : F) * rho 0))
    (hb160 : ((1 : F) * rho 733) * ((1 : F) * rho 0 + (-1 : F) * rho 733) = ((0 : F) * rho 0))
    (hb161 : ((1 : F) * rho 734) * ((1 : F) * rho 0 + (-1 : F) * rho 734) = ((0 : F) * rho 0))
    (hb162 : ((1 : F) * rho 735) * ((1 : F) * rho 0 + (-1 : F) * rho 735) = ((0 : F) * rho 0))
    (hb163 : ((1 : F) * rho 736) * ((1 : F) * rho 0 + (-1 : F) * rho 736) = ((0 : F) * rho 0))
    (hb164 : ((1 : F) * rho 737) * ((1 : F) * rho 0 + (-1 : F) * rho 737) = ((0 : F) * rho 0))
    (hb165 : ((1 : F) * rho 738) * ((1 : F) * rho 0 + (-1 : F) * rho 738) = ((0 : F) * rho 0))
    (hb166 : ((1 : F) * rho 739) * ((1 : F) * rho 0 + (-1 : F) * rho 739) = ((0 : F) * rho 0))
    (hb167 : ((1 : F) * rho 740) * ((1 : F) * rho 0 + (-1 : F) * rho 740) = ((0 : F) * rho 0))
    (hb168 : ((1 : F) * rho 741) * ((1 : F) * rho 0 + (-1 : F) * rho 741) = ((0 : F) * rho 0))
    (hb169 : ((1 : F) * rho 742) * ((1 : F) * rho 0 + (-1 : F) * rho 742) = ((0 : F) * rho 0))
    (hb170 : ((1 : F) * rho 743) * ((1 : F) * rho 0 + (-1 : F) * rho 743) = ((0 : F) * rho 0))
    (hb171 : ((1 : F) * rho 744) * ((1 : F) * rho 0 + (-1 : F) * rho 744) = ((0 : F) * rho 0))
    (hb172 : ((1 : F) * rho 745) * ((1 : F) * rho 0 + (-1 : F) * rho 745) = ((0 : F) * rho 0))
    (hb173 : ((1 : F) * rho 746) * ((1 : F) * rho 0 + (-1 : F) * rho 746) = ((0 : F) * rho 0))
    (hb174 : ((1 : F) * rho 747) * ((1 : F) * rho 0 + (-1 : F) * rho 747) = ((0 : F) * rho 0))
    (hb175 : ((1 : F) * rho 748) * ((1 : F) * rho 0 + (-1 : F) * rho 748) = ((0 : F) * rho 0))
    (hb176 : ((1 : F) * rho 749) * ((1 : F) * rho 0 + (-1 : F) * rho 749) = ((0 : F) * rho 0))
    (hb177 : ((1 : F) * rho 750) * ((1 : F) * rho 0 + (-1 : F) * rho 750) = ((0 : F) * rho 0))
    (hb178 : ((1 : F) * rho 751) * ((1 : F) * rho 0 + (-1 : F) * rho 751) = ((0 : F) * rho 0))
    (hb179 : ((1 : F) * rho 752) * ((1 : F) * rho 0 + (-1 : F) * rho 752) = ((0 : F) * rho 0))
    (hb180 : ((1 : F) * rho 753) * ((1 : F) * rho 0 + (-1 : F) * rho 753) = ((0 : F) * rho 0))
    (hb181 : ((1 : F) * rho 754) * ((1 : F) * rho 0 + (-1 : F) * rho 754) = ((0 : F) * rho 0))
    (hb182 : ((1 : F) * rho 755) * ((1 : F) * rho 0 + (-1 : F) * rho 755) = ((0 : F) * rho 0))
    (hb183 : ((1 : F) * rho 756) * ((1 : F) * rho 0 + (-1 : F) * rho 756) = ((0 : F) * rho 0))
    (hb184 : ((1 : F) * rho 757) * ((1 : F) * rho 0 + (-1 : F) * rho 757) = ((0 : F) * rho 0))
    (hb185 : ((1 : F) * rho 758) * ((1 : F) * rho 0 + (-1 : F) * rho 758) = ((0 : F) * rho 0))
    (hb186 : ((1 : F) * rho 759) * ((1 : F) * rho 0 + (-1 : F) * rho 759) = ((0 : F) * rho 0))
    (hb187 : ((1 : F) * rho 760) * ((1 : F) * rho 0 + (-1 : F) * rho 760) = ((0 : F) * rho 0))
    (hb188 : ((1 : F) * rho 761) * ((1 : F) * rho 0 + (-1 : F) * rho 761) = ((0 : F) * rho 0))
    (hb189 : ((1 : F) * rho 762) * ((1 : F) * rho 0 + (-1 : F) * rho 762) = ((0 : F) * rho 0))
    (hb190 : ((1 : F) * rho 763) * ((1 : F) * rho 0 + (-1 : F) * rho 763) = ((0 : F) * rho 0))
    (hb191 : ((1 : F) * rho 764) * ((1 : F) * rho 0 + (-1 : F) * rho 764) = ((0 : F) * rho 0))
    (hb192 : ((1 : F) * rho 765) * ((1 : F) * rho 0 + (-1 : F) * rho 765) = ((0 : F) * rho 0))
    (hb193 : ((1 : F) * rho 766) * ((1 : F) * rho 0 + (-1 : F) * rho 766) = ((0 : F) * rho 0))
    (hb194 : ((1 : F) * rho 767) * ((1 : F) * rho 0 + (-1 : F) * rho 767) = ((0 : F) * rho 0))
    (hb195 : ((1 : F) * rho 768) * ((1 : F) * rho 0 + (-1 : F) * rho 768) = ((0 : F) * rho 0))
    (hb196 : ((1 : F) * rho 769) * ((1 : F) * rho 0 + (-1 : F) * rho 769) = ((0 : F) * rho 0))
    (hb197 : ((1 : F) * rho 770) * ((1 : F) * rho 0 + (-1 : F) * rho 770) = ((0 : F) * rho 0))
    (hb198 : ((1 : F) * rho 771) * ((1 : F) * rho 0 + (-1 : F) * rho 771) = ((0 : F) * rho 0))
    (hb199 : ((1 : F) * rho 772) * ((1 : F) * rho 0 + (-1 : F) * rho 772) = ((0 : F) * rho 0))
    (hb200 : ((1 : F) * rho 773) * ((1 : F) * rho 0 + (-1 : F) * rho 773) = ((0 : F) * rho 0))
    (hb201 : ((1 : F) * rho 774) * ((1 : F) * rho 0 + (-1 : F) * rho 774) = ((0 : F) * rho 0))
    (hb202 : ((1 : F) * rho 775) * ((1 : F) * rho 0 + (-1 : F) * rho 775) = ((0 : F) * rho 0))
    (hb203 : ((1 : F) * rho 776) * ((1 : F) * rho 0 + (-1 : F) * rho 776) = ((0 : F) * rho 0))
    (hb204 : ((1 : F) * rho 777) * ((1 : F) * rho 0 + (-1 : F) * rho 777) = ((0 : F) * rho 0))
    (hb205 : ((1 : F) * rho 778) * ((1 : F) * rho 0 + (-1 : F) * rho 778) = ((0 : F) * rho 0))
    (hb206 : ((1 : F) * rho 779) * ((1 : F) * rho 0 + (-1 : F) * rho 779) = ((0 : F) * rho 0))
    (hb207 : ((1 : F) * rho 780) * ((1 : F) * rho 0 + (-1 : F) * rho 780) = ((0 : F) * rho 0))
    (hb208 : ((1 : F) * rho 781) * ((1 : F) * rho 0 + (-1 : F) * rho 781) = ((0 : F) * rho 0))
    (hb209 : ((1 : F) * rho 782) * ((1 : F) * rho 0 + (-1 : F) * rho 782) = ((0 : F) * rho 0))
    (hb210 : ((1 : F) * rho 783) * ((1 : F) * rho 0 + (-1 : F) * rho 783) = ((0 : F) * rho 0))
    (hb211 : ((1 : F) * rho 784) * ((1 : F) * rho 0 + (-1 : F) * rho 784) = ((0 : F) * rho 0))
    (hb212 : ((1 : F) * rho 785) * ((1 : F) * rho 0 + (-1 : F) * rho 785) = ((0 : F) * rho 0))
    (hb213 : ((1 : F) * rho 786) * ((1 : F) * rho 0 + (-1 : F) * rho 786) = ((0 : F) * rho 0))
    (hb214 : ((1 : F) * rho 787) * ((1 : F) * rho 0 + (-1 : F) * rho 787) = ((0 : F) * rho 0))
    (hb215 : ((1 : F) * rho 788) * ((1 : F) * rho 0 + (-1 : F) * rho 788) = ((0 : F) * rho 0))
    (hb216 : ((1 : F) * rho 789) * ((1 : F) * rho 0 + (-1 : F) * rho 789) = ((0 : F) * rho 0))
    (hb217 : ((1 : F) * rho 790) * ((1 : F) * rho 0 + (-1 : F) * rho 790) = ((0 : F) * rho 0))
    (hb218 : ((1 : F) * rho 791) * ((1 : F) * rho 0 + (-1 : F) * rho 791) = ((0 : F) * rho 0))
    (hb219 : ((1 : F) * rho 792) * ((1 : F) * rho 0 + (-1 : F) * rho 792) = ((0 : F) * rho 0))
    (hb220 : ((1 : F) * rho 793) * ((1 : F) * rho 0 + (-1 : F) * rho 793) = ((0 : F) * rho 0))
    (hb221 : ((1 : F) * rho 794) * ((1 : F) * rho 0 + (-1 : F) * rho 794) = ((0 : F) * rho 0))
    (hb222 : ((1 : F) * rho 795) * ((1 : F) * rho 0 + (-1 : F) * rho 795) = ((0 : F) * rho 0))
    (hb223 : ((1 : F) * rho 796) * ((1 : F) * rho 0 + (-1 : F) * rho 796) = ((0 : F) * rho 0))
    (hb224 : ((1 : F) * rho 797) * ((1 : F) * rho 0 + (-1 : F) * rho 797) = ((0 : F) * rho 0))
    (hb225 : ((1 : F) * rho 798) * ((1 : F) * rho 0 + (-1 : F) * rho 798) = ((0 : F) * rho 0))
    (hb226 : ((1 : F) * rho 799) * ((1 : F) * rho 0 + (-1 : F) * rho 799) = ((0 : F) * rho 0))
    (hb227 : ((1 : F) * rho 800) * ((1 : F) * rho 0 + (-1 : F) * rho 800) = ((0 : F) * rho 0))
    (hb228 : ((1 : F) * rho 801) * ((1 : F) * rho 0 + (-1 : F) * rho 801) = ((0 : F) * rho 0))
    (hb229 : ((1 : F) * rho 802) * ((1 : F) * rho 0 + (-1 : F) * rho 802) = ((0 : F) * rho 0))
    (hb230 : ((1 : F) * rho 803) * ((1 : F) * rho 0 + (-1 : F) * rho 803) = ((0 : F) * rho 0))
    (hb231 : ((1 : F) * rho 804) * ((1 : F) * rho 0 + (-1 : F) * rho 804) = ((0 : F) * rho 0))
    (hb232 : ((1 : F) * rho 805) * ((1 : F) * rho 0 + (-1 : F) * rho 805) = ((0 : F) * rho 0))
    (hb233 : ((1 : F) * rho 806) * ((1 : F) * rho 0 + (-1 : F) * rho 806) = ((0 : F) * rho 0))
    (hb234 : ((1 : F) * rho 807) * ((1 : F) * rho 0 + (-1 : F) * rho 807) = ((0 : F) * rho 0))
    (hb235 : ((1 : F) * rho 808) * ((1 : F) * rho 0 + (-1 : F) * rho 808) = ((0 : F) * rho 0))
    (hb236 : ((1 : F) * rho 809) * ((1 : F) * rho 0 + (-1 : F) * rho 809) = ((0 : F) * rho 0))
    (hb237 : ((1 : F) * rho 810) * ((1 : F) * rho 0 + (-1 : F) * rho 810) = ((0 : F) * rho 0))
    (hb238 : ((1 : F) * rho 811) * ((1 : F) * rho 0 + (-1 : F) * rho 811) = ((0 : F) * rho 0))
    (hb239 : ((1 : F) * rho 812) * ((1 : F) * rho 0 + (-1 : F) * rho 812) = ((0 : F) * rho 0))
    (hb240 : ((1 : F) * rho 813) * ((1 : F) * rho 0 + (-1 : F) * rho 813) = ((0 : F) * rho 0))
    (hb241 : ((1 : F) * rho 814) * ((1 : F) * rho 0 + (-1 : F) * rho 814) = ((0 : F) * rho 0))
    (hb242 : ((1 : F) * rho 815) * ((1 : F) * rho 0 + (-1 : F) * rho 815) = ((0 : F) * rho 0))
    (hb243 : ((1 : F) * rho 816) * ((1 : F) * rho 0 + (-1 : F) * rho 816) = ((0 : F) * rho 0))
    (hb244 : ((1 : F) * rho 817) * ((1 : F) * rho 0 + (-1 : F) * rho 817) = ((0 : F) * rho 0))
    (hb245 : ((1 : F) * rho 818) * ((1 : F) * rho 0 + (-1 : F) * rho 818) = ((0 : F) * rho 0))
    (hb246 : ((1 : F) * rho 819) * ((1 : F) * rho 0 + (-1 : F) * rho 819) = ((0 : F) * rho 0))
    (hb247 : ((1 : F) * rho 820) * ((1 : F) * rho 0 + (-1 : F) * rho 820) = ((0 : F) * rho 0))
    (hb248 : ((1 : F) * rho 821) * ((1 : F) * rho 0 + (-1 : F) * rho 821) = ((0 : F) * rho 0))
    (hb249 : ((1 : F) * rho 822) * ((1 : F) * rho 0 + (-1 : F) * rho 822) = ((0 : F) * rho 0))
    (hb250 : ((1 : F) * rho 823) * ((1 : F) * rho 0 + (-1 : F) * rho 823) = ((0 : F) * rho 0))
    (hb251 : ((1 : F) * rho 824) * ((1 : F) * rho 0 + (-1 : F) * rho 824) = ((0 : F) * rho 0))
    (hb252 : ((1 : F) * rho 825) * ((1 : F) * rho 0 + (-1 : F) * rho 825) = ((0 : F) * rho 0))
    (hc0 : ((1 : F) * rho 573) * ((1 : F) * rho 0 + (-1 : F) * rho 573 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc1 : ((1 : F) * rho 574) * ((1 : F) * rho 0 + (-1 : F) * rho 574 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc2 : ((1 : F) * rho 575) * ((1 : F) * rho 0 + (-1 : F) * rho 575 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc3 : ((1 : F) * rho 576) * ((1 : F) * rho 0 + (-1 : F) * rho 576 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc4 : ((1 : F) * rho 577) * ((1 : F) * rho 0 + (-1 : F) * rho 577 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc5 : ((1 : F) * rho 578) * ((1 : F) * rho 0 + (-1 : F) * rho 578 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc6 : ((1 : F) * rho 579) * ((1 : F) * rho 0 + (-1 : F) * rho 579 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc7 : ((1 : F) * rho 580) * ((1 : F) * rho 0 + (-1 : F) * rho 580 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc8 : ((1 : F) * rho 581) * ((1 : F) * rho 0 + (-1 : F) * rho 581 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc9 : ((1 : F) * rho 582) * ((1 : F) * rho 0 + (-1 : F) * rho 582 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc10 : ((1 : F) * rho 583) * ((1 : F) * rho 0 + (-1 : F) * rho 583 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc11 : ((1 : F) * rho 584) * ((1 : F) * rho 0 + (-1 : F) * rho 584 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc12 : ((1 : F) * rho 585) * ((1 : F) * rho 0 + (-1 : F) * rho 585 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc13 : ((1 : F) * rho 586) * ((1 : F) * rho 0 + (-1 : F) * rho 586 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc14 : ((1 : F) * rho 587) * ((1 : F) * rho 0 + (-1 : F) * rho 587 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc15 : ((1 : F) * rho 588) * ((1 : F) * rho 0 + (-1 : F) * rho 588 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc16 : ((1 : F) * rho 589) * ((1 : F) * rho 0 + (-1 : F) * rho 589 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc17 : ((1 : F) * rho 590) * ((1 : F) * rho 0 + (-1 : F) * rho 590 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc18 : ((1 : F) * rho 591) * ((1 : F) * rho 0 + (-1 : F) * rho 591 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc19 : ((1 : F) * rho 592) * ((1 : F) * rho 0 + (-1 : F) * rho 592 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc20 : ((1 : F) * rho 593) * ((1 : F) * rho 0 + (-1 : F) * rho 593 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc21 : ((1 : F) * rho 594) * ((1 : F) * rho 0 + (-1 : F) * rho 594 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc22 : ((1 : F) * rho 595) * ((1 : F) * rho 0 + (-1 : F) * rho 595 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc23 : ((1 : F) * rho 596) * ((1 : F) * rho 0 + (-1 : F) * rho 596 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc24 : ((1 : F) * rho 597) * ((1 : F) * rho 0 + (-1 : F) * rho 597 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc25 : ((1 : F) * rho 598) * ((1 : F) * rho 0 + (-1 : F) * rho 598 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc26 : ((1 : F) * rho 599) * ((1 : F) * rho 0 + (-1 : F) * rho 599 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc27 : ((1 : F) * rho 600) * ((1 : F) * rho 0 + (-1 : F) * rho 600 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc28 : ((1 : F) * rho 601) * ((1 : F) * rho 0 + (-1 : F) * rho 601 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc29 : ((1 : F) * rho 602) * ((1 : F) * rho 0 + (-1 : F) * rho 602 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc30 : ((1 : F) * rho 603) * ((1 : F) * rho 0 + (-1 : F) * rho 603 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc31 : ((1 : F) * rho 604) * ((1 : F) * rho 0 + (-1 : F) * rho 604 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc32 : ((1 : F) * rho 605) * ((1 : F) * rho 0 + (-1 : F) * rho 605 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc33 : ((1 : F) * rho 606) * ((1 : F) * rho 0 + (-1 : F) * rho 606 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc34 : ((1 : F) * rho 607) * ((1 : F) * rho 0 + (-1 : F) * rho 607 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc35 : ((1 : F) * rho 608) * ((1 : F) * rho 0 + (-1 : F) * rho 608 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc36 : ((1 : F) * rho 609) * ((1 : F) * rho 0 + (-1 : F) * rho 609 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc37 : ((1 : F) * rho 610) * ((1 : F) * rho 0 + (-1 : F) * rho 610 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc38 : ((1 : F) * rho 611) * ((1 : F) * rho 0 + (-1 : F) * rho 611 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc39 : ((1 : F) * rho 612) * ((1 : F) * rho 0 + (-1 : F) * rho 612 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc40 : ((1 : F) * rho 613) * ((1 : F) * rho 0 + (-1 : F) * rho 613 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc41 : ((1 : F) * rho 614) * ((1 : F) * rho 0 + (-1 : F) * rho 614 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc42 : ((1 : F) * rho 615) * ((1 : F) * rho 0 + (-1 : F) * rho 615 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc43 : ((1 : F) * rho 616) * ((1 : F) * rho 0 + (-1 : F) * rho 616 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc44 : ((1 : F) * rho 617) * ((1 : F) * rho 0 + (-1 : F) * rho 617 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc45 : ((1 : F) * rho 618) * ((1 : F) * rho 0 + (-1 : F) * rho 618 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc46 : ((1 : F) * rho 619) * ((1 : F) * rho 0 + (-1 : F) * rho 619 + (-1 : F) * rho 911) = ((0 : F) * rho 0))
    (hc49 : ((1 : F) * rho 622) * ((1 : F) * rho 0 + (-1 : F) * rho 622 + (-1 : F) * rho 909) = ((0 : F) * rho 0))
    (hc50 : ((1 : F) * rho 623) * ((1 : F) * rho 0 + (-1 : F) * rho 623 + (-1 : F) * rho 909) = ((0 : F) * rho 0))
    (hc51 : ((1 : F) * rho 624) * ((1 : F) * rho 0 + (-1 : F) * rho 624 + (-1 : F) * rho 909) = ((0 : F) * rho 0))
    (hc53 : ((1 : F) * rho 626) * ((1 : F) * rho 0 + (-1 : F) * rho 626 + (-1 : F) * rho 908) = ((0 : F) * rho 0))
    (hc54 : ((1 : F) * rho 627) * ((1 : F) * rho 0 + (-1 : F) * rho 627 + (-1 : F) * rho 908) = ((0 : F) * rho 0))
    (hc55 : ((1 : F) * rho 628) * ((1 : F) * rho 0 + (-1 : F) * rho 628 + (-1 : F) * rho 908) = ((0 : F) * rho 0))
    (hc56 : ((1 : F) * rho 629) * ((1 : F) * rho 0 + (-1 : F) * rho 629 + (-1 : F) * rho 908) = ((0 : F) * rho 0))
    (hc58 : ((1 : F) * rho 631) * ((1 : F) * rho 0 + (-1 : F) * rho 631 + (-1 : F) * rho 907) = ((0 : F) * rho 0))
    (hc60 : ((1 : F) * rho 633) * ((1 : F) * rho 0 + (-1 : F) * rho 633 + (-1 : F) * rho 906) = ((0 : F) * rho 0))
    (hc61 : ((1 : F) * rho 634) * ((1 : F) * rho 0 + (-1 : F) * rho 634 + (-1 : F) * rho 906) = ((0 : F) * rho 0))
    (hc62 : ((1 : F) * rho 635) * ((1 : F) * rho 0 + (-1 : F) * rho 635 + (-1 : F) * rho 906) = ((0 : F) * rho 0))
    (hc63 : ((1 : F) * rho 636) * ((1 : F) * rho 0 + (-1 : F) * rho 636 + (-1 : F) * rho 906) = ((0 : F) * rho 0))
    (hc65 : ((1 : F) * rho 638) * ((1 : F) * rho 0 + (-1 : F) * rho 638 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc66 : ((1 : F) * rho 639) * ((1 : F) * rho 0 + (-1 : F) * rho 639 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc67 : ((1 : F) * rho 640) * ((1 : F) * rho 0 + (-1 : F) * rho 640 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc68 : ((1 : F) * rho 641) * ((1 : F) * rho 0 + (-1 : F) * rho 641 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc69 : ((1 : F) * rho 642) * ((1 : F) * rho 0 + (-1 : F) * rho 642 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc70 : ((1 : F) * rho 643) * ((1 : F) * rho 0 + (-1 : F) * rho 643 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc71 : ((1 : F) * rho 644) * ((1 : F) * rho 0 + (-1 : F) * rho 644 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc72 : ((1 : F) * rho 645) * ((1 : F) * rho 0 + (-1 : F) * rho 645 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc73 : ((1 : F) * rho 646) * ((1 : F) * rho 0 + (-1 : F) * rho 646 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc74 : ((1 : F) * rho 647) * ((1 : F) * rho 0 + (-1 : F) * rho 647 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc75 : ((1 : F) * rho 648) * ((1 : F) * rho 0 + (-1 : F) * rho 648 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc76 : ((1 : F) * rho 649) * ((1 : F) * rho 0 + (-1 : F) * rho 649 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc77 : ((1 : F) * rho 650) * ((1 : F) * rho 0 + (-1 : F) * rho 650 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc78 : ((1 : F) * rho 651) * ((1 : F) * rho 0 + (-1 : F) * rho 651 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc79 : ((1 : F) * rho 652) * ((1 : F) * rho 0 + (-1 : F) * rho 652 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc80 : ((1 : F) * rho 653) * ((1 : F) * rho 0 + (-1 : F) * rho 653 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc81 : ((1 : F) * rho 654) * ((1 : F) * rho 0 + (-1 : F) * rho 654 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc82 : ((1 : F) * rho 655) * ((1 : F) * rho 0 + (-1 : F) * rho 655 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc83 : ((1 : F) * rho 656) * ((1 : F) * rho 0 + (-1 : F) * rho 656 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc84 : ((1 : F) * rho 657) * ((1 : F) * rho 0 + (-1 : F) * rho 657 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc85 : ((1 : F) * rho 658) * ((1 : F) * rho 0 + (-1 : F) * rho 658 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc86 : ((1 : F) * rho 659) * ((1 : F) * rho 0 + (-1 : F) * rho 659 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc87 : ((1 : F) * rho 660) * ((1 : F) * rho 0 + (-1 : F) * rho 660 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc88 : ((1 : F) * rho 661) * ((1 : F) * rho 0 + (-1 : F) * rho 661 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc89 : ((1 : F) * rho 662) * ((1 : F) * rho 0 + (-1 : F) * rho 662 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc90 : ((1 : F) * rho 663) * ((1 : F) * rho 0 + (-1 : F) * rho 663 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc91 : ((1 : F) * rho 664) * ((1 : F) * rho 0 + (-1 : F) * rho 664 + (-1 : F) * rho 905) = ((0 : F) * rho 0))
    (hc93 : ((1 : F) * rho 666) * ((1 : F) * rho 0 + (-1 : F) * rho 666 + (-1 : F) * rho 904) = ((0 : F) * rho 0))
    (hc96 : ((1 : F) * rho 669) * ((1 : F) * rho 0 + (-1 : F) * rho 669 + (-1 : F) * rho 902) = ((0 : F) * rho 0))
    (hc104 : ((1 : F) * rho 677) * ((1 : F) * rho 0 + (-1 : F) * rho 677 + (-1 : F) * rho 895) = ((0 : F) * rho 0))
    (hc107 : ((1 : F) * rho 680) * ((1 : F) * rho 0 + (-1 : F) * rho 680 + (-1 : F) * rho 893) = ((0 : F) * rho 0))
    (hc111 : ((1 : F) * rho 684) * ((1 : F) * rho 0 + (-1 : F) * rho 684 + (-1 : F) * rho 890) = ((0 : F) * rho 0))
    (hc112 : ((1 : F) * rho 685) * ((1 : F) * rho 0 + (-1 : F) * rho 685 + (-1 : F) * rho 890) = ((0 : F) * rho 0))
    (hc114 : ((1 : F) * rho 687) * ((1 : F) * rho 0 + (-1 : F) * rho 687 + (-1 : F) * rho 889) = ((0 : F) * rho 0))
    (hc116 : ((1 : F) * rho 689) * ((1 : F) * rho 0 + (-1 : F) * rho 689 + (-1 : F) * rho 888) = ((0 : F) * rho 0))
    (hc118 : ((1 : F) * rho 691) * ((1 : F) * rho 0 + (-1 : F) * rho 691 + (-1 : F) * rho 887) = ((0 : F) * rho 0))
    (hc121 : ((1 : F) * rho 694) * ((1 : F) * rho 0 + (-1 : F) * rho 694 + (-1 : F) * rho 885) = ((0 : F) * rho 0))
    (hc122 : ((1 : F) * rho 695) * ((1 : F) * rho 0 + (-1 : F) * rho 695 + (-1 : F) * rho 885) = ((0 : F) * rho 0))
    (hc125 : ((1 : F) * rho 698) * ((1 : F) * rho 0 + (-1 : F) * rho 698 + (-1 : F) * rho 883) = ((0 : F) * rho 0))
    (hc127 : ((1 : F) * rho 700) * ((1 : F) * rho 0 + (-1 : F) * rho 700 + (-1 : F) * rho 882) = ((0 : F) * rho 0))
    (hc129 : ((1 : F) * rho 702) * ((1 : F) * rho 0 + (-1 : F) * rho 702 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc130 : ((1 : F) * rho 703) * ((1 : F) * rho 0 + (-1 : F) * rho 703 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc131 : ((1 : F) * rho 704) * ((1 : F) * rho 0 + (-1 : F) * rho 704 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc132 : ((1 : F) * rho 705) * ((1 : F) * rho 0 + (-1 : F) * rho 705 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc133 : ((1 : F) * rho 706) * ((1 : F) * rho 0 + (-1 : F) * rho 706 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc134 : ((1 : F) * rho 707) * ((1 : F) * rho 0 + (-1 : F) * rho 707 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc135 : ((1 : F) * rho 708) * ((1 : F) * rho 0 + (-1 : F) * rho 708 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc136 : ((1 : F) * rho 709) * ((1 : F) * rho 0 + (-1 : F) * rho 709 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc137 : ((1 : F) * rho 710) * ((1 : F) * rho 0 + (-1 : F) * rho 710 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc138 : ((1 : F) * rho 711) * ((1 : F) * rho 0 + (-1 : F) * rho 711 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc139 : ((1 : F) * rho 712) * ((1 : F) * rho 0 + (-1 : F) * rho 712 + (-1 : F) * rho 881) = ((0 : F) * rho 0))
    (hc142 : ((1 : F) * rho 715) * ((1 : F) * rho 0 + (-1 : F) * rho 715 + (-1 : F) * rho 879) = ((0 : F) * rho 0))
    (hc147 : ((1 : F) * rho 720) * ((1 : F) * rho 0 + (-1 : F) * rho 720 + (-1 : F) * rho 875) = ((0 : F) * rho 0))
    (hc150 : ((1 : F) * rho 723) * ((1 : F) * rho 0 + (-1 : F) * rho 723 + (-1 : F) * rho 873) = ((0 : F) * rho 0))
    (hc151 : ((1 : F) * rho 724) * ((1 : F) * rho 0 + (-1 : F) * rho 724 + (-1 : F) * rho 873) = ((0 : F) * rho 0))
    (hc152 : ((1 : F) * rho 725) * ((1 : F) * rho 0 + (-1 : F) * rho 725 + (-1 : F) * rho 873) = ((0 : F) * rho 0))
    (hc153 : ((1 : F) * rho 726) * ((1 : F) * rho 0 + (-1 : F) * rho 726 + (-1 : F) * rho 873) = ((0 : F) * rho 0))
    (hc157 : ((1 : F) * rho 730) * ((1 : F) * rho 0 + (-1 : F) * rho 730 + (-1 : F) * rho 870) = ((0 : F) * rho 0))
    (hc159 : ((1 : F) * rho 732) * ((1 : F) * rho 0 + (-1 : F) * rho 732 + (-1 : F) * rho 869) = ((0 : F) * rho 0))
    (hc160 : ((1 : F) * rho 733) * ((1 : F) * rho 0 + (-1 : F) * rho 733 + (-1 : F) * rho 869) = ((0 : F) * rho 0))
    (hc165 : ((1 : F) * rho 738) * ((1 : F) * rho 0 + (-1 : F) * rho 738 + (-1 : F) * rho 865) = ((0 : F) * rho 0))
    (hc166 : ((1 : F) * rho 739) * ((1 : F) * rho 0 + (-1 : F) * rho 739 + (-1 : F) * rho 865) = ((0 : F) * rho 0))
    (hc167 : ((1 : F) * rho 740) * ((1 : F) * rho 0 + (-1 : F) * rho 740 + (-1 : F) * rho 865) = ((0 : F) * rho 0))
    (hc169 : ((1 : F) * rho 742) * ((1 : F) * rho 0 + (-1 : F) * rho 742 + (-1 : F) * rho 864) = ((0 : F) * rho 0))
    (hc172 : ((1 : F) * rho 745) * ((1 : F) * rho 0 + (-1 : F) * rho 745 + (-1 : F) * rho 862) = ((0 : F) * rho 0))
    (hc173 : ((1 : F) * rho 746) * ((1 : F) * rho 0 + (-1 : F) * rho 746 + (-1 : F) * rho 862) = ((0 : F) * rho 0))
    (hc175 : ((1 : F) * rho 748) * ((1 : F) * rho 0 + (-1 : F) * rho 748 + (-1 : F) * rho 861) = ((0 : F) * rho 0))
    (hc176 : ((1 : F) * rho 749) * ((1 : F) * rho 0 + (-1 : F) * rho 749 + (-1 : F) * rho 861) = ((0 : F) * rho 0))
    (hc177 : ((1 : F) * rho 750) * ((1 : F) * rho 0 + (-1 : F) * rho 750 + (-1 : F) * rho 861) = ((0 : F) * rho 0))
    (hc179 : ((1 : F) * rho 752) * ((1 : F) * rho 0 + (-1 : F) * rho 752 + (-1 : F) * rho 860) = ((0 : F) * rho 0))
    (hc182 : ((1 : F) * rho 755) * ((1 : F) * rho 0 + (-1 : F) * rho 755 + (-1 : F) * rho 858) = ((0 : F) * rho 0))
    (hc184 : ((1 : F) * rho 757) * ((1 : F) * rho 0 + (-1 : F) * rho 757 + (-1 : F) * rho 857) = ((0 : F) * rho 0))
    (hc185 : ((1 : F) * rho 758) * ((1 : F) * rho 0 + (-1 : F) * rho 758 + (-1 : F) * rho 857) = ((0 : F) * rho 0))
    (hc186 : ((1 : F) * rho 759) * ((1 : F) * rho 0 + (-1 : F) * rho 759 + (-1 : F) * rho 857) = ((0 : F) * rho 0))
    (hc187 : ((1 : F) * rho 760) * ((1 : F) * rho 0 + (-1 : F) * rho 760 + (-1 : F) * rho 857) = ((0 : F) * rho 0))
    (hc188 : ((1 : F) * rho 761) * ((1 : F) * rho 0 + (-1 : F) * rho 761 + (-1 : F) * rho 857) = ((0 : F) * rho 0))
    (hc191 : ((1 : F) * rho 764) * ((1 : F) * rho 0 + (-1 : F) * rho 764 + (-1 : F) * rho 855) = ((0 : F) * rho 0))
    (hc192 : ((1 : F) * rho 765) * ((1 : F) * rho 0 + (-1 : F) * rho 765 + (-1 : F) * rho 855) = ((0 : F) * rho 0))
    (hc195 : ((1 : F) * rho 768) * ((1 : F) * rho 0 + (-1 : F) * rho 768 + (-1 : F) * rho 853) = ((0 : F) * rho 0))
    (hc197 : ((1 : F) * rho 770) * ((1 : F) * rho 0 + (-1 : F) * rho 770 + (-1 : F) * rho 852) = ((0 : F) * rho 0))
    (hc199 : ((1 : F) * rho 772) * ((1 : F) * rho 0 + (-1 : F) * rho 772 + (-1 : F) * rho 851) = ((0 : F) * rho 0))
    (hc201 : ((1 : F) * rho 774) * ((1 : F) * rho 0 + (-1 : F) * rho 774 + (-1 : F) * rho 850) = ((0 : F) * rho 0))
    (hc203 : ((1 : F) * rho 776) * ((1 : F) * rho 0 + (-1 : F) * rho 776 + (-1 : F) * rho 849) = ((0 : F) * rho 0))
    (hc204 : ((1 : F) * rho 777) * ((1 : F) * rho 0 + (-1 : F) * rho 777 + (-1 : F) * rho 849) = ((0 : F) * rho 0))
    (hc206 : ((1 : F) * rho 779) * ((1 : F) * rho 0 + (-1 : F) * rho 779 + (-1 : F) * rho 848) = ((0 : F) * rho 0))
    (hc208 : ((1 : F) * rho 781) * ((1 : F) * rho 0 + (-1 : F) * rho 781 + (-1 : F) * rho 847) = ((0 : F) * rho 0))
    (hc209 : ((1 : F) * rho 782) * ((1 : F) * rho 0 + (-1 : F) * rho 782 + (-1 : F) * rho 847) = ((0 : F) * rho 0))
    (hc212 : ((1 : F) * rho 785) * ((1 : F) * rho 0 + (-1 : F) * rho 785 + (-1 : F) * rho 845) = ((0 : F) * rho 0))
    (hc214 : ((1 : F) * rho 787) * ((1 : F) * rho 0 + (-1 : F) * rho 787 + (-1 : F) * rho 844) = ((0 : F) * rho 0))
    (hc215 : ((1 : F) * rho 788) * ((1 : F) * rho 0 + (-1 : F) * rho 788 + (-1 : F) * rho 844) = ((0 : F) * rho 0))
    (hc216 : ((1 : F) * rho 789) * ((1 : F) * rho 0 + (-1 : F) * rho 789 + (-1 : F) * rho 844) = ((0 : F) * rho 0))
    (hc218 : ((1 : F) * rho 791) * ((1 : F) * rho 0 + (-1 : F) * rho 791 + (-1 : F) * rho 843) = ((0 : F) * rho 0))
    (hc221 : ((1 : F) * rho 794) * ((1 : F) * rho 0 + (-1 : F) * rho 794 + (-1 : F) * rho 841) = ((0 : F) * rho 0))
    (hc222 : ((1 : F) * rho 795) * ((1 : F) * rho 0 + (-1 : F) * rho 795 + (-1 : F) * rho 841) = ((0 : F) * rho 0))
    (hc224 : ((1 : F) * rho 797) * ((1 : F) * rho 0 + (-1 : F) * rho 797 + (-1 : F) * rho 840) = ((0 : F) * rho 0))
    (hc229 : ((1 : F) * rho 802) * ((1 : F) * rho 0 + (-1 : F) * rho 802 + (-1 : F) * rho 836) = ((0 : F) * rho 0))
    (hc231 : ((1 : F) * rho 804) * ((1 : F) * rho 0 + (-1 : F) * rho 804 + (-1 : F) * rho 835) = ((0 : F) * rho 0))
    (hc233 : ((1 : F) * rho 806) * ((1 : F) * rho 0 + (-1 : F) * rho 806 + (-1 : F) * rho 834) = ((0 : F) * rho 0))
    (hc235 : ((1 : F) * rho 808) * ((1 : F) * rho 0 + (-1 : F) * rho 808 + (-1 : F) * rho 833) = ((0 : F) * rho 0))
    (hc236 : ((1 : F) * rho 809) * ((1 : F) * rho 0 + (-1 : F) * rho 809 + (-1 : F) * rho 833) = ((0 : F) * rho 0))
    (hc239 : ((1 : F) * rho 812) * ((1 : F) * rho 0 + (-1 : F) * rho 812 + (-1 : F) * rho 831) = ((0 : F) * rho 0))
    (hc242 : ((1 : F) * rho 815) * ((1 : F) * rho 0 + (-1 : F) * rho 815 + (-1 : F) * rho 829) = ((0 : F) * rho 0))
    (hc244 : ((1 : F) * rho 817) * ((1 : F) * rho 0 + (-1 : F) * rho 817 + (-1 : F) * rho 828) = ((0 : F) * rho 0))
    (hc246 : ((1 : F) * rho 819) * ((1 : F) * rho 0 + (-1 : F) * rho 819 + (-1 : F) * rho 827) = ((0 : F) * rho 0))
    (hc248 : ((1 : F) * rho 821) * ((1 : F) * rho 0 + (-1 : F) * rho 821 + (-1 : F) * rho 826) = ((0 : F) * rho 0))
    (hc250 : ((1 : F) * rho 823) * ((1 : F) * rho 0 + (-1 : F) * rho 823 + (-1 : F) * rho 825) = ((0 : F) * rho 0))
    (hc251 : ((1 : F) * rho 824) * ((1 : F) * rho 0 + (-1 : F) * rho 824 + (-1 : F) * rho 825) = ((0 : F) * rho 0))
    (ht47 : ((1 : F) * rho 910) * ((1 : F) * rho 620) = ((1 : F) * rho 911))
    (ht48 : ((1 : F) * rho 909) * ((1 : F) * rho 621) = ((1 : F) * rho 910))
    (ht52 : ((1 : F) * rho 908) * ((1 : F) * rho 625) = ((1 : F) * rho 909))
    (ht57 : ((1 : F) * rho 907) * ((1 : F) * rho 630) = ((1 : F) * rho 908))
    (ht59 : ((1 : F) * rho 906) * ((1 : F) * rho 632) = ((1 : F) * rho 907))
    (ht64 : ((1 : F) * rho 905) * ((1 : F) * rho 637) = ((1 : F) * rho 906))
    (ht92 : ((1 : F) * rho 904) * ((1 : F) * rho 665) = ((1 : F) * rho 905))
    (ht94 : ((1 : F) * rho 903) * ((1 : F) * rho 667) = ((1 : F) * rho 904))
    (ht95 : ((1 : F) * rho 902) * ((1 : F) * rho 668) = ((1 : F) * rho 903))
    (ht97 : ((1 : F) * rho 901) * ((1 : F) * rho 670) = ((1 : F) * rho 902))
    (ht98 : ((1 : F) * rho 900) * ((1 : F) * rho 671) = ((1 : F) * rho 901))
    (ht99 : ((1 : F) * rho 899) * ((1 : F) * rho 672) = ((1 : F) * rho 900))
    (ht100 : ((1 : F) * rho 898) * ((1 : F) * rho 673) = ((1 : F) * rho 899))
    (ht101 : ((1 : F) * rho 897) * ((1 : F) * rho 674) = ((1 : F) * rho 898))
    (ht102 : ((1 : F) * rho 896) * ((1 : F) * rho 675) = ((1 : F) * rho 897))
    (ht103 : ((1 : F) * rho 895) * ((1 : F) * rho 676) = ((1 : F) * rho 896))
    (ht105 : ((1 : F) * rho 894) * ((1 : F) * rho 678) = ((1 : F) * rho 895))
    (ht106 : ((1 : F) * rho 893) * ((1 : F) * rho 679) = ((1 : F) * rho 894))
    (ht108 : ((1 : F) * rho 892) * ((1 : F) * rho 681) = ((1 : F) * rho 893))
    (ht109 : ((1 : F) * rho 891) * ((1 : F) * rho 682) = ((1 : F) * rho 892))
    (ht110 : ((1 : F) * rho 890) * ((1 : F) * rho 683) = ((1 : F) * rho 891))
    (ht113 : ((1 : F) * rho 889) * ((1 : F) * rho 686) = ((1 : F) * rho 890))
    (ht115 : ((1 : F) * rho 888) * ((1 : F) * rho 688) = ((1 : F) * rho 889))
    (ht117 : ((1 : F) * rho 887) * ((1 : F) * rho 690) = ((1 : F) * rho 888))
    (ht119 : ((1 : F) * rho 886) * ((1 : F) * rho 692) = ((1 : F) * rho 887))
    (ht120 : ((1 : F) * rho 885) * ((1 : F) * rho 693) = ((1 : F) * rho 886))
    (ht123 : ((1 : F) * rho 884) * ((1 : F) * rho 696) = ((1 : F) * rho 885))
    (ht124 : ((1 : F) * rho 883) * ((1 : F) * rho 697) = ((1 : F) * rho 884))
    (ht126 : ((1 : F) * rho 882) * ((1 : F) * rho 699) = ((1 : F) * rho 883))
    (ht128 : ((1 : F) * rho 881) * ((1 : F) * rho 701) = ((1 : F) * rho 882))
    (ht140 : ((1 : F) * rho 880) * ((1 : F) * rho 713) = ((1 : F) * rho 881))
    (ht141 : ((1 : F) * rho 879) * ((1 : F) * rho 714) = ((1 : F) * rho 880))
    (ht143 : ((1 : F) * rho 878) * ((1 : F) * rho 716) = ((1 : F) * rho 879))
    (ht144 : ((1 : F) * rho 877) * ((1 : F) * rho 717) = ((1 : F) * rho 878))
    (ht145 : ((1 : F) * rho 876) * ((1 : F) * rho 718) = ((1 : F) * rho 877))
    (ht146 : ((1 : F) * rho 875) * ((1 : F) * rho 719) = ((1 : F) * rho 876))
    (ht148 : ((1 : F) * rho 874) * ((1 : F) * rho 721) = ((1 : F) * rho 875))
    (ht149 : ((1 : F) * rho 873) * ((1 : F) * rho 722) = ((1 : F) * rho 874))
    (ht154 : ((1 : F) * rho 872) * ((1 : F) * rho 727) = ((1 : F) * rho 873))
    (ht155 : ((1 : F) * rho 871) * ((1 : F) * rho 728) = ((1 : F) * rho 872))
    (ht156 : ((1 : F) * rho 870) * ((1 : F) * rho 729) = ((1 : F) * rho 871))
    (ht158 : ((1 : F) * rho 869) * ((1 : F) * rho 731) = ((1 : F) * rho 870))
    (ht161 : ((1 : F) * rho 868) * ((1 : F) * rho 734) = ((1 : F) * rho 869))
    (ht162 : ((1 : F) * rho 867) * ((1 : F) * rho 735) = ((1 : F) * rho 868))
    (ht163 : ((1 : F) * rho 866) * ((1 : F) * rho 736) = ((1 : F) * rho 867))
    (ht164 : ((1 : F) * rho 865) * ((1 : F) * rho 737) = ((1 : F) * rho 866))
    (ht168 : ((1 : F) * rho 864) * ((1 : F) * rho 741) = ((1 : F) * rho 865))
    (ht170 : ((1 : F) * rho 863) * ((1 : F) * rho 743) = ((1 : F) * rho 864))
    (ht171 : ((1 : F) * rho 862) * ((1 : F) * rho 744) = ((1 : F) * rho 863))
    (ht174 : ((1 : F) * rho 861) * ((1 : F) * rho 747) = ((1 : F) * rho 862))
    (ht178 : ((1 : F) * rho 860) * ((1 : F) * rho 751) = ((1 : F) * rho 861))
    (ht180 : ((1 : F) * rho 859) * ((1 : F) * rho 753) = ((1 : F) * rho 860))
    (ht181 : ((1 : F) * rho 858) * ((1 : F) * rho 754) = ((1 : F) * rho 859))
    (ht183 : ((1 : F) * rho 857) * ((1 : F) * rho 756) = ((1 : F) * rho 858))
    (ht189 : ((1 : F) * rho 856) * ((1 : F) * rho 762) = ((1 : F) * rho 857))
    (ht190 : ((1 : F) * rho 855) * ((1 : F) * rho 763) = ((1 : F) * rho 856))
    (ht193 : ((1 : F) * rho 854) * ((1 : F) * rho 766) = ((1 : F) * rho 855))
    (ht194 : ((1 : F) * rho 853) * ((1 : F) * rho 767) = ((1 : F) * rho 854))
    (ht196 : ((1 : F) * rho 852) * ((1 : F) * rho 769) = ((1 : F) * rho 853))
    (ht198 : ((1 : F) * rho 851) * ((1 : F) * rho 771) = ((1 : F) * rho 852))
    (ht200 : ((1 : F) * rho 850) * ((1 : F) * rho 773) = ((1 : F) * rho 851))
    (ht202 : ((1 : F) * rho 849) * ((1 : F) * rho 775) = ((1 : F) * rho 850))
    (ht205 : ((1 : F) * rho 848) * ((1 : F) * rho 778) = ((1 : F) * rho 849))
    (ht207 : ((1 : F) * rho 847) * ((1 : F) * rho 780) = ((1 : F) * rho 848))
    (ht210 : ((1 : F) * rho 846) * ((1 : F) * rho 783) = ((1 : F) * rho 847))
    (ht211 : ((1 : F) * rho 845) * ((1 : F) * rho 784) = ((1 : F) * rho 846))
    (ht213 : ((1 : F) * rho 844) * ((1 : F) * rho 786) = ((1 : F) * rho 845))
    (ht217 : ((1 : F) * rho 843) * ((1 : F) * rho 790) = ((1 : F) * rho 844))
    (ht219 : ((1 : F) * rho 842) * ((1 : F) * rho 792) = ((1 : F) * rho 843))
    (ht220 : ((1 : F) * rho 841) * ((1 : F) * rho 793) = ((1 : F) * rho 842))
    (ht223 : ((1 : F) * rho 840) * ((1 : F) * rho 796) = ((1 : F) * rho 841))
    (ht225 : ((1 : F) * rho 839) * ((1 : F) * rho 798) = ((1 : F) * rho 840))
    (ht226 : ((1 : F) * rho 838) * ((1 : F) * rho 799) = ((1 : F) * rho 839))
    (ht227 : ((1 : F) * rho 837) * ((1 : F) * rho 800) = ((1 : F) * rho 838))
    (ht228 : ((1 : F) * rho 836) * ((1 : F) * rho 801) = ((1 : F) * rho 837))
    (ht230 : ((1 : F) * rho 835) * ((1 : F) * rho 803) = ((1 : F) * rho 836))
    (ht232 : ((1 : F) * rho 834) * ((1 : F) * rho 805) = ((1 : F) * rho 835))
    (ht234 : ((1 : F) * rho 833) * ((1 : F) * rho 807) = ((1 : F) * rho 834))
    (ht237 : ((1 : F) * rho 832) * ((1 : F) * rho 810) = ((1 : F) * rho 833))
    (ht238 : ((1 : F) * rho 831) * ((1 : F) * rho 811) = ((1 : F) * rho 832))
    (ht240 : ((1 : F) * rho 830) * ((1 : F) * rho 813) = ((1 : F) * rho 831))
    (ht241 : ((1 : F) * rho 829) * ((1 : F) * rho 814) = ((1 : F) * rho 830))
    (ht243 : ((1 : F) * rho 828) * ((1 : F) * rho 816) = ((1 : F) * rho 829))
    (ht245 : ((1 : F) * rho 827) * ((1 : F) * rho 818) = ((1 : F) * rho 828))
    (ht247 : ((1 : F) * rho 826) * ((1 : F) * rho 820) = ((1 : F) * rho 827))
    (ht249 : ((1 : F) * rho 825) * ((1 : F) * rho 822) = ((1 : F) * rho 826))
    (hrho0 : rho 0 = 1)
    (k : List.Vector F 253 → Prop)
    (hrec : recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => rho (573 + i.val))) = rho 572)
    (hk : k (List.Vector.ofFn (fun i : Fin 253 => rho (573 + i.val))))
    : canonicalFqBitsGadget (rho 572) k := by
  set bits : List.Vector F 253 := List.Vector.ofFn (fun i : Fin 253 => rho (573 + i.val)) with hbits
  have keyB : ∀ (j : ℕ) (hj : j < 253), bits[j]! = rho (573 + j) := by
    intro j hj
    rw [hbits, getElem!_pos _ j (by simpa using hj)]
    conv_lhs => rw [List.Vector.getElem_def]
    simp only [List.Vector.toList_ofFn, List.getElem_ofFn]
  have keyG : ∀ (j : ℕ) (hj : j < 253), bits[j]'hj = rho (573 + j) := by
    intro j hj
    rw [hbits, List.Vector.getElem_def]
    simp only [List.Vector.toList_ofFn, List.getElem_ofFn]
  refine canonicalFqBitsGadget_of_components (rho 572) bits k hrec ?_ ?_
  · apply isVectorBinary_of_booleanity bits
    intro i hi
    show bits[i]! * (1 - bits[i]!) = 0
    rw [keyB i hi]
    interval_cases i
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb0; linear_combination hb0
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb1; linear_combination hb1
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb2; linear_combination hb2
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb3; linear_combination hb3
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb4; linear_combination hb4
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb5; linear_combination hb5
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb6; linear_combination hb6
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb7; linear_combination hb7
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb8; linear_combination hb8
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb9; linear_combination hb9
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb10; linear_combination hb10
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb11; linear_combination hb11
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb12; linear_combination hb12
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb13; linear_combination hb13
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb14; linear_combination hb14
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb15; linear_combination hb15
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb16; linear_combination hb16
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb17; linear_combination hb17
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb18; linear_combination hb18
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb19; linear_combination hb19
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb20; linear_combination hb20
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb21; linear_combination hb21
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb22; linear_combination hb22
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb23; linear_combination hb23
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb24; linear_combination hb24
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb25; linear_combination hb25
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb26; linear_combination hb26
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb27; linear_combination hb27
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb28; linear_combination hb28
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb29; linear_combination hb29
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb30; linear_combination hb30
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb31; linear_combination hb31
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb32; linear_combination hb32
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb33; linear_combination hb33
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb34; linear_combination hb34
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb35; linear_combination hb35
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb36; linear_combination hb36
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb37; linear_combination hb37
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb38; linear_combination hb38
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb39; linear_combination hb39
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb40; linear_combination hb40
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb41; linear_combination hb41
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb42; linear_combination hb42
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb43; linear_combination hb43
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb44; linear_combination hb44
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb45; linear_combination hb45
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb46; linear_combination hb46
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb47; linear_combination hb47
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb48; linear_combination hb48
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb49; linear_combination hb49
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb50; linear_combination hb50
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb51; linear_combination hb51
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb52; linear_combination hb52
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb53; linear_combination hb53
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb54; linear_combination hb54
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb55; linear_combination hb55
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb56; linear_combination hb56
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb57; linear_combination hb57
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb58; linear_combination hb58
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb59; linear_combination hb59
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb60; linear_combination hb60
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb61; linear_combination hb61
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb62; linear_combination hb62
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb63; linear_combination hb63
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb64; linear_combination hb64
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb65; linear_combination hb65
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb66; linear_combination hb66
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb67; linear_combination hb67
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb68; linear_combination hb68
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb69; linear_combination hb69
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb70; linear_combination hb70
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb71; linear_combination hb71
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb72; linear_combination hb72
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb73; linear_combination hb73
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb74; linear_combination hb74
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb75; linear_combination hb75
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb76; linear_combination hb76
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb77; linear_combination hb77
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb78; linear_combination hb78
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb79; linear_combination hb79
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb80; linear_combination hb80
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb81; linear_combination hb81
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb82; linear_combination hb82
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb83; linear_combination hb83
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb84; linear_combination hb84
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb85; linear_combination hb85
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb86; linear_combination hb86
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb87; linear_combination hb87
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb88; linear_combination hb88
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb89; linear_combination hb89
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb90; linear_combination hb90
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb91; linear_combination hb91
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb92; linear_combination hb92
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb93; linear_combination hb93
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb94; linear_combination hb94
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb95; linear_combination hb95
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb96; linear_combination hb96
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb97; linear_combination hb97
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb98; linear_combination hb98
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb99; linear_combination hb99
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb100; linear_combination hb100
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb101; linear_combination hb101
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb102; linear_combination hb102
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb103; linear_combination hb103
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb104; linear_combination hb104
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb105; linear_combination hb105
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb106; linear_combination hb106
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb107; linear_combination hb107
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb108; linear_combination hb108
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb109; linear_combination hb109
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb110; linear_combination hb110
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb111; linear_combination hb111
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb112; linear_combination hb112
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb113; linear_combination hb113
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb114; linear_combination hb114
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb115; linear_combination hb115
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb116; linear_combination hb116
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb117; linear_combination hb117
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb118; linear_combination hb118
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb119; linear_combination hb119
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb120; linear_combination hb120
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb121; linear_combination hb121
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb122; linear_combination hb122
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb123; linear_combination hb123
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb124; linear_combination hb124
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb125; linear_combination hb125
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb126; linear_combination hb126
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb127; linear_combination hb127
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb128; linear_combination hb128
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb129; linear_combination hb129
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb130; linear_combination hb130
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb131; linear_combination hb131
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb132; linear_combination hb132
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb133; linear_combination hb133
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb134; linear_combination hb134
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb135; linear_combination hb135
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb136; linear_combination hb136
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb137; linear_combination hb137
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb138; linear_combination hb138
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb139; linear_combination hb139
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb140; linear_combination hb140
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb141; linear_combination hb141
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb142; linear_combination hb142
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb143; linear_combination hb143
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb144; linear_combination hb144
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb145; linear_combination hb145
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb146; linear_combination hb146
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb147; linear_combination hb147
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb148; linear_combination hb148
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb149; linear_combination hb149
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb150; linear_combination hb150
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb151; linear_combination hb151
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb152; linear_combination hb152
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb153; linear_combination hb153
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb154; linear_combination hb154
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb155; linear_combination hb155
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb156; linear_combination hb156
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb157; linear_combination hb157
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb158; linear_combination hb158
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb159; linear_combination hb159
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb160; linear_combination hb160
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb161; linear_combination hb161
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb162; linear_combination hb162
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb163; linear_combination hb163
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb164; linear_combination hb164
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb165; linear_combination hb165
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb166; linear_combination hb166
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb167; linear_combination hb167
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb168; linear_combination hb168
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb169; linear_combination hb169
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb170; linear_combination hb170
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb171; linear_combination hb171
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb172; linear_combination hb172
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb173; linear_combination hb173
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb174; linear_combination hb174
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb175; linear_combination hb175
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb176; linear_combination hb176
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb177; linear_combination hb177
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb178; linear_combination hb178
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb179; linear_combination hb179
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb180; linear_combination hb180
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb181; linear_combination hb181
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb182; linear_combination hb182
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb183; linear_combination hb183
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb184; linear_combination hb184
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb185; linear_combination hb185
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb186; linear_combination hb186
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb187; linear_combination hb187
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb188; linear_combination hb188
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb189; linear_combination hb189
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb190; linear_combination hb190
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb191; linear_combination hb191
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb192; linear_combination hb192
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb193; linear_combination hb193
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb194; linear_combination hb194
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb195; linear_combination hb195
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb196; linear_combination hb196
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb197; linear_combination hb197
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb198; linear_combination hb198
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb199; linear_combination hb199
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb200; linear_combination hb200
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb201; linear_combination hb201
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb202; linear_combination hb202
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb203; linear_combination hb203
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb204; linear_combination hb204
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb205; linear_combination hb205
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb206; linear_combination hb206
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb207; linear_combination hb207
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb208; linear_combination hb208
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb209; linear_combination hb209
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb210; linear_combination hb210
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb211; linear_combination hb211
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb212; linear_combination hb212
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb213; linear_combination hb213
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb214; linear_combination hb214
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb215; linear_combination hb215
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb216; linear_combination hb216
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb217; linear_combination hb217
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb218; linear_combination hb218
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb219; linear_combination hb219
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb220; linear_combination hb220
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb221; linear_combination hb221
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb222; linear_combination hb222
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb223; linear_combination hb223
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb224; linear_combination hb224
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb225; linear_combination hb225
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb226; linear_combination hb226
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb227; linear_combination hb227
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb228; linear_combination hb228
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb229; linear_combination hb229
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb230; linear_combination hb230
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb231; linear_combination hb231
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb232; linear_combination hb232
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb233; linear_combination hb233
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb234; linear_combination hb234
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb235; linear_combination hb235
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb236; linear_combination hb236
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb237; linear_combination hb237
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb238; linear_combination hb238
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb239; linear_combination hb239
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb240; linear_combination hb240
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb241; linear_combination hb241
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb242; linear_combination hb242
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb243; linear_combination hb243
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb244; linear_combination hb244
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb245; linear_combination hb245
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb246; linear_combination hb246
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb247; linear_combination hb247
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb248; linear_combination hb248
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb249; linear_combination hb249
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb250; linear_combination hb250
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb251; linear_combination hb251
    · simp only [Nat.reduceAdd]; rw [hrho0] at hb252; linear_combination hb252
  · refine chainK_of_obligations bits k hk ?_
    refine block_hobl_of_truethread bits (block2_flag rho) ?_ ?_ ?_ ?_
    · rw [block2_flag, if_pos (by norm_num : (253 : ℕ) ≤ 253)]
    · intro m hm
      interval_cases m
      · have htf : trueFactor bits 0 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 0 = true))]
        rw [htf, show block2_flag rho 0 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 1 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 1 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 1 = true))]
        rw [htf, show block2_flag rho 1 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 2 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 2 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 2 = true))]
        rw [htf, show block2_flag rho 2 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 3 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 3 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 3 = true))]
        rw [htf, show block2_flag rho 3 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 4 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 4 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 4 = true))]
        rw [htf, show block2_flag rho 4 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 5 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 5 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 5 = true))]
        rw [htf, show block2_flag rho 5 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 6 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 6 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 6 = true))]
        rw [htf, show block2_flag rho 6 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 7 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 7 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 7 = true))]
        rw [htf, show block2_flag rho 7 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 8 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 8 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 8 = true))]
        rw [htf, show block2_flag rho 8 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 9 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 9 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 9 = true))]
        rw [htf, show block2_flag rho 9 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 10 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 10 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 10 = true))]
        rw [htf, show block2_flag rho 10 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 11 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 11 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 11 = true))]
        rw [htf, show block2_flag rho 11 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 12 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 12 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 12 = true))]
        rw [htf, show block2_flag rho 12 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 13 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 13 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 13 = true))]
        rw [htf, show block2_flag rho 13 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 14 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 14 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 14 = true))]
        rw [htf, show block2_flag rho 14 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 15 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 15 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 15 = true))]
        rw [htf, show block2_flag rho 15 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 16 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 16 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 16 = true))]
        rw [htf, show block2_flag rho 16 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 17 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 17 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 17 = true))]
        rw [htf, show block2_flag rho 17 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 18 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 18 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 18 = true))]
        rw [htf, show block2_flag rho 18 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 19 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 19 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 19 = true))]
        rw [htf, show block2_flag rho 19 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 20 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 20 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 20 = true))]
        rw [htf, show block2_flag rho 20 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 21 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 21 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 21 = true))]
        rw [htf, show block2_flag rho 21 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 22 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 22 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 22 = true))]
        rw [htf, show block2_flag rho 22 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 23 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 23 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 23 = true))]
        rw [htf, show block2_flag rho 23 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 24 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 24 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 24 = true))]
        rw [htf, show block2_flag rho 24 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 25 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 25 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 25 = true))]
        rw [htf, show block2_flag rho 25 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 26 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 26 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 26 = true))]
        rw [htf, show block2_flag rho 26 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 27 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 27 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 27 = true))]
        rw [htf, show block2_flag rho 27 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 28 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 28 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 28 = true))]
        rw [htf, show block2_flag rho 28 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 29 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 29 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 29 = true))]
        rw [htf, show block2_flag rho 29 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 30 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 30 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 30 = true))]
        rw [htf, show block2_flag rho 30 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 31 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 31 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 31 = true))]
        rw [htf, show block2_flag rho 31 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 32 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 32 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 32 = true))]
        rw [htf, show block2_flag rho 32 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 33 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 33 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 33 = true))]
        rw [htf, show block2_flag rho 33 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 34 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 34 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 34 = true))]
        rw [htf, show block2_flag rho 34 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 35 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 35 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 35 = true))]
        rw [htf, show block2_flag rho 35 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 36 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 36 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 36 = true))]
        rw [htf, show block2_flag rho 36 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 37 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 37 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 37 = true))]
        rw [htf, show block2_flag rho 37 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 38 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 38 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 38 = true))]
        rw [htf, show block2_flag rho 38 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 39 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 39 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 39 = true))]
        rw [htf, show block2_flag rho 39 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 40 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 40 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 40 = true))]
        rw [htf, show block2_flag rho 40 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 41 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 41 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 41 = true))]
        rw [htf, show block2_flag rho 41 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 42 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 42 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 42 = true))]
        rw [htf, show block2_flag rho 42 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 43 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 43 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 43 = true))]
        rw [htf, show block2_flag rho 43 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 44 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 44 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 44 = true))]
        rw [htf, show block2_flag rho 44 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 45 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 45 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 45 = true))]
        rw [htf, show block2_flag rho 45 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 46 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 46 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 46 = true))]
        rw [htf, show block2_flag rho 46 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 47 = rho 911 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 47 = rho 620 := by
          rw [trueFactor, if_pos (by decide : pmBit 47 = true)]; exact keyB 47 (by omega)
        rw [htf, show block2_flag rho 47 = rho 911 from by norm_num [block2_flag, block2_W], show block2_flag rho 48 = rho 910 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht47 | linear_combination -ht47
      · have htf : trueFactor bits 48 = rho 621 := by
          rw [trueFactor, if_pos (by decide : pmBit 48 = true)]; exact keyB 48 (by omega)
        rw [htf, show block2_flag rho 48 = rho 910 from by norm_num [block2_flag, block2_W], show block2_flag rho 49 = rho 909 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht48 | linear_combination -ht48
      · have htf : trueFactor bits 49 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 49 = true))]
        rw [htf, show block2_flag rho 49 = rho 909 from by norm_num [block2_flag, block2_W], show block2_flag rho 50 = rho 909 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 50 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 50 = true))]
        rw [htf, show block2_flag rho 50 = rho 909 from by norm_num [block2_flag, block2_W], show block2_flag rho 51 = rho 909 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 51 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 51 = true))]
        rw [htf, show block2_flag rho 51 = rho 909 from by norm_num [block2_flag, block2_W], show block2_flag rho 52 = rho 909 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 52 = rho 625 := by
          rw [trueFactor, if_pos (by decide : pmBit 52 = true)]; exact keyB 52 (by omega)
        rw [htf, show block2_flag rho 52 = rho 909 from by norm_num [block2_flag, block2_W], show block2_flag rho 53 = rho 908 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht52 | linear_combination -ht52
      · have htf : trueFactor bits 53 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 53 = true))]
        rw [htf, show block2_flag rho 53 = rho 908 from by norm_num [block2_flag, block2_W], show block2_flag rho 54 = rho 908 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 54 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 54 = true))]
        rw [htf, show block2_flag rho 54 = rho 908 from by norm_num [block2_flag, block2_W], show block2_flag rho 55 = rho 908 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 55 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 55 = true))]
        rw [htf, show block2_flag rho 55 = rho 908 from by norm_num [block2_flag, block2_W], show block2_flag rho 56 = rho 908 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 56 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 56 = true))]
        rw [htf, show block2_flag rho 56 = rho 908 from by norm_num [block2_flag, block2_W], show block2_flag rho 57 = rho 908 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 57 = rho 630 := by
          rw [trueFactor, if_pos (by decide : pmBit 57 = true)]; exact keyB 57 (by omega)
        rw [htf, show block2_flag rho 57 = rho 908 from by norm_num [block2_flag, block2_W], show block2_flag rho 58 = rho 907 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht57 | linear_combination -ht57
      · have htf : trueFactor bits 58 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 58 = true))]
        rw [htf, show block2_flag rho 58 = rho 907 from by norm_num [block2_flag, block2_W], show block2_flag rho 59 = rho 907 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 59 = rho 632 := by
          rw [trueFactor, if_pos (by decide : pmBit 59 = true)]; exact keyB 59 (by omega)
        rw [htf, show block2_flag rho 59 = rho 907 from by norm_num [block2_flag, block2_W], show block2_flag rho 60 = rho 906 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht59 | linear_combination -ht59
      · have htf : trueFactor bits 60 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 60 = true))]
        rw [htf, show block2_flag rho 60 = rho 906 from by norm_num [block2_flag, block2_W], show block2_flag rho 61 = rho 906 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 61 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 61 = true))]
        rw [htf, show block2_flag rho 61 = rho 906 from by norm_num [block2_flag, block2_W], show block2_flag rho 62 = rho 906 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 62 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 62 = true))]
        rw [htf, show block2_flag rho 62 = rho 906 from by norm_num [block2_flag, block2_W], show block2_flag rho 63 = rho 906 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 63 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 63 = true))]
        rw [htf, show block2_flag rho 63 = rho 906 from by norm_num [block2_flag, block2_W], show block2_flag rho 64 = rho 906 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 64 = rho 637 := by
          rw [trueFactor, if_pos (by decide : pmBit 64 = true)]; exact keyB 64 (by omega)
        rw [htf, show block2_flag rho 64 = rho 906 from by norm_num [block2_flag, block2_W], show block2_flag rho 65 = rho 905 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht64 | linear_combination -ht64
      · have htf : trueFactor bits 65 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 65 = true))]
        rw [htf, show block2_flag rho 65 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 66 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 66 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 66 = true))]
        rw [htf, show block2_flag rho 66 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 67 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 67 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 67 = true))]
        rw [htf, show block2_flag rho 67 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 68 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 68 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 68 = true))]
        rw [htf, show block2_flag rho 68 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 69 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 69 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 69 = true))]
        rw [htf, show block2_flag rho 69 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 70 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 70 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 70 = true))]
        rw [htf, show block2_flag rho 70 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 71 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 71 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 71 = true))]
        rw [htf, show block2_flag rho 71 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 72 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 72 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 72 = true))]
        rw [htf, show block2_flag rho 72 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 73 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 73 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 73 = true))]
        rw [htf, show block2_flag rho 73 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 74 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 74 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 74 = true))]
        rw [htf, show block2_flag rho 74 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 75 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 75 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 75 = true))]
        rw [htf, show block2_flag rho 75 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 76 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 76 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 76 = true))]
        rw [htf, show block2_flag rho 76 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 77 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 77 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 77 = true))]
        rw [htf, show block2_flag rho 77 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 78 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 78 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 78 = true))]
        rw [htf, show block2_flag rho 78 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 79 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 79 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 79 = true))]
        rw [htf, show block2_flag rho 79 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 80 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 80 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 80 = true))]
        rw [htf, show block2_flag rho 80 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 81 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 81 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 81 = true))]
        rw [htf, show block2_flag rho 81 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 82 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 82 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 82 = true))]
        rw [htf, show block2_flag rho 82 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 83 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 83 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 83 = true))]
        rw [htf, show block2_flag rho 83 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 84 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 84 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 84 = true))]
        rw [htf, show block2_flag rho 84 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 85 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 85 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 85 = true))]
        rw [htf, show block2_flag rho 85 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 86 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 86 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 86 = true))]
        rw [htf, show block2_flag rho 86 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 87 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 87 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 87 = true))]
        rw [htf, show block2_flag rho 87 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 88 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 88 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 88 = true))]
        rw [htf, show block2_flag rho 88 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 89 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 89 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 89 = true))]
        rw [htf, show block2_flag rho 89 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 90 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 90 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 90 = true))]
        rw [htf, show block2_flag rho 90 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 91 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 91 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 91 = true))]
        rw [htf, show block2_flag rho 91 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 92 = rho 905 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 92 = rho 665 := by
          rw [trueFactor, if_pos (by decide : pmBit 92 = true)]; exact keyB 92 (by omega)
        rw [htf, show block2_flag rho 92 = rho 905 from by norm_num [block2_flag, block2_W], show block2_flag rho 93 = rho 904 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht92 | linear_combination -ht92
      · have htf : trueFactor bits 93 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 93 = true))]
        rw [htf, show block2_flag rho 93 = rho 904 from by norm_num [block2_flag, block2_W], show block2_flag rho 94 = rho 904 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 94 = rho 667 := by
          rw [trueFactor, if_pos (by decide : pmBit 94 = true)]; exact keyB 94 (by omega)
        rw [htf, show block2_flag rho 94 = rho 904 from by norm_num [block2_flag, block2_W], show block2_flag rho 95 = rho 903 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht94 | linear_combination -ht94
      · have htf : trueFactor bits 95 = rho 668 := by
          rw [trueFactor, if_pos (by decide : pmBit 95 = true)]; exact keyB 95 (by omega)
        rw [htf, show block2_flag rho 95 = rho 903 from by norm_num [block2_flag, block2_W], show block2_flag rho 96 = rho 902 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht95 | linear_combination -ht95
      · have htf : trueFactor bits 96 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 96 = true))]
        rw [htf, show block2_flag rho 96 = rho 902 from by norm_num [block2_flag, block2_W], show block2_flag rho 97 = rho 902 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 97 = rho 670 := by
          rw [trueFactor, if_pos (by decide : pmBit 97 = true)]; exact keyB 97 (by omega)
        rw [htf, show block2_flag rho 97 = rho 902 from by norm_num [block2_flag, block2_W], show block2_flag rho 98 = rho 901 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht97 | linear_combination -ht97
      · have htf : trueFactor bits 98 = rho 671 := by
          rw [trueFactor, if_pos (by decide : pmBit 98 = true)]; exact keyB 98 (by omega)
        rw [htf, show block2_flag rho 98 = rho 901 from by norm_num [block2_flag, block2_W], show block2_flag rho 99 = rho 900 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht98 | linear_combination -ht98
      · have htf : trueFactor bits 99 = rho 672 := by
          rw [trueFactor, if_pos (by decide : pmBit 99 = true)]; exact keyB 99 (by omega)
        rw [htf, show block2_flag rho 99 = rho 900 from by norm_num [block2_flag, block2_W], show block2_flag rho 100 = rho 899 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht99 | linear_combination -ht99
      · have htf : trueFactor bits 100 = rho 673 := by
          rw [trueFactor, if_pos (by decide : pmBit 100 = true)]; exact keyB 100 (by omega)
        rw [htf, show block2_flag rho 100 = rho 899 from by norm_num [block2_flag, block2_W], show block2_flag rho 101 = rho 898 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht100 | linear_combination -ht100
      · have htf : trueFactor bits 101 = rho 674 := by
          rw [trueFactor, if_pos (by decide : pmBit 101 = true)]; exact keyB 101 (by omega)
        rw [htf, show block2_flag rho 101 = rho 898 from by norm_num [block2_flag, block2_W], show block2_flag rho 102 = rho 897 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht101 | linear_combination -ht101
      · have htf : trueFactor bits 102 = rho 675 := by
          rw [trueFactor, if_pos (by decide : pmBit 102 = true)]; exact keyB 102 (by omega)
        rw [htf, show block2_flag rho 102 = rho 897 from by norm_num [block2_flag, block2_W], show block2_flag rho 103 = rho 896 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht102 | linear_combination -ht102
      · have htf : trueFactor bits 103 = rho 676 := by
          rw [trueFactor, if_pos (by decide : pmBit 103 = true)]; exact keyB 103 (by omega)
        rw [htf, show block2_flag rho 103 = rho 896 from by norm_num [block2_flag, block2_W], show block2_flag rho 104 = rho 895 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht103 | linear_combination -ht103
      · have htf : trueFactor bits 104 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 104 = true))]
        rw [htf, show block2_flag rho 104 = rho 895 from by norm_num [block2_flag, block2_W], show block2_flag rho 105 = rho 895 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 105 = rho 678 := by
          rw [trueFactor, if_pos (by decide : pmBit 105 = true)]; exact keyB 105 (by omega)
        rw [htf, show block2_flag rho 105 = rho 895 from by norm_num [block2_flag, block2_W], show block2_flag rho 106 = rho 894 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht105 | linear_combination -ht105
      · have htf : trueFactor bits 106 = rho 679 := by
          rw [trueFactor, if_pos (by decide : pmBit 106 = true)]; exact keyB 106 (by omega)
        rw [htf, show block2_flag rho 106 = rho 894 from by norm_num [block2_flag, block2_W], show block2_flag rho 107 = rho 893 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht106 | linear_combination -ht106
      · have htf : trueFactor bits 107 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 107 = true))]
        rw [htf, show block2_flag rho 107 = rho 893 from by norm_num [block2_flag, block2_W], show block2_flag rho 108 = rho 893 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 108 = rho 681 := by
          rw [trueFactor, if_pos (by decide : pmBit 108 = true)]; exact keyB 108 (by omega)
        rw [htf, show block2_flag rho 108 = rho 893 from by norm_num [block2_flag, block2_W], show block2_flag rho 109 = rho 892 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht108 | linear_combination -ht108
      · have htf : trueFactor bits 109 = rho 682 := by
          rw [trueFactor, if_pos (by decide : pmBit 109 = true)]; exact keyB 109 (by omega)
        rw [htf, show block2_flag rho 109 = rho 892 from by norm_num [block2_flag, block2_W], show block2_flag rho 110 = rho 891 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht109 | linear_combination -ht109
      · have htf : trueFactor bits 110 = rho 683 := by
          rw [trueFactor, if_pos (by decide : pmBit 110 = true)]; exact keyB 110 (by omega)
        rw [htf, show block2_flag rho 110 = rho 891 from by norm_num [block2_flag, block2_W], show block2_flag rho 111 = rho 890 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht110 | linear_combination -ht110
      · have htf : trueFactor bits 111 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 111 = true))]
        rw [htf, show block2_flag rho 111 = rho 890 from by norm_num [block2_flag, block2_W], show block2_flag rho 112 = rho 890 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 112 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 112 = true))]
        rw [htf, show block2_flag rho 112 = rho 890 from by norm_num [block2_flag, block2_W], show block2_flag rho 113 = rho 890 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 113 = rho 686 := by
          rw [trueFactor, if_pos (by decide : pmBit 113 = true)]; exact keyB 113 (by omega)
        rw [htf, show block2_flag rho 113 = rho 890 from by norm_num [block2_flag, block2_W], show block2_flag rho 114 = rho 889 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht113 | linear_combination -ht113
      · have htf : trueFactor bits 114 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 114 = true))]
        rw [htf, show block2_flag rho 114 = rho 889 from by norm_num [block2_flag, block2_W], show block2_flag rho 115 = rho 889 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 115 = rho 688 := by
          rw [trueFactor, if_pos (by decide : pmBit 115 = true)]; exact keyB 115 (by omega)
        rw [htf, show block2_flag rho 115 = rho 889 from by norm_num [block2_flag, block2_W], show block2_flag rho 116 = rho 888 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht115 | linear_combination -ht115
      · have htf : trueFactor bits 116 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 116 = true))]
        rw [htf, show block2_flag rho 116 = rho 888 from by norm_num [block2_flag, block2_W], show block2_flag rho 117 = rho 888 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 117 = rho 690 := by
          rw [trueFactor, if_pos (by decide : pmBit 117 = true)]; exact keyB 117 (by omega)
        rw [htf, show block2_flag rho 117 = rho 888 from by norm_num [block2_flag, block2_W], show block2_flag rho 118 = rho 887 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht117 | linear_combination -ht117
      · have htf : trueFactor bits 118 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 118 = true))]
        rw [htf, show block2_flag rho 118 = rho 887 from by norm_num [block2_flag, block2_W], show block2_flag rho 119 = rho 887 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 119 = rho 692 := by
          rw [trueFactor, if_pos (by decide : pmBit 119 = true)]; exact keyB 119 (by omega)
        rw [htf, show block2_flag rho 119 = rho 887 from by norm_num [block2_flag, block2_W], show block2_flag rho 120 = rho 886 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht119 | linear_combination -ht119
      · have htf : trueFactor bits 120 = rho 693 := by
          rw [trueFactor, if_pos (by decide : pmBit 120 = true)]; exact keyB 120 (by omega)
        rw [htf, show block2_flag rho 120 = rho 886 from by norm_num [block2_flag, block2_W], show block2_flag rho 121 = rho 885 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht120 | linear_combination -ht120
      · have htf : trueFactor bits 121 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 121 = true))]
        rw [htf, show block2_flag rho 121 = rho 885 from by norm_num [block2_flag, block2_W], show block2_flag rho 122 = rho 885 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 122 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 122 = true))]
        rw [htf, show block2_flag rho 122 = rho 885 from by norm_num [block2_flag, block2_W], show block2_flag rho 123 = rho 885 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 123 = rho 696 := by
          rw [trueFactor, if_pos (by decide : pmBit 123 = true)]; exact keyB 123 (by omega)
        rw [htf, show block2_flag rho 123 = rho 885 from by norm_num [block2_flag, block2_W], show block2_flag rho 124 = rho 884 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht123 | linear_combination -ht123
      · have htf : trueFactor bits 124 = rho 697 := by
          rw [trueFactor, if_pos (by decide : pmBit 124 = true)]; exact keyB 124 (by omega)
        rw [htf, show block2_flag rho 124 = rho 884 from by norm_num [block2_flag, block2_W], show block2_flag rho 125 = rho 883 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht124 | linear_combination -ht124
      · have htf : trueFactor bits 125 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 125 = true))]
        rw [htf, show block2_flag rho 125 = rho 883 from by norm_num [block2_flag, block2_W], show block2_flag rho 126 = rho 883 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 126 = rho 699 := by
          rw [trueFactor, if_pos (by decide : pmBit 126 = true)]; exact keyB 126 (by omega)
        rw [htf, show block2_flag rho 126 = rho 883 from by norm_num [block2_flag, block2_W], show block2_flag rho 127 = rho 882 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht126 | linear_combination -ht126
      · have htf : trueFactor bits 127 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 127 = true))]
        rw [htf, show block2_flag rho 127 = rho 882 from by norm_num [block2_flag, block2_W], show block2_flag rho 128 = rho 882 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 128 = rho 701 := by
          rw [trueFactor, if_pos (by decide : pmBit 128 = true)]; exact keyB 128 (by omega)
        rw [htf, show block2_flag rho 128 = rho 882 from by norm_num [block2_flag, block2_W], show block2_flag rho 129 = rho 881 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht128 | linear_combination -ht128
      · have htf : trueFactor bits 129 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 129 = true))]
        rw [htf, show block2_flag rho 129 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 130 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 130 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 130 = true))]
        rw [htf, show block2_flag rho 130 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 131 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 131 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 131 = true))]
        rw [htf, show block2_flag rho 131 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 132 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 132 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 132 = true))]
        rw [htf, show block2_flag rho 132 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 133 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 133 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 133 = true))]
        rw [htf, show block2_flag rho 133 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 134 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 134 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 134 = true))]
        rw [htf, show block2_flag rho 134 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 135 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 135 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 135 = true))]
        rw [htf, show block2_flag rho 135 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 136 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 136 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 136 = true))]
        rw [htf, show block2_flag rho 136 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 137 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 137 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 137 = true))]
        rw [htf, show block2_flag rho 137 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 138 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 138 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 138 = true))]
        rw [htf, show block2_flag rho 138 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 139 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 139 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 139 = true))]
        rw [htf, show block2_flag rho 139 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 140 = rho 881 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 140 = rho 713 := by
          rw [trueFactor, if_pos (by decide : pmBit 140 = true)]; exact keyB 140 (by omega)
        rw [htf, show block2_flag rho 140 = rho 881 from by norm_num [block2_flag, block2_W], show block2_flag rho 141 = rho 880 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht140 | linear_combination -ht140
      · have htf : trueFactor bits 141 = rho 714 := by
          rw [trueFactor, if_pos (by decide : pmBit 141 = true)]; exact keyB 141 (by omega)
        rw [htf, show block2_flag rho 141 = rho 880 from by norm_num [block2_flag, block2_W], show block2_flag rho 142 = rho 879 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht141 | linear_combination -ht141
      · have htf : trueFactor bits 142 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 142 = true))]
        rw [htf, show block2_flag rho 142 = rho 879 from by norm_num [block2_flag, block2_W], show block2_flag rho 143 = rho 879 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 143 = rho 716 := by
          rw [trueFactor, if_pos (by decide : pmBit 143 = true)]; exact keyB 143 (by omega)
        rw [htf, show block2_flag rho 143 = rho 879 from by norm_num [block2_flag, block2_W], show block2_flag rho 144 = rho 878 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht143 | linear_combination -ht143
      · have htf : trueFactor bits 144 = rho 717 := by
          rw [trueFactor, if_pos (by decide : pmBit 144 = true)]; exact keyB 144 (by omega)
        rw [htf, show block2_flag rho 144 = rho 878 from by norm_num [block2_flag, block2_W], show block2_flag rho 145 = rho 877 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht144 | linear_combination -ht144
      · have htf : trueFactor bits 145 = rho 718 := by
          rw [trueFactor, if_pos (by decide : pmBit 145 = true)]; exact keyB 145 (by omega)
        rw [htf, show block2_flag rho 145 = rho 877 from by norm_num [block2_flag, block2_W], show block2_flag rho 146 = rho 876 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht145 | linear_combination -ht145
      · have htf : trueFactor bits 146 = rho 719 := by
          rw [trueFactor, if_pos (by decide : pmBit 146 = true)]; exact keyB 146 (by omega)
        rw [htf, show block2_flag rho 146 = rho 876 from by norm_num [block2_flag, block2_W], show block2_flag rho 147 = rho 875 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht146 | linear_combination -ht146
      · have htf : trueFactor bits 147 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 147 = true))]
        rw [htf, show block2_flag rho 147 = rho 875 from by norm_num [block2_flag, block2_W], show block2_flag rho 148 = rho 875 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 148 = rho 721 := by
          rw [trueFactor, if_pos (by decide : pmBit 148 = true)]; exact keyB 148 (by omega)
        rw [htf, show block2_flag rho 148 = rho 875 from by norm_num [block2_flag, block2_W], show block2_flag rho 149 = rho 874 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht148 | linear_combination -ht148
      · have htf : trueFactor bits 149 = rho 722 := by
          rw [trueFactor, if_pos (by decide : pmBit 149 = true)]; exact keyB 149 (by omega)
        rw [htf, show block2_flag rho 149 = rho 874 from by norm_num [block2_flag, block2_W], show block2_flag rho 150 = rho 873 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht149 | linear_combination -ht149
      · have htf : trueFactor bits 150 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 150 = true))]
        rw [htf, show block2_flag rho 150 = rho 873 from by norm_num [block2_flag, block2_W], show block2_flag rho 151 = rho 873 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 151 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 151 = true))]
        rw [htf, show block2_flag rho 151 = rho 873 from by norm_num [block2_flag, block2_W], show block2_flag rho 152 = rho 873 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 152 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 152 = true))]
        rw [htf, show block2_flag rho 152 = rho 873 from by norm_num [block2_flag, block2_W], show block2_flag rho 153 = rho 873 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 153 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 153 = true))]
        rw [htf, show block2_flag rho 153 = rho 873 from by norm_num [block2_flag, block2_W], show block2_flag rho 154 = rho 873 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 154 = rho 727 := by
          rw [trueFactor, if_pos (by decide : pmBit 154 = true)]; exact keyB 154 (by omega)
        rw [htf, show block2_flag rho 154 = rho 873 from by norm_num [block2_flag, block2_W], show block2_flag rho 155 = rho 872 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht154 | linear_combination -ht154
      · have htf : trueFactor bits 155 = rho 728 := by
          rw [trueFactor, if_pos (by decide : pmBit 155 = true)]; exact keyB 155 (by omega)
        rw [htf, show block2_flag rho 155 = rho 872 from by norm_num [block2_flag, block2_W], show block2_flag rho 156 = rho 871 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht155 | linear_combination -ht155
      · have htf : trueFactor bits 156 = rho 729 := by
          rw [trueFactor, if_pos (by decide : pmBit 156 = true)]; exact keyB 156 (by omega)
        rw [htf, show block2_flag rho 156 = rho 871 from by norm_num [block2_flag, block2_W], show block2_flag rho 157 = rho 870 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht156 | linear_combination -ht156
      · have htf : trueFactor bits 157 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 157 = true))]
        rw [htf, show block2_flag rho 157 = rho 870 from by norm_num [block2_flag, block2_W], show block2_flag rho 158 = rho 870 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 158 = rho 731 := by
          rw [trueFactor, if_pos (by decide : pmBit 158 = true)]; exact keyB 158 (by omega)
        rw [htf, show block2_flag rho 158 = rho 870 from by norm_num [block2_flag, block2_W], show block2_flag rho 159 = rho 869 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht158 | linear_combination -ht158
      · have htf : trueFactor bits 159 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 159 = true))]
        rw [htf, show block2_flag rho 159 = rho 869 from by norm_num [block2_flag, block2_W], show block2_flag rho 160 = rho 869 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 160 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 160 = true))]
        rw [htf, show block2_flag rho 160 = rho 869 from by norm_num [block2_flag, block2_W], show block2_flag rho 161 = rho 869 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 161 = rho 734 := by
          rw [trueFactor, if_pos (by decide : pmBit 161 = true)]; exact keyB 161 (by omega)
        rw [htf, show block2_flag rho 161 = rho 869 from by norm_num [block2_flag, block2_W], show block2_flag rho 162 = rho 868 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht161 | linear_combination -ht161
      · have htf : trueFactor bits 162 = rho 735 := by
          rw [trueFactor, if_pos (by decide : pmBit 162 = true)]; exact keyB 162 (by omega)
        rw [htf, show block2_flag rho 162 = rho 868 from by norm_num [block2_flag, block2_W], show block2_flag rho 163 = rho 867 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht162 | linear_combination -ht162
      · have htf : trueFactor bits 163 = rho 736 := by
          rw [trueFactor, if_pos (by decide : pmBit 163 = true)]; exact keyB 163 (by omega)
        rw [htf, show block2_flag rho 163 = rho 867 from by norm_num [block2_flag, block2_W], show block2_flag rho 164 = rho 866 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht163 | linear_combination -ht163
      · have htf : trueFactor bits 164 = rho 737 := by
          rw [trueFactor, if_pos (by decide : pmBit 164 = true)]; exact keyB 164 (by omega)
        rw [htf, show block2_flag rho 164 = rho 866 from by norm_num [block2_flag, block2_W], show block2_flag rho 165 = rho 865 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht164 | linear_combination -ht164
      · have htf : trueFactor bits 165 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 165 = true))]
        rw [htf, show block2_flag rho 165 = rho 865 from by norm_num [block2_flag, block2_W], show block2_flag rho 166 = rho 865 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 166 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 166 = true))]
        rw [htf, show block2_flag rho 166 = rho 865 from by norm_num [block2_flag, block2_W], show block2_flag rho 167 = rho 865 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 167 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 167 = true))]
        rw [htf, show block2_flag rho 167 = rho 865 from by norm_num [block2_flag, block2_W], show block2_flag rho 168 = rho 865 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 168 = rho 741 := by
          rw [trueFactor, if_pos (by decide : pmBit 168 = true)]; exact keyB 168 (by omega)
        rw [htf, show block2_flag rho 168 = rho 865 from by norm_num [block2_flag, block2_W], show block2_flag rho 169 = rho 864 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht168 | linear_combination -ht168
      · have htf : trueFactor bits 169 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 169 = true))]
        rw [htf, show block2_flag rho 169 = rho 864 from by norm_num [block2_flag, block2_W], show block2_flag rho 170 = rho 864 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 170 = rho 743 := by
          rw [trueFactor, if_pos (by decide : pmBit 170 = true)]; exact keyB 170 (by omega)
        rw [htf, show block2_flag rho 170 = rho 864 from by norm_num [block2_flag, block2_W], show block2_flag rho 171 = rho 863 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht170 | linear_combination -ht170
      · have htf : trueFactor bits 171 = rho 744 := by
          rw [trueFactor, if_pos (by decide : pmBit 171 = true)]; exact keyB 171 (by omega)
        rw [htf, show block2_flag rho 171 = rho 863 from by norm_num [block2_flag, block2_W], show block2_flag rho 172 = rho 862 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht171 | linear_combination -ht171
      · have htf : trueFactor bits 172 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 172 = true))]
        rw [htf, show block2_flag rho 172 = rho 862 from by norm_num [block2_flag, block2_W], show block2_flag rho 173 = rho 862 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 173 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 173 = true))]
        rw [htf, show block2_flag rho 173 = rho 862 from by norm_num [block2_flag, block2_W], show block2_flag rho 174 = rho 862 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 174 = rho 747 := by
          rw [trueFactor, if_pos (by decide : pmBit 174 = true)]; exact keyB 174 (by omega)
        rw [htf, show block2_flag rho 174 = rho 862 from by norm_num [block2_flag, block2_W], show block2_flag rho 175 = rho 861 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht174 | linear_combination -ht174
      · have htf : trueFactor bits 175 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 175 = true))]
        rw [htf, show block2_flag rho 175 = rho 861 from by norm_num [block2_flag, block2_W], show block2_flag rho 176 = rho 861 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 176 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 176 = true))]
        rw [htf, show block2_flag rho 176 = rho 861 from by norm_num [block2_flag, block2_W], show block2_flag rho 177 = rho 861 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 177 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 177 = true))]
        rw [htf, show block2_flag rho 177 = rho 861 from by norm_num [block2_flag, block2_W], show block2_flag rho 178 = rho 861 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 178 = rho 751 := by
          rw [trueFactor, if_pos (by decide : pmBit 178 = true)]; exact keyB 178 (by omega)
        rw [htf, show block2_flag rho 178 = rho 861 from by norm_num [block2_flag, block2_W], show block2_flag rho 179 = rho 860 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht178 | linear_combination -ht178
      · have htf : trueFactor bits 179 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 179 = true))]
        rw [htf, show block2_flag rho 179 = rho 860 from by norm_num [block2_flag, block2_W], show block2_flag rho 180 = rho 860 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 180 = rho 753 := by
          rw [trueFactor, if_pos (by decide : pmBit 180 = true)]; exact keyB 180 (by omega)
        rw [htf, show block2_flag rho 180 = rho 860 from by norm_num [block2_flag, block2_W], show block2_flag rho 181 = rho 859 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht180 | linear_combination -ht180
      · have htf : trueFactor bits 181 = rho 754 := by
          rw [trueFactor, if_pos (by decide : pmBit 181 = true)]; exact keyB 181 (by omega)
        rw [htf, show block2_flag rho 181 = rho 859 from by norm_num [block2_flag, block2_W], show block2_flag rho 182 = rho 858 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht181 | linear_combination -ht181
      · have htf : trueFactor bits 182 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 182 = true))]
        rw [htf, show block2_flag rho 182 = rho 858 from by norm_num [block2_flag, block2_W], show block2_flag rho 183 = rho 858 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 183 = rho 756 := by
          rw [trueFactor, if_pos (by decide : pmBit 183 = true)]; exact keyB 183 (by omega)
        rw [htf, show block2_flag rho 183 = rho 858 from by norm_num [block2_flag, block2_W], show block2_flag rho 184 = rho 857 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht183 | linear_combination -ht183
      · have htf : trueFactor bits 184 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 184 = true))]
        rw [htf, show block2_flag rho 184 = rho 857 from by norm_num [block2_flag, block2_W], show block2_flag rho 185 = rho 857 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 185 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 185 = true))]
        rw [htf, show block2_flag rho 185 = rho 857 from by norm_num [block2_flag, block2_W], show block2_flag rho 186 = rho 857 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 186 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 186 = true))]
        rw [htf, show block2_flag rho 186 = rho 857 from by norm_num [block2_flag, block2_W], show block2_flag rho 187 = rho 857 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 187 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 187 = true))]
        rw [htf, show block2_flag rho 187 = rho 857 from by norm_num [block2_flag, block2_W], show block2_flag rho 188 = rho 857 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 188 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 188 = true))]
        rw [htf, show block2_flag rho 188 = rho 857 from by norm_num [block2_flag, block2_W], show block2_flag rho 189 = rho 857 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 189 = rho 762 := by
          rw [trueFactor, if_pos (by decide : pmBit 189 = true)]; exact keyB 189 (by omega)
        rw [htf, show block2_flag rho 189 = rho 857 from by norm_num [block2_flag, block2_W], show block2_flag rho 190 = rho 856 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht189 | linear_combination -ht189
      · have htf : trueFactor bits 190 = rho 763 := by
          rw [trueFactor, if_pos (by decide : pmBit 190 = true)]; exact keyB 190 (by omega)
        rw [htf, show block2_flag rho 190 = rho 856 from by norm_num [block2_flag, block2_W], show block2_flag rho 191 = rho 855 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht190 | linear_combination -ht190
      · have htf : trueFactor bits 191 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 191 = true))]
        rw [htf, show block2_flag rho 191 = rho 855 from by norm_num [block2_flag, block2_W], show block2_flag rho 192 = rho 855 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 192 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 192 = true))]
        rw [htf, show block2_flag rho 192 = rho 855 from by norm_num [block2_flag, block2_W], show block2_flag rho 193 = rho 855 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 193 = rho 766 := by
          rw [trueFactor, if_pos (by decide : pmBit 193 = true)]; exact keyB 193 (by omega)
        rw [htf, show block2_flag rho 193 = rho 855 from by norm_num [block2_flag, block2_W], show block2_flag rho 194 = rho 854 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht193 | linear_combination -ht193
      · have htf : trueFactor bits 194 = rho 767 := by
          rw [trueFactor, if_pos (by decide : pmBit 194 = true)]; exact keyB 194 (by omega)
        rw [htf, show block2_flag rho 194 = rho 854 from by norm_num [block2_flag, block2_W], show block2_flag rho 195 = rho 853 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht194 | linear_combination -ht194
      · have htf : trueFactor bits 195 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 195 = true))]
        rw [htf, show block2_flag rho 195 = rho 853 from by norm_num [block2_flag, block2_W], show block2_flag rho 196 = rho 853 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 196 = rho 769 := by
          rw [trueFactor, if_pos (by decide : pmBit 196 = true)]; exact keyB 196 (by omega)
        rw [htf, show block2_flag rho 196 = rho 853 from by norm_num [block2_flag, block2_W], show block2_flag rho 197 = rho 852 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht196 | linear_combination -ht196
      · have htf : trueFactor bits 197 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 197 = true))]
        rw [htf, show block2_flag rho 197 = rho 852 from by norm_num [block2_flag, block2_W], show block2_flag rho 198 = rho 852 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 198 = rho 771 := by
          rw [trueFactor, if_pos (by decide : pmBit 198 = true)]; exact keyB 198 (by omega)
        rw [htf, show block2_flag rho 198 = rho 852 from by norm_num [block2_flag, block2_W], show block2_flag rho 199 = rho 851 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht198 | linear_combination -ht198
      · have htf : trueFactor bits 199 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 199 = true))]
        rw [htf, show block2_flag rho 199 = rho 851 from by norm_num [block2_flag, block2_W], show block2_flag rho 200 = rho 851 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 200 = rho 773 := by
          rw [trueFactor, if_pos (by decide : pmBit 200 = true)]; exact keyB 200 (by omega)
        rw [htf, show block2_flag rho 200 = rho 851 from by norm_num [block2_flag, block2_W], show block2_flag rho 201 = rho 850 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht200 | linear_combination -ht200
      · have htf : trueFactor bits 201 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 201 = true))]
        rw [htf, show block2_flag rho 201 = rho 850 from by norm_num [block2_flag, block2_W], show block2_flag rho 202 = rho 850 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 202 = rho 775 := by
          rw [trueFactor, if_pos (by decide : pmBit 202 = true)]; exact keyB 202 (by omega)
        rw [htf, show block2_flag rho 202 = rho 850 from by norm_num [block2_flag, block2_W], show block2_flag rho 203 = rho 849 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht202 | linear_combination -ht202
      · have htf : trueFactor bits 203 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 203 = true))]
        rw [htf, show block2_flag rho 203 = rho 849 from by norm_num [block2_flag, block2_W], show block2_flag rho 204 = rho 849 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 204 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 204 = true))]
        rw [htf, show block2_flag rho 204 = rho 849 from by norm_num [block2_flag, block2_W], show block2_flag rho 205 = rho 849 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 205 = rho 778 := by
          rw [trueFactor, if_pos (by decide : pmBit 205 = true)]; exact keyB 205 (by omega)
        rw [htf, show block2_flag rho 205 = rho 849 from by norm_num [block2_flag, block2_W], show block2_flag rho 206 = rho 848 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht205 | linear_combination -ht205
      · have htf : trueFactor bits 206 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 206 = true))]
        rw [htf, show block2_flag rho 206 = rho 848 from by norm_num [block2_flag, block2_W], show block2_flag rho 207 = rho 848 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 207 = rho 780 := by
          rw [trueFactor, if_pos (by decide : pmBit 207 = true)]; exact keyB 207 (by omega)
        rw [htf, show block2_flag rho 207 = rho 848 from by norm_num [block2_flag, block2_W], show block2_flag rho 208 = rho 847 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht207 | linear_combination -ht207
      · have htf : trueFactor bits 208 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 208 = true))]
        rw [htf, show block2_flag rho 208 = rho 847 from by norm_num [block2_flag, block2_W], show block2_flag rho 209 = rho 847 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 209 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 209 = true))]
        rw [htf, show block2_flag rho 209 = rho 847 from by norm_num [block2_flag, block2_W], show block2_flag rho 210 = rho 847 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 210 = rho 783 := by
          rw [trueFactor, if_pos (by decide : pmBit 210 = true)]; exact keyB 210 (by omega)
        rw [htf, show block2_flag rho 210 = rho 847 from by norm_num [block2_flag, block2_W], show block2_flag rho 211 = rho 846 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht210 | linear_combination -ht210
      · have htf : trueFactor bits 211 = rho 784 := by
          rw [trueFactor, if_pos (by decide : pmBit 211 = true)]; exact keyB 211 (by omega)
        rw [htf, show block2_flag rho 211 = rho 846 from by norm_num [block2_flag, block2_W], show block2_flag rho 212 = rho 845 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht211 | linear_combination -ht211
      · have htf : trueFactor bits 212 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 212 = true))]
        rw [htf, show block2_flag rho 212 = rho 845 from by norm_num [block2_flag, block2_W], show block2_flag rho 213 = rho 845 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 213 = rho 786 := by
          rw [trueFactor, if_pos (by decide : pmBit 213 = true)]; exact keyB 213 (by omega)
        rw [htf, show block2_flag rho 213 = rho 845 from by norm_num [block2_flag, block2_W], show block2_flag rho 214 = rho 844 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht213 | linear_combination -ht213
      · have htf : trueFactor bits 214 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 214 = true))]
        rw [htf, show block2_flag rho 214 = rho 844 from by norm_num [block2_flag, block2_W], show block2_flag rho 215 = rho 844 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 215 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 215 = true))]
        rw [htf, show block2_flag rho 215 = rho 844 from by norm_num [block2_flag, block2_W], show block2_flag rho 216 = rho 844 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 216 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 216 = true))]
        rw [htf, show block2_flag rho 216 = rho 844 from by norm_num [block2_flag, block2_W], show block2_flag rho 217 = rho 844 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 217 = rho 790 := by
          rw [trueFactor, if_pos (by decide : pmBit 217 = true)]; exact keyB 217 (by omega)
        rw [htf, show block2_flag rho 217 = rho 844 from by norm_num [block2_flag, block2_W], show block2_flag rho 218 = rho 843 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht217 | linear_combination -ht217
      · have htf : trueFactor bits 218 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 218 = true))]
        rw [htf, show block2_flag rho 218 = rho 843 from by norm_num [block2_flag, block2_W], show block2_flag rho 219 = rho 843 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 219 = rho 792 := by
          rw [trueFactor, if_pos (by decide : pmBit 219 = true)]; exact keyB 219 (by omega)
        rw [htf, show block2_flag rho 219 = rho 843 from by norm_num [block2_flag, block2_W], show block2_flag rho 220 = rho 842 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht219 | linear_combination -ht219
      · have htf : trueFactor bits 220 = rho 793 := by
          rw [trueFactor, if_pos (by decide : pmBit 220 = true)]; exact keyB 220 (by omega)
        rw [htf, show block2_flag rho 220 = rho 842 from by norm_num [block2_flag, block2_W], show block2_flag rho 221 = rho 841 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht220 | linear_combination -ht220
      · have htf : trueFactor bits 221 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 221 = true))]
        rw [htf, show block2_flag rho 221 = rho 841 from by norm_num [block2_flag, block2_W], show block2_flag rho 222 = rho 841 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 222 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 222 = true))]
        rw [htf, show block2_flag rho 222 = rho 841 from by norm_num [block2_flag, block2_W], show block2_flag rho 223 = rho 841 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 223 = rho 796 := by
          rw [trueFactor, if_pos (by decide : pmBit 223 = true)]; exact keyB 223 (by omega)
        rw [htf, show block2_flag rho 223 = rho 841 from by norm_num [block2_flag, block2_W], show block2_flag rho 224 = rho 840 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht223 | linear_combination -ht223
      · have htf : trueFactor bits 224 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 224 = true))]
        rw [htf, show block2_flag rho 224 = rho 840 from by norm_num [block2_flag, block2_W], show block2_flag rho 225 = rho 840 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 225 = rho 798 := by
          rw [trueFactor, if_pos (by decide : pmBit 225 = true)]; exact keyB 225 (by omega)
        rw [htf, show block2_flag rho 225 = rho 840 from by norm_num [block2_flag, block2_W], show block2_flag rho 226 = rho 839 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht225 | linear_combination -ht225
      · have htf : trueFactor bits 226 = rho 799 := by
          rw [trueFactor, if_pos (by decide : pmBit 226 = true)]; exact keyB 226 (by omega)
        rw [htf, show block2_flag rho 226 = rho 839 from by norm_num [block2_flag, block2_W], show block2_flag rho 227 = rho 838 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht226 | linear_combination -ht226
      · have htf : trueFactor bits 227 = rho 800 := by
          rw [trueFactor, if_pos (by decide : pmBit 227 = true)]; exact keyB 227 (by omega)
        rw [htf, show block2_flag rho 227 = rho 838 from by norm_num [block2_flag, block2_W], show block2_flag rho 228 = rho 837 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht227 | linear_combination -ht227
      · have htf : trueFactor bits 228 = rho 801 := by
          rw [trueFactor, if_pos (by decide : pmBit 228 = true)]; exact keyB 228 (by omega)
        rw [htf, show block2_flag rho 228 = rho 837 from by norm_num [block2_flag, block2_W], show block2_flag rho 229 = rho 836 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht228 | linear_combination -ht228
      · have htf : trueFactor bits 229 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 229 = true))]
        rw [htf, show block2_flag rho 229 = rho 836 from by norm_num [block2_flag, block2_W], show block2_flag rho 230 = rho 836 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 230 = rho 803 := by
          rw [trueFactor, if_pos (by decide : pmBit 230 = true)]; exact keyB 230 (by omega)
        rw [htf, show block2_flag rho 230 = rho 836 from by norm_num [block2_flag, block2_W], show block2_flag rho 231 = rho 835 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht230 | linear_combination -ht230
      · have htf : trueFactor bits 231 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 231 = true))]
        rw [htf, show block2_flag rho 231 = rho 835 from by norm_num [block2_flag, block2_W], show block2_flag rho 232 = rho 835 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 232 = rho 805 := by
          rw [trueFactor, if_pos (by decide : pmBit 232 = true)]; exact keyB 232 (by omega)
        rw [htf, show block2_flag rho 232 = rho 835 from by norm_num [block2_flag, block2_W], show block2_flag rho 233 = rho 834 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht232 | linear_combination -ht232
      · have htf : trueFactor bits 233 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 233 = true))]
        rw [htf, show block2_flag rho 233 = rho 834 from by norm_num [block2_flag, block2_W], show block2_flag rho 234 = rho 834 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 234 = rho 807 := by
          rw [trueFactor, if_pos (by decide : pmBit 234 = true)]; exact keyB 234 (by omega)
        rw [htf, show block2_flag rho 234 = rho 834 from by norm_num [block2_flag, block2_W], show block2_flag rho 235 = rho 833 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht234 | linear_combination -ht234
      · have htf : trueFactor bits 235 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 235 = true))]
        rw [htf, show block2_flag rho 235 = rho 833 from by norm_num [block2_flag, block2_W], show block2_flag rho 236 = rho 833 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 236 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 236 = true))]
        rw [htf, show block2_flag rho 236 = rho 833 from by norm_num [block2_flag, block2_W], show block2_flag rho 237 = rho 833 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 237 = rho 810 := by
          rw [trueFactor, if_pos (by decide : pmBit 237 = true)]; exact keyB 237 (by omega)
        rw [htf, show block2_flag rho 237 = rho 833 from by norm_num [block2_flag, block2_W], show block2_flag rho 238 = rho 832 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht237 | linear_combination -ht237
      · have htf : trueFactor bits 238 = rho 811 := by
          rw [trueFactor, if_pos (by decide : pmBit 238 = true)]; exact keyB 238 (by omega)
        rw [htf, show block2_flag rho 238 = rho 832 from by norm_num [block2_flag, block2_W], show block2_flag rho 239 = rho 831 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht238 | linear_combination -ht238
      · have htf : trueFactor bits 239 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 239 = true))]
        rw [htf, show block2_flag rho 239 = rho 831 from by norm_num [block2_flag, block2_W], show block2_flag rho 240 = rho 831 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 240 = rho 813 := by
          rw [trueFactor, if_pos (by decide : pmBit 240 = true)]; exact keyB 240 (by omega)
        rw [htf, show block2_flag rho 240 = rho 831 from by norm_num [block2_flag, block2_W], show block2_flag rho 241 = rho 830 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht240 | linear_combination -ht240
      · have htf : trueFactor bits 241 = rho 814 := by
          rw [trueFactor, if_pos (by decide : pmBit 241 = true)]; exact keyB 241 (by omega)
        rw [htf, show block2_flag rho 241 = rho 830 from by norm_num [block2_flag, block2_W], show block2_flag rho 242 = rho 829 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht241 | linear_combination -ht241
      · have htf : trueFactor bits 242 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 242 = true))]
        rw [htf, show block2_flag rho 242 = rho 829 from by norm_num [block2_flag, block2_W], show block2_flag rho 243 = rho 829 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 243 = rho 816 := by
          rw [trueFactor, if_pos (by decide : pmBit 243 = true)]; exact keyB 243 (by omega)
        rw [htf, show block2_flag rho 243 = rho 829 from by norm_num [block2_flag, block2_W], show block2_flag rho 244 = rho 828 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht243 | linear_combination -ht243
      · have htf : trueFactor bits 244 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 244 = true))]
        rw [htf, show block2_flag rho 244 = rho 828 from by norm_num [block2_flag, block2_W], show block2_flag rho 245 = rho 828 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 245 = rho 818 := by
          rw [trueFactor, if_pos (by decide : pmBit 245 = true)]; exact keyB 245 (by omega)
        rw [htf, show block2_flag rho 245 = rho 828 from by norm_num [block2_flag, block2_W], show block2_flag rho 246 = rho 827 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht245 | linear_combination -ht245
      · have htf : trueFactor bits 246 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 246 = true))]
        rw [htf, show block2_flag rho 246 = rho 827 from by norm_num [block2_flag, block2_W], show block2_flag rho 247 = rho 827 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 247 = rho 820 := by
          rw [trueFactor, if_pos (by decide : pmBit 247 = true)]; exact keyB 247 (by omega)
        rw [htf, show block2_flag rho 247 = rho 827 from by norm_num [block2_flag, block2_W], show block2_flag rho 248 = rho 826 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht247 | linear_combination -ht247
      · have htf : trueFactor bits 248 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 248 = true))]
        rw [htf, show block2_flag rho 248 = rho 826 from by norm_num [block2_flag, block2_W], show block2_flag rho 249 = rho 826 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 249 = rho 822 := by
          rw [trueFactor, if_pos (by decide : pmBit 249 = true)]; exact keyB 249 (by omega)
        rw [htf, show block2_flag rho 249 = rho 826 from by norm_num [block2_flag, block2_W], show block2_flag rho 250 = rho 825 from by norm_num [block2_flag, block2_W]]
        first | linear_combination ht249 | linear_combination -ht249
      · have htf : trueFactor bits 250 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 250 = true))]
        rw [htf, show block2_flag rho 250 = rho 825 from by norm_num [block2_flag, block2_W], show block2_flag rho 251 = rho 825 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 251 = (1 : F) := by
          rw [trueFactor, if_neg (by decide : ¬ (pmBit 251 = true))]
        rw [htf, show block2_flag rho 251 = rho 825 from by norm_num [block2_flag, block2_W], show block2_flag rho 252 = rho 825 from by norm_num [block2_flag, block2_W]]
        ring
      · have htf : trueFactor bits 252 = rho 825 := by
          rw [trueFactor, if_pos (by decide : pmBit 252 = true)]; exact keyB 252 (by omega)
        rw [htf, show block2_flag rho 252 = rho 825 from by norm_num [block2_flag, block2_W], show block2_flag rho 253 = (1 : F) from by rw [block2_flag, if_pos (by norm_num : (253 : ℕ) ≤ 253)]]
        ring
    · intro j hj hpm
      show bits[j]! * (1 - bits[j]! - block2_flag rho (j + 1)) = 0
      rw [keyB j hj]
      interval_cases j
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 1 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc0; linear_combination hc0
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 2 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc1; linear_combination hc1
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 3 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc2; linear_combination hc2
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 4 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc3; linear_combination hc3
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 5 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc4; linear_combination hc4
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 6 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc5; linear_combination hc5
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 7 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc6; linear_combination hc6
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 8 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc7; linear_combination hc7
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 9 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc8; linear_combination hc8
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 10 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc9; linear_combination hc9
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 11 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc10; linear_combination hc10
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 12 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc11; linear_combination hc11
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 13 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc12; linear_combination hc12
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 14 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc13; linear_combination hc13
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 15 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc14; linear_combination hc14
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 16 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc15; linear_combination hc15
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 17 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc16; linear_combination hc16
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 18 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc17; linear_combination hc17
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 19 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc18; linear_combination hc18
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 20 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc19; linear_combination hc19
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 21 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc20; linear_combination hc20
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 22 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc21; linear_combination hc21
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 23 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc22; linear_combination hc22
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 24 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc23; linear_combination hc23
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 25 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc24; linear_combination hc24
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 26 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc25; linear_combination hc25
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 27 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc26; linear_combination hc26
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 28 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc27; linear_combination hc27
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 29 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc28; linear_combination hc28
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 30 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc29; linear_combination hc29
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 31 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc30; linear_combination hc30
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 32 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc31; linear_combination hc31
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 33 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc32; linear_combination hc32
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 34 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc33; linear_combination hc33
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 35 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc34; linear_combination hc34
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 36 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc35; linear_combination hc35
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 37 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc36; linear_combination hc36
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 38 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc37; linear_combination hc37
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 39 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc38; linear_combination hc38
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 40 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc39; linear_combination hc39
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 41 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc40; linear_combination hc40
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 42 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc41; linear_combination hc41
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 43 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc42; linear_combination hc42
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 44 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc43; linear_combination hc43
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 45 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc44; linear_combination hc44
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 46 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc45; linear_combination hc45
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 47 = rho 911 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc46; linear_combination hc46
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 50 = rho 909 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc49; linear_combination hc49
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 51 = rho 909 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc50; linear_combination hc50
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 52 = rho 909 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc51; linear_combination hc51
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 54 = rho 908 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc53; linear_combination hc53
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 55 = rho 908 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc54; linear_combination hc54
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 56 = rho 908 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc55; linear_combination hc55
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 57 = rho 908 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc56; linear_combination hc56
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 59 = rho 907 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc58; linear_combination hc58
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 61 = rho 906 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc60; linear_combination hc60
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 62 = rho 906 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc61; linear_combination hc61
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 63 = rho 906 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc62; linear_combination hc62
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 64 = rho 906 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc63; linear_combination hc63
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 66 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc65; linear_combination hc65
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 67 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc66; linear_combination hc66
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 68 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc67; linear_combination hc67
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 69 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc68; linear_combination hc68
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 70 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc69; linear_combination hc69
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 71 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc70; linear_combination hc70
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 72 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc71; linear_combination hc71
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 73 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc72; linear_combination hc72
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 74 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc73; linear_combination hc73
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 75 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc74; linear_combination hc74
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 76 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc75; linear_combination hc75
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 77 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc76; linear_combination hc76
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 78 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc77; linear_combination hc77
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 79 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc78; linear_combination hc78
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 80 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc79; linear_combination hc79
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 81 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc80; linear_combination hc80
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 82 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc81; linear_combination hc81
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 83 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc82; linear_combination hc82
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 84 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc83; linear_combination hc83
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 85 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc84; linear_combination hc84
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 86 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc85; linear_combination hc85
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 87 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc86; linear_combination hc86
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 88 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc87; linear_combination hc87
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 89 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc88; linear_combination hc88
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 90 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc89; linear_combination hc89
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 91 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc90; linear_combination hc90
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 92 = rho 905 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc91; linear_combination hc91
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 94 = rho 904 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc93; linear_combination hc93
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 97 = rho 902 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc96; linear_combination hc96
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 105 = rho 895 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc104; linear_combination hc104
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 108 = rho 893 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc107; linear_combination hc107
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 112 = rho 890 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc111; linear_combination hc111
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 113 = rho 890 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc112; linear_combination hc112
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 115 = rho 889 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc114; linear_combination hc114
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 117 = rho 888 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc116; linear_combination hc116
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 119 = rho 887 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc118; linear_combination hc118
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 122 = rho 885 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc121; linear_combination hc121
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 123 = rho 885 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc122; linear_combination hc122
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 126 = rho 883 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc125; linear_combination hc125
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 128 = rho 882 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc127; linear_combination hc127
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 130 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc129; linear_combination hc129
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 131 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc130; linear_combination hc130
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 132 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc131; linear_combination hc131
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 133 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc132; linear_combination hc132
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 134 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc133; linear_combination hc133
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 135 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc134; linear_combination hc134
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 136 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc135; linear_combination hc135
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 137 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc136; linear_combination hc136
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 138 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc137; linear_combination hc137
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 139 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc138; linear_combination hc138
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 140 = rho 881 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc139; linear_combination hc139
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 143 = rho 879 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc142; linear_combination hc142
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 148 = rho 875 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc147; linear_combination hc147
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 151 = rho 873 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc150; linear_combination hc150
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 152 = rho 873 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc151; linear_combination hc151
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 153 = rho 873 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc152; linear_combination hc152
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 154 = rho 873 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc153; linear_combination hc153
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 158 = rho 870 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc157; linear_combination hc157
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 160 = rho 869 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc159; linear_combination hc159
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 161 = rho 869 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc160; linear_combination hc160
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 166 = rho 865 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc165; linear_combination hc165
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 167 = rho 865 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc166; linear_combination hc166
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 168 = rho 865 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc167; linear_combination hc167
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 170 = rho 864 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc169; linear_combination hc169
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 173 = rho 862 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc172; linear_combination hc172
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 174 = rho 862 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc173; linear_combination hc173
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 176 = rho 861 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc175; linear_combination hc175
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 177 = rho 861 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc176; linear_combination hc176
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 178 = rho 861 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc177; linear_combination hc177
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 180 = rho 860 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc179; linear_combination hc179
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 183 = rho 858 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc182; linear_combination hc182
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 185 = rho 857 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc184; linear_combination hc184
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 186 = rho 857 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc185; linear_combination hc185
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 187 = rho 857 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc186; linear_combination hc186
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 188 = rho 857 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc187; linear_combination hc187
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 189 = rho 857 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc188; linear_combination hc188
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 192 = rho 855 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc191; linear_combination hc191
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 193 = rho 855 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc192; linear_combination hc192
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 196 = rho 853 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc195; linear_combination hc195
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 198 = rho 852 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc197; linear_combination hc197
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 200 = rho 851 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc199; linear_combination hc199
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 202 = rho 850 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc201; linear_combination hc201
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 204 = rho 849 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc203; linear_combination hc203
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 205 = rho 849 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc204; linear_combination hc204
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 207 = rho 848 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc206; linear_combination hc206
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 209 = rho 847 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc208; linear_combination hc208
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 210 = rho 847 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc209; linear_combination hc209
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 213 = rho 845 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc212; linear_combination hc212
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 215 = rho 844 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc214; linear_combination hc214
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 216 = rho 844 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc215; linear_combination hc215
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 217 = rho 844 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc216; linear_combination hc216
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 219 = rho 843 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc218; linear_combination hc218
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 222 = rho 841 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc221; linear_combination hc221
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 223 = rho 841 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc222; linear_combination hc222
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 225 = rho 840 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc224; linear_combination hc224
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 230 = rho 836 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc229; linear_combination hc229
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 232 = rho 835 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc231; linear_combination hc231
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 234 = rho 834 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc233; linear_combination hc233
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 236 = rho 833 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc235; linear_combination hc235
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 237 = rho 833 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc236; linear_combination hc236
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 240 = rho 831 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc239; linear_combination hc239
      · exact absurd hpm (by decide)
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 243 = rho 829 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc242; linear_combination hc242
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 245 = rho 828 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc244; linear_combination hc244
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 247 = rho 827 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc246; linear_combination hc246
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 249 = rho 826 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc248; linear_combination hc248
      · exact absurd hpm (by decide)
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 251 = rho 825 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc250; linear_combination hc250
      · simp only [Nat.reduceAdd]; rw [show block2_flag rho 252 = rho 825 from by norm_num [block2_flag, block2_W]]; rw [hrho0] at hc251; linear_combination hc251
      · exact absurd hpm (by decide)
    · intro j hj
      show bits[j]! * bits[j]! = bits[j]!
      rw [keyB j hj]
      interval_cases j
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb0; linear_combination -hb0
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb1; linear_combination -hb1
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb2; linear_combination -hb2
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb3; linear_combination -hb3
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb4; linear_combination -hb4
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb5; linear_combination -hb5
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb6; linear_combination -hb6
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb7; linear_combination -hb7
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb8; linear_combination -hb8
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb9; linear_combination -hb9
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb10; linear_combination -hb10
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb11; linear_combination -hb11
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb12; linear_combination -hb12
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb13; linear_combination -hb13
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb14; linear_combination -hb14
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb15; linear_combination -hb15
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb16; linear_combination -hb16
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb17; linear_combination -hb17
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb18; linear_combination -hb18
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb19; linear_combination -hb19
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb20; linear_combination -hb20
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb21; linear_combination -hb21
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb22; linear_combination -hb22
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb23; linear_combination -hb23
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb24; linear_combination -hb24
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb25; linear_combination -hb25
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb26; linear_combination -hb26
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb27; linear_combination -hb27
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb28; linear_combination -hb28
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb29; linear_combination -hb29
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb30; linear_combination -hb30
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb31; linear_combination -hb31
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb32; linear_combination -hb32
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb33; linear_combination -hb33
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb34; linear_combination -hb34
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb35; linear_combination -hb35
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb36; linear_combination -hb36
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb37; linear_combination -hb37
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb38; linear_combination -hb38
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb39; linear_combination -hb39
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb40; linear_combination -hb40
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb41; linear_combination -hb41
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb42; linear_combination -hb42
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb43; linear_combination -hb43
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb44; linear_combination -hb44
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb45; linear_combination -hb45
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb46; linear_combination -hb46
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb47; linear_combination -hb47
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb48; linear_combination -hb48
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb49; linear_combination -hb49
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb50; linear_combination -hb50
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb51; linear_combination -hb51
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb52; linear_combination -hb52
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb53; linear_combination -hb53
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb54; linear_combination -hb54
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb55; linear_combination -hb55
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb56; linear_combination -hb56
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb57; linear_combination -hb57
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb58; linear_combination -hb58
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb59; linear_combination -hb59
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb60; linear_combination -hb60
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb61; linear_combination -hb61
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb62; linear_combination -hb62
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb63; linear_combination -hb63
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb64; linear_combination -hb64
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb65; linear_combination -hb65
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb66; linear_combination -hb66
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb67; linear_combination -hb67
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb68; linear_combination -hb68
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb69; linear_combination -hb69
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb70; linear_combination -hb70
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb71; linear_combination -hb71
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb72; linear_combination -hb72
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb73; linear_combination -hb73
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb74; linear_combination -hb74
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb75; linear_combination -hb75
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb76; linear_combination -hb76
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb77; linear_combination -hb77
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb78; linear_combination -hb78
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb79; linear_combination -hb79
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb80; linear_combination -hb80
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb81; linear_combination -hb81
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb82; linear_combination -hb82
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb83; linear_combination -hb83
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb84; linear_combination -hb84
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb85; linear_combination -hb85
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb86; linear_combination -hb86
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb87; linear_combination -hb87
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb88; linear_combination -hb88
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb89; linear_combination -hb89
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb90; linear_combination -hb90
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb91; linear_combination -hb91
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb92; linear_combination -hb92
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb93; linear_combination -hb93
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb94; linear_combination -hb94
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb95; linear_combination -hb95
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb96; linear_combination -hb96
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb97; linear_combination -hb97
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb98; linear_combination -hb98
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb99; linear_combination -hb99
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb100; linear_combination -hb100
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb101; linear_combination -hb101
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb102; linear_combination -hb102
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb103; linear_combination -hb103
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb104; linear_combination -hb104
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb105; linear_combination -hb105
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb106; linear_combination -hb106
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb107; linear_combination -hb107
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb108; linear_combination -hb108
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb109; linear_combination -hb109
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb110; linear_combination -hb110
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb111; linear_combination -hb111
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb112; linear_combination -hb112
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb113; linear_combination -hb113
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb114; linear_combination -hb114
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb115; linear_combination -hb115
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb116; linear_combination -hb116
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb117; linear_combination -hb117
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb118; linear_combination -hb118
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb119; linear_combination -hb119
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb120; linear_combination -hb120
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb121; linear_combination -hb121
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb122; linear_combination -hb122
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb123; linear_combination -hb123
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb124; linear_combination -hb124
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb125; linear_combination -hb125
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb126; linear_combination -hb126
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb127; linear_combination -hb127
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb128; linear_combination -hb128
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb129; linear_combination -hb129
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb130; linear_combination -hb130
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb131; linear_combination -hb131
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb132; linear_combination -hb132
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb133; linear_combination -hb133
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb134; linear_combination -hb134
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb135; linear_combination -hb135
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb136; linear_combination -hb136
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb137; linear_combination -hb137
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb138; linear_combination -hb138
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb139; linear_combination -hb139
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb140; linear_combination -hb140
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb141; linear_combination -hb141
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb142; linear_combination -hb142
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb143; linear_combination -hb143
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb144; linear_combination -hb144
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb145; linear_combination -hb145
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb146; linear_combination -hb146
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb147; linear_combination -hb147
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb148; linear_combination -hb148
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb149; linear_combination -hb149
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb150; linear_combination -hb150
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb151; linear_combination -hb151
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb152; linear_combination -hb152
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb153; linear_combination -hb153
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb154; linear_combination -hb154
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb155; linear_combination -hb155
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb156; linear_combination -hb156
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb157; linear_combination -hb157
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb158; linear_combination -hb158
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb159; linear_combination -hb159
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb160; linear_combination -hb160
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb161; linear_combination -hb161
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb162; linear_combination -hb162
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb163; linear_combination -hb163
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb164; linear_combination -hb164
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb165; linear_combination -hb165
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb166; linear_combination -hb166
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb167; linear_combination -hb167
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb168; linear_combination -hb168
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb169; linear_combination -hb169
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb170; linear_combination -hb170
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb171; linear_combination -hb171
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb172; linear_combination -hb172
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb173; linear_combination -hb173
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb174; linear_combination -hb174
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb175; linear_combination -hb175
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb176; linear_combination -hb176
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb177; linear_combination -hb177
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb178; linear_combination -hb178
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb179; linear_combination -hb179
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb180; linear_combination -hb180
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb181; linear_combination -hb181
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb182; linear_combination -hb182
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb183; linear_combination -hb183
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb184; linear_combination -hb184
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb185; linear_combination -hb185
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb186; linear_combination -hb186
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb187; linear_combination -hb187
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb188; linear_combination -hb188
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb189; linear_combination -hb189
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb190; linear_combination -hb190
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb191; linear_combination -hb191
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb192; linear_combination -hb192
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb193; linear_combination -hb193
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb194; linear_combination -hb194
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb195; linear_combination -hb195
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb196; linear_combination -hb196
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb197; linear_combination -hb197
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb198; linear_combination -hb198
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb199; linear_combination -hb199
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb200; linear_combination -hb200
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb201; linear_combination -hb201
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb202; linear_combination -hb202
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb203; linear_combination -hb203
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb204; linear_combination -hb204
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb205; linear_combination -hb205
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb206; linear_combination -hb206
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb207; linear_combination -hb207
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb208; linear_combination -hb208
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb209; linear_combination -hb209
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb210; linear_combination -hb210
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb211; linear_combination -hb211
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb212; linear_combination -hb212
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb213; linear_combination -hb213
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb214; linear_combination -hb214
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb215; linear_combination -hb215
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb216; linear_combination -hb216
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb217; linear_combination -hb217
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb218; linear_combination -hb218
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb219; linear_combination -hb219
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb220; linear_combination -hb220
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb221; linear_combination -hb221
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb222; linear_combination -hb222
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb223; linear_combination -hb223
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb224; linear_combination -hb224
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb225; linear_combination -hb225
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb226; linear_combination -hb226
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb227; linear_combination -hb227
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb228; linear_combination -hb228
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb229; linear_combination -hb229
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb230; linear_combination -hb230
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb231; linear_combination -hb231
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb232; linear_combination -hb232
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb233; linear_combination -hb233
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb234; linear_combination -hb234
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb235; linear_combination -hb235
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb236; linear_combination -hb236
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb237; linear_combination -hb237
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb238; linear_combination -hb238
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb239; linear_combination -hb239
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb240; linear_combination -hb240
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb241; linear_combination -hb241
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb242; linear_combination -hb242
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb243; linear_combination -hb243
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb244; linear_combination -hb244
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb245; linear_combination -hb245
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb246; linear_combination -hb246
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb247; linear_combination -hb247
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb248; linear_combination -hb248
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb249; linear_combination -hb249
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb250; linear_combination -hb250
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb251; linear_combination -hb251
      · simp only [Nat.reduceAdd]; rw [hrho0] at hb252; linear_combination -hb252

end Shieldd.GnarkFormal.Extracted.DecafCompressToField
