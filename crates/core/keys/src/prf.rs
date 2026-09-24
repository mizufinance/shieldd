pub fn expand(label: &'static [u8; 16], key: &[u8], input: &[u8]) -> blake2b_simd::Hash {
    blake2b_simd::Params::new()
        .personal(label)
        .key(key)
        .hash(input)
}
