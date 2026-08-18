use {shieldd_sdk_app::genesis::AppState, shieldd_sdk_mock_consensus::builder::Builder};

/// Shieldd-specific extensions to the mock consensus builder.
pub trait BuilderExt: Sized {
    /// The error thrown by [`with_shieldd_auto_app_state`]
    type Error;
    /// Add the provided Shieldd [`AppState`] to the builder.
    ///
    fn with_shieldd_auto_app_state(self, app_state: AppState) -> Result<Self, Self::Error>;
}

impl BuilderExt for Builder {
    type Error = anyhow::Error;
    fn with_shieldd_auto_app_state(mut self, app_state: AppState) -> Result<Self, Self::Error> {
        let content = match app_state {
            AppState::Content(c) => c,
            AppState::Checkpoint(_) => anyhow::bail!("checkpointed state is not supported"),
        };

        // Set the chain ID from the content
        if !content.chain_id.is_empty() {
            self.chain_id = Some(content.chain_id.clone());
        }

        // Serialize the app state into bytes, and add it to the builder.
        let app_state = AppState::Content(content);
        serde_json::to_vec(&app_state)
            .map_err(Self::Error::from)
            .map(|s| self.app_state(s))
    }
}
