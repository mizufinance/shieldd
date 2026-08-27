//! Extraction-friendly statement-byte and wrapper-decode effects.
//!
//! Production adapters own concrete hashing, framing, canonical encoding, and
//! wrapper parsing. These cores own their call order, error propagation, and
//! the exact input/output records used by the runtime.

/// Inputs needed to construct the authenticated statement hash chain.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct StatementHashCoreInput<CanonicalInput> {
    pub serialized_vk: Vec<u8>,
    pub canonical_input: CanonicalInput,
}

/// External byte operations used by the statement hash chain.
#[doc(hidden)]
pub trait StatementHashEffect<CanonicalInput, E> {
    fn vk_preimage(&mut self, serialized_vk: &[u8]) -> Result<Vec<u8>, E>;

    fn sha256(&mut self, preimage: &[u8]) -> Result<Vec<u8>, E>;

    fn canonical_statement(
        &mut self,
        canonical_input: &CanonicalInput,
        vk_digest: &[u8],
    ) -> Result<Vec<u8>, E>;

    fn statement_preimage(&mut self, canonical_statement: &[u8]) -> Result<Vec<u8>, E>;

    fn challenge_context_preimage(&mut self, statement_digest: &[u8]) -> Result<Vec<u8>, E>;
}

/// Successful statement hash execution with every effect input and output.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct StatementHashExecution<CanonicalInput, Effect> {
    pub serialized_vk: Vec<u8>,
    pub canonical_input: CanonicalInput,
    pub vk_preimage: Vec<u8>,
    pub vk_digest: Vec<u8>,
    pub canonical_statement: Vec<u8>,
    pub statement_preimage: Vec<u8>,
    pub statement_digest: Vec<u8>,
    pub challenge_context_preimage: Vec<u8>,
    pub challenge_context: Vec<u8>,
    pub effect: Effect,
}

/// Execute the statement hash chain in protocol order and retain its effects.
#[doc(hidden)]
pub fn statement_hash_effect_core<CanonicalInput, E, Effect>(
    input: StatementHashCoreInput<CanonicalInput>,
    mut effect: Effect,
) -> Result<StatementHashExecution<CanonicalInput, Effect>, E>
where
    Effect: StatementHashEffect<CanonicalInput, E>,
{
    let StatementHashCoreInput {
        serialized_vk,
        canonical_input,
    } = input;

    let vk_preimage = match effect.vk_preimage(&serialized_vk) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };
    let vk_digest = match effect.sha256(&vk_preimage) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };
    let canonical_statement = match effect.canonical_statement(&canonical_input, &vk_digest) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };
    let statement_preimage = match effect.statement_preimage(&canonical_statement) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };
    let statement_digest = match effect.sha256(&statement_preimage) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };
    let challenge_context_preimage = match effect.challenge_context_preimage(&statement_digest) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };
    let challenge_context = match effect.sha256(&challenge_context_preimage) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };

    Ok(StatementHashExecution {
        serialized_vk,
        canonical_input,
        vk_preimage,
        vk_digest,
        canonical_statement,
        statement_preimage,
        statement_digest,
        challenge_context_preimage,
        challenge_context,
        effect,
    })
}

/// Exact inputs supplied to the shipping wrapper decoder.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct WrapperDecodeCoreInput {
    pub expected_statement_digest: Vec<u8>,
    pub wrapped_proof_bytes: Vec<u8>,
    pub max_aggregate_proof_bytes: usize,
}

/// External shipping wrapper decoder.
#[doc(hidden)]
pub trait WrapperDecodeEffect<E> {
    fn decode_wrapper(
        &mut self,
        wrapped_proof_bytes: &[u8],
        expected_statement_digest: &[u8],
        max_aggregate_proof_bytes: usize,
    ) -> Result<Vec<u8>, E>;
}

/// Successful wrapper decoding with the exact accepted bytes and cap.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct WrapperDecodeExecution<Effect> {
    pub expected_statement_digest: Vec<u8>,
    pub wrapped_proof_bytes: Vec<u8>,
    pub max_aggregate_proof_bytes: usize,
    pub inner_proof_bytes: Vec<u8>,
    pub effect: Effect,
}

/// Decode one shipping wrapper and retain the exact successful effect output.
#[doc(hidden)]
pub fn wrapper_decode_effect_core<E, Effect>(
    input: WrapperDecodeCoreInput,
    mut effect: Effect,
) -> Result<WrapperDecodeExecution<Effect>, E>
where
    Effect: WrapperDecodeEffect<E>,
{
    let WrapperDecodeCoreInput {
        expected_statement_digest,
        wrapped_proof_bytes,
        max_aggregate_proof_bytes,
    } = input;
    let inner_proof_bytes = match effect.decode_wrapper(
        &wrapped_proof_bytes,
        &expected_statement_digest,
        max_aggregate_proof_bytes,
    ) {
        Ok(value) => value,
        Err(error) => return Err(error),
    };

    Ok(WrapperDecodeExecution {
        expected_statement_digest,
        wrapped_proof_bytes,
        max_aggregate_proof_bytes,
        inner_proof_bytes,
        effect,
    })
}

/// A statement hash execution paired with its digest-authenticated wrapper.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct StatementBindingExecution<CanonicalInput, HashEffect, DecodeEffect> {
    pub statement: StatementHashExecution<CanonicalInput, HashEffect>,
    pub wrapper: WrapperDecodeExecution<DecodeEffect>,
}

/// Failure to join executions that authenticated different statements.
#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum StatementBindingExecutionError {
    StatementDigestMismatch,
}

/// Join only executions whose statement digest is the wrapper's expected digest.
#[doc(hidden)]
pub fn statement_binding_execution_core<CanonicalInput, HashEffect, DecodeEffect>(
    statement: StatementHashExecution<CanonicalInput, HashEffect>,
    wrapper: WrapperDecodeExecution<DecodeEffect>,
) -> Result<
    StatementBindingExecution<CanonicalInput, HashEffect, DecodeEffect>,
    StatementBindingExecutionError,
> {
    if statement.statement_digest != wrapper.expected_statement_digest {
        return Err(StatementBindingExecutionError::StatementDigestMismatch);
    }

    Ok(StatementBindingExecution { statement, wrapper })
}

#[cfg(test)]
mod tests {
    use std::{cell::RefCell, collections::VecDeque, rc::Rc};

    use super::{
        statement_binding_execution_core, statement_hash_effect_core, wrapper_decode_effect_core,
        StatementBindingExecutionError, StatementHashCoreInput, StatementHashEffect,
        WrapperDecodeCoreInput, WrapperDecodeEffect,
    };

    #[derive(Clone, Copy, Debug, Eq, PartialEq)]
    enum Stage {
        VkPreimage,
        VkSha,
        CanonicalStatement,
        StatementPreimage,
        StatementSha,
        ChallengeContextPreimage,
        ChallengeContextSha,
        WrapperDecode,
    }

    #[derive(Clone, Copy, Debug, Eq, PartialEq)]
    struct ScriptError(Stage);

    #[derive(Clone, Debug, Eq, PartialEq)]
    struct ScriptedStatementEffect {
        calls: Rc<RefCell<Vec<Stage>>>,
        sha_outputs: VecDeque<Vec<u8>>,
        fail_at: Option<Stage>,
        sha_count: usize,
    }

    impl ScriptedStatementEffect {
        fn new(calls: Rc<RefCell<Vec<Stage>>>, fail_at: Option<Stage>) -> ScriptedStatementEffect {
            ScriptedStatementEffect {
                calls,
                sha_outputs: VecDeque::from(vec![vec![0xa1], vec![0xa2], vec![0xa3]]),
                fail_at,
                sha_count: 0,
            }
        }

        fn enter(&self, stage: Stage) -> Result<(), ScriptError> {
            self.calls.borrow_mut().push(stage);
            if self.fail_at == Some(stage) {
                Err(ScriptError(stage))
            } else {
                Ok(())
            }
        }
    }

    impl StatementHashEffect<u8, ScriptError> for ScriptedStatementEffect {
        fn vk_preimage(&mut self, serialized_vk: &[u8]) -> Result<Vec<u8>, ScriptError> {
            self.enter(Stage::VkPreimage)?;
            let mut output = vec![0x10];
            output.extend_from_slice(serialized_vk);
            Ok(output)
        }

        fn sha256(&mut self, _preimage: &[u8]) -> Result<Vec<u8>, ScriptError> {
            let stage = match self.sha_count {
                0 => Stage::VkSha,
                1 => Stage::StatementSha,
                _ => Stage::ChallengeContextSha,
            };
            self.sha_count += 1;
            self.enter(stage)?;
            Ok(self
                .sha_outputs
                .pop_front()
                .expect("script supplies one output per SHA call"))
        }

        fn canonical_statement(
            &mut self,
            canonical_input: &u8,
            vk_digest: &[u8],
        ) -> Result<Vec<u8>, ScriptError> {
            self.enter(Stage::CanonicalStatement)?;
            let mut output = vec![*canonical_input];
            output.extend_from_slice(vk_digest);
            Ok(output)
        }

        fn statement_preimage(
            &mut self,
            canonical_statement: &[u8],
        ) -> Result<Vec<u8>, ScriptError> {
            self.enter(Stage::StatementPreimage)?;
            let mut output = vec![0x20];
            output.extend_from_slice(canonical_statement);
            Ok(output)
        }

        fn challenge_context_preimage(
            &mut self,
            statement_digest: &[u8],
        ) -> Result<Vec<u8>, ScriptError> {
            self.enter(Stage::ChallengeContextPreimage)?;
            let mut output = vec![0x30];
            output.extend_from_slice(statement_digest);
            Ok(output)
        }
    }

    #[derive(Clone, Debug, Eq, PartialEq)]
    struct ScriptedWrapperEffect {
        calls: Rc<RefCell<Vec<Stage>>>,
        output: Result<Vec<u8>, ScriptError>,
    }

    impl WrapperDecodeEffect<ScriptError> for ScriptedWrapperEffect {
        fn decode_wrapper(
            &mut self,
            _wrapped_proof_bytes: &[u8],
            _expected_statement_digest: &[u8],
            _max_aggregate_proof_bytes: usize,
        ) -> Result<Vec<u8>, ScriptError> {
            self.calls.borrow_mut().push(Stage::WrapperDecode);
            self.output.clone()
        }
    }

    fn statement_input() -> StatementHashCoreInput<u8> {
        StatementHashCoreInput {
            serialized_vk: vec![0x01, 0x02],
            canonical_input: 0x40,
        }
    }

    #[test]
    fn statement_hash_core_retains_exact_order_and_values() {
        let calls = Rc::new(RefCell::new(Vec::new()));
        let execution = statement_hash_effect_core(
            statement_input(),
            ScriptedStatementEffect::new(calls.clone(), None),
        )
        .expect("scripted execution succeeds");

        assert_eq!(
            calls.borrow().as_slice(),
            &[
                Stage::VkPreimage,
                Stage::VkSha,
                Stage::CanonicalStatement,
                Stage::StatementPreimage,
                Stage::StatementSha,
                Stage::ChallengeContextPreimage,
                Stage::ChallengeContextSha,
            ]
        );
        assert_eq!(execution.serialized_vk, vec![0x01, 0x02]);
        assert_eq!(execution.canonical_input, 0x40);
        assert_eq!(execution.vk_preimage, vec![0x10, 0x01, 0x02]);
        assert_eq!(execution.vk_digest, vec![0xa1]);
        assert_eq!(execution.canonical_statement, vec![0x40, 0xa1]);
        assert_eq!(execution.statement_preimage, vec![0x20, 0x40, 0xa1]);
        assert_eq!(execution.statement_digest, vec![0xa2]);
        assert_eq!(execution.challenge_context_preimage, vec![0x30, 0xa2]);
        assert_eq!(execution.challenge_context, vec![0xa3]);
    }

    #[test]
    fn statement_hash_core_stops_at_every_failing_stage() {
        let stages = [
            Stage::VkPreimage,
            Stage::VkSha,
            Stage::CanonicalStatement,
            Stage::StatementPreimage,
            Stage::StatementSha,
            Stage::ChallengeContextPreimage,
            Stage::ChallengeContextSha,
        ];

        for (index, stage) in stages.iter().copied().enumerate() {
            let calls = Rc::new(RefCell::new(Vec::new()));
            let result = statement_hash_effect_core(
                statement_input(),
                ScriptedStatementEffect::new(calls.clone(), Some(stage)),
            );

            assert_eq!(result, Err(ScriptError(stage)));
            assert_eq!(calls.borrow().as_slice(), &stages[..=index]);
        }
    }

    #[test]
    fn wrapper_decode_and_binding_are_exact_and_fail_closed() {
        let digest = vec![0xa2];
        let calls = Rc::new(RefCell::new(Vec::new()));
        let wrapper = wrapper_decode_effect_core(
            WrapperDecodeCoreInput {
                expected_statement_digest: digest.clone(),
                wrapped_proof_bytes: vec![0x51, 0x52],
                max_aggregate_proof_bytes: 131_072,
            },
            ScriptedWrapperEffect {
                calls: calls.clone(),
                output: Ok(vec![0x52]),
            },
        )
        .expect("scripted wrapper succeeds");
        assert_eq!(calls.borrow().as_slice(), &[Stage::WrapperDecode]);
        assert_eq!(wrapper.expected_statement_digest, digest);
        assert_eq!(wrapper.wrapped_proof_bytes, vec![0x51, 0x52]);
        assert_eq!(wrapper.max_aggregate_proof_bytes, 131_072);
        assert_eq!(wrapper.inner_proof_bytes, vec![0x52]);

        let statement_calls = Rc::new(RefCell::new(Vec::new()));
        let statement = statement_hash_effect_core(
            statement_input(),
            ScriptedStatementEffect::new(statement_calls, None),
        )
        .expect("scripted statement succeeds");
        let binding = statement_binding_execution_core(statement, wrapper)
            .expect("matching statement digest");
        assert_eq!(
            binding.statement.statement_digest,
            binding.wrapper.expected_statement_digest
        );

        let failed_calls = Rc::new(RefCell::new(Vec::new()));
        let failed = wrapper_decode_effect_core(
            WrapperDecodeCoreInput {
                expected_statement_digest: vec![0xa2],
                wrapped_proof_bytes: vec![0x51],
                max_aggregate_proof_bytes: 131_072,
            },
            ScriptedWrapperEffect {
                calls: failed_calls.clone(),
                output: Err(ScriptError(Stage::WrapperDecode)),
            },
        );
        assert_eq!(failed, Err(ScriptError(Stage::WrapperDecode)));
        assert_eq!(failed_calls.borrow().as_slice(), &[Stage::WrapperDecode]);

        let mismatch_calls = Rc::new(RefCell::new(Vec::new()));
        let statement = statement_hash_effect_core(
            statement_input(),
            ScriptedStatementEffect::new(mismatch_calls, None),
        )
        .expect("scripted statement succeeds");
        let wrapper_calls = Rc::new(RefCell::new(Vec::new()));
        let mismatched_wrapper = wrapper_decode_effect_core(
            WrapperDecodeCoreInput {
                expected_statement_digest: vec![0xff],
                wrapped_proof_bytes: vec![0x51],
                max_aggregate_proof_bytes: 131_072,
            },
            ScriptedWrapperEffect {
                calls: wrapper_calls,
                output: Ok(vec![0x51]),
            },
        )
        .expect("wrapper execution succeeds before binding");
        assert_eq!(
            statement_binding_execution_core(statement, mismatched_wrapper),
            Err(StatementBindingExecutionError::StatementDigestMismatch)
        );
    }
}
