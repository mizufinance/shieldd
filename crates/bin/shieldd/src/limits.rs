//! Local admission settings never participate in transaction or block validity.
use anyhow::{ensure, Result};

#[derive(Clone, Debug, serde::Deserialize)]
#[serde(default, deny_unknown_fields)]
pub struct ServiceLimits {
    pub response_page_bytes: usize,
    pub request_bytes: usize,
    pub items_per_request: usize,
    pub read_workers: usize,
    pub query_memory_bytes: usize,
    pub check_tx_workers: usize,
    pub archive_query_workers: usize,
}
impl Default for ServiceLimits {
    fn default() -> Self {
        Self {
            response_page_bytes: 4 * 1024 * 1024,
            request_bytes: 256 * 1024,
            items_per_request: 256,
            read_workers: 8,
            query_memory_bytes: 64 * 1024 * 1024,
            check_tx_workers: 2,
            archive_query_workers: 2,
        }
    }
}
impl ServiceLimits {
    pub fn from_env() -> Result<Self> {
        let limits = match std::env::var("SHIELDD_SERVICE_LIMITS") {
            Ok(json) => serde_json::from_str(&json)?,
            Err(std::env::VarError::NotPresent) => Self::default(),
            Err(error) => return Err(error.into()),
        };
        limits.validate()?;
        Ok(limits)
    }
    pub fn validate(&self) -> Result<()> {
        ensure!(
            (1024 * 1024..=4 * 1024 * 1024).contains(&self.response_page_bytes),
            "response page must be between 1 MiB and the supported 4 MiB transport budget"
        );
        ensure!(
            self.request_bytes > 0
                && self.request_bytes <= 256 * 1024
                && self.items_per_request > 0
                && self.items_per_request <= 256,
            "invalid query request budget"
        );
        ensure!(
            self.read_workers > 0
                && self.check_tx_workers > 0
                && self.archive_query_workers > 0
                && self.read_workers <= 1024
                && self.check_tx_workers <= 1024
                && self.archive_query_workers <= 1024,
            "invalid worker budget"
        );
        ensure!(
            self.query_memory_bytes
                >= self.check_tx_reservation_bytes() + self.reservation_bytes() as usize
                && self.query_memory_bytes <= u32::MAX as usize,
            "invalid query memory budget"
        );
        Ok(())
    }
    pub(crate) fn check_tx_reservation_bytes(&self) -> usize {
        self.check_tx_workers * self.reservation_bytes() as usize
    }
    pub(crate) fn read_memory_bytes(&self) -> usize {
        self.query_memory_bytes - self.check_tx_reservation_bytes()
    }
    pub(crate) fn reservation_bytes(&self) -> u32 {
        8 * 1024 * 1024
    }
    pub(crate) fn payload_page_bytes(&self) -> usize {
        self.response_page_bytes * 3 / 4
    }
}
