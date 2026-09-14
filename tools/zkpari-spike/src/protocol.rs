use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
pub struct ProofRecord {
    pub scenario: String,
    pub statement: String,
    pub proof: String,
}

#[derive(Default, Deserialize)]
#[serde(deny_unknown_fields)]
#[allow(dead_code)] // Shared wire protocol; each backend supports its own proving input.
pub struct Request {
    pub op: String,
    #[serde(default)]
    pub proofs: Vec<ProofRecord>,
    #[serde(default)]
    pub statements: Vec<String>,
    #[serde(default)]
    pub assignment: String,
    #[serde(default)]
    pub statement: String,
    #[serde(default)]
    pub scenario: String,
    #[serde(default)]
    pub gnark_proof: String,
    #[serde(default)]
    pub aggregate: String,
}

#[derive(Default, Serialize)]
pub struct Response {
    pub schema: &'static str,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub error: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub proof: Option<ProofRecord>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub aggregate: Option<String>,
    pub accepted: bool,
    pub real_count: usize,
    pub padded_count: usize,
    pub proof_bytes: usize,
    pub statement_bytes: usize,
    pub aggregate_bytes: usize,
    pub key_bytes: usize,
    pub srs_bytes: usize,
    pub peak_rss_bytes: u64,
    pub initialization_ns: u64,
    pub key_preparation_ns: u64,
    pub proving_key_load_ns: u64,
    pub relation_load_ns: u64,
    pub srs_preparation_ns: u64,
    pub bridge_ns: u64,
    pub prove_ns: u64,
    pub encoding_ns: u64,
    pub verify_prepared_ns: u64,
    pub verify_checked_ns: u64,
    pub batch_preparation_ns: u64,
    pub batch_verify_ns: u64,
    pub batch_checked_ns: u64,
    pub aggregation_preparation_ns: u64,
    pub aggregation_ns: u64,
    pub aggregation_checked_ns: u64,
    pub combined_ns: u64,
}
impl Response {
    pub fn new() -> Self {
        Self {
            schema: "shieldd.proof_spike.worker.v1",
            ..Self::default()
        }
    }
}

pub fn peak_rss_bytes() -> u64 {
    let mut usage = std::mem::MaybeUninit::<libc::rusage>::uninit();
    // getrusage initializes the output on success; no pointer is retained.
    let status = unsafe { libc::getrusage(libc::RUSAGE_SELF, usage.as_mut_ptr()) };
    assert_eq!(status, 0, "getrusage failed");
    let rss = unsafe { usage.assume_init() }.ru_maxrss as u64;
    if cfg!(target_os = "macos") {
        rss
    } else {
        rss * 1024
    }
}
