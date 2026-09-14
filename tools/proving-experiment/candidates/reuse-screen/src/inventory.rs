use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{CircuitPosition, Var},
};
use serde::Serialize;
use std::{cell::RefCell, collections::BTreeMap};

#[derive(PartialEq, Eq, PartialOrd, Ord)]
enum Input {
    Circuit(String),
    Constant(u64),
}

fn identity(value: &Var<'_, Scalar>) -> Option<Input> {
    if value.diagnostic_position().is_some() {
        return Some(Input::Circuit(format!("{value:?}")));
    }
    (0..=64)
        .find(|n| value == &Var::native(Scalar::from(*n)))
        .map(Input::Constant)
}

#[derive(PartialEq, Eq, PartialOrd, Ord)]
enum Key {
    Hash { domain: u8, inputs: Vec<Input> },
    Bits { width: usize, input: Input },
}
#[derive(PartialEq, Eq, PartialOrd, Ord)]
struct ScopedKey {
    field: &'static str,
    parameters: [u8; 32],
    operation: Key,
}
#[derive(Serialize)]
pub enum Kind {
    Hash { domain: u8, arity: usize },
    Bits { width: usize },
}
pub struct Span {
    pub start: CircuitPosition,
    pub end: CircuitPosition,
    pub kind: Kind,
    pub duplicate_of: Option<usize>,
    pub identity_complete: bool,
}
struct State {
    parameters: [u8; 32],
    seen: BTreeMap<ScopedKey, usize>,
    spans: Vec<Span>,
}
thread_local! { static ACTIVE: RefCell<Option<State>> = const { RefCell::new(None) }; }

pub fn begin(parameters: [u8; 32]) {
    ACTIVE.with(|active| {
        assert!(active.borrow().is_none());
        *active.borrow_mut() = Some(State {
            parameters,
            seen: BTreeMap::new(),
            spans: Vec::new(),
        });
    });
}
pub fn finish() -> Vec<Span> {
    ACTIVE.with(|active| active.borrow_mut().take().expect("active inventory").spans)
}
fn record(
    key: impl FnOnce() -> Option<Key>,
    kind: Kind,
    start: CircuitPosition,
    end: CircuitPosition,
) {
    ACTIVE.with(|active| {
        let mut active = active.borrow_mut();
        if let Some(state) = active.as_mut() {
            let key = key().map(|operation| ScopedKey {
                field: "BLS12-381.Fr",
                parameters: state.parameters,
                operation,
            });
            let identity_complete = key.is_some();
            let duplicate_of = key.as_ref().and_then(|key| state.seen.get(key)).copied();
            if let Some(key) = key {
                state.seen.entry(key).or_insert(state.spans.len());
            }
            state.spans.push(Span {
                start,
                end,
                kind,
                duplicate_of,
                identity_complete,
            });
        }
    });
}
pub fn hash(domain: u8, inputs: &[Var<'_, Scalar>], start: CircuitPosition, end: CircuitPosition) {
    record(
        || {
            if !inputs.iter().any(|v| v.diagnostic_position().is_some()) {
                return None;
            }
            Some(Key::Hash {
                domain,
                inputs: inputs.iter().map(identity).collect::<Option<Vec<_>>>()?,
            })
        },
        Kind::Hash {
            domain,
            arity: inputs.len(),
        },
        start,
        end,
    );
}
pub fn bits(width: usize, input: &Var<'_, Scalar>, start: CircuitPosition, end: CircuitPosition) {
    record(
        || {
            if input.diagnostic_position().is_none() {
                return None;
            }
            Some(Key::Bits {
                width,
                input: identity(input)?,
            })
        },
        Kind::Bits { width },
        start,
        end,
    );
}
