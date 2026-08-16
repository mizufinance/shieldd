import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs101

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow5567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5567 + (1 : F) * rho 5568) * ((1 : F) + (1 : F) * rho 5570 + (1 : F) * rho 5571 + (1 : F) * rho 5573 + (1 : F) * rho 5574) = ((1 : F) * rho 5575)

def relationRow5568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5567) * ((1 : F) + (1 : F) * rho 5573 + (1 : F) * rho 5574) = ((1 : F) * rho 5576)

def relationRow5569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5568) * ((1 : F) * rho 5570 + (1 : F) * rho 5571) = ((1 : F) * rho 5577)

def relationRow5570 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5576) * ((1 : F) * rho 5577) = ((1 : F) * rho 5578)

def relationRow5571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * ((1 : F) + (1 : F) * rho 5578) = ((1 : F) * rho 5576 + (1 : F) * rho 5577)

def relationRow5572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5580) * ((1 : F) + (-1 : F) * rho 5578) = ((1 : F) * rho 5575 + (-1 : F) * rho 5576 + (-1 : F) * rho 5577)

def relationRow5573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * ((1 : F) * rho 5580) = ((1 : F) * rho 5581)

def relationRow5574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5579) * ((1 : F) * rho 5579) = ((1 : F) * rho 5582)

def relationRow5575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5580) * ((1 : F) * rho 5580) = ((1 : F) * rho 5583)

def relationRow5576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5584) * ((-1 : F) * rho 5582 + (1 : F) * rho 5583) = ((2 : F) * rho 5581)

def relationRow5577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5585) * ((2 : F) + (1 : F) * rho 5582 + (-1 : F) * rho 5583) = ((1 : F) * rho 5582 + (1 : F) * rho 5583)

def relationRow5578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5584) * ((1 : F) * rho 5585) = ((1 : F) * rho 5586)

def relationRow5579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5584) * ((1 : F) * rho 5584) = ((1 : F) * rho 5587)

def relationRow5580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5585) * ((1 : F) * rho 5585) = ((1 : F) * rho 5588)

def relationRow5581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5589) * ((-1 : F) * rho 5587 + (1 : F) * rho 5588) = ((2 : F) * rho 5586)

def relationRow5582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5590) * ((2 : F) + (1 : F) * rho 5587 + (-1 : F) * rho 5588) = ((1 : F) * rho 5587 + (1 : F) * rho 5588)

def relationRow5583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 158) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5591)

def relationRow5584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 159) * ((1 : F) * rho 4577 + (1 : F) * rho 5591) = ((1 : F) * rho 5592)

def relationRow5585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 158) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5593)

def relationRow5586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 158) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5594)

def relationRow5587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 159) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5594) = ((1 : F) * rho 5595)

def relationRow5588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 158) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5596)

def relationRow5589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5589 + (1 : F) * rho 5590) * ((1 : F) + (1 : F) * rho 5592 + (1 : F) * rho 5593 + (1 : F) * rho 5595 + (1 : F) * rho 5596) = ((1 : F) * rho 5597)

def relationRow5590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5589) * ((1 : F) + (1 : F) * rho 5595 + (1 : F) * rho 5596) = ((1 : F) * rho 5598)

def relationRow5591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5590) * ((1 : F) * rho 5592 + (1 : F) * rho 5593) = ((1 : F) * rho 5599)

def relationRow5592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5598) * ((1 : F) * rho 5599) = ((1 : F) * rho 5600)

def relationRow5593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5601) * ((1 : F) + (1 : F) * rho 5600) = ((1 : F) * rho 5598 + (1 : F) * rho 5599)

def relationRow5594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5602) * ((1 : F) + (-1 : F) * rho 5600) = ((1 : F) * rho 5597 + (-1 : F) * rho 5598 + (-1 : F) * rho 5599)

def relationRow5595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5601) * ((1 : F) * rho 5602) = ((1 : F) * rho 5603)

def relationRow5596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5601) * ((1 : F) * rho 5601) = ((1 : F) * rho 5604)

def relationRow5597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5602) * ((1 : F) * rho 5602) = ((1 : F) * rho 5605)

def relationRow5598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * ((-1 : F) * rho 5604 + (1 : F) * rho 5605) = ((2 : F) * rho 5603)

def relationRow5599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5607) * ((2 : F) + (1 : F) * rho 5604 + (-1 : F) * rho 5605) = ((1 : F) * rho 5604 + (1 : F) * rho 5605)

def relationRow5600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * ((1 : F) * rho 5607) = ((1 : F) * rho 5608)

def relationRow5601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5606) * ((1 : F) * rho 5606) = ((1 : F) * rho 5609)

def relationRow5602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5607) * ((1 : F) * rho 5607) = ((1 : F) * rho 5610)

def relationRow5603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5611) * ((-1 : F) * rho 5609 + (1 : F) * rho 5610) = ((2 : F) * rho 5608)

def relationRow5604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5612) * ((2 : F) + (1 : F) * rho 5609 + (-1 : F) * rho 5610) = ((1 : F) * rho 5609 + (1 : F) * rho 5610)

def relationRow5605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 156) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5613)

def relationRow5606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 157) * ((1 : F) * rho 4577 + (1 : F) * rho 5613) = ((1 : F) * rho 5614)

def relationRow5607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 156) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5615)

def relationRow5608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 156) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5616)

def relationRow5609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 157) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5616) = ((1 : F) * rho 5617)

def relationRow5610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 156) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5618)

def relationRow5611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5611 + (1 : F) * rho 5612) * ((1 : F) + (1 : F) * rho 5614 + (1 : F) * rho 5615 + (1 : F) * rho 5617 + (1 : F) * rho 5618) = ((1 : F) * rho 5619)

def relationRow5612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5611) * ((1 : F) + (1 : F) * rho 5617 + (1 : F) * rho 5618) = ((1 : F) * rho 5620)

def relationRow5613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5612) * ((1 : F) * rho 5614 + (1 : F) * rho 5615) = ((1 : F) * rho 5621)

def relationRow5614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5620) * ((1 : F) * rho 5621) = ((1 : F) * rho 5622)

def relationRow5615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5623) * ((1 : F) + (1 : F) * rho 5622) = ((1 : F) * rho 5620 + (1 : F) * rho 5621)

def relationRow5616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5624) * ((1 : F) + (-1 : F) * rho 5622) = ((1 : F) * rho 5619 + (-1 : F) * rho 5620 + (-1 : F) * rho 5621)

def relationRow5617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5623) * ((1 : F) * rho 5624) = ((1 : F) * rho 5625)

def relationRow5618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5623) * ((1 : F) * rho 5623) = ((1 : F) * rho 5626)

def relationRow5619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5624) * ((1 : F) * rho 5624) = ((1 : F) * rho 5627)

def relationRow5620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5628) * ((-1 : F) * rho 5626 + (1 : F) * rho 5627) = ((2 : F) * rho 5625)

def relationRow5621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5629) * ((2 : F) + (1 : F) * rho 5626 + (-1 : F) * rho 5627) = ((1 : F) * rho 5626 + (1 : F) * rho 5627)

def relationRow5622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5628) * ((1 : F) * rho 5629) = ((1 : F) * rho 5630)

def relationRow5623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5628) * ((1 : F) * rho 5628) = ((1 : F) * rho 5631)

def relationRow5624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5629) * ((1 : F) * rho 5629) = ((1 : F) * rho 5632)

def relationRow5625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5633) * ((-1 : F) * rho 5631 + (1 : F) * rho 5632) = ((2 : F) * rho 5630)

def relationRow5626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * ((2 : F) + (1 : F) * rho 5631 + (-1 : F) * rho 5632) = ((1 : F) * rho 5631 + (1 : F) * rho 5632)

def relationRow5627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 154) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5635)

def relationRow5628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 155) * ((1 : F) * rho 4577 + (1 : F) * rho 5635) = ((1 : F) * rho 5636)

def relationRow5629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 154) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5637)

def relationRow5630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 154) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5638)

def relationRow5631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 155) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5638) = ((1 : F) * rho 5639)

def relationRow5632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 154) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5640)

def relationRow5633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5633 + (1 : F) * rho 5634) * ((1 : F) + (1 : F) * rho 5636 + (1 : F) * rho 5637 + (1 : F) * rho 5639 + (1 : F) * rho 5640) = ((1 : F) * rho 5641)

def relationRow5634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5633) * ((1 : F) + (1 : F) * rho 5639 + (1 : F) * rho 5640) = ((1 : F) * rho 5642)

def relationRow5635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * ((1 : F) * rho 5636 + (1 : F) * rho 5637) = ((1 : F) * rho 5643)

def relationRow5636 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5642) * ((1 : F) * rho 5643) = ((1 : F) * rho 5644)

def relationRow5637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5645) * ((1 : F) + (1 : F) * rho 5644) = ((1 : F) * rho 5642 + (1 : F) * rho 5643)

def relationRow5638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5646) * ((1 : F) + (-1 : F) * rho 5644) = ((1 : F) * rho 5641 + (-1 : F) * rho 5642 + (-1 : F) * rho 5643)

def relationRow5639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5645) * ((1 : F) * rho 5646) = ((1 : F) * rho 5647)

def relationRow5640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5645) * ((1 : F) * rho 5645) = ((1 : F) * rho 5648)

def relationRow5641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5646) * ((1 : F) * rho 5646) = ((1 : F) * rho 5649)

def relationRow5642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5650) * ((-1 : F) * rho 5648 + (1 : F) * rho 5649) = ((2 : F) * rho 5647)

def relationRow5643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5651) * ((2 : F) + (1 : F) * rho 5648 + (-1 : F) * rho 5649) = ((1 : F) * rho 5648 + (1 : F) * rho 5649)

def relationRow5644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5650) * ((1 : F) * rho 5651) = ((1 : F) * rho 5652)

def relationRow5645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5650) * ((1 : F) * rho 5650) = ((1 : F) * rho 5653)

def relationRow5646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5651) * ((1 : F) * rho 5651) = ((1 : F) * rho 5654)

def relationRow5647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5655) * ((-1 : F) * rho 5653 + (1 : F) * rho 5654) = ((2 : F) * rho 5652)

def relationRow5648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5656) * ((2 : F) + (1 : F) * rho 5653 + (-1 : F) * rho 5654) = ((1 : F) * rho 5653 + (1 : F) * rho 5654)

def relationRow5649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5657)

def relationRow5650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 153) * ((1 : F) * rho 4577 + (1 : F) * rho 5657) = ((1 : F) * rho 5658)

def relationRow5651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5659)

def relationRow5652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5660)

def relationRow5653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 153) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5660) = ((1 : F) * rho 5661)

def relationRow5654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5662)

def relationRow5655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5655 + (1 : F) * rho 5656) * ((1 : F) + (1 : F) * rho 5658 + (1 : F) * rho 5659 + (1 : F) * rho 5661 + (1 : F) * rho 5662) = ((1 : F) * rho 5663)

def relationRow5656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5655) * ((1 : F) + (1 : F) * rho 5661 + (1 : F) * rho 5662) = ((1 : F) * rho 5664)

def relationRow5657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5656) * ((1 : F) * rho 5658 + (1 : F) * rho 5659) = ((1 : F) * rho 5665)

def relationRow5658 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5664) * ((1 : F) * rho 5665) = ((1 : F) * rho 5666)

def relationRow5659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5667) * ((1 : F) + (1 : F) * rho 5666) = ((1 : F) * rho 5664 + (1 : F) * rho 5665)

def relationRow5660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5668) * ((1 : F) + (-1 : F) * rho 5666) = ((1 : F) * rho 5663 + (-1 : F) * rho 5664 + (-1 : F) * rho 5665)

def relationRow5661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5667) * ((1 : F) * rho 5668) = ((1 : F) * rho 5669)

def relationRow5662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5667) * ((1 : F) * rho 5667) = ((1 : F) * rho 5670)

def relationRow5663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5668) * ((1 : F) * rho 5668) = ((1 : F) * rho 5671)

def relationRow5664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5672) * ((-1 : F) * rho 5670 + (1 : F) * rho 5671) = ((2 : F) * rho 5669)

def relationRow5665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5673) * ((2 : F) + (1 : F) * rho 5670 + (-1 : F) * rho 5671) = ((1 : F) * rho 5670 + (1 : F) * rho 5671)

def relationRow5666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5672) * ((1 : F) * rho 5673) = ((1 : F) * rho 5674)

def relationRow5667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5672) * ((1 : F) * rho 5672) = ((1 : F) * rho 5675)

def relationRow5668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5673) * ((1 : F) * rho 5673) = ((1 : F) * rho 5676)

def relationRow5669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5677) * ((-1 : F) * rho 5675 + (1 : F) * rho 5676) = ((2 : F) * rho 5674)

def relationRow5670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5678) * ((2 : F) + (1 : F) * rho 5675 + (-1 : F) * rho 5676) = ((1 : F) * rho 5675 + (1 : F) * rho 5676)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
