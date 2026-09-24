use anyhow::{ensure, Context, Result};
use cnidarium::{StateRead, StateWrite};

pub const FRAGMENT_BYTES: usize = 64 * 1024;

fn continuation(key: &[u8], part: u32) -> Vec<u8> {
    let mut key = key.to_vec();
    key.extend_from_slice(b"/part/");
    key.extend_from_slice(&part.to_be_bytes());
    key
}

/// Short records need one key. Large records have bounded independently readable parts.
pub fn put(state: &mut (impl StateWrite + ?Sized), key: Vec<u8>, bytes: Vec<u8>) -> Result<()> {
    let length = u32::try_from(bytes.len()).context("compact record exceeds u32 framing")?;
    let first = bytes.len().min(FRAGMENT_BYTES);
    let mut head = Vec::with_capacity(first + 4);
    head.extend_from_slice(&length.to_be_bytes());
    head.extend_from_slice(&bytes[..first]);
    for (part, data) in bytes[first..].chunks(FRAGMENT_BYTES).enumerate() {
        state.nonverifiable_put_raw(continuation(&key, part as u32 + 1), data.to_vec());
    }
    state.nonverifiable_put_raw(key, head);
    Ok(())
}

pub struct Fragment {
    pub length: u32,
    pub data: Vec<u8>,
}

pub async fn fragment(
    state: &(impl StateRead + ?Sized),
    key: &[u8],
    offset: u32,
) -> Result<Fragment> {
    let head = state
        .nonverifiable_get_raw(key)
        .await?
        .context("missing compact record")?;
    ensure!(
        head.len() >= 4 && head.len() <= FRAGMENT_BYTES + 4,
        "invalid compact record head"
    );
    let length = u32::from_be_bytes(head[..4].try_into()?);
    ensure!(
        head.len() - 4 == (length as usize).min(FRAGMENT_BYTES),
        "truncated compact record head"
    );
    ensure!(
        offset < length || offset == 0 && length == 0,
        "compact record offset out of bounds"
    );
    let part = offset as usize / FRAGMENT_BYTES;
    let bytes = if part == 0 {
        head[4..].to_vec()
    } else {
        let bytes = state
            .nonverifiable_get_raw(&continuation(key, part as u32))
            .await?
            .context("missing compact record part")?;
        ensure!(
            bytes.len() == (length as usize - part * FRAGMENT_BYTES).min(FRAGMENT_BYTES),
            "truncated compact record part"
        );
        bytes
    };
    Ok(Fragment {
        length,
        data: bytes[offset as usize % FRAGMENT_BYTES..].to_vec(),
    })
}

pub async fn get(state: &(impl StateRead + ?Sized), key: &[u8]) -> Result<Vec<u8>> {
    let first = fragment(state, key, 0).await?;
    let length = first.length;
    let mut bytes = first.data;
    while bytes.len() < length as usize {
        let next = fragment(state, key, bytes.len().try_into()?).await?;
        ensure!(
            next.length == length,
            "compact record changed while reading"
        );
        bytes.extend(next.data);
    }
    Ok(bytes)
}

#[cfg(test)]
mod tests {
    use super::*;
    #[tokio::test]
    async fn fragments_bound_reads_and_reject_missing_continuations() -> Result<()> {
        let storage = cnidarium::TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        let bytes: Vec<_> = (0..FRAGMENT_BYTES * 3 + 17)
            .map(|i| (i % 251) as u8)
            .collect();
        put(&mut state, b"large".to_vec(), bytes.clone())?;
        let mut received = Vec::new();
        while received.len() < bytes.len() {
            let part = fragment(&state, b"large", received.len() as u32).await?;
            assert_eq!(part.length as usize, bytes.len());
            assert!(part.data.len() <= FRAGMENT_BYTES);
            received.extend(part.data);
        }
        assert_eq!(received, bytes);
        assert!(fragment(&state, b"large", bytes.len() as u32)
            .await
            .is_err());
        state.nonverifiable_delete(continuation(b"large", 1));
        assert!(fragment(&state, b"large", FRAGMENT_BYTES as u32)
            .await
            .is_err());
        Ok(())
    }
}
