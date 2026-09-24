pub fn compact_block(height: u64) -> String {
    format!("{}{height:020}", prefix())
}

pub fn prefix() -> &'static str {
    "compactblock/metadata/"
}
pub fn height(height: u64) -> String {
    format!("{height:020}")
}
pub fn payload_prefix(height: u64) -> Vec<u8> {
    format!("compactblock/payload/{height:020}/").into_bytes()
}
pub fn payload(height: u64, position: u64) -> Vec<u8> {
    let mut key = payload_prefix(height);
    key.extend_from_slice(&position.to_be_bytes());
    key
}
pub fn routing_prefix(height: u64) -> Vec<u8> {
    format!("compactblock/routing/{height:020}/").into_bytes()
}
pub fn routing(record: &crate::RoutingRecord) -> Vec<u8> {
    let mut key = routing_prefix(record.height);
    key.extend_from_slice(&record.tag.value.reverse_bits().to_be_bytes());
    key.extend_from_slice(&record.transaction_id.0);
    key.extend_from_slice(&record.action_index.to_be_bytes());
    key.push(record.tag_slot);
    key
}
pub fn pending_routing_actions() -> &'static str {
    "compactblock/pending_routing_actions"
}

pub fn record(height: u64, kind: i32, index: u64) -> Vec<u8> {
    if kind == 1 {
        return payload(height, index);
    }
    let mut key = format!("compactblock/record/{height:020}/{kind:02}/").into_bytes();
    key.extend_from_slice(&index.to_be_bytes());
    key
}

pub fn action(height: u64, transaction: &[u8; 32], action_index: u32) -> Vec<u8> {
    let mut key = format!("compactblock/actions/{height:020}/").into_bytes();
    key.extend_from_slice(transaction);
    key.extend_from_slice(&action_index.to_be_bytes());
    key
}
pub fn unrouted_prefix(height: u64) -> Vec<u8> {
    format!("compactblock/unrouted/{height:020}/").into_bytes()
}
pub fn unrouted(height: u64, position: u64) -> Vec<u8> {
    let mut key = unrouted_prefix(height);
    key.extend_from_slice(&position.to_be_bytes());
    key
}
