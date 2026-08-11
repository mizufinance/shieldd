import ShielddGnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202Defs3

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202

variable {F : Type} [CommRing F]

def relationRow389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 385) * ((1 : F) + (-1 : F) * rho 102 + (-1 : F) * rho 231 + (1 : F) * rho 389) = ((1 : F) * rho 390)

def relationRow390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 390) * ((1 : F) + (-1 : F) * rho 101) = ((1 : F) * rho 391)

def relationRow391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 391) * ((1 : F) * rho 230) = ((1 : F) * rho 392)

def relationLc12 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 26⟩, ⟨(1 : F), 262, 5, 26⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 392) * (relationLc12 rho) = ((1 : F) * rho 393)

def relationRow393 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 101) * ((1 : F) * rho 230) = ((1 : F) * rho 394)

def relationRow394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 390) * ((1 : F) + (-1 : F) * rho 101 + (-1 : F) * rho 230 + (1 : F) * rho 394) = ((1 : F) * rho 395)

def relationRow395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 395) * ((1 : F) + (-1 : F) * rho 100) = ((1 : F) * rho 396)

def relationRow396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 396) * ((1 : F) * rho 229) = ((1 : F) * rho 397)

def relationLc13 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 27⟩, ⟨(1 : F), 262, 5, 27⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 397) * (relationLc13 rho) = ((1 : F) * rho 398)

def relationRow398 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 100) * ((1 : F) * rho 229) = ((1 : F) * rho 399)

def relationRow399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 395) * ((1 : F) + (-1 : F) * rho 100 + (-1 : F) * rho 229 + (1 : F) * rho 399) = ((1 : F) * rho 400)

def relationRow400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 400) * ((1 : F) + (-1 : F) * rho 99) = ((1 : F) * rho 401)

def relationRow401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 401) * ((1 : F) * rho 228) = ((1 : F) * rho 402)

def relationLc14 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 28⟩, ⟨(1 : F), 262, 5, 28⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 402) * (relationLc14 rho) = ((1 : F) * rho 403)

def relationRow403 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 99) * ((1 : F) * rho 228) = ((1 : F) * rho 404)

def relationRow404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 400) * ((1 : F) + (-1 : F) * rho 99 + (-1 : F) * rho 228 + (1 : F) * rho 404) = ((1 : F) * rho 405)

def relationRow405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 405) * ((1 : F) + (-1 : F) * rho 98) = ((1 : F) * rho 406)

def relationRow406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 406) * ((1 : F) * rho 227) = ((1 : F) * rho 407)

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 29⟩, ⟨(1 : F), 262, 5, 29⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 407) * (relationLc15 rho) = ((1 : F) * rho 408)

def relationRow408 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 98) * ((1 : F) * rho 227) = ((1 : F) * rho 409)

def relationRow409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 405) * ((1 : F) + (-1 : F) * rho 98 + (-1 : F) * rho 227 + (1 : F) * rho 409) = ((1 : F) * rho 410)

def relationRow410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 410) * ((1 : F) + (-1 : F) * rho 97) = ((1 : F) * rho 411)

def relationRow411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 411) * ((1 : F) * rho 226) = ((1 : F) * rho 412)

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 30⟩, ⟨(1 : F), 262, 5, 30⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 412) * (relationLc16 rho) = ((1 : F) * rho 413)

def relationRow413 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 97) * ((1 : F) * rho 226) = ((1 : F) * rho 414)

def relationRow414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 410) * ((1 : F) + (-1 : F) * rho 97 + (-1 : F) * rho 226 + (1 : F) * rho 414) = ((1 : F) * rho 415)

def relationRow415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 415) * ((1 : F) + (-1 : F) * rho 96) = ((1 : F) * rho 416)

def relationRow416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 416) * ((1 : F) * rho 225) = ((1 : F) * rho 417)

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 31⟩, ⟨(1 : F), 262, 5, 31⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 417) * (relationLc17 rho) = ((1 : F) * rho 418)

def relationRow418 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 96) * ((1 : F) * rho 225) = ((1 : F) * rho 419)

def relationRow419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 415) * ((1 : F) + (-1 : F) * rho 96 + (-1 : F) * rho 225 + (1 : F) * rho 419) = ((1 : F) * rho 420)

def relationRow420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 420) * ((1 : F) + (-1 : F) * rho 95) = ((1 : F) * rho 421)

def relationRow421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 421) * ((1 : F) * rho 224) = ((1 : F) * rho 422)

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 32⟩, ⟨(1 : F), 262, 5, 32⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 422) * (relationLc18 rho) = ((1 : F) * rho 423)

def relationRow423 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 95) * ((1 : F) * rho 224) = ((1 : F) * rho 424)

def relationRow424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 420) * ((1 : F) + (-1 : F) * rho 95 + (-1 : F) * rho 224 + (1 : F) * rho 424) = ((1 : F) * rho 425)

def relationRow425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 425) * ((1 : F) + (-1 : F) * rho 94) = ((1 : F) * rho 426)

def relationRow426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 426) * ((1 : F) * rho 223) = ((1 : F) * rho 427)

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 33⟩, ⟨(1 : F), 262, 5, 33⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 427) * (relationLc19 rho) = ((1 : F) * rho 428)

def relationRow428 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 94) * ((1 : F) * rho 223) = ((1 : F) * rho 429)

def relationRow429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 425) * ((1 : F) + (-1 : F) * rho 94 + (-1 : F) * rho 223 + (1 : F) * rho 429) = ((1 : F) * rho 430)

def relationRow430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 430) * ((1 : F) + (-1 : F) * rho 93) = ((1 : F) * rho 431)

def relationRow431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 431) * ((1 : F) * rho 222) = ((1 : F) * rho 432)

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 34⟩, ⟨(1 : F), 262, 5, 34⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 432) * (relationLc20 rho) = ((1 : F) * rho 433)

def relationRow433 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 93) * ((1 : F) * rho 222) = ((1 : F) * rho 434)

def relationRow434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 430) * ((1 : F) + (-1 : F) * rho 93 + (-1 : F) * rho 222 + (1 : F) * rho 434) = ((1 : F) * rho 435)

def relationRow435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 435) * ((1 : F) + (-1 : F) * rho 92) = ((1 : F) * rho 436)

def relationRow436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 436) * ((1 : F) * rho 221) = ((1 : F) * rho 437)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 35⟩, ⟨(1 : F), 262, 5, 35⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 437) * (relationLc21 rho) = ((1 : F) * rho 438)

def relationRow438 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 92) * ((1 : F) * rho 221) = ((1 : F) * rho 439)

def relationRow439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 435) * ((1 : F) + (-1 : F) * rho 92 + (-1 : F) * rho 221 + (1 : F) * rho 439) = ((1 : F) * rho 440)

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 440) * ((1 : F) + (-1 : F) * rho 91) = ((1 : F) * rho 441)

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 441) * ((1 : F) * rho 220) = ((1 : F) * rho 442)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 36⟩, ⟨(1 : F), 262, 5, 36⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 442) * (relationLc22 rho) = ((1 : F) * rho 443)

def relationRow443 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 91) * ((1 : F) * rho 220) = ((1 : F) * rho 444)

def relationRow444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 440) * ((1 : F) + (-1 : F) * rho 91 + (-1 : F) * rho 220 + (1 : F) * rho 444) = ((1 : F) * rho 445)

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 445) * ((1 : F) + (-1 : F) * rho 90) = ((1 : F) * rho 446)

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 446) * ((1 : F) * rho 219) = ((1 : F) * rho 447)

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 37⟩, ⟨(1 : F), 262, 5, 37⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 447) * (relationLc23 rho) = ((1 : F) * rho 448)

def relationRow448 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 90) * ((1 : F) * rho 219) = ((1 : F) * rho 449)

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 445) * ((1 : F) + (-1 : F) * rho 90 + (-1 : F) * rho 219 + (1 : F) * rho 449) = ((1 : F) * rho 450)

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 450) * ((1 : F) + (-1 : F) * rho 89) = ((1 : F) * rho 451)

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 451) * ((1 : F) * rho 218) = ((1 : F) * rho 452)

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 38⟩, ⟨(1 : F), 262, 5, 38⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 452) * (relationLc24 rho) = ((1 : F) * rho 453)

def relationRow453 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 89) * ((1 : F) * rho 218) = ((1 : F) * rho 454)

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 450) * ((1 : F) + (-1 : F) * rho 89 + (-1 : F) * rho 218 + (1 : F) * rho 454) = ((1 : F) * rho 455)

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 455) * ((1 : F) + (-1 : F) * rho 88) = ((1 : F) * rho 456)

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 456) * ((1 : F) * rho 217) = ((1 : F) * rho 457)

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 39⟩, ⟨(1 : F), 262, 5, 39⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 457) * (relationLc25 rho) = ((1 : F) * rho 458)

def relationRow458 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 88) * ((1 : F) * rho 217) = ((1 : F) * rho 459)

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 455) * ((1 : F) + (-1 : F) * rho 88 + (-1 : F) * rho 217 + (1 : F) * rho 459) = ((1 : F) * rho 460)

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 460) * ((1 : F) + (-1 : F) * rho 87) = ((1 : F) * rho 461)

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 461) * ((1 : F) * rho 216) = ((1 : F) * rho 462)

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 40⟩, ⟨(1 : F), 262, 5, 40⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 462) * (relationLc26 rho) = ((1 : F) * rho 463)

def relationRow463 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 87) * ((1 : F) * rho 216) = ((1 : F) * rho 464)

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 460) * ((1 : F) + (-1 : F) * rho 87 + (-1 : F) * rho 216 + (1 : F) * rho 464) = ((1 : F) * rho 465)

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 465) * ((1 : F) + (-1 : F) * rho 86) = ((1 : F) * rho 466)

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 466) * ((1 : F) * rho 215) = ((1 : F) * rho 467)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 41⟩, ⟨(1 : F), 262, 5, 41⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 467) * (relationLc27 rho) = ((1 : F) * rho 468)

def relationRow468 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 86) * ((1 : F) * rho 215) = ((1 : F) * rho 469)

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 465) * ((1 : F) + (-1 : F) * rho 86 + (-1 : F) * rho 215 + (1 : F) * rho 469) = ((1 : F) * rho 470)

def relationRow470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 470) * ((1 : F) + (-1 : F) * rho 85) = ((1 : F) * rho 471)

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 471) * ((1 : F) * rho 214) = ((1 : F) * rho 472)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 42⟩, ⟨(1 : F), 262, 5, 42⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 472) * (relationLc28 rho) = ((1 : F) * rho 473)

def relationRow473 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 85) * ((1 : F) * rho 214) = ((1 : F) * rho 474)

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 470) * ((1 : F) + (-1 : F) * rho 85 + (-1 : F) * rho 214 + (1 : F) * rho 474) = ((1 : F) * rho 475)

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 475) * ((1 : F) + (-1 : F) * rho 84) = ((1 : F) * rho 476)

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 476) * ((1 : F) * rho 213) = ((1 : F) * rho 477)

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 263, 5, 43⟩, ⟨(1 : F), 262, 5, 43⟩], residual := [((1 : F), 259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 477) * (relationLc29 rho) = ((1 : F) * rho 478)

def relationRow478 (rho : Nat -> F) : Prop :=
    ((2 : F) * rho 84) * ((1 : F) * rho 213) = ((1 : F) * rho 479)

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 475) * ((1 : F) + (-1 : F) * rho 84 + (-1 : F) * rho 213 + (1 : F) * rho 479) = ((1 : F) * rho 480)

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 480) * ((1 : F) + (-1 : F) * rho 83) = ((1 : F) * rho 481)

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 481) * ((1 : F) * rho 212) = ((1 : F) * rho 482)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202
