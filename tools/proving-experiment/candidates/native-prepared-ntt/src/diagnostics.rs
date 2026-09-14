//! Read-only circuit spans, compiled only for the bounded cost inventory.
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{CircuitPosition, Context},
};
use serde::Serialize;
use std::cell::RefCell;

#[derive(Clone, Copy, Serialize)]
pub struct Position {
    pub witnesses: usize,
    pub nodes: usize,
    pub assertions: usize,
}
impl From<CircuitPosition> for Position {
    fn from(p: CircuitPosition) -> Self {
        Self {
            witnesses: p.witnesses,
            nodes: p.nodes,
            assertions: p.assertions,
        }
    }
}
#[derive(Serialize)]
pub struct Event {
    pub category: &'static str,
    pub label: String,
    pub start: Position,
    pub end: Position,
    pub domain: Option<u8>,
    pub arity: Option<usize>,
    pub permutations: usize,
    pub scalar_bits: Option<usize>,
    pub fixed_base: Option<bool>,
}
thread_local! { static EVENTS: RefCell<Option<Vec<Event>>> = const { RefCell::new(None) }; }
pub fn begin() {
    EVENTS.with(|events| {
        assert!(events.borrow().is_none());
        *events.borrow_mut() = Some(Vec::new());
    });
}
pub fn finish() -> Vec<Event> {
    EVENTS.with(|events| events.borrow_mut().take().expect("active inventory"))
}
pub fn record(event: Event) {
    EVENTS.with(|events| {
        if let Some(events) = events.borrow_mut().as_mut() {
            events.push(event);
        }
    });
}
pub fn span(
    category: &'static str,
    label: &str,
    start: CircuitPosition,
    end: CircuitPosition,
) -> Event {
    Event {
        category,
        label: label.into(),
        start: start.into(),
        end: end.into(),
        domain: None,
        arity: None,
        permutations: 0,
        scalar_bits: None,
        fixed_base: None,
    }
}
pub struct Components {
    previous: CircuitPosition,
}
impl Components {
    pub fn new(ctx: Context<'_, Scalar>) -> Self {
        Self {
            previous: ctx.diagnostic_position(),
        }
    }
    pub fn mark(&mut self, ctx: Context<'_, Scalar>, label: &str) {
        let end = ctx.diagnostic_position();
        record(span("component", label, self.previous, end));
        self.previous = end;
    }
}
