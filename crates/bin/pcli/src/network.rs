use anyhow::Context;
use futures::{FutureExt, TryStreamExt};
use shieldd_sdk_proto::{
    util::tendermint_proxy::v1::tendermint_proxy_service_client::TendermintProxyServiceClient,
    view::v1::broadcast_transaction_response::Status as BroadcastStatus, DomainType,
};
use shieldd_sdk_transaction::{txhash::TransactionId, Transaction, TransactionPlan};
use shieldd_sdk_view::{ViewClient, ViewServer};
use std::{fs, future::Future};
use tonic::transport::Channel;
use tracing::instrument;

use crate::App;

impl App {
    pub async fn build_and_submit_transaction(
        &mut self,
        plan: TransactionPlan,
    ) -> anyhow::Result<TransactionId> {
        let asset_cache = self.view().assets().await?;
        println!(
            "including transaction fee of {}...",
            plan.transaction_parameters.fee.0.format(&asset_cache)
        );

        let transaction = self.build_transaction(plan).await?;
        self.submit_transaction(transaction).await
    }

    pub fn build_transaction(
        &mut self,
        plan: TransactionPlan,
    ) -> impl Future<Output = anyhow::Result<Transaction>> + '_ {
        println!(
            "building transaction [{} actions, {} proofs]...",
            plan.actions.len(),
            plan.num_proofs(),
        );
        let start = std::time::Instant::now();
        let tx = shieldd_sdk_wallet::build_transaction(
            &self.config.full_viewing_key,
            self.view.as_mut().expect("view service initialized"),
            &mut self.custody,
            plan,
        );
        async move {
            let tx = tx.await?;
            let elapsed = start.elapsed();
            println!(
                "finished proving in {}.{:03} seconds [{} actions, {} proofs, {} bytes]",
                elapsed.as_secs(),
                elapsed.subsec_millis(),
                tx.actions().count(),
                tx.num_proofs(),
                tx.encode_to_vec().len()
            );
            Ok(tx)
        }
    }

    /// Submits a transaction to the network.
    pub async fn submit_transaction(
        &mut self,
        transaction: Transaction,
    ) -> anyhow::Result<TransactionId> {
        if let Some(file) = &self.save_transaction_here_instead {
            println!(
                "saving transaction to disk, path: {}",
                file.to_string_lossy()
            );
            fs::write(file, &serde_json::to_vec(&transaction)?)?;
            return Ok(transaction.id());
        }

        println!("broadcasting transaction and awaiting confirmation...");
        let mut rsp = self.view().broadcast_transaction(transaction, true).await?;

        let id = async move {
            while let Some(rsp) = rsp.try_next().await? {
                match rsp.status {
                    Some(status) => match status {
                        BroadcastStatus::BroadcastSuccess(bs) => {
                            println!(
                                "transaction broadcast successfully: {}",
                                TransactionId::try_from(
                                    bs.id.expect("detected transaction missing id")
                                )?
                            );
                        }
                        BroadcastStatus::Confirmed(c) => {
                            let id = c.id.expect("detected transaction missing id").try_into()?;
                            if c.detection_height != 0 {
                                println!(
                                    "transaction confirmed and detected: {} @ height {}",
                                    id, c.detection_height
                                );
                            } else {
                                println!("transaction confirmed and detected: {}", id);
                            }
                            return Ok(id);
                        }
                    },
                    None => {
                        // No status is unexpected behavior
                        return Err(anyhow::anyhow!(
                            "empty BroadcastTransactionResponse message"
                        ));
                    }
                }
            }

            Err(anyhow::anyhow!(
                "should have received BroadcastTransaction status or error"
            ))
        }
        .boxed()
        .await
        .context("error broadcasting transaction")?;

        Ok(id)
    }

    /// Submits a transaction to the network, returning `Ok` as soon as the
    /// transaction has been submitted, rather than waiting for confirmation.
    #[instrument(skip(self, transaction))]
    pub async fn submit_transaction_unconfirmed(
        &mut self,
        transaction: Transaction,
    ) -> anyhow::Result<()> {
        println!("broadcasting transaction without confirmation...");
        self.view()
            .broadcast_transaction(transaction, false)
            .await?;

        Ok(())
    }

    /// Convenience method for obtaining a `tonic::Channel` for the remote
    /// `pd` endpoint, as configured for `pcli`.
    pub async fn pd_channel(&self) -> anyhow::Result<Channel> {
        ViewServer::get_pd_channel(self.config.grpc_url.clone())
            .await
            .context(format!("could not connect to {}", self.config.grpc_url))
    }

    pub async fn tendermint_proxy_client(
        &self,
    ) -> anyhow::Result<TendermintProxyServiceClient<Channel>> {
        let channel = self.pd_channel().await?;
        Ok(TendermintProxyServiceClient::new(channel))
    }
}
