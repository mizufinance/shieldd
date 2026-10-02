// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

//! Fixed capacity inline bitmap, in-tree replacement for the archived
//! `bitmaps` crate.
//!
//! `Bitmap<N>` stores `N` bits inline (no allocation) using the smallest
//! storage type that fits: a machine word up to 128 bits, or an array of
//! `u128`s up to 1024 bits. Only bit counts in the range `1..=1024` are
//! supported; other sizes fail to compile.

use core::fmt::Debug;

/// Maps a bit count to a storage type carrying at least that many bits.
#[doc(hidden)]
pub trait Bits {
    type Store: BitOps;
}

/// Type-level lookup from bit count to bitmap. There is an impl of [`Bits`]
/// for every `BitsImpl<N>` with `N` in `1..=1024`.
#[doc(hidden)]
pub struct BitsImpl<const N: usize>;

/// Bit operations on the storage backing a [`Bitmap`].
#[doc(hidden)]
pub trait BitOps: Copy + Default + Eq + Debug {
    fn get(self, index: usize) -> bool;
    /// Sets the bit, returning its previous value.
    fn set(&mut self, index: usize, value: bool) -> bool;
    fn count(self) -> usize;
    fn is_empty(self) -> bool;
    /// Index of the first set bit below `width`.
    fn first_index(self, width: usize) -> Option<usize>;
    /// Index of the first set bit strictly after `from`, below `width`.
    fn next_index(self, from: usize, width: usize) -> Option<usize>;
    /// Index of the last set bit below `width`.
    fn last_index(self, width: usize) -> Option<usize>;
    /// Index of the last set bit strictly before `before`.
    fn prev_index(self, before: usize, width: usize) -> Option<usize>;
    /// Index of the first clear bit below `width`.
    fn first_false_index(self, width: usize) -> Option<usize>;
    /// Index of the first clear bit strictly after `from`, below `width`.
    fn next_false_index(self, from: usize, width: usize) -> Option<usize>;
    /// Clear every bit at or above `width` and return the result.
    fn mask(self, width: usize) -> Self;
}

#[inline]
fn low_mask_u128(width: usize) -> u128 {
    if width >= 128 {
        u128::MAX
    } else if width == 0 {
        0
    } else {
        (1u128 << width) - 1
    }
}

macro_rules! impl_int_ops {
    ($t:ty) => {
        impl BitOps for $t {
            #[inline]
            fn get(self, index: usize) -> bool {
                (self >> index) & 1 == 1
            }

            #[inline]
            fn set(&mut self, index: usize, value: bool) -> bool {
                let prev = self.get(index);
                if value {
                    *self |= 1 << index;
                } else {
                    *self &= !(1 << index);
                }
                prev
            }

            #[inline]
            fn count(self) -> usize {
                <$t>::count_ones(self) as usize
            }

            #[inline]
            fn is_empty(self) -> bool {
                self == 0
            }

            #[inline]
            fn first_index(self, width: usize) -> Option<usize> {
                let x = self & (low_mask_u128(width) as $t);
                if x == 0 {
                    None
                } else {
                    Some(x.trailing_zeros() as usize)
                }
            }

            #[inline]
            fn next_index(self, from: usize, width: usize) -> Option<usize> {
                let from = from + 1;
                if from >= width {
                    return None;
                }
                let x = self & (low_mask_u128(width) as $t) & (!0 << from);
                if x == 0 {
                    None
                } else {
                    Some(x.trailing_zeros() as usize)
                }
            }

            #[inline]
            fn last_index(self, width: usize) -> Option<usize> {
                let x = self & (low_mask_u128(width) as $t);
                if x == 0 {
                    None
                } else {
                    Some(<$t>::BITS as usize - 1 - x.leading_zeros() as usize)
                }
            }

            #[inline]
            fn prev_index(self, before: usize, width: usize) -> Option<usize> {
                self.last_index(width.min(before))
            }

            #[inline]
            fn first_false_index(self, width: usize) -> Option<usize> {
                let x = !self & (low_mask_u128(width) as $t);
                if x == 0 {
                    None
                } else {
                    Some(x.trailing_zeros() as usize)
                }
            }

            #[inline]
            fn next_false_index(self, from: usize, width: usize) -> Option<usize> {
                let from = from + 1;
                if from >= width {
                    return None;
                }
                let x = !self & (low_mask_u128(width) as $t) & (!0 << from);
                if x == 0 {
                    None
                } else {
                    Some(x.trailing_zeros() as usize)
                }
            }

            #[inline]
            fn mask(self, width: usize) -> Self {
                self & (low_mask_u128(width) as $t)
            }
        }
    };
}

impl_int_ops!(u8);
impl_int_ops!(u16);
impl_int_ops!(u32);
impl_int_ops!(u64);
impl_int_ops!(u128);

impl BitOps for bool {
    #[inline]
    fn get(self, index: usize) -> bool {
        debug_assert!(index < 1);
        self
    }

    #[inline]
    fn set(&mut self, index: usize, value: bool) -> bool {
        debug_assert!(index < 1);
        core::mem::replace(self, value)
    }

    #[inline]
    fn count(self) -> usize {
        self as usize
    }

    #[inline]
    fn is_empty(self) -> bool {
        !self
    }

    #[inline]
    fn first_index(self, _width: usize) -> Option<usize> {
        if self {
            Some(0)
        } else {
            None
        }
    }

    #[inline]
    fn next_index(self, _from: usize, _width: usize) -> Option<usize> {
        None
    }

    #[inline]
    fn last_index(self, width: usize) -> Option<usize> {
        self.first_index(width)
    }

    #[inline]
    fn prev_index(self, before: usize, _width: usize) -> Option<usize> {
        // Only index 0 exists; it is strictly before any `before > 0`.
        if before > 0 && self {
            Some(0)
        } else {
            None
        }
    }

    #[inline]
    fn first_false_index(self, _width: usize) -> Option<usize> {
        if self {
            None
        } else {
            Some(0)
        }
    }

    #[inline]
    fn next_false_index(self, _from: usize, _width: usize) -> Option<usize> {
        None
    }

    #[inline]
    fn mask(self, _width: usize) -> Self {
        self
    }
}

macro_rules! impl_array_ops {
    ($words:expr) => {
        impl BitOps for [u128; $words] {
            #[inline]
            fn get(self, index: usize) -> bool {
                (self[index >> 7] >> (index & 127)) & 1 == 1
            }

            #[inline]
            fn set(&mut self, index: usize, value: bool) -> bool {
                let prev = self.get(index);
                let word = index >> 7;
                let bit = index & 127;
                if value {
                    self[word] |= 1 << bit;
                } else {
                    self[word] &= !(1 << bit);
                }
                prev
            }

            #[inline]
            fn count(self) -> usize {
                let mut n = 0;
                for word in self {
                    n += word.count_ones() as usize;
                }
                n
            }

            #[inline]
            fn is_empty(self) -> bool {
                self.iter().all(|&word| word == 0)
            }

            #[inline]
            fn first_index(self, width: usize) -> Option<usize> {
                for wi in 0..$words {
                    let base = wi * 128;
                    let word = self[wi] & low_mask_u128(width.saturating_sub(base));
                    if word != 0 {
                        return Some(base + word.trailing_zeros() as usize);
                    }
                }
                None
            }

            #[inline]
            fn next_index(self, from: usize, width: usize) -> Option<usize> {
                let from = from + 1;
                if from >= width {
                    return None;
                }
                let mut first = self[from >> 7] & (!0 << (from & 127));
                first &= low_mask_u128(width - (from & !127));
                if first != 0 {
                    return Some((from & !127) + first.trailing_zeros() as usize);
                }
                for wi in (from >> 7) + 1..$words {
                    let base = wi * 128;
                    let word = self[wi] & low_mask_u128(width.saturating_sub(base));
                    if word != 0 {
                        return Some(base + word.trailing_zeros() as usize);
                    }
                }
                None
            }

            #[inline]
            fn last_index(self, width: usize) -> Option<usize> {
                debug_assert!(width <= $words * 128);
                if width == 0 {
                    return None;
                }
                for wi in (0..=(width - 1) >> 7).rev() {
                    let base = wi * 128;
                    let word = self[wi] & low_mask_u128(width - base);
                    if word != 0 {
                        return Some(base + 127 - word.leading_zeros() as usize);
                    }
                }
                None
            }

            #[inline]
            fn prev_index(self, before: usize, width: usize) -> Option<usize> {
                self.last_index(width.min(before))
            }

            #[inline]
            fn first_false_index(self, width: usize) -> Option<usize> {
                for wi in 0..$words {
                    let base = wi * 128;
                    let mask = low_mask_u128(width.saturating_sub(base));
                    let word = !self[wi] & mask;
                    if word != 0 {
                        return Some(base + word.trailing_zeros() as usize);
                    }
                }
                None
            }

            #[inline]
            fn next_false_index(self, from: usize, width: usize) -> Option<usize> {
                let from = from + 1;
                if from >= width {
                    return None;
                }
                let mut first = !self[from >> 7] & (!0 << (from & 127));
                first &= low_mask_u128(width - (from & !127));
                if first != 0 {
                    return Some((from & !127) + first.trailing_zeros() as usize);
                }
                for wi in (from >> 7) + 1..$words {
                    let base = wi * 128;
                    let word = !self[wi] & low_mask_u128(width.saturating_sub(base));
                    if word != 0 {
                        return Some(base + word.trailing_zeros() as usize);
                    }
                }
                None
            }

            #[inline]
            fn mask(mut self, width: usize) -> Self {
                for wi in 0..$words {
                    let base = wi * 128;
                    self[wi] &= low_mask_u128(width.saturating_sub(base));
                }
                self
            }
        }
    };
}

impl_array_ops!(2);
impl_array_ops!(3);
impl_array_ops!(4);
impl_array_ops!(5);
impl_array_ops!(6);
impl_array_ops!(7);
impl_array_ops!(8);

macro_rules! impl_bits {
    ($store:ty, HEAD $($n:expr),*) => {
        $(impl Bits for BitsImpl<$n> {
            type Store = $store;
        })*
    };
}

// Bits impls for every width in 1..=1024, grouped by backing store.
// Widths outside this range fail to compile, as they always have.
impl_bits!(
    bool, HEAD
    1
);
impl_bits!(
    u8, HEAD
    2, 3, 4, 5, 6, 7, 8
);
impl_bits!(
    u16, HEAD
    9, 10, 11, 12, 13, 14, 15, 16
);
impl_bits!(
    u32, HEAD
    17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32
);
impl_bits!(
    u64, HEAD
    33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,
    56, 57, 58, 59, 60, 61, 62, 63, 64
);
impl_bits!(
    u128, HEAD
    65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
    88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108,
    109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126,
    127, 128
);
impl_bits!(
    [u128; 2], HEAD
    129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146,
    147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164,
    165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182,
    183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200,
    201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218,
    219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236,
    237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254,
    255, 256
);
impl_bits!(
    [u128; 3], HEAD
    257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
    275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292,
    293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310,
    311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328,
    329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346,
    347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364,
    365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382,
    383, 384
);
impl_bits!(
    [u128; 4], HEAD
    385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402,
    403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420,
    421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438,
    439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456,
    457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474,
    475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492,
    493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510,
    511, 512
);
impl_bits!(
    [u128; 5], HEAD
    513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530,
    531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548,
    549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566,
    567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584,
    585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602,
    603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620,
    621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638,
    639, 640
);
impl_bits!(
    [u128; 6], HEAD
    641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658,
    659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676,
    677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694,
    695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712,
    713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730,
    731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748,
    749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766,
    767, 768
);
impl_bits!(
    [u128; 7], HEAD
    769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786,
    787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804,
    805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822,
    823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840,
    841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858,
    859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876,
    877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894,
    895, 896
);
impl_bits!(
    [u128; 8], HEAD
    897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914,
    915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932,
    933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950,
    951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968,
    969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986,
    987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003,
    1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018,
    1019, 1020, 1021, 1022, 1023, 1024
);

/// A fixed capacity inline bitmap of `N` bits.
///
/// Used as the occupancy map inside [`SparseChunk`](crate::SparseChunk).
/// Supports `N` in `1..=1024`; other sizes fail to compile.
#[derive(Clone, Copy, PartialEq, Eq, Debug)]
pub struct Bitmap<const N: usize>
where
    BitsImpl<N>: Bits,
{
    data: <BitsImpl<N> as Bits>::Store,
}

impl<const N: usize> Bitmap<N>
where
    BitsImpl<N>: Bits,
{
    /// Construct a bitmap with every bit clear.
    #[inline]
    pub fn new() -> Self {
        Self {
            data: Default::default(),
        }
    }

    /// Construct a bitmap from a value of the same type as its backing store.
    ///
    /// Bits at or above index `N` are cleared, keeping the bitmap coherent:
    /// `len()`, `is_empty()` and `is_full()` only ever count bits below `N`.
    #[inline]
    pub fn from_value(data: <BitsImpl<N> as Bits>::Store) -> Self {
        Self {
            data: data.mask(N),
        }
    }

    /// Count the number of set bits.
    #[inline]
    pub fn len(self) -> usize {
        self.data.count()
    }

    /// Test if the bitmap contains only clear bits.
    #[inline]
    pub fn is_empty(self) -> bool {
        self.data.is_empty()
    }

    /// Test if all `N` bits are set.
    #[inline]
    pub fn is_full(self) -> bool {
        self.data.count() == N
    }

    /// Get the value of the bit at a given index.
    #[inline]
    pub fn get(self, index: usize) -> bool {
        debug_assert!(index < N);
        self.data.get(index)
    }

    /// Set the value of the bit at a given index, returning the previous value.
    ///
    /// `index` must be `< N` (debug-asserted, as with the `bitmaps` crate);
    /// writing a padding bit in a release build would create an incoherent
    /// state, so `len()` would count a bit no scan or iterator can see.
    #[inline]
    pub fn set(&mut self, index: usize, value: bool) -> bool {
        debug_assert!(index < N);
        self.data.set(index, value)
    }

    /// Find the index of the first set bit.
    #[inline]
    pub fn first_index(self) -> Option<usize> {
        self.data.first_index(N)
    }

    /// Find the index of the first set bit strictly after `index`.
    #[inline]
    pub fn next_index(self, index: usize) -> Option<usize> {
        self.data.next_index(index, N)
    }

    /// Find the index of the last set bit.
    #[inline]
    pub fn last_index(self) -> Option<usize> {
        self.data.last_index(N)
    }

    /// Find the index of the last set bit strictly before `index`.
    #[inline]
    pub fn prev_index(self, index: usize) -> Option<usize> {
        self.data.prev_index(index, N)
    }

    /// Find the index of the first clear bit.
    #[inline]
    pub fn first_false_index(self) -> Option<usize> {
        self.data.first_false_index(N)
    }

    /// Find the index of the first clear bit strictly after `index`.
    #[inline]
    pub fn next_false_index(self, index: usize) -> Option<usize> {
        self.data.next_false_index(index, N)
    }
}

impl<const N: usize> Default for Bitmap<N>
where
    BitsImpl<N>: Bits,
{
    #[inline]
    fn default() -> Self {
        Self::new()
    }
}

/// An iterator over the indices of set bits in a [`Bitmap`].
#[derive(Clone, Debug)]
pub struct Iter<'a, const N: usize>
where
    BitsImpl<N>: Bits,
{
    head: Option<usize>,
    tail: Option<usize>,
    data: &'a Bitmap<N>,
}

impl<'a, const N: usize> Iterator for Iter<'a, N>
where
    BitsImpl<N>: Bits,
{
    type Item = usize;

    fn next(&mut self) -> Option<Self::Item> {
        let result;

        match self.head {
            None => {
                result = self.data.first_index();
            }
            Some(index) => {
                if index >= N {
                    result = None;
                } else {
                    result = self.data.next_index(index);
                }
            }
        }

        if let Some(index) = result {
            if let Some(tail) = self.tail {
                if tail <= index {
                    self.head = Some(N + 1);
                    self.tail = None;
                    return None;
                }
            } else {
                // tail is already done
                self.head = Some(N + 1);
                return None;
            }

            self.head = Some(index);
        } else {
            self.head = Some(N + 1);
        }

        result
    }

    fn size_hint(&self) -> (usize, Option<usize>) {
        // Sound upper bound only because the head/tail crossing checks yield
        // each index at most once.
        (0, Some(N))
    }
}

impl<const N: usize> DoubleEndedIterator for Iter<'_, N>
where
    BitsImpl<N>: Bits,
{
    fn next_back(&mut self) -> Option<Self::Item> {
        let result;

        match self.tail {
            None => {
                result = None;
            }
            Some(index) => {
                if index >= N {
                    result = self.data.last_index();
                } else {
                    result = self.data.prev_index(index);
                }
            }
        }

        if let Some(index) = result {
            if let Some(head) = self.head {
                if head >= index {
                    self.head = Some(N + 1);
                    self.tail = None;
                    return None;
                }
            }

            self.tail = Some(index);
        } else {
            self.tail = None;
        }

        result
    }
}

impl<const N: usize> core::iter::FusedIterator for Iter<'_, N> where BitsImpl<N>: Bits {}

impl<'a, const N: usize> IntoIterator for &'a Bitmap<N>
where
    BitsImpl<N>: Bits,
{
    type Item = usize;
    type IntoIter = Iter<'a, N>;

    fn into_iter(self) -> Self::IntoIter {
        Iter {
            head: None,
            tail: Some(N),
            data: self,
        }
    }
}

#[cfg(test)]
mod test {
    use super::*;

    fn exercise<const N: usize>()
    where
        BitsImpl<N>: Bits,
    {
        // Reference set of occupied indices, including both edges, word
        // boundaries, and an even spread.
        let mut indices = Vec::new();
        for i in [0, 1, 7, 8, 9, 31, 32, 33, 63, 64, 65, 127, 128] {
            if i < N {
                indices.push(i);
            }
        }
        let mut i = (N / 10).max(1);
        while i < N {
            if !indices.contains(&i) {
                indices.push(i);
            }
            i += (N / 10).max(1);
        }
        if !indices.contains(&(N - 1)) {
            indices.push(N - 1);
        }
        indices.sort_unstable();
        // O(1) membership oracle; Vec::contains is too slow under Miri.
        let mut occupied = vec![false; N];
        for &i in &indices {
            occupied[i] = true;
        }

        let mut b: Bitmap<N> = Bitmap::new();
        assert!(b.is_empty());
        assert!(!b.is_full());
        assert_eq!(b.first_index(), None);
        assert_eq!(b.last_index(), None);
        assert_eq!(b.next_index(0), None);
        assert_eq!(b.prev_index(0), None);
        assert_eq!(b.first_false_index(), Some(0));
        assert_eq!(b.into_iter().next(), None);
        assert_eq!(b.into_iter().next_back(), None);

        for &i in &indices {
            assert!(!b.set(i, true));
            assert!(b.set(i, true)); // previous value
        }
        assert_eq!(b.len(), indices.len());
        assert_eq!(b.is_full(), indices.len() == N);
        for &i in &indices {
            assert!(b.get(i));
        }

        // Forward scan over set bits.
        let mut from_oracle = indices.iter().copied();
        assert_eq!(b.first_index(), from_oracle.next());
        for (k, (&i, &j)) in indices.iter().zip(indices.iter().skip(1)).enumerate() {
            assert_eq!(b.next_index(i), Some(j));
            assert_eq!(b.next_index(j), indices.get(k + 2).copied());
        }
        assert_eq!(b.next_index(indices[indices.len() - 1]), None);

        // Reverse scan.
        assert_eq!(b.last_index(), indices.last().copied());
        for (&i, &j) in indices.iter().skip(1).zip(indices.iter()) {
            assert_eq!(b.prev_index(i), Some(j));
        }

        // Clear bits.
        let mut first_free = 0;
        while first_free < N && occupied[first_free] {
            first_free += 1;
        }
        if first_free < N {
            assert_eq!(b.first_false_index(), Some(first_free));
        }
        for start in 0..N {
            let mut expected = start + 1;
            while expected < N && occupied[expected] {
                expected += 1;
            }
            assert_eq!(
                b.next_false_index(start),
                if expected < N { Some(expected) } else { None }
            );
        }

        // Iterator and reverse iterator.
        assert_eq!(b.into_iter().collect::<Vec<_>>(), indices);
        assert_eq!(b.into_iter().rev().collect::<Vec<_>>(), {
            let mut v = indices.clone();
            v.reverse();
            v
        });

        // Mixed-direction drain yields each set bit exactly once, then
        // stays exhausted (fused).
        let mut it = b.into_iter();
        let mut mixed = Vec::new();
        while let Some(i) = it.next() {
            mixed.push(i);
            if let Some(j) = it.next_back() {
                mixed.push(j);
            }
        }
        assert_eq!(mixed.len(), indices.len());
        let mut sorted = mixed.clone();
        sorted.sort_unstable();
        assert_eq!(sorted, indices);
        assert_eq!(it.next(), None);
        assert_eq!(it.next_back(), None);
        assert_eq!(it.next(), None);

        // Same, leading with next_back.
        let mut it = b.into_iter();
        let mut mixed = Vec::new();
        while let Some(j) = it.next_back() {
            mixed.push(j);
            if let Some(i) = it.next() {
                mixed.push(i);
            }
        }
        assert_eq!(mixed.len(), indices.len());
        let mut sorted = mixed;
        sorted.sort_unstable();
        assert_eq!(sorted, indices);
        assert_eq!(it.next_back(), None);
        assert_eq!(it.next(), None);

        // Clearing.
        for &i in &indices {
            assert!(b.set(i, false));
        }
        assert!(b.is_empty());
        assert_eq!(b.len(), 0);

        // from_value round-trip.
        for &i in &indices {
            b.set(i, true);
        }
        let store: <BitsImpl<N> as Bits>::Store = b.data;
        assert_eq!(Bitmap::from_value(store), b);
    }

    #[test]
    fn from_value_normalizes_out_of_range_bits() {
        // Integer-backed, non-aligned width.
        let b: Bitmap<7> = Bitmap::from_value(0xff);
        assert_eq!(b.len(), 7);
        assert!(b.is_full());
        assert_eq!(b.into_iter().collect::<Vec<_>>(), (0..7).collect::<Vec<_>>());

        // Array-backed: full boundary word plus one bit into the partial word.
        let b: Bitmap<129> = Bitmap::from_value([u128::MAX, u128::MAX]);
        assert_eq!(b.len(), 129);
        assert!(b.is_full());

        let b: Bitmap<129> = Bitmap::from_value([0, u128::MAX]);
        assert_eq!(b.len(), 1);
        assert_eq!(b.first_index(), Some(128));
        assert_eq!(b.next_index(128), None);
        // 128 is the only set bit and also the last valid index: nothing
        // clear can follow index 127 within the bitmap.
        assert_eq!(b.next_false_index(127), None);
    }

    #[test]
    fn bitmap_widths() {
        exercise::<1>();
        exercise::<2>();
        exercise::<7>();
        exercise::<8>();
        exercise::<9>();
        exercise::<16>();
        exercise::<31>();
        exercise::<32>();
        exercise::<33>();
        exercise::<61>();
        exercise::<64>();
        exercise::<65>();
        exercise::<90>();
        exercise::<127>();
        exercise::<128>();
        exercise::<129>();
        exercise::<130>();
        exercise::<200>();
        exercise::<256>();
        exercise::<257>();
        exercise::<384>();
        exercise::<513>();
        exercise::<641>();
        exercise::<769>();
        exercise::<897>();
        exercise::<1023>();
        exercise::<1024>();
    }

    struct XorShift(u64);

    impl XorShift {
        fn next(&mut self) -> u64 {
            self.0 ^= self.0 << 13;
            self.0 ^= self.0 >> 7;
            self.0 ^= self.0 << 17;
            self.0
        }
    }

    fn exercise_random<const N: usize>(seed: u64)
    where
        BitsImpl<N>: Bits,
    {
        // Fixed-seed pseudo-random membership at varying densities, checked
        // against a sorted-Vec oracle.
        let mut rng = XorShift(seed);
        for round in 0..16usize {
            let density = (round + 1) * 48; // out of 768, i.e. up to ~83%
            let indices: Vec<usize> = (0..N)
                .filter(|_| rng.next() % 768 < density as u64)
                .collect();
            // O(1) membership oracle; Vec::contains is too slow under Miri.
            let mut occupied = vec![false; N];
            for &i in &indices {
                occupied[i] = true;
            }

            let mut b: Bitmap<N> = Bitmap::new();
            for &i in &indices {
                b.set(i, true);
            }
            for (i, &is) in occupied.iter().enumerate() {
                assert_eq!(b.get(i), is);
            }
            assert_eq!(b.len(), indices.len());
            assert_eq!(b.first_index(), indices.first().copied());
            assert_eq!(b.last_index(), indices.last().copied());
            assert!(b.into_iter().eq(indices.iter().copied()));
            assert!(b.into_iter().rev().eq(indices.iter().rev().copied()));
            for (&i, &j) in indices.iter().zip(indices.iter().skip(1)) {
                assert_eq!(b.next_index(i), Some(j));
                assert_eq!(b.prev_index(j), Some(i));
            }
            for start in (0..N).step_by(64) {
                let mut expected = start + 1;
                while expected < N && occupied[expected] {
                    expected += 1;
                }
                assert_eq!(
                    b.next_false_index(start),
                    if expected < N { Some(expected) } else { None }
                );
            }
        }
    }

    #[test]
    fn bitmap_random() {
        for seed in [0x9e3779b97f4a7c15, 0x243f6a8885a308d3, 42] {
            exercise_random::<1>(seed);
            exercise_random::<7>(seed);
            exercise_random::<8>(seed);
            exercise_random::<61>(seed);
            exercise_random::<64>(seed);
            exercise_random::<65>(seed);
            exercise_random::<128>(seed);
            exercise_random::<129>(seed);
            exercise_random::<256>(seed);
            exercise_random::<1000>(seed);
            exercise_random::<1024>(seed);
        }
    }
}
