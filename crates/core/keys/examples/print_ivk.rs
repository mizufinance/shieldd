//! Print the incoming viewing key for a wallet, as hex.
//!
//! The ivk is the one piece `tools/shieldd-note-reader` needs to decrypt an
//! output note, and it cannot be derived anywhere else: it takes Poseidon377,
//! which lives in this crate. The admin's decrypt route carries a list of them
//! for the local dev wallets, and this is how that list is produced.
//!
//!   cargo run -p shieldd-sdk-keys --example print_ivk -- <seed phrase words...>
//!   cargo run -p shieldd-sdk-keys --example print_ivk -- --fvk shielddfullviewingkey1...
use std::env;

use shieldd_sdk_keys::{
    keys::{Bip44Path, SpendKey},
    FullViewingKey,
};

fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|b| format!("{b:02x}")).collect()
}

fn main() -> anyhow::Result<()> {
    let args: Vec<String> = env::args().skip(1).collect();
    if args.is_empty() {
        anyhow::bail!("usage: print_ivk <seed phrase words...> | --fvk <bech32>");
    }

    let fvk = if args[0] == "--fvk" {
        args.get(1)
            .ok_or_else(|| anyhow::anyhow!("--fvk needs a value"))?
            .parse::<FullViewingKey>()
            .map_err(|e| anyhow::anyhow!("parsing full viewing key: {e}"))?
    } else {
        // The whole phrase, however the shell split it.
        let phrase = args.join(" ");
        let spend_key = SpendKey::from_seed_phrase_bip44(
            phrase
                .parse()
                .map_err(|e| anyhow::anyhow!("parsing seed phrase: {e}"))?,
            &Bip44Path::new(0),
        )?;
        spend_key.full_viewing_key().clone()
    };

    println!("fvk: {fvk}");
    println!("ivk: {}", hex(&fvk.incoming().to_bytes()));
    Ok(())
}
