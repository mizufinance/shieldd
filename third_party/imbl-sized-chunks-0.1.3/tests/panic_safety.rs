use imbl_sized_chunks::{Chunk, InlineArray};
use std::panic::{catch_unwind, AssertUnwindSafe};
use std::sync::atomic::{AtomicBool, AtomicUsize, Ordering};

struct Element<'a> {
    drops: &'a AtomicUsize,
    panic_once: &'a AtomicBool,
}

#[cfg(feature = "ringbuffer")]
#[test]
fn wrapped_ring_removal_excludes_dropped_slots_after_panic() {
    use imbl_sized_chunks::ring_buffer::HasLength;
    use imbl_sized_chunks::RingBuffer;
    for operation in 0..3 {
        for panics in [false, true] {
            let drops = AtomicUsize::new(0);
            let panic_once = AtomicBool::new(false);
            let mut ring = RingBuffer::<_, 4>::new();
            for _ in 0..3 {
                ring.push_back(Element {
                    drops: &drops,
                    panic_once: &panic_once,
                });
                drop(ring.pop_front());
            }
            let removed = AtomicUsize::new(0);
            ring.push_back(Element {
                drops: &removed,
                panic_once: &panic_once,
            });
            panic_once.store(panics, Ordering::SeqCst);
            let result = catch_unwind(AssertUnwindSafe(|| match operation {
                0 => ring.clear(),
                1 => ring.drop_left(1),
                _ => ring.drop_right(0),
            }));
            assert_eq!(result.is_err(), panics);
            assert!(ring.is_empty());
            ring.push_back(Element {
                drops: &drops,
                panic_once: &panic_once,
            });
            drop(ring);
            assert_eq!(removed.load(Ordering::SeqCst), 1);
            assert_eq!(drops.load(Ordering::SeqCst), 4);
        }
    }
}

impl Drop for Element<'_> {
    fn drop(&mut self) {
        self.drops.fetch_add(1, Ordering::SeqCst);
        if self.panic_once.swap(false, Ordering::SeqCst) {
            panic!("element destructor");
        }
    }
}

#[test]
fn chunk_removal_commits_live_range_before_dropping() {
    for operation in 0..3 {
        for panics in [false, true] {
            let drops = [AtomicUsize::new(0), AtomicUsize::new(0)];
            let panic_once = AtomicBool::new(panics);
            let mut chunk = Chunk::<_, 4>::new();
            for counter in &drops {
                chunk.push_back(Element {
                    drops: counter,
                    panic_once: &panic_once,
                });
            }
            let result = catch_unwind(AssertUnwindSafe(|| match operation {
                0 => chunk.clear(),
                1 => chunk.drop_left(1),
                _ => chunk.drop_right(1),
            }));
            assert_eq!(result.is_err(), panics);
            assert_eq!(chunk.len(), if operation == 0 { 0 } else { 1 });
            if operation != 0 {
                let retained = if operation == 1 { 1 } else { 0 };
                assert!(std::ptr::eq(chunk[0].drops, &drops[retained]));
            }
            let extra = AtomicUsize::new(0);
            chunk.push_back(Element {
                drops: &extra,
                panic_once: &panic_once,
            });
            drop(chunk);
            assert_eq!(extra.load(Ordering::SeqCst), 1);
            assert!(drops
                .iter()
                .all(|counter| counter.load(Ordering::SeqCst) == 1));
        }
    }
}

#[test]
fn inline_removal_commits_length_before_dropping() {
    for clears in [false, true] {
        for panics in [false, true] {
            let drops = [AtomicUsize::new(0), AtomicUsize::new(0)];
            let panic_once = AtomicBool::new(panics);
            let mut array = InlineArray::<_, [usize; 16]>::new();
            for counter in &drops {
                array.push(Element {
                    drops: counter,
                    panic_once: &panic_once,
                });
            }
            let result = catch_unwind(AssertUnwindSafe(|| {
                if clears {
                    array.clear()
                } else {
                    array.truncate(1)
                }
            }));
            assert_eq!(result.is_err(), panics);
            assert_eq!(array.len(), if clears { 0 } else { 1 });
            if !clears {
                assert!(std::ptr::eq(array[0].drops, &drops[0]));
            }
            let extra = AtomicUsize::new(0);
            array.push(Element {
                drops: &extra,
                panic_once: &panic_once,
            });
            drop(array);
            assert_eq!(extra.load(Ordering::SeqCst), 1);
            assert!(drops
                .iter()
                .all(|counter| counter.load(Ordering::SeqCst) == 1));
        }
    }
}

#[test]
fn inline_layout_handles_empty_and_header_last_arrays() {
    let mut empty = InlineArray::<[u8; 32], [usize; 2]>::new();
    assert_eq!(InlineArray::<[u8; 32], [usize; 2]>::CAPACITY, 0);
    empty.clear();
    empty.truncate(0);
    assert_eq!(empty.len(), 0);

    #[repr(align(16))]
    struct Aligned<'a>(Element<'a>);
    let drops = AtomicUsize::new(0);
    let panic_once = AtomicBool::new(true);
    let mut array = InlineArray::<_, [u128; 4]>::new();
    array.push(Aligned(Element {
        drops: &drops,
        panic_once: &panic_once,
    }));
    let result = catch_unwind(AssertUnwindSafe(|| array.clear()));
    assert!(result.is_err());
    assert_eq!(array.len(), 0);
    array.push(Aligned(Element {
        drops: &drops,
        panic_once: &panic_once,
    }));
    assert!(std::ptr::eq(array[0].0.drops, &drops));
    drop(array);
    assert_eq!(drops.load(Ordering::SeqCst), 2);
}
