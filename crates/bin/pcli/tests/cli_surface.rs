use assert_cmd::Command;
use predicates::prelude::*;

#[test]
fn offline_compliance_commands_are_discoverable() {
    let mut command = Command::cargo_bin("pcli").unwrap();
    command.args(["compliance", "--help"]);
    let mut assertion = command.assert().success();
    for name in [
        "generate-dk",
        "sign-asset-grant",
        "sign-user-grant",
        "derive-spend-vk",
    ] {
        assertion =
            assertion.stdout(predicate::str::is_match(format!(r"(?m)^\s+{name}\s")).unwrap());
    }
}

#[test]
fn wallet_initialization_methods_are_discoverable() {
    let mut command = Command::cargo_bin("pcli").unwrap();
    command.args(["init", "--help"]);
    command
        .assert()
        .success()
        .stdout(predicate::str::contains("view-only"))
        .stdout(predicate::str::contains("soft-kms"))
        .stdout(predicate::str::contains("ledger").not());
    Command::cargo_bin("pcli")
        .unwrap()
        .args(["init", "ledger"])
        .assert()
        .failure();
}

#[test]
fn generates_a_matching_detection_keypair_without_a_wallet() {
    use group::GroupEncoding;
    use shieldd_sdk_crypto::{generators::SPEND_AUTH, Fr, SubgroupPoint};

    let directory = tempfile::tempdir().unwrap();
    let output = Command::cargo_bin("pcli")
        .unwrap()
        .arg("--home")
        .arg(directory.path())
        .current_dir(directory.path())
        .args(["compliance", "generate-dk"])
        .assert()
        .success();
    let stdout = String::from_utf8_lossy(&output.get_output().stdout);
    let bytes = |label| -> [u8; 32] {
        let encoded = stdout
            .lines()
            .find_map(|line| line.trim().strip_prefix(label))
            .unwrap();
        hex::decode(encoded.trim()).unwrap().try_into().unwrap()
    };
    let secret = Fr::from_bytes(&bytes("DK (hex):")).unwrap();
    let public = SubgroupPoint::from_bytes(&bytes("DK_pub (hex):")).unwrap();
    assert_eq!(public, *SPEND_AUTH * secret);
    assert_eq!(std::fs::read_dir(directory.path()).unwrap().count(), 0);
}
