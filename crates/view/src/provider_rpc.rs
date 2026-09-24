use super::provider::{SyncLimits, SyncProvider};
use async_trait::async_trait;
use shieldd_sdk_proto::core::{
    app::v1 as app,
    component::{compact_block::v1 as cb, sct::v1 as sct},
};
use shieldd_sdk_proto::Message;
use shieldd_sdk_transaction::Transaction;
use shieldd_sdk_txhash::TransactionId;
use tonic::transport::Channel;

/// Bounded client for Bankd's committed Shieldd query service.
/// The endpoint is also the identity used for explicit filtered-sync consent.
pub struct RpcSyncProvider {
    endpoint: String,
    limits: SyncLimits,
    channel: Channel,
}

impl RpcSyncProvider {
    pub async fn connect(endpoint: String, limits: SyncLimits) -> anyhow::Result<Self> {
        limits.validate()?;
        let channel = Channel::from_shared(endpoint.clone())?.connect().await?;
        Ok(Self {
            endpoint,
            channel,
            limits,
        })
    }

    async fn query<Q, R>(&self, method: &'static str, request: Q) -> anyhow::Result<R>
    where
        Q: Message + Default + Send + Sync + 'static,
        R: Message + Default + Send + Sync + 'static,
    {
        anyhow::ensure!(
            request.encoded_len() <= 256 * 1024,
            "query request exceeds budget"
        );
        let mut client = tonic::client::Grpc::new(self.channel.clone())
            .max_decoding_message_size(4 * 1024 * 1024)
            .max_encoding_message_size(256 * 1024);
        client.ready().await?;
        let path = tonic::codegen::http::uri::PathAndQuery::from_static(method);
        Ok(client
            .unary(
                tonic::Request::new(request),
                path,
                tonic::codec::ProstCodec::default(),
            )
            .await?
            .into_inner())
    }
}

#[async_trait]
impl SyncProvider for RpcSyncProvider {
    fn limits(&self) -> SyncLimits {
        self.limits
    }
    fn id(&self) -> &str {
        &self.endpoint
    }

    async fn compact_page(
        &self,
        request: cb::CompactBlockPageRequest,
    ) -> anyhow::Result<cb::CompactBlockPageResponse> {
        self.query("/mizufinance.shieldd.v1.Query/CompactBlockPage", request)
            .await
    }
    async fn filtered_page(
        &self,
        request: cb::FilteredBlockPageRequest,
    ) -> anyhow::Result<cb::CompactBlockPageResponse> {
        self.query("/mizufinance.shieldd.v1.Query/FilteredBlockPage", request)
            .await
    }
    async fn spend_page(
        &self,
        request: sct::SpendStatusPageRequest,
    ) -> anyhow::Result<sct::SpendStatusPageResponse> {
        self.query("/mizufinance.shieldd.v1.Query/SpendStatusPage", request)
            .await
    }
    async fn transaction_page(
        &self,
        request: app::TransactionsByHeightRequest,
    ) -> anyhow::Result<app::TransactionsByHeightResponse> {
        self.query(
            "/mizufinance.shieldd.v1.Query/TransactionsByHeight",
            request,
        )
        .await
    }
    async fn transaction(&self, height: u64, id: TransactionId) -> anyhow::Result<Transaction> {
        let response: app::CommittedTransactionResponse = self
            .query(
                "/mizufinance.shieldd.v1.Query/CommittedTransaction",
                app::CommittedTransactionRequest {
                    block_height: height,
                    transaction_id: id.as_ref().to_vec(),
                },
            )
            .await?;
        anyhow::ensure!(
            response.block_height == height,
            "transaction height mismatch"
        );
        let transaction: Transaction = response
            .transaction
            .ok_or_else(|| anyhow::anyhow!("required transaction unavailable"))?
            .try_into()?;
        anyhow::ensure!(transaction.id() == id, "transaction identity mismatch");
        Ok(transaction)
    }
}
