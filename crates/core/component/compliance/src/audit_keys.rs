pub use shieldd_sdk_crypto::audit::AuditKeys;

#[cfg(any(test, feature = "test-helpers"))]
pub fn test_keys() -> AuditKeys {
    use shieldd_sdk_crypto::{generators::SPEND_AUTH, Fr};
    AuditKeys {
        epoch: 1,
        amount: *SPEND_AUTH * Fr::from(201),
        sender: *SPEND_AUTH * Fr::from(202),
        receiver: *SPEND_AUTH * Fr::from(203),
        checking: *SPEND_AUTH * Fr::from(204),
    }
}
