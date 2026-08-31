use std::{env, fs, path::Path};

use anyhow::{anyhow, bail, Context, Result};
use orbis_common::blockchain::{ChainConfig, TxSigner, VeraClient, TEST_ACCOUNT_HEX_KEY};
use serde::Deserialize;

pub const NODE1_ENDPOINT: &str = "http://127.0.0.1:50051";
pub const NODE2_ENDPOINT: &str = "http://127.0.0.1:50052";
pub const NODE3_ENDPOINT: &str = "http://127.0.0.1:50053";
pub const NODE1_DIAL_HOST: &str = "node1";
pub const NODE2_DIAL_HOST: &str = "node2";
pub const NODE3_DIAL_HOST: &str = "node3";

pub const ORBIS_RESOURCE: &str = "document";
pub const ORBIS_PERMISSION: &str = "read";
pub const ORBIS_RING_POLICY_RESOURCE: &str = "ring_policy";
pub const ORBIS_POLICY_MARSHAL_TYPE_YAML: i32 = 1;
pub const ORBIS_POLICY_YAML: &str = r#"
name: test-policy
resources:
  - name: ring_policy
    relations:
      - name: ring_creator
        types:
          - actor
    permissions:
      - name: create_ring
        expr: ring_creator
  - name: ring
    relations:
      - name: operator
        types:
          - actor
    permissions:
      - name: update_ring
        expr: operator
  - name: document
    relations:
      - name: creator
        types:
          - actor
      - name: reader
        types:
          - actor
    permissions:
      - name: read
        expr: creator + reader
      - name: write
        expr: creator
"#;

pub const DEFAULT_COMPLIANCE_DEV_REGISTRAR_SK_HEX: &str =
    "0100000000000000000000000000000000000000000000000000000000000000";
pub const DEFAULT_COMPLIANCE_DEV_REGISTRAR_VK_HEX: &str =
    "0800000000000000000000000000000000000000000000000000000000000000";
pub const DEFAULT_COMPLIANCE_DEV_AUTHORITY_SK_HEX: &str =
    "0200000000000000000000000000000000000000000000000000000000000000";
pub const DEFAULT_COMPLIANCE_DEV_AUTHORITY_VK_HEX: &str =
    "b2ecf9b9082d6306538be73b0d6ee741141f3222152da78685d6596efc8c1506";
pub const DEFAULT_COMPLIANCE_GRANT_VALID_UNTIL_UNIX: &str = "4102444800";

#[derive(Clone, Debug, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct OrbisEndpoints {
    vera_rpc: String,
    vera_rest: String,
    vera_grpc: String,
    node1: String,
    node2: String,
    node3: String,
}

impl OrbisEndpoints {
    pub fn from_env() -> Self {
        Self {
            vera_rpc: vera_url("ORBIS_VERA_RPC", "ORBIS_VERA_RPC_PORT")
                .unwrap_or_else(|| "http://127.0.0.1:26657".to_string()),
            vera_rest: vera_url("ORBIS_VERA_REST", "ORBIS_VERA_REST_PORT")
                .unwrap_or_else(|| "http://127.0.0.1:1317".to_string()),
            vera_grpc: vera_url("ORBIS_VERA_GRPC", "ORBIS_VERA_GRPC_PORT")
                .unwrap_or_else(|| "http://127.0.0.1:9090".to_string()),
            node1: node_endpoint("ORBIS_NODE1_ENDPOINT", NODE1_ENDPOINT),
            node2: node_endpoint("ORBIS_NODE2_ENDPOINT", NODE2_ENDPOINT),
            node3: node_endpoint("ORBIS_NODE3_ENDPOINT", NODE3_ENDPOINT),
        }
    }

    pub fn load_or_env(path: &Path) -> Result<Self> {
        if !path.exists() {
            return Ok(Self::from_env());
        }
        Self::load(path)
    }

    pub fn load(path: &Path) -> Result<Self> {
        let raw = fs::read_to_string(path)
            .with_context(|| format!("failed to read {}", path.display()))?;
        Self::from_json(&raw).with_context(|| format!("invalid {}", path.display()))
    }

    fn from_json(raw: &str) -> Result<Self> {
        let endpoints: Self = serde_json::from_str(raw)?;
        for (name, endpoint) in [
            ("vera_rpc", endpoints.vera_rpc.as_str()),
            ("vera_rest", endpoints.vera_rest.as_str()),
            ("vera_grpc", endpoints.vera_grpc.as_str()),
            ("node1", endpoints.node1.as_str()),
            ("node2", endpoints.node2.as_str()),
            ("node3", endpoints.node3.as_str()),
        ] {
            let authority = endpoint
                .strip_prefix("http://")
                .or_else(|| endpoint.strip_prefix("https://"));
            if !authority.is_some_and(|value| !value.is_empty()) {
                bail!("{name} must be a non-empty HTTP(S) endpoint");
            }
        }
        Ok(endpoints)
    }

    pub fn node_endpoints(&self) -> (String, String, String) {
        (self.node1.clone(), self.node2.clone(), self.node3.clone())
    }

    pub fn node1(&self) -> &str {
        &self.node1
    }

    pub fn vera_env(&self) -> [(&'static str, &str); 3] {
        [
            ("ORBIS_VERA_RPC", &self.vera_rpc),
            ("ORBIS_VERA_REST", &self.vera_rest),
            ("ORBIS_VERA_GRPC", &self.vera_grpc),
        ]
    }
}

fn env_or_default(env_key: &str, default: &str) -> String {
    match env::var(env_key) {
        Ok(s) if !s.is_empty() => s,
        _ => default.to_string(),
    }
}

pub fn node_endpoint(env_key: &str, default: &str) -> String {
    env_or_default(env_key, default)
}

pub fn node_dial_host(env_key: &str, default: &str) -> String {
    env_or_default(env_key, default)
}

fn vera_chain_config(endpoints: &OrbisEndpoints) -> ChainConfig {
    ChainConfig::builder()
        .chain_id(env::var("ORBIS_VERA_CHAIN_ID").ok())
        .rpc_url(Some(endpoints.vera_rpc.clone()))
        .rest_url(Some(endpoints.vera_rest.clone()))
        .grpc_url(Some(endpoints.vera_grpc.clone()))
        .denom(env::var("ORBIS_VERA_DENOM").ok())
        .build()
}

fn vera_url(url_key: &str, port_key: &str) -> Option<String> {
    env::var(url_key)
        .ok()
        .filter(|s| !s.is_empty())
        .or_else(|| {
            env::var(port_key)
                .ok()
                .filter(|s| !s.is_empty())
                .map(|port| format!("http://127.0.0.1:{port}"))
        })
}

pub async fn vera_client(endpoints: &OrbisEndpoints) -> Result<VeraClient> {
    let config = vera_chain_config(endpoints);
    let signer = TxSigner::from_hex_key(TEST_ACCOUNT_HEX_KEY, config.clone())
        .map_err(|e| anyhow!("failed to create demo Vera signer: {}", e))?;
    VeraClient::with_signer(config, signer)
        .await
        .map_err(|e| anyhow!("failed to create signed Vera client: {}", e))
}

pub fn compliance_dev_env() -> Vec<(&'static str, String)> {
    vec![
        (
            "COMPLIANCE_DEV_REGISTRAR_SK_HEX",
            process_env_or_default(
                "COMPLIANCE_DEV_REGISTRAR_SK_HEX",
                DEFAULT_COMPLIANCE_DEV_REGISTRAR_SK_HEX,
            ),
        ),
        (
            "COMPLIANCE_DEV_REGISTRAR_VK_HEX",
            process_env_or_default(
                "COMPLIANCE_DEV_REGISTRAR_VK_HEX",
                DEFAULT_COMPLIANCE_DEV_REGISTRAR_VK_HEX,
            ),
        ),
        (
            "COMPLIANCE_DEV_AUTHORITY_SK_HEX",
            process_env_or_default(
                "COMPLIANCE_DEV_AUTHORITY_SK_HEX",
                DEFAULT_COMPLIANCE_DEV_AUTHORITY_SK_HEX,
            ),
        ),
        (
            "COMPLIANCE_DEV_AUTHORITY_VK_HEX",
            process_env_or_default(
                "COMPLIANCE_DEV_AUTHORITY_VK_HEX",
                DEFAULT_COMPLIANCE_DEV_AUTHORITY_VK_HEX,
            ),
        ),
    ]
}

pub fn process_env_or_default(key: &str, default: &str) -> String {
    env_or_default(key, default)
}

#[cfg(test)]
mod tests {
    use super::{node_dial_host, OrbisEndpoints};
    use std::env;

    #[test]
    fn runtime_endpoints_are_typed_and_complete() {
        let endpoints = OrbisEndpoints::from_json(
            r#"{
                "vera_rpc": "http://127.0.0.1:30001",
                "vera_rest": "http://127.0.0.1:30002",
                "vera_grpc": "http://127.0.0.1:30003",
                "node1": "http://127.0.0.1:30004",
                "node2": "http://127.0.0.1:30005",
                "node3": "http://127.0.0.1:30006"
            }"#,
        )
        .expect("valid runtime endpoints");

        assert_eq!(endpoints.node1(), "http://127.0.0.1:30004");
        assert_eq!(
            endpoints.vera_env(),
            [
                ("ORBIS_VERA_RPC", "http://127.0.0.1:30001"),
                ("ORBIS_VERA_REST", "http://127.0.0.1:30002"),
                ("ORBIS_VERA_GRPC", "http://127.0.0.1:30003"),
            ]
        );
        assert_eq!(
            endpoints.node_endpoints(),
            (
                "http://127.0.0.1:30004".to_string(),
                "http://127.0.0.1:30005".to_string(),
                "http://127.0.0.1:30006".to_string(),
            )
        );
    }

    #[test]
    fn runtime_endpoints_reject_missing_schemes() {
        let error = OrbisEndpoints::from_json(
            r#"{
                "vera_rpc": "127.0.0.1:30001",
                "vera_rest": "http://127.0.0.1:30002",
                "vera_grpc": "http://127.0.0.1:30003",
                "node1": "http://127.0.0.1:30004",
                "node2": "http://127.0.0.1:30005",
                "node3": "http://127.0.0.1:30006"
            }"#,
        )
        .expect_err("endpoint without a scheme must fail");

        assert!(error.to_string().contains("vera_rpc"));
    }

    #[test]
    fn node_dial_host_can_be_env_configured() {
        let key = "ORBIS_NODE_DIAL_HOST_TEST";
        env::set_var(key, "custom-node-1");
        let host = node_dial_host(key, "node1");
        env::remove_var(key);
        assert_eq!(host, "custom-node-1");
    }

    #[test]
    fn node_dial_host_empty_env_uses_default() {
        let key = "ORBIS_NODE_DIAL_HOST_EMPTY_TEST";
        env::set_var(key, "");
        let host = node_dial_host(key, "node1");
        env::remove_var(key);
        assert_eq!(host, "node1");
    }
}
