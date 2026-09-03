use std::path::{Path, PathBuf};

fn strip_trailing_whitespace(text: &str) -> String {
    let mut normalized = String::with_capacity(text.len());
    for chunk in text.split_inclusive('\n') {
        if let Some(line) = chunk.strip_suffix('\n') {
            normalized.push_str(line.trim_end_matches([' ', '\t', '\r']));
            normalized.push('\n');
        } else {
            normalized.push_str(chunk.trim_end_matches([' ', '\t', '\r']));
        }
    }
    normalized
}

fn normalize_generated_rust(target_dir: &Path) -> anyhow::Result<()> {
    for entry in std::fs::read_dir(target_dir)? {
        let path = entry?.path();
        if path.extension().and_then(|extension| extension.to_str()) != Some("rs") {
            continue;
        }
        let source = std::fs::read_to_string(&path)?;
        let normalized = strip_trailing_whitespace(&source);
        if normalized != source {
            std::fs::write(path, normalized)?;
        }
    }
    Ok(())
}

fn main() -> anyhow::Result<()> {
    let root = PathBuf::from(env!("CARGO_MANIFEST_DIR"));
    println!("root: {}", root.display());

    let target_dir = root
        .join("..")
        .join("..")
        .join("crates")
        .join("proto")
        .join("src")
        .join("gen");

    println!("target_dir: {}", target_dir.display());

    // https://github.com/mizufinance/shieldd/issues/3038#issuecomment-1722534133
    // Using the "no_lfs" suffix prevents matching a catch-all LFS rule.
    let descriptor_file_name = "proto_descriptor.bin.no_lfs";

    // prost_build::Config isn't Clone, so we need to make two.
    let mut config = prost_build::Config::new();

    config.compile_well_known_types();
    // As recommended in pbjson_types docs.
    config.extern_path(".google.protobuf", "::pbjson_types");
    // NOTE: we need this because the rust module that defines the IBC types is external, and not
    // part of this crate.
    // See https://docs.rs/prost-build/0.5.0/prost_build/struct.Config.html#method.extern_path
    config.extern_path(".ibc", "::ibc_proto::ibc");
    // TODO: which of these is the right path?
    config.extern_path(".ics23", "::ics23");
    config.extern_path(".cosmos.ics23", "::ics23");
    config.type_attribute(
        ".cosmos.base.v1beta1.Coin",
        "#[derive(serde::Serialize, serde::Deserialize)]",
    );

    config
        .out_dir(&target_dir)
        .file_descriptor_set_path(&target_dir.join(descriptor_file_name))
        .enable_type_names();

    let rpc_doc_attr = r#"#[cfg(feature = "rpc")]"#;

    tonic_build::configure()
        .out_dir(&target_dir)
        .emit_rerun_if_changed(false)
        // Only in Tonic 0.10
        //.generate_default_stubs(true)
        // We need to feature-gate the RPCs.
        .server_mod_attribute(".", rpc_doc_attr)
        .client_mod_attribute(".", rpc_doc_attr)
        .compile_protos_with_config(
            config,
            &[
                "../../proto/shieldd/shieldd/cnidarium/v1/cnidarium.proto",
                "../../proto/shieldd/shieldd/core/app/v1/app.proto",
                "../../proto/shieldd/shieldd/core/asset/v1/asset.proto",
                "../../proto/shieldd/shieldd/core/txhash/v1/txhash.proto",
                "../../proto/shieldd/shieldd/core/component/compact_block/v1/compact_block.proto",
                "../../proto/shieldd/shieldd/core/component/compliance/v1/compliance.proto",
                "../../proto/shieldd/shieldd/core/component/fee/v1/fee.proto",
                "../../proto/shieldd/shieldd/core/component/ibc/v1/ibc.proto",
                "../../proto/shieldd/shieldd/core/component/sct/v1/sct.proto",
                "../../proto/shieldd/shieldd/core/component/shielded_pool/v1/shielded_pool.proto",
                "../../proto/shieldd/shieldd/core/keys/v1/keys.proto",
                "../../proto/shieldd/shieldd/core/num/v1/num.proto",
                "../../proto/shieldd/shieldd/core/transaction/v1/transaction.proto",
                "../../proto/shieldd/shieldd/crypto/decaf377_frost/v1/decaf377_frost.proto",
                "../../proto/shieldd/shieldd/crypto/decaf377_rdsa/v1/decaf377_rdsa.proto",
                "../../proto/shieldd/shieldd/crypto/tct/v1/tct.proto",
                "../../proto/shieldd/shieldd/custody/v1/custody.proto",
                "../../proto/shieldd/shieldd/custody/threshold/v1/threshold.proto",
                "../../proto/shieldd/shieldd/util/node/v1/node.proto",
                "../../proto/shieldd/shieldd/util/tendermint_proxy/v1/tendermint_proxy.proto",
                "../../proto/shieldd/shieldd/view/v1/view.proto",
                "../../proto/shieldd/shieldd/execution_client/v1/execution_client.proto",
                "../../proto/rust-vendored/tendermint/abci/types.proto",
                "../../proto/rust-vendored/tendermint/types/validator.proto",
                "../../proto/rust-vendored/tendermint/p2p/types.proto",
                "../../proto/rust-vendored/cosmos/bank/v1beta1/query.proto",
                "../../proto/rust-vendored/cosmos/tx/v1beta1/service.proto",
                "../../proto/rust-vendored/cosmos/tx/v1beta1/tx.proto",
                "../../proto/rust-vendored/cosmos/tx/config/v1/config.proto",
                "../../proto/rust-vendored/cosmos/tx/signing/v1beta1/signing.proto",
                "../../proto/rust-vendored/cosmos/base/abci/v1beta1/abci.proto",
                "../../proto/rust-vendored/cosmos/crypto/multisig/v1beta1/multisig.proto",
                "../../proto/rust-vendored/ibc/applications/transfer/v1/query.proto",
                "../../proto/rust-vendored/ibc/core/channel/v1/query.proto",
                "../../proto/rust-vendored/ibc/core/client/v1/query.proto",
                "../../proto/rust-vendored/ibc/core/connection/v1/query.proto",
                "../../proto/rust-vendored/noble/forwarding/v1/account.proto",
                "../../proto/rust-vendored/noble/forwarding/v1/genesis.proto",
                "../../proto/rust-vendored/noble/forwarding/v1/packet.proto",
                "../../proto/rust-vendored/noble/forwarding/v1/query.proto",
                "../../proto/rust-vendored/noble/forwarding/v1/tx.proto",
            ],
            &["../../proto/shieldd/", "../../proto/rust-vendored/"],
        )?;

    // Finally, build pbjson Serialize, Deserialize impls:
    let descriptor_set = std::fs::read(target_dir.join(descriptor_file_name))?;

    pbjson_build::Builder::new()
        .register_descriptors(&descriptor_set)?
        .ignore_unknown_fields()
        .out_dir(&target_dir)
        // These are all excluded because they're part of the Tendermint proxy,
        // so they use `tendermint` types that may not be Serialize/Deserialize,
        // and we don't need to serialize them with Serde anyways.
        .exclude([
            ".shieldd.util.tendermint_proxy.v1.ABCIQueryResponse".to_owned(),
            ".shieldd.util.tendermint_proxy.v1.GetBlockByHeightResponse".to_owned(),
            ".shieldd.util.tendermint_proxy.v1.GetStatusResponse".to_owned(),
        ])
        .build(&[".shieldd"])?;

    normalize_generated_rust(&target_dir)?;

    Ok(())
}

#[cfg(test)]
mod tests {
    use super::strip_trailing_whitespace;

    #[test]
    fn strips_trailing_whitespace_without_changing_line_structure() {
        assert_eq!(
            strip_trailing_whitespace("first  \nsecond\t\nthird  "),
            "first\nsecond\nthird"
        );
        assert_eq!(
            strip_trailing_whitespace("already clean\n"),
            "already clean\n"
        );
    }
}
