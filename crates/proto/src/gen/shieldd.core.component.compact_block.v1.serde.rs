impl serde::Serialize for CompactBlock {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.height != 0 {
            len += 1;
        }
        if !self.state_payloads.is_empty() {
            len += 1;
        }
        if !self.nullifiers.is_empty() {
            len += 1;
        }
        if self.block_root.is_some() {
            len += 1;
        }
        if self.epoch_root.is_some() {
            len += 1;
        }
        if self.proposal_started {
            len += 1;
        }
        if self.discovery_parameters.is_some() {
            len += 1;
        }
        if self.app_parameters_updated {
            len += 1;
        }
        if self.gas_prices.is_some() {
            len += 1;
        }
        if !self.alt_gas_prices.is_empty() {
            len += 1;
        }
        if self.epoch_index != 0 {
            len += 1;
        }
        if !self.compliance_user_anchor.is_empty() {
            len += 1;
        }
        if !self.compliance_asset_anchor.is_empty() {
            len += 1;
        }
        if !self.compliance_user_registrations.is_empty() {
            len += 1;
        }
        if !self.compliance_asset_registrations.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlock", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.state_payloads.is_empty() {
            struct_ser.serialize_field("statePayloads", &self.state_payloads)?;
        }
        if !self.nullifiers.is_empty() {
            struct_ser.serialize_field("nullifiers", &self.nullifiers)?;
        }
        if let Some(v) = self.block_root.as_ref() {
            struct_ser.serialize_field("blockRoot", v)?;
        }
        if let Some(v) = self.epoch_root.as_ref() {
            struct_ser.serialize_field("epochRoot", v)?;
        }
        if self.proposal_started {
            struct_ser.serialize_field("proposalStarted", &self.proposal_started)?;
        }
        if let Some(v) = self.discovery_parameters.as_ref() {
            struct_ser.serialize_field("discoveryParameters", v)?;
        }
        if self.app_parameters_updated {
            struct_ser.serialize_field("appParametersUpdated", &self.app_parameters_updated)?;
        }
        if let Some(v) = self.gas_prices.as_ref() {
            struct_ser.serialize_field("gasPrices", v)?;
        }
        if !self.alt_gas_prices.is_empty() {
            struct_ser.serialize_field("altGasPrices", &self.alt_gas_prices)?;
        }
        if self.epoch_index != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("epochIndex", ToString::to_string(&self.epoch_index).as_str())?;
        }
        if !self.compliance_user_anchor.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("complianceUserAnchor", pbjson::private::base64::encode(&self.compliance_user_anchor).as_str())?;
        }
        if !self.compliance_asset_anchor.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("complianceAssetAnchor", pbjson::private::base64::encode(&self.compliance_asset_anchor).as_str())?;
        }
        if !self.compliance_user_registrations.is_empty() {
            struct_ser.serialize_field("complianceUserRegistrations", &self.compliance_user_registrations)?;
        }
        if !self.compliance_asset_registrations.is_empty() {
            struct_ser.serialize_field("complianceAssetRegistrations", &self.compliance_asset_registrations)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlock {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "state_payloads",
            "statePayloads",
            "nullifiers",
            "block_root",
            "blockRoot",
            "epoch_root",
            "epochRoot",
            "proposal_started",
            "proposalStarted",
            "discovery_parameters",
            "discoveryParameters",
            "app_parameters_updated",
            "appParametersUpdated",
            "gas_prices",
            "gasPrices",
            "alt_gas_prices",
            "altGasPrices",
            "epoch_index",
            "epochIndex",
            "compliance_user_anchor",
            "complianceUserAnchor",
            "compliance_asset_anchor",
            "complianceAssetAnchor",
            "compliance_user_registrations",
            "complianceUserRegistrations",
            "compliance_asset_registrations",
            "complianceAssetRegistrations",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            StatePayloads,
            Nullifiers,
            BlockRoot,
            EpochRoot,
            ProposalStarted,
            DiscoveryParameters,
            AppParametersUpdated,
            GasPrices,
            AltGasPrices,
            EpochIndex,
            ComplianceUserAnchor,
            ComplianceAssetAnchor,
            ComplianceUserRegistrations,
            ComplianceAssetRegistrations,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "height" => Ok(GeneratedField::Height),
                            "statePayloads" | "state_payloads" => Ok(GeneratedField::StatePayloads),
                            "nullifiers" => Ok(GeneratedField::Nullifiers),
                            "blockRoot" | "block_root" => Ok(GeneratedField::BlockRoot),
                            "epochRoot" | "epoch_root" => Ok(GeneratedField::EpochRoot),
                            "proposalStarted" | "proposal_started" => Ok(GeneratedField::ProposalStarted),
                            "discoveryParameters" | "discovery_parameters" => Ok(GeneratedField::DiscoveryParameters),
                            "appParametersUpdated" | "app_parameters_updated" => Ok(GeneratedField::AppParametersUpdated),
                            "gasPrices" | "gas_prices" => Ok(GeneratedField::GasPrices),
                            "altGasPrices" | "alt_gas_prices" => Ok(GeneratedField::AltGasPrices),
                            "epochIndex" | "epoch_index" => Ok(GeneratedField::EpochIndex),
                            "complianceUserAnchor" | "compliance_user_anchor" => Ok(GeneratedField::ComplianceUserAnchor),
                            "complianceAssetAnchor" | "compliance_asset_anchor" => Ok(GeneratedField::ComplianceAssetAnchor),
                            "complianceUserRegistrations" | "compliance_user_registrations" => Ok(GeneratedField::ComplianceUserRegistrations),
                            "complianceAssetRegistrations" | "compliance_asset_registrations" => Ok(GeneratedField::ComplianceAssetRegistrations),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlock;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlock")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlock, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut state_payloads__ = None;
                let mut nullifiers__ = None;
                let mut block_root__ = None;
                let mut epoch_root__ = None;
                let mut proposal_started__ = None;
                let mut discovery_parameters__ = None;
                let mut app_parameters_updated__ = None;
                let mut gas_prices__ = None;
                let mut alt_gas_prices__ = None;
                let mut epoch_index__ = None;
                let mut compliance_user_anchor__ = None;
                let mut compliance_asset_anchor__ = None;
                let mut compliance_user_registrations__ = None;
                let mut compliance_asset_registrations__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Height => {
                            if height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("height"));
                            }
                            height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::StatePayloads => {
                            if state_payloads__.is_some() {
                                return Err(serde::de::Error::duplicate_field("statePayloads"));
                            }
                            state_payloads__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Nullifiers => {
                            if nullifiers__.is_some() {
                                return Err(serde::de::Error::duplicate_field("nullifiers"));
                            }
                            nullifiers__ = Some(map_.next_value()?);
                        }
                        GeneratedField::BlockRoot => {
                            if block_root__.is_some() {
                                return Err(serde::de::Error::duplicate_field("blockRoot"));
                            }
                            block_root__ = map_.next_value()?;
                        }
                        GeneratedField::EpochRoot => {
                            if epoch_root__.is_some() {
                                return Err(serde::de::Error::duplicate_field("epochRoot"));
                            }
                            epoch_root__ = map_.next_value()?;
                        }
                        GeneratedField::ProposalStarted => {
                            if proposal_started__.is_some() {
                                return Err(serde::de::Error::duplicate_field("proposalStarted"));
                            }
                            proposal_started__ = Some(map_.next_value()?);
                        }
                        GeneratedField::DiscoveryParameters => {
                            if discovery_parameters__.is_some() {
                                return Err(serde::de::Error::duplicate_field("discoveryParameters"));
                            }
                            discovery_parameters__ = map_.next_value()?;
                        }
                        GeneratedField::AppParametersUpdated => {
                            if app_parameters_updated__.is_some() {
                                return Err(serde::de::Error::duplicate_field("appParametersUpdated"));
                            }
                            app_parameters_updated__ = Some(map_.next_value()?);
                        }
                        GeneratedField::GasPrices => {
                            if gas_prices__.is_some() {
                                return Err(serde::de::Error::duplicate_field("gasPrices"));
                            }
                            gas_prices__ = map_.next_value()?;
                        }
                        GeneratedField::AltGasPrices => {
                            if alt_gas_prices__.is_some() {
                                return Err(serde::de::Error::duplicate_field("altGasPrices"));
                            }
                            alt_gas_prices__ = Some(map_.next_value()?);
                        }
                        GeneratedField::EpochIndex => {
                            if epoch_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("epochIndex"));
                            }
                            epoch_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::ComplianceUserAnchor => {
                            if compliance_user_anchor__.is_some() {
                                return Err(serde::de::Error::duplicate_field("complianceUserAnchor"));
                            }
                            compliance_user_anchor__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::ComplianceAssetAnchor => {
                            if compliance_asset_anchor__.is_some() {
                                return Err(serde::de::Error::duplicate_field("complianceAssetAnchor"));
                            }
                            compliance_asset_anchor__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::ComplianceUserRegistrations => {
                            if compliance_user_registrations__.is_some() {
                                return Err(serde::de::Error::duplicate_field("complianceUserRegistrations"));
                            }
                            compliance_user_registrations__ = Some(map_.next_value()?);
                        }
                        GeneratedField::ComplianceAssetRegistrations => {
                            if compliance_asset_registrations__.is_some() {
                                return Err(serde::de::Error::duplicate_field("complianceAssetRegistrations"));
                            }
                            compliance_asset_registrations__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlock {
                    height: height__.unwrap_or_default(),
                    state_payloads: state_payloads__.unwrap_or_default(),
                    nullifiers: nullifiers__.unwrap_or_default(),
                    block_root: block_root__,
                    epoch_root: epoch_root__,
                    proposal_started: proposal_started__.unwrap_or_default(),
                    discovery_parameters: discovery_parameters__,
                    app_parameters_updated: app_parameters_updated__.unwrap_or_default(),
                    gas_prices: gas_prices__,
                    alt_gas_prices: alt_gas_prices__.unwrap_or_default(),
                    epoch_index: epoch_index__.unwrap_or_default(),
                    compliance_user_anchor: compliance_user_anchor__.unwrap_or_default(),
                    compliance_asset_anchor: compliance_asset_anchor__.unwrap_or_default(),
                    compliance_user_registrations: compliance_user_registrations__.unwrap_or_default(),
                    compliance_asset_registrations: compliance_asset_registrations__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlock", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactBlockRangeRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.start_height != 0 {
            len += 1;
        }
        if self.end_height != 0 {
            len += 1;
        }
        if self.keep_alive {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlockRangeRequest", len)?;
        if self.start_height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("startHeight", ToString::to_string(&self.start_height).as_str())?;
        }
        if self.end_height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("endHeight", ToString::to_string(&self.end_height).as_str())?;
        }
        if self.keep_alive {
            struct_ser.serialize_field("keepAlive", &self.keep_alive)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlockRangeRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "start_height",
            "startHeight",
            "end_height",
            "endHeight",
            "keep_alive",
            "keepAlive",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            StartHeight,
            EndHeight,
            KeepAlive,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "startHeight" | "start_height" => Ok(GeneratedField::StartHeight),
                            "endHeight" | "end_height" => Ok(GeneratedField::EndHeight),
                            "keepAlive" | "keep_alive" => Ok(GeneratedField::KeepAlive),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlockRangeRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlockRangeRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlockRangeRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut start_height__ = None;
                let mut end_height__ = None;
                let mut keep_alive__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::StartHeight => {
                            if start_height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("startHeight"));
                            }
                            start_height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::EndHeight => {
                            if end_height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("endHeight"));
                            }
                            end_height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::KeepAlive => {
                            if keep_alive__.is_some() {
                                return Err(serde::de::Error::duplicate_field("keepAlive"));
                            }
                            keep_alive__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlockRangeRequest {
                    start_height: start_height__.unwrap_or_default(),
                    end_height: end_height__.unwrap_or_default(),
                    keep_alive: keep_alive__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlockRangeRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactBlockRangeResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.compact_block.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlockRangeResponse", len)?;
        if let Some(v) = self.compact_block.as_ref() {
            struct_ser.serialize_field("compactBlock", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlockRangeResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "compact_block",
            "compactBlock",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            CompactBlock,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "compactBlock" | "compact_block" => Ok(GeneratedField::CompactBlock),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlockRangeResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlockRangeResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlockRangeResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut compact_block__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::CompactBlock => {
                            if compact_block__.is_some() {
                                return Err(serde::de::Error::duplicate_field("compactBlock"));
                            }
                            compact_block__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlockRangeResponse {
                    compact_block: compact_block__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlockRangeResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactBlockRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.height != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlockRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlockRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "height" => Ok(GeneratedField::Height),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlockRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlockRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlockRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Height => {
                            if height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("height"));
                            }
                            height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlockRequest {
                    height: height__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlockRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactBlockResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.compact_block.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlockResponse", len)?;
        if let Some(v) = self.compact_block.as_ref() {
            struct_ser.serialize_field("compactBlock", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlockResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "compact_block",
            "compactBlock",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            CompactBlock,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "compactBlock" | "compact_block" => Ok(GeneratedField::CompactBlock),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlockResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlockResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlockResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut compact_block__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::CompactBlock => {
                            if compact_block__.is_some() {
                                return Err(serde::de::Error::duplicate_field("compactBlock"));
                            }
                            compact_block__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlockResponse {
                    compact_block: compact_block__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlockResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DiscoveryBlock {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.height != 0 {
            len += 1;
        }
        if self.block_root.is_some() {
            len += 1;
        }
        if self.epoch_root.is_some() {
            len += 1;
        }
        if !self.tags.is_empty() {
            len += 1;
        }
        if self.discovery_parameters.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.DiscoveryBlock", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if let Some(v) = self.block_root.as_ref() {
            struct_ser.serialize_field("blockRoot", v)?;
        }
        if let Some(v) = self.epoch_root.as_ref() {
            struct_ser.serialize_field("epochRoot", v)?;
        }
        if !self.tags.is_empty() {
            struct_ser.serialize_field("tags", &self.tags)?;
        }
        if let Some(v) = self.discovery_parameters.as_ref() {
            struct_ser.serialize_field("discoveryParameters", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DiscoveryBlock {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "block_root",
            "blockRoot",
            "epoch_root",
            "epochRoot",
            "tags",
            "discovery_parameters",
            "discoveryParameters",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            BlockRoot,
            EpochRoot,
            Tags,
            DiscoveryParameters,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "height" => Ok(GeneratedField::Height),
                            "blockRoot" | "block_root" => Ok(GeneratedField::BlockRoot),
                            "epochRoot" | "epoch_root" => Ok(GeneratedField::EpochRoot),
                            "tags" => Ok(GeneratedField::Tags),
                            "discoveryParameters" | "discovery_parameters" => Ok(GeneratedField::DiscoveryParameters),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DiscoveryBlock;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.DiscoveryBlock")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DiscoveryBlock, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut block_root__ = None;
                let mut epoch_root__ = None;
                let mut tags__ = None;
                let mut discovery_parameters__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Height => {
                            if height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("height"));
                            }
                            height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::BlockRoot => {
                            if block_root__.is_some() {
                                return Err(serde::de::Error::duplicate_field("blockRoot"));
                            }
                            block_root__ = map_.next_value()?;
                        }
                        GeneratedField::EpochRoot => {
                            if epoch_root__.is_some() {
                                return Err(serde::de::Error::duplicate_field("epochRoot"));
                            }
                            epoch_root__ = map_.next_value()?;
                        }
                        GeneratedField::Tags => {
                            if tags__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tags"));
                            }
                            tags__ = Some(map_.next_value()?);
                        }
                        GeneratedField::DiscoveryParameters => {
                            if discovery_parameters__.is_some() {
                                return Err(serde::de::Error::duplicate_field("discoveryParameters"));
                            }
                            discovery_parameters__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DiscoveryBlock {
                    height: height__.unwrap_or_default(),
                    block_root: block_root__,
                    epoch_root: epoch_root__,
                    tags: tags__.unwrap_or_default(),
                    discovery_parameters: discovery_parameters__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.DiscoveryBlock", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DiscoveryBlockRangeRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.start_height != 0 {
            len += 1;
        }
        if self.end_height != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.DiscoveryBlockRangeRequest", len)?;
        if self.start_height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("startHeight", ToString::to_string(&self.start_height).as_str())?;
        }
        if self.end_height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("endHeight", ToString::to_string(&self.end_height).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DiscoveryBlockRangeRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "start_height",
            "startHeight",
            "end_height",
            "endHeight",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            StartHeight,
            EndHeight,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "startHeight" | "start_height" => Ok(GeneratedField::StartHeight),
                            "endHeight" | "end_height" => Ok(GeneratedField::EndHeight),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DiscoveryBlockRangeRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.DiscoveryBlockRangeRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DiscoveryBlockRangeRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut start_height__ = None;
                let mut end_height__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::StartHeight => {
                            if start_height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("startHeight"));
                            }
                            start_height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::EndHeight => {
                            if end_height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("endHeight"));
                            }
                            end_height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DiscoveryBlockRangeRequest {
                    start_height: start_height__.unwrap_or_default(),
                    end_height: end_height__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.DiscoveryBlockRangeRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DiscoveryBlockRangeResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.discovery_block.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.DiscoveryBlockRangeResponse", len)?;
        if let Some(v) = self.discovery_block.as_ref() {
            struct_ser.serialize_field("discoveryBlock", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DiscoveryBlockRangeResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "discovery_block",
            "discoveryBlock",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            DiscoveryBlock,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "discoveryBlock" | "discovery_block" => Ok(GeneratedField::DiscoveryBlock),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DiscoveryBlockRangeResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.DiscoveryBlockRangeResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DiscoveryBlockRangeResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut discovery_block__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::DiscoveryBlock => {
                            if discovery_block__.is_some() {
                                return Err(serde::de::Error::duplicate_field("discoveryBlock"));
                            }
                            discovery_block__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DiscoveryBlockRangeResponse {
                    discovery_block: discovery_block__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.DiscoveryBlockRangeResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for NoteCandidatesRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.start_height != 0 {
            len += 1;
        }
        if self.end_height != 0 {
            len += 1;
        }
        if !self.tags.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.NoteCandidatesRequest", len)?;
        if self.start_height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("startHeight", ToString::to_string(&self.start_height).as_str())?;
        }
        if self.end_height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("endHeight", ToString::to_string(&self.end_height).as_str())?;
        }
        if !self.tags.is_empty() {
            struct_ser.serialize_field("tags", &self.tags)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for NoteCandidatesRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "start_height",
            "startHeight",
            "end_height",
            "endHeight",
            "tags",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            StartHeight,
            EndHeight,
            Tags,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "startHeight" | "start_height" => Ok(GeneratedField::StartHeight),
                            "endHeight" | "end_height" => Ok(GeneratedField::EndHeight),
                            "tags" => Ok(GeneratedField::Tags),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = NoteCandidatesRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.NoteCandidatesRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<NoteCandidatesRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut start_height__ = None;
                let mut end_height__ = None;
                let mut tags__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::StartHeight => {
                            if start_height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("startHeight"));
                            }
                            start_height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::EndHeight => {
                            if end_height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("endHeight"));
                            }
                            end_height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Tags => {
                            if tags__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tags"));
                            }
                            tags__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(NoteCandidatesRequest {
                    start_height: start_height__.unwrap_or_default(),
                    end_height: end_height__.unwrap_or_default(),
                    tags: tags__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.NoteCandidatesRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for NoteCandidatesResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.height != 0 {
            len += 1;
        }
        if self.state_payload_index != 0 {
            len += 1;
        }
        if self.note_payload.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.NoteCandidatesResponse", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if self.state_payload_index != 0 {
            struct_ser.serialize_field("statePayloadIndex", &self.state_payload_index)?;
        }
        if let Some(v) = self.note_payload.as_ref() {
            struct_ser.serialize_field("notePayload", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for NoteCandidatesResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "state_payload_index",
            "statePayloadIndex",
            "note_payload",
            "notePayload",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            StatePayloadIndex,
            NotePayload,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "height" => Ok(GeneratedField::Height),
                            "statePayloadIndex" | "state_payload_index" => Ok(GeneratedField::StatePayloadIndex),
                            "notePayload" | "note_payload" => Ok(GeneratedField::NotePayload),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = NoteCandidatesResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.NoteCandidatesResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<NoteCandidatesResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut state_payload_index__ = None;
                let mut note_payload__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Height => {
                            if height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("height"));
                            }
                            height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::StatePayloadIndex => {
                            if state_payload_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("statePayloadIndex"));
                            }
                            state_payload_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::NotePayload => {
                            if note_payload__.is_some() {
                                return Err(serde::de::Error::duplicate_field("notePayload"));
                            }
                            note_payload__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(NoteCandidatesResponse {
                    height: height__.unwrap_or_default(),
                    state_payload_index: state_payload_index__.unwrap_or_default(),
                    note_payload: note_payload__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.NoteCandidatesResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StatePayload {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.source.is_some() {
            len += 1;
        }
        if self.state_payload.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.StatePayload", len)?;
        if let Some(v) = self.source.as_ref() {
            struct_ser.serialize_field("source", v)?;
        }
        if let Some(v) = self.state_payload.as_ref() {
            match v {
                state_payload::StatePayload::RolledUp(v) => {
                    struct_ser.serialize_field("rolledUp", v)?;
                }
                state_payload::StatePayload::Note(v) => {
                    struct_ser.serialize_field("note", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StatePayload {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "source",
            "rolled_up",
            "rolledUp",
            "note",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Source,
            RolledUp,
            Note,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "source" => Ok(GeneratedField::Source),
                            "rolledUp" | "rolled_up" => Ok(GeneratedField::RolledUp),
                            "note" => Ok(GeneratedField::Note),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StatePayload;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.StatePayload")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<StatePayload, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut source__ = None;
                let mut state_payload__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Source => {
                            if source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("source"));
                            }
                            source__ = map_.next_value()?;
                        }
                        GeneratedField::RolledUp => {
                            if state_payload__.is_some() {
                                return Err(serde::de::Error::duplicate_field("rolledUp"));
                            }
                            state_payload__ = map_.next_value::<::std::option::Option<_>>()?.map(state_payload::StatePayload::RolledUp)
;
                        }
                        GeneratedField::Note => {
                            if state_payload__.is_some() {
                                return Err(serde::de::Error::duplicate_field("note"));
                            }
                            state_payload__ = map_.next_value::<::std::option::Option<_>>()?.map(state_payload::StatePayload::Note)
;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(StatePayload {
                    source: source__,
                    state_payload: state_payload__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.StatePayload", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for state_payload::Note {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.note.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.StatePayload.Note", len)?;
        if let Some(v) = self.note.as_ref() {
            struct_ser.serialize_field("note", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for state_payload::Note {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "note",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Note,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "note" => Ok(GeneratedField::Note),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = state_payload::Note;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.StatePayload.Note")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<state_payload::Note, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut note__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Note => {
                            if note__.is_some() {
                                return Err(serde::de::Error::duplicate_field("note"));
                            }
                            note__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(state_payload::Note {
                    note: note__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.StatePayload.Note", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for state_payload::RolledUp {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.commitment.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.StatePayload.RolledUp", len)?;
        if let Some(v) = self.commitment.as_ref() {
            struct_ser.serialize_field("commitment", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for state_payload::RolledUp {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "commitment",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Commitment,
            __SkipField__,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "commitment" => Ok(GeneratedField::Commitment),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = state_payload::RolledUp;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.StatePayload.RolledUp")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<state_payload::RolledUp, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut commitment__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Commitment => {
                            if commitment__.is_some() {
                                return Err(serde::de::Error::duplicate_field("commitment"));
                            }
                            commitment__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(state_payload::RolledUp {
                    commitment: commitment__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.StatePayload.RolledUp", FIELDS, GeneratedVisitor)
    }
}
