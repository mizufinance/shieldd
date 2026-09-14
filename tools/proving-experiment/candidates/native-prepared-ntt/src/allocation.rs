//! Counts requested Rust heap bytes; excludes native allocator overhead and RSS.
use std::{alloc::{GlobalAlloc, Layout, System}, io::Write, sync::atomic::{AtomicUsize, Ordering::Relaxed}};
static LIVE: AtomicUsize = AtomicUsize::new(0);
static PEAK: AtomicUsize = AtomicUsize::new(0);
struct Counter;
fn add(size: usize) { let live = LIVE.fetch_add(size, Relaxed) + size; PEAK.fetch_max(live, Relaxed); }
unsafe impl GlobalAlloc for Counter {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        let p = unsafe { System.alloc(layout) }; if !p.is_null() { add(layout.size()); } p
    }
    unsafe fn alloc_zeroed(&self, layout: Layout) -> *mut u8 {
        let p = unsafe { System.alloc_zeroed(layout) }; if !p.is_null() { add(layout.size()); } p
    }
    unsafe fn dealloc(&self, p: *mut u8, layout: Layout) {
        LIVE.fetch_sub(layout.size(), Relaxed); unsafe { System.dealloc(p, layout) }
    }
    unsafe fn realloc(&self, p: *mut u8, layout: Layout, size: usize) -> *mut u8 {
        let next = unsafe { System.realloc(p, layout, size) };
        if !next.is_null() {
            if size >= layout.size() { add(size - layout.size()); }
            else { LIVE.fetch_sub(layout.size() - size, Relaxed); }
        } next
    }
}
#[global_allocator]
static ALLOCATOR: Counter = Counter;
pub fn record(stage: &'static str) {
    let live = LIVE.load(Relaxed); let peak = PEAK.swap(live, Relaxed);
    let _ = writeln!(std::io::stderr().lock(), "{{\"schema\":\"shieldd.native_allocation.v1\",\"stage\":\"{stage}\",\"live_bytes\":{live},\"interval_peak_bytes\":{peak}}}");
}
