#![deny(clippy::unwrap_used)]
#![cfg_attr(docsrs, feature(doc_cfg))]

//! Facilities for proxying gRPC requests to an upstream Tendermint/CometBFT RPC.
//!
//! Most importantly, this crate provides [`TendermintProxy`], which implements Shieldd's
//! [`tendermint_proxy`][proxy-proto] RPC.
//!
//! [proxy-proto]: https://buf.build/mizufinance/shieldd/docs/main:shieldd.util.tendermint_proxy.v1

mod tendermint_proxy;

use tendermint_rpc::HttpClient;

/// Implements service traits for Tonic gRPC services.
///
/// The fields of this struct are the configuration and data
/// necessary to the gRPC services.
#[derive(Clone)]
pub struct TendermintProxy {
    /// Address of upstream Tendermint server to proxy requests to.
    tendermint_url: url::Url,
    /// Reused Tendermint RPC client for front-door proxy requests.
    client: HttpClient,
    /// Broadcast client that never reuses an idle HTTP connection.
    broadcast_client: HttpClient,
}

impl TendermintProxy {
    /// Returns a new [`TendermintProxy`].
    pub fn new(tendermint_url: url::Url) -> Self {
        let client = build_tendermint_http_client(&tendermint_url);
        let broadcast_client = build_tendermint_broadcast_client(&tendermint_url);
        Self {
            tendermint_url,
            client,
            broadcast_client,
        }
    }
}

fn build_tendermint_http_client(tendermint_url: &url::Url) -> HttpClient {
    build_tendermint_client(tendermint_url, build_http_client(true))
}

fn build_tendermint_broadcast_client(tendermint_url: &url::Url) -> HttpClient {
    build_tendermint_client(tendermint_url, build_broadcast_http_client())
}

fn build_tendermint_client(tendermint_url: &url::Url, http_client: reqwest::Client) -> HttpClient {
    let rpc_url = tendermint_url
        .as_ref()
        .try_into()
        .expect("tendermint rpc URL should be validated before proxy creation");

    // Smoke/devnet connects to a local CometBFT RPC endpoint. Building the reqwest client
    // with system proxy autodetection can panic on macOS in `system-configuration`, so we
    // opt out here and provide the client explicitly.
    HttpClient::builder(rpc_url)
        .client(http_client)
        .build()
        .expect("tendermint rpc URL should be validated before proxy creation")
}

fn build_broadcast_http_client() -> reqwest::Client {
    build_http_client(false)
}

fn build_http_client(reuse_idle_connections: bool) -> reqwest::Client {
    let mut builder = reqwest::Client::builder()
        .no_proxy()
        .pool_idle_timeout(std::time::Duration::from_secs(5))
        .tcp_keepalive(std::time::Duration::from_secs(15));
    if !reuse_idle_connections {
        // A broadcast cannot be retried safely after an ambiguous transport
        // failure. Force a fresh connection instead of allowing CometBFT's
        // aggressively closed idle HTTP/1.1 sockets back out of the pool.
        builder = builder.pool_max_idle_per_host(0);
    }
    builder.build().expect("CometBFT HTTP client should build")
}

impl std::fmt::Debug for TendermintProxy {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("TendermintProxy")
            .field("tendermint_url", &self.tendermint_url)
            .finish()
    }
}

#[cfg(test)]
mod tests {
    use super::{
        build_broadcast_http_client, build_http_client, build_tendermint_broadcast_client,
        build_tendermint_http_client,
    };
    use tendermint_rpc::Client;
    use tokio::{
        io::{AsyncReadExt, AsyncWriteExt},
        net::{TcpListener, TcpStream},
        sync::oneshot,
        time::{timeout, Duration},
    };

    #[test]
    fn build_tendermint_http_client_for_localhost() {
        let url = "http://127.0.0.1:16657"
            .parse()
            .expect("localhost tendermint URL should parse");
        let _client = build_tendermint_http_client(&url);
        let _broadcast_client = build_tendermint_broadcast_client(&url);
    }

    async fn read_http_request(stream: &mut TcpStream) -> Vec<u8> {
        let mut request = Vec::new();
        let (body_start, content_length) = loop {
            if let Some(header_end) = request.windows(4).position(|window| window == b"\r\n\r\n") {
                let body_start = header_end + 4;
                let headers = std::str::from_utf8(&request[..header_end])
                    .expect("test request headers should be UTF-8");
                let content_length = headers
                    .lines()
                    .find_map(|line| {
                        let (name, value) = line.split_once(':')?;
                        if name.eq_ignore_ascii_case("content-length") {
                            value.trim().parse::<usize>().ok()
                        } else {
                            None
                        }
                    })
                    .unwrap_or(0);
                break (body_start, content_length);
            }

            let mut chunk = [0u8; 1024];
            let read = stream
                .read(&mut chunk)
                .await
                .expect("test server should read the request");
            assert!(read > 0, "client closed before sending request headers");
            request.extend_from_slice(&chunk[..read]);
        };

        while request.len() < body_start + content_length {
            let mut chunk = [0u8; 1024];
            let read = stream
                .read(&mut chunk)
                .await
                .expect("test server should read the request body");
            assert!(read > 0, "client closed before sending the request body");
            request.extend_from_slice(&chunk[..read]);
        }
        request
    }

    async fn serve_http_ok(stream: &mut TcpStream) {
        read_http_request(stream).await;
        stream
            .write_all(b"HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\n{}")
            .await
            .expect("test server should write the response");
        stream
            .flush()
            .await
            .expect("test server should flush the response");
    }

    #[tokio::test]
    async fn ordinary_transport_reuses_idle_connection() {
        let listener = TcpListener::bind("127.0.0.1:0")
            .await
            .expect("test listener should bind");
        let address = listener
            .local_addr()
            .expect("test listener should have an address");
        let server = tokio::spawn(async move {
            let (mut first, _) = listener
                .accept()
                .await
                .expect("first connection should arrive");
            serve_http_ok(&mut first).await;

            timeout(Duration::from_secs(5), async {
                tokio::select! {
                    _ = serve_http_ok(&mut first) => {}
                    accepted = listener.accept() => {
                        accepted.expect("unexpected second connection should be valid");
                        panic!("ordinary transport did not reuse its idle connection");
                    }
                }
            })
            .await
            .expect("ordinary transport did not send a second request");
        });

        let url: url::Url = format!("http://{address}")
            .parse()
            .expect("test URL should parse");
        let client = build_http_client(true);
        for _ in 0..2 {
            let response = timeout(Duration::from_secs(5), client.get(url.clone()).send())
                .await
                .expect("ordinary transport request should not time out")
                .expect("test response should be valid HTTP");
            response
                .bytes()
                .await
                .expect("test response body should be readable");
            tokio::task::yield_now().await;
        }

        server.await.expect("test server should complete");
    }

    #[tokio::test]
    async fn broadcast_transport_does_not_reuse_idle_connection() {
        let listener = TcpListener::bind("127.0.0.1:0")
            .await
            .expect("test listener should bind");
        let address = listener
            .local_addr()
            .expect("test listener should have an address");
        let server = tokio::spawn(async move {
            let (mut first, _) = listener
                .accept()
                .await
                .expect("first connection should arrive");
            serve_http_ok(&mut first).await;

            // Keep the first socket open and unread. A pooled client will send
            // its second request there and time out; the broadcast transport
            // must instead create a second connection.
            let (mut second, _) = timeout(Duration::from_secs(5), listener.accept())
                .await
                .expect("broadcast transport reused the first connection")
                .expect("second connection should arrive");
            serve_http_ok(&mut second).await;
        });

        let url: url::Url = format!("http://{address}")
            .parse()
            .expect("test URL should parse");
        let client = build_broadcast_http_client();
        for _ in 0..2 {
            let response = timeout(Duration::from_secs(5), client.get(url.clone()).send())
                .await
                .expect("broadcast transport request should not time out")
                .expect("test response should be valid HTTP");
            response
                .bytes()
                .await
                .expect("test response body should be readable");
            tokio::task::yield_now().await;
        }

        server.await.expect("test server should complete");
    }

    #[tokio::test]
    async fn broadcast_transport_does_not_retry_after_response_loss() {
        let listener = TcpListener::bind("127.0.0.1:0")
            .await
            .expect("test listener should bind");
        let address = listener
            .local_addr()
            .expect("test listener should have an address");
        let (request_complete_tx, request_complete_rx) = oneshot::channel();
        let server = tokio::spawn(async move {
            let (mut first, _) = listener
                .accept()
                .await
                .expect("broadcast connection should arrive");
            let _request = read_http_request(&mut first).await;

            // Model an ambiguous outcome: the server received the complete
            // request, but its response disappeared. The transport must not
            // submit the request again.
            drop(first);
            tokio::select! {
                biased;
                accepted = listener.accept() => {
                    accepted.expect("retried connection should be valid");
                    panic!("broadcast transport retried an ambiguous submission");
                }
                completed = request_complete_rx => {
                    completed.expect("client should report request completion");
                }
            }
        });

        let url: url::Url = format!("http://{address}")
            .parse()
            .expect("test URL should parse");
        let client = build_tendermint_broadcast_client(&url);
        let request_result = timeout(
            Duration::from_secs(5),
            client.broadcast_tx_sync(vec![7u8; 64]),
        )
        .await
        .expect("lost response should complete the request future");
        request_complete_tx
            .send(())
            .expect("server should wait for request completion");
        let _error = request_result.expect_err("lost response should remain an ambiguous failure");

        server.await.expect("test server should complete");
    }
}
