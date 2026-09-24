set export
export CARGO_BUILD_JOBS := "2"
export RAYON_NUM_THREADS := "2"
export GOMAXPROCS := "2"
export GOFLAGS := "-p=2"
export SHIELDD_PARI_KEYS := env_var_or_default("SHIELDD_PARI_KEYS", justfile_directory() / "target/dev-pari-keys")

default:
    @just --list

fmt:
    cargo fmt --all

build:
    cargo build --release --workspace --all-features --all-targets

check:
    cargo fmt --all -- --check
    just docs-check
    python3 scripts/commonware.py check
    python3 scripts/cnidarium.py check
    just tooling-test
    cargo check --profile ci --workspace --all-targets --all-features

docs-check:
    python3 scripts/check_docs.py

tooling-test:
    python3 -m unittest discover -s scripts/tests
    python3 -m unittest discover -s scripts/ci -p 'test_*.py'
    python3 -m unittest discover -s deployments/scripts/tests

# Generates a fresh complete registry; refuses to overwrite an existing directory.
pari-setup:
    cargo run --profile ci -p shieldd-sdk-proof-params --example pari_setup -- "{{SHIELDD_PARI_KEYS}}"

ci-check: check

# Call pari-setup once before tests. All proof tests share this explicit registry.
ci-test:
    cargo test --locked --profile ci --workspace --all-features -- --test-threads=1

commonware-test:
    CARGO_TARGET_DIR="{{justfile_directory()}}/target" cargo test --locked --release --manifest-path third_party/commonware/Cargo.toml -p commonware-cryptography --lib --no-default-features --features std,bls12381 zk::pari -- --test-threads=1
    CARGO_TARGET_DIR="{{justfile_directory()}}/target" cargo test --locked --release --manifest-path third_party/commonware/Cargo.toml -p commonware-cryptography --lib --no-default-features --features std,bls12381 zk::circuit -- --test-threads=1

pari-proof-tests:
    SHIELDD_PCLI_BIN="{{justfile_directory()}}/target/ci/pcli" cargo test --locked --profile ci --workspace --all-features -- --ignored --skip generate_transaction_signing_test_vectors --test-threads=1

ci-preflight: check rustdocs-check features-check commonware-test ci-test pari-proof-tests

# Validate local dependencies for the Orbis integration flow.
orbis-integration-preflight:
    ./scripts/orbis-integration-preflight.sh

# Validate binaries required by the Orbis integration flow.
orbis-integration-preflight-binaries:
    ./scripts/orbis-integration-preflight.sh --require-binaries

# Build the binaries required by the Orbis integration flow.
orbis-integration-build:
    cargo build --release -p orbis-integration

# Bring up the Orbis stack for use with Bankd.
orbis-integration-up:
    just orbis-integration-build
    just orbis-integration-preflight-binaries
    ./scripts/orbis-stack.sh up

# Create a ring and policy against an already running Orbis/Vera stack.
orbis-integration-setup-ring output_json:
    just orbis-integration-preflight
    test -x ./target/release/orbis-integration || (echo "Run cargo build --release -p orbis-integration first" >&2; exit 1)
    ./target/release/orbis-integration setup-ring --output-json {{output_json}}

# Tear down the Orbis integration stack.
orbis-integration-down:
    ./scripts/orbis-stack.sh down

# Print Docker logs for the Orbis stack.
orbis-integration-logs:
    ./scripts/orbis-stack.sh logs

# Generate code for Rust & Go from proto definitions.
proto:
    ./deployments/scripts/protobuf-codegen

proto-check:
    ./deployments/scripts/protobuf-codegen --check

features-check:
    ./deployments/scripts/check-crate-feature-sets

wasm-check:
    ./deployments/scripts/check-wasm-compat.sh

# Rebuild Rust crate documentation
rustdocs:
    ./deployments/scripts/rust-docs

# Check all first-party feature APIs without applying lint policy to dependencies.
rustdocs-check:
    RUSTDOCFLAGS="-D rustdoc::broken_intra_doc_links" cargo doc --locked --profile ci --workspace --all-features --no-deps

test: ci-test

artifacts-native:
    python3 scripts/stage_artifacts.py native

artifacts-provers:
    python3 scripts/stage_artifacts.py provers

artifacts-audit:
    python3 scripts/stage_artifacts.py audit
