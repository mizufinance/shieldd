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

#[derive(Debug, Clone, serde::Deserialize)]
pub struct OrbisSecretEnvelope {
    pub enc_cmt: Vec<u8>,
    pub encrypted_data: Vec<u8>,
    pub nonce: Vec<u8>,
}

#[derive(Debug, Clone)]
pub struct PreResult {
    pub xnc_cmt_hex: String,
    pub secret: OrbisSecretEnvelope,
}

#[derive(Debug, Clone)]
pub struct InlineDocumentInput {
    pub encrypted_document: Vec<u8>,
    pub enc_cmt: Vec<u8>,
    pub ring_id: String,
    pub policy_id: String,
    pub resource: String,
    pub permission: String,
    pub shared_point: Vec<u8>,
    pub challenge: Vec<u8>,
    pub response: Vec<u8>,
    pub tier: Option<String>,
    pub timestamp: Option<u64>,
}

#[derive(Debug, Clone, PartialEq, Eq, Hash, serde::Deserialize, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct AcpObjectRef {
    pub policy_id: String,
    pub resource: String,
    pub object_id: String,
}
