use decaf377::Element;

#[derive(Debug, Clone)]
pub struct DkgResult {
    pub ring_id: String,
    pub session_id: String,
    pub status: String,
    pub message: String,
}

#[derive(Debug, Clone)]
pub struct NodeInfo {
    pub public_address: String,
    pub node_key: String,
    pub peer_id: String,
    pub p2p_address: String,
}

#[derive(Debug, Clone)]
pub struct RingInfo {
    pub ring_id: String,
    pub ring_pk: Element,
    pub ring_pk_hex: String,
}
