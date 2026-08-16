use assert_cmd::Command;
use predicates::prelude::*;

#[test]
fn tx_help_exposes_only_reduced_surface_commands() {
    let mut cmd = Command::cargo_bin("pcli").unwrap();
    cmd.args(["tx", "--help"]);

    cmd.assert()
        .success()
        .stdout(predicate::str::is_match(r"(?m)^\s+transfer\s").unwrap())
        .stdout(predicate::str::is_match(r"(?m)^\s+reshape\s").unwrap())
        .stdout(predicate::str::contains("consolidate").not())
        .stdout(predicate::str::contains("split").not())
        .stdout(predicate::str::is_match(r"(?m)^\s+withdraw\s").unwrap())
        .stdout(
            predicate::str::is_match(r"(?m)^\s+proposal\s")
                .unwrap()
                .not(),
        )
        .stdout(predicate::str::is_match(r"(?m)^\s+compliance\s").unwrap())
        .stdout(
            predicate::str::is_match(r"(?m)^\s+send(?:\s|$)")
                .unwrap()
                .not(),
        )
        .stdout(
            predicate::str::is_match(r"(?m)^\s+send-multi(?:\s|$)")
                .unwrap()
                .not(),
        )
        .stdout(
            predicate::str::is_match(r"(?m)^\s+sweep(?:\s|$)")
                .unwrap()
                .not(),
        )
        .stdout(
            predicate::str::is_match(r"(?m)^\s+withdrawal(?:\s|$)")
                .unwrap()
                .not(),
        )
        .stdout(predicate::str::contains("shielded-ics20-withdrawal").not());
}

#[test]
fn init_help_does_not_expose_spend_terminology() {
    let mut cmd = Command::cargo_bin("pcli").unwrap();
    cmd.args(["init", "--help"]);

    cmd.assert()
        .success()
        .stdout(predicate::str::contains("view-only"))
        .stdout(predicate::str::contains("validator-governance-subkey").not())
        .stdout(predicate::str::contains("soft-kms"))
        .stdout(
            predicate::str::is_match(r"(?m)^\s+spend(?:\s|$)")
                .unwrap()
                .not(),
        );
}
