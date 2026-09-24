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
        if self.discovery_parameters.is_some() {
            len += 1;
        }
        if !self.routing_records.is_empty() {
            len += 1;
        }
        if self.app_parameters_updated {
            len += 1;
        }
        if self.gas_prices.is_some() {
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
        if !self.compliance_user_status_changes.is_empty() {
            len += 1;
        }
        if !self.compliance_asset_registrations.is_empty() {
            len += 1;
        }
        if !self.routing_actions.is_empty() {
            len += 1;
        }
        if self.nullifier_window.is_some() {
            len += 1;
        }
        if self.state_payload_start_position != 0 {
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
        if let Some(v) = self.discovery_parameters.as_ref() {
            struct_ser.serialize_field("discoveryParameters", v)?;
        }
        if !self.routing_records.is_empty() {
            struct_ser.serialize_field("routingRecords", &self.routing_records)?;
        }
        if self.app_parameters_updated {
            struct_ser.serialize_field("appParametersUpdated", &self.app_parameters_updated)?;
        }
        if let Some(v) = self.gas_prices.as_ref() {
            struct_ser.serialize_field("gasPrices", v)?;
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
        if !self.compliance_user_status_changes.is_empty() {
            struct_ser.serialize_field("complianceUserStatusChanges", &self.compliance_user_status_changes)?;
        }
        if !self.compliance_asset_registrations.is_empty() {
            struct_ser.serialize_field("complianceAssetRegistrations", &self.compliance_asset_registrations)?;
        }
        if !self.routing_actions.is_empty() {
            struct_ser.serialize_field("routingActions", &self.routing_actions)?;
        }
        if let Some(v) = self.nullifier_window.as_ref() {
            struct_ser.serialize_field("nullifierWindow", v)?;
        }
        if self.state_payload_start_position != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("statePayloadStartPosition", ToString::to_string(&self.state_payload_start_position).as_str())?;
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
            "discovery_parameters",
            "discoveryParameters",
            "routing_records",
            "routingRecords",
            "app_parameters_updated",
            "appParametersUpdated",
            "gas_prices",
            "gasPrices",
            "epoch_index",
            "epochIndex",
            "compliance_user_anchor",
            "complianceUserAnchor",
            "compliance_asset_anchor",
            "complianceAssetAnchor",
            "compliance_user_registrations",
            "complianceUserRegistrations",
            "compliance_user_status_changes",
            "complianceUserStatusChanges",
            "compliance_asset_registrations",
            "complianceAssetRegistrations",
            "routing_actions",
            "routingActions",
            "nullifier_window",
            "nullifierWindow",
            "state_payload_start_position",
            "statePayloadStartPosition",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            StatePayloads,
            Nullifiers,
            BlockRoot,
            EpochRoot,
            DiscoveryParameters,
            RoutingRecords,
            AppParametersUpdated,
            GasPrices,
            EpochIndex,
            ComplianceUserAnchor,
            ComplianceAssetAnchor,
            ComplianceUserRegistrations,
            ComplianceUserStatusChanges,
            ComplianceAssetRegistrations,
            RoutingActions,
            NullifierWindow,
            StatePayloadStartPosition,
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
                            "discoveryParameters" | "discovery_parameters" => Ok(GeneratedField::DiscoveryParameters),
                            "routingRecords" | "routing_records" => Ok(GeneratedField::RoutingRecords),
                            "appParametersUpdated" | "app_parameters_updated" => Ok(GeneratedField::AppParametersUpdated),
                            "gasPrices" | "gas_prices" => Ok(GeneratedField::GasPrices),
                            "epochIndex" | "epoch_index" => Ok(GeneratedField::EpochIndex),
                            "complianceUserAnchor" | "compliance_user_anchor" => Ok(GeneratedField::ComplianceUserAnchor),
                            "complianceAssetAnchor" | "compliance_asset_anchor" => Ok(GeneratedField::ComplianceAssetAnchor),
                            "complianceUserRegistrations" | "compliance_user_registrations" => Ok(GeneratedField::ComplianceUserRegistrations),
                            "complianceUserStatusChanges" | "compliance_user_status_changes" => Ok(GeneratedField::ComplianceUserStatusChanges),
                            "complianceAssetRegistrations" | "compliance_asset_registrations" => Ok(GeneratedField::ComplianceAssetRegistrations),
                            "routingActions" | "routing_actions" => Ok(GeneratedField::RoutingActions),
                            "nullifierWindow" | "nullifier_window" => Ok(GeneratedField::NullifierWindow),
                            "statePayloadStartPosition" | "state_payload_start_position" => Ok(GeneratedField::StatePayloadStartPosition),
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
                let mut discovery_parameters__ = None;
                let mut routing_records__ = None;
                let mut app_parameters_updated__ = None;
                let mut gas_prices__ = None;
                let mut epoch_index__ = None;
                let mut compliance_user_anchor__ = None;
                let mut compliance_asset_anchor__ = None;
                let mut compliance_user_registrations__ = None;
                let mut compliance_user_status_changes__ = None;
                let mut compliance_asset_registrations__ = None;
                let mut routing_actions__ = None;
                let mut nullifier_window__ = None;
                let mut state_payload_start_position__ = None;
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
                        GeneratedField::DiscoveryParameters => {
                            if discovery_parameters__.is_some() {
                                return Err(serde::de::Error::duplicate_field("discoveryParameters"));
                            }
                            discovery_parameters__ = map_.next_value()?;
                        }
                        GeneratedField::RoutingRecords => {
                            if routing_records__.is_some() {
                                return Err(serde::de::Error::duplicate_field("routingRecords"));
                            }
                            routing_records__ = Some(map_.next_value()?);
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
                        GeneratedField::ComplianceUserStatusChanges => {
                            if compliance_user_status_changes__.is_some() {
                                return Err(serde::de::Error::duplicate_field("complianceUserStatusChanges"));
                            }
                            compliance_user_status_changes__ = Some(map_.next_value()?);
                        }
                        GeneratedField::ComplianceAssetRegistrations => {
                            if compliance_asset_registrations__.is_some() {
                                return Err(serde::de::Error::duplicate_field("complianceAssetRegistrations"));
                            }
                            compliance_asset_registrations__ = Some(map_.next_value()?);
                        }
                        GeneratedField::RoutingActions => {
                            if routing_actions__.is_some() {
                                return Err(serde::de::Error::duplicate_field("routingActions"));
                            }
                            routing_actions__ = Some(map_.next_value()?);
                        }
                        GeneratedField::NullifierWindow => {
                            if nullifier_window__.is_some() {
                                return Err(serde::de::Error::duplicate_field("nullifierWindow"));
                            }
                            nullifier_window__ = map_.next_value()?;
                        }
                        GeneratedField::StatePayloadStartPosition => {
                            if state_payload_start_position__.is_some() {
                                return Err(serde::de::Error::duplicate_field("statePayloadStartPosition"));
                            }
                            state_payload_start_position__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
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
                    discovery_parameters: discovery_parameters__,
                    routing_records: routing_records__.unwrap_or_default(),
                    app_parameters_updated: app_parameters_updated__.unwrap_or_default(),
                    gas_prices: gas_prices__,
                    epoch_index: epoch_index__.unwrap_or_default(),
                    compliance_user_anchor: compliance_user_anchor__.unwrap_or_default(),
                    compliance_asset_anchor: compliance_asset_anchor__.unwrap_or_default(),
                    compliance_user_registrations: compliance_user_registrations__.unwrap_or_default(),
                    compliance_user_status_changes: compliance_user_status_changes__.unwrap_or_default(),
                    compliance_asset_registrations: compliance_asset_registrations__.unwrap_or_default(),
                    routing_actions: routing_actions__.unwrap_or_default(),
                    nullifier_window: nullifier_window__,
                    state_payload_start_position: state_payload_start_position__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlock", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactBlockPageRequest {
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
        if !self.cursor.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlockPageRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.cursor.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("cursor", pbjson::private::base64::encode(&self.cursor).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlockPageRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "cursor",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            Cursor,
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
                            "cursor" => Ok(GeneratedField::Cursor),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlockPageRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlockPageRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlockPageRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut cursor__ = None;
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
                        GeneratedField::Cursor => {
                            if cursor__.is_some() {
                                return Err(serde::de::Error::duplicate_field("cursor"));
                            }
                            cursor__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlockPageRequest {
                    height: height__.unwrap_or_default(),
                    cursor: cursor__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlockPageRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactBlockPageResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.page.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactBlockPageResponse", len)?;
        if let Some(v) = self.page.as_ref() {
            struct_ser.serialize_field("page", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactBlockPageResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "page",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Page,
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
                            "page" => Ok(GeneratedField::Page),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactBlockPageResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactBlockPageResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactBlockPageResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut page__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Page => {
                            if page__.is_some() {
                                return Err(serde::de::Error::duplicate_field("page"));
                            }
                            page__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactBlockPageResponse {
                    page: page__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactBlockPageResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactPage {
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
        if !self.chain_id.is_empty() {
            len += 1;
        }
        if !self.block_identity.is_empty() {
            len += 1;
        }
        if !self.fragments.is_empty() {
            len += 1;
        }
        if !self.next_cursor.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactPage", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.chain_id.is_empty() {
            struct_ser.serialize_field("chainId", &self.chain_id)?;
        }
        if !self.block_identity.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("blockIdentity", pbjson::private::base64::encode(&self.block_identity).as_str())?;
        }
        if !self.fragments.is_empty() {
            struct_ser.serialize_field("fragments", &self.fragments)?;
        }
        if !self.next_cursor.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("nextCursor", pbjson::private::base64::encode(&self.next_cursor).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactPage {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "chain_id",
            "chainId",
            "block_identity",
            "blockIdentity",
            "fragments",
            "next_cursor",
            "nextCursor",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            ChainId,
            BlockIdentity,
            Fragments,
            NextCursor,
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
                            "chainId" | "chain_id" => Ok(GeneratedField::ChainId),
                            "blockIdentity" | "block_identity" => Ok(GeneratedField::BlockIdentity),
                            "fragments" => Ok(GeneratedField::Fragments),
                            "nextCursor" | "next_cursor" => Ok(GeneratedField::NextCursor),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactPage;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactPage")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactPage, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut chain_id__ = None;
                let mut block_identity__ = None;
                let mut fragments__ = None;
                let mut next_cursor__ = None;
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
                        GeneratedField::ChainId => {
                            if chain_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("chainId"));
                            }
                            chain_id__ = Some(map_.next_value()?);
                        }
                        GeneratedField::BlockIdentity => {
                            if block_identity__.is_some() {
                                return Err(serde::de::Error::duplicate_field("blockIdentity"));
                            }
                            block_identity__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Fragments => {
                            if fragments__.is_some() {
                                return Err(serde::de::Error::duplicate_field("fragments"));
                            }
                            fragments__ = Some(map_.next_value()?);
                        }
                        GeneratedField::NextCursor => {
                            if next_cursor__.is_some() {
                                return Err(serde::de::Error::duplicate_field("nextCursor"));
                            }
                            next_cursor__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactPage {
                    height: height__.unwrap_or_default(),
                    chain_id: chain_id__.unwrap_or_default(),
                    block_identity: block_identity__.unwrap_or_default(),
                    fragments: fragments__.unwrap_or_default(),
                    next_cursor: next_cursor__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactPage", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactRecordFragment {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.kind != 0 {
            len += 1;
        }
        if self.index != 0 {
            len += 1;
        }
        if self.offset != 0 {
            len += 1;
        }
        if self.total_length != 0 {
            len += 1;
        }
        if !self.data.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.CompactRecordFragment", len)?;
        if self.kind != 0 {
            let v = CompactRecordKind::try_from(self.kind)
                .map_err(|_| serde::ser::Error::custom(format!("Invalid variant {}", self.kind)))?;
            struct_ser.serialize_field("kind", &v)?;
        }
        if self.index != 0 {
            struct_ser.serialize_field("index", &self.index)?;
        }
        if self.offset != 0 {
            struct_ser.serialize_field("offset", &self.offset)?;
        }
        if self.total_length != 0 {
            struct_ser.serialize_field("totalLength", &self.total_length)?;
        }
        if !self.data.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("data", pbjson::private::base64::encode(&self.data).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CompactRecordFragment {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "kind",
            "index",
            "offset",
            "total_length",
            "totalLength",
            "data",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Kind,
            Index,
            Offset,
            TotalLength,
            Data,
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
                            "kind" => Ok(GeneratedField::Kind),
                            "index" => Ok(GeneratedField::Index),
                            "offset" => Ok(GeneratedField::Offset),
                            "totalLength" | "total_length" => Ok(GeneratedField::TotalLength),
                            "data" => Ok(GeneratedField::Data),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactRecordFragment;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.CompactRecordFragment")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CompactRecordFragment, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut kind__ = None;
                let mut index__ = None;
                let mut offset__ = None;
                let mut total_length__ = None;
                let mut data__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Kind => {
                            if kind__.is_some() {
                                return Err(serde::de::Error::duplicate_field("kind"));
                            }
                            kind__ = Some(map_.next_value::<CompactRecordKind>()? as i32);
                        }
                        GeneratedField::Index => {
                            if index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("index"));
                            }
                            index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Offset => {
                            if offset__.is_some() {
                                return Err(serde::de::Error::duplicate_field("offset"));
                            }
                            offset__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::TotalLength => {
                            if total_length__.is_some() {
                                return Err(serde::de::Error::duplicate_field("totalLength"));
                            }
                            total_length__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Data => {
                            if data__.is_some() {
                                return Err(serde::de::Error::duplicate_field("data"));
                            }
                            data__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CompactRecordFragment {
                    kind: kind__.unwrap_or_default(),
                    index: index__.unwrap_or_default(),
                    offset: offset__.unwrap_or_default(),
                    total_length: total_length__.unwrap_or_default(),
                    data: data__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.CompactRecordFragment", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CompactRecordKind {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        let variant = match self {
            Self::Unspecified => "COMPACT_RECORD_KIND_UNSPECIFIED",
            Self::Payload => "COMPACT_RECORD_KIND_PAYLOAD",
            Self::Nullifier => "COMPACT_RECORD_KIND_NULLIFIER",
            Self::RoutingRecord => "COMPACT_RECORD_KIND_ROUTING_RECORD",
            Self::RoutingAction => "COMPACT_RECORD_KIND_ROUTING_ACTION",
            Self::UserRegistration => "COMPACT_RECORD_KIND_USER_REGISTRATION",
            Self::UserStatus => "COMPACT_RECORD_KIND_USER_STATUS",
            Self::AssetRegistration => "COMPACT_RECORD_KIND_ASSET_REGISTRATION",
            Self::ProvenPayload => "COMPACT_RECORD_KIND_PROVEN_PAYLOAD",
            Self::Header => "COMPACT_RECORD_KIND_HEADER",
        };
        serializer.serialize_str(variant)
    }
}
impl<'de> serde::Deserialize<'de> for CompactRecordKind {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "COMPACT_RECORD_KIND_UNSPECIFIED",
            "COMPACT_RECORD_KIND_PAYLOAD",
            "COMPACT_RECORD_KIND_NULLIFIER",
            "COMPACT_RECORD_KIND_ROUTING_RECORD",
            "COMPACT_RECORD_KIND_ROUTING_ACTION",
            "COMPACT_RECORD_KIND_USER_REGISTRATION",
            "COMPACT_RECORD_KIND_USER_STATUS",
            "COMPACT_RECORD_KIND_ASSET_REGISTRATION",
            "COMPACT_RECORD_KIND_PROVEN_PAYLOAD",
            "COMPACT_RECORD_KIND_HEADER",
        ];

        struct GeneratedVisitor;

        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CompactRecordKind;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                write!(formatter, "expected one of: {:?}", &FIELDS)
            }

            fn visit_i64<E>(self, v: i64) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                i32::try_from(v)
                    .ok()
                    .and_then(|x| x.try_into().ok())
                    .ok_or_else(|| {
                        serde::de::Error::invalid_value(serde::de::Unexpected::Signed(v), &self)
                    })
            }

            fn visit_u64<E>(self, v: u64) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                i32::try_from(v)
                    .ok()
                    .and_then(|x| x.try_into().ok())
                    .ok_or_else(|| {
                        serde::de::Error::invalid_value(serde::de::Unexpected::Unsigned(v), &self)
                    })
            }

            fn visit_str<E>(self, value: &str) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                match value {
                    "COMPACT_RECORD_KIND_UNSPECIFIED" => Ok(CompactRecordKind::Unspecified),
                    "COMPACT_RECORD_KIND_PAYLOAD" => Ok(CompactRecordKind::Payload),
                    "COMPACT_RECORD_KIND_NULLIFIER" => Ok(CompactRecordKind::Nullifier),
                    "COMPACT_RECORD_KIND_ROUTING_RECORD" => Ok(CompactRecordKind::RoutingRecord),
                    "COMPACT_RECORD_KIND_ROUTING_ACTION" => Ok(CompactRecordKind::RoutingAction),
                    "COMPACT_RECORD_KIND_USER_REGISTRATION" => Ok(CompactRecordKind::UserRegistration),
                    "COMPACT_RECORD_KIND_USER_STATUS" => Ok(CompactRecordKind::UserStatus),
                    "COMPACT_RECORD_KIND_ASSET_REGISTRATION" => Ok(CompactRecordKind::AssetRegistration),
                    "COMPACT_RECORD_KIND_PROVEN_PAYLOAD" => Ok(CompactRecordKind::ProvenPayload),
                    "COMPACT_RECORD_KIND_HEADER" => Ok(CompactRecordKind::Header),
                    _ => Err(serde::de::Error::unknown_variant(value, FIELDS)),
                }
            }
        }
        deserializer.deserialize_any(GeneratedVisitor)
    }
}
impl serde::Serialize for FilteredBlockPageRequest {
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
        if !self.selectors.is_empty() {
            len += 1;
        }
        if !self.cursor.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.FilteredBlockPageRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.selectors.is_empty() {
            struct_ser.serialize_field("selectors", &self.selectors)?;
        }
        if !self.cursor.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("cursor", pbjson::private::base64::encode(&self.cursor).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FilteredBlockPageRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "selectors",
            "cursor",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            Selectors,
            Cursor,
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
                            "selectors" => Ok(GeneratedField::Selectors),
                            "cursor" => Ok(GeneratedField::Cursor),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FilteredBlockPageRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.FilteredBlockPageRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<FilteredBlockPageRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut selectors__ = None;
                let mut cursor__ = None;
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
                        GeneratedField::Selectors => {
                            if selectors__.is_some() {
                                return Err(serde::de::Error::duplicate_field("selectors"));
                            }
                            selectors__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Cursor => {
                            if cursor__.is_some() {
                                return Err(serde::de::Error::duplicate_field("cursor"));
                            }
                            cursor__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(FilteredBlockPageRequest {
                    height: height__.unwrap_or_default(),
                    selectors: selectors__.unwrap_or_default(),
                    cursor: cursor__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.FilteredBlockPageRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FilteredBlockPageResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.page.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.FilteredBlockPageResponse", len)?;
        if let Some(v) = self.page.as_ref() {
            struct_ser.serialize_field("page", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FilteredBlockPageResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "page",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Page,
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
                            "page" => Ok(GeneratedField::Page),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FilteredBlockPageResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.FilteredBlockPageResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<FilteredBlockPageResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut page__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Page => {
                            if page__.is_some() {
                                return Err(serde::de::Error::duplicate_field("page"));
                            }
                            page__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(FilteredBlockPageResponse {
                    page: page__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.FilteredBlockPageResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ProvenPayload {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.position != 0 {
            len += 1;
        }
        if self.payload.is_some() {
            len += 1;
        }
        if !self.auth_path.is_empty() {
            len += 1;
        }
        if self.transaction_id.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.ProvenPayload", len)?;
        if self.position != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("position", ToString::to_string(&self.position).as_str())?;
        }
        if let Some(v) = self.payload.as_ref() {
            struct_ser.serialize_field("payload", v)?;
        }
        if !self.auth_path.is_empty() {
            struct_ser.serialize_field("authPath", &self.auth_path)?;
        }
        if let Some(v) = self.transaction_id.as_ref() {
            struct_ser.serialize_field("transactionId", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ProvenPayload {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "position",
            "payload",
            "auth_path",
            "authPath",
            "transaction_id",
            "transactionId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Position,
            Payload,
            AuthPath,
            TransactionId,
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
                            "position" => Ok(GeneratedField::Position),
                            "payload" => Ok(GeneratedField::Payload),
                            "authPath" | "auth_path" => Ok(GeneratedField::AuthPath),
                            "transactionId" | "transaction_id" => Ok(GeneratedField::TransactionId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ProvenPayload;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.ProvenPayload")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ProvenPayload, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut position__ = None;
                let mut payload__ = None;
                let mut auth_path__ = None;
                let mut transaction_id__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Position => {
                            if position__.is_some() {
                                return Err(serde::de::Error::duplicate_field("position"));
                            }
                            position__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Payload => {
                            if payload__.is_some() {
                                return Err(serde::de::Error::duplicate_field("payload"));
                            }
                            payload__ = map_.next_value()?;
                        }
                        GeneratedField::AuthPath => {
                            if auth_path__.is_some() {
                                return Err(serde::de::Error::duplicate_field("authPath"));
                            }
                            auth_path__ = Some(map_.next_value()?);
                        }
                        GeneratedField::TransactionId => {
                            if transaction_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("transactionId"));
                            }
                            transaction_id__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(ProvenPayload {
                    position: position__.unwrap_or_default(),
                    payload: payload__,
                    auth_path: auth_path__.unwrap_or_default(),
                    transaction_id: transaction_id__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.ProvenPayload", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for RoutingAction {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.transaction_id.is_some() {
            len += 1;
        }
        if self.action_index != 0 {
            len += 1;
        }
        if !self.payload_positions.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.RoutingAction", len)?;
        if let Some(v) = self.transaction_id.as_ref() {
            struct_ser.serialize_field("transactionId", v)?;
        }
        if self.action_index != 0 {
            struct_ser.serialize_field("actionIndex", &self.action_index)?;
        }
        if !self.payload_positions.is_empty() {
            struct_ser.serialize_field("payloadPositions", &self.payload_positions.iter().map(ToString::to_string).collect::<Vec<_>>())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for RoutingAction {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "transaction_id",
            "transactionId",
            "action_index",
            "actionIndex",
            "payload_positions",
            "payloadPositions",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            TransactionId,
            ActionIndex,
            PayloadPositions,
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
                            "transactionId" | "transaction_id" => Ok(GeneratedField::TransactionId),
                            "actionIndex" | "action_index" => Ok(GeneratedField::ActionIndex),
                            "payloadPositions" | "payload_positions" => Ok(GeneratedField::PayloadPositions),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = RoutingAction;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.RoutingAction")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<RoutingAction, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut transaction_id__ = None;
                let mut action_index__ = None;
                let mut payload_positions__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::TransactionId => {
                            if transaction_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("transactionId"));
                            }
                            transaction_id__ = map_.next_value()?;
                        }
                        GeneratedField::ActionIndex => {
                            if action_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("actionIndex"));
                            }
                            action_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::PayloadPositions => {
                            if payload_positions__.is_some() {
                                return Err(serde::de::Error::duplicate_field("payloadPositions"));
                            }
                            payload_positions__ =
                                Some(map_.next_value::<Vec<::pbjson::private::NumberDeserialize<_>>>()?
                                    .into_iter().map(|x| x.0).collect())
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(RoutingAction {
                    transaction_id: transaction_id__,
                    action_index: action_index__.unwrap_or_default(),
                    payload_positions: payload_positions__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.RoutingAction", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for RoutingRecord {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.tag.is_some() {
            len += 1;
        }
        if self.height != 0 {
            len += 1;
        }
        if self.transaction_id.is_some() {
            len += 1;
        }
        if self.action_index != 0 {
            len += 1;
        }
        if self.tag_slot != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.RoutingRecord", len)?;
        if let Some(v) = self.tag.as_ref() {
            struct_ser.serialize_field("tag", v)?;
        }
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if let Some(v) = self.transaction_id.as_ref() {
            struct_ser.serialize_field("transactionId", v)?;
        }
        if self.action_index != 0 {
            struct_ser.serialize_field("actionIndex", &self.action_index)?;
        }
        if self.tag_slot != 0 {
            struct_ser.serialize_field("tagSlot", &self.tag_slot)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for RoutingRecord {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tag",
            "height",
            "transaction_id",
            "transactionId",
            "action_index",
            "actionIndex",
            "tag_slot",
            "tagSlot",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tag,
            Height,
            TransactionId,
            ActionIndex,
            TagSlot,
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
                            "tag" => Ok(GeneratedField::Tag),
                            "height" => Ok(GeneratedField::Height),
                            "transactionId" | "transaction_id" => Ok(GeneratedField::TransactionId),
                            "actionIndex" | "action_index" => Ok(GeneratedField::ActionIndex),
                            "tagSlot" | "tag_slot" => Ok(GeneratedField::TagSlot),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = RoutingRecord;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.RoutingRecord")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<RoutingRecord, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tag__ = None;
                let mut height__ = None;
                let mut transaction_id__ = None;
                let mut action_index__ = None;
                let mut tag_slot__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Tag => {
                            if tag__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tag"));
                            }
                            tag__ = map_.next_value()?;
                        }
                        GeneratedField::Height => {
                            if height__.is_some() {
                                return Err(serde::de::Error::duplicate_field("height"));
                            }
                            height__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::TransactionId => {
                            if transaction_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("transactionId"));
                            }
                            transaction_id__ = map_.next_value()?;
                        }
                        GeneratedField::ActionIndex => {
                            if action_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("actionIndex"));
                            }
                            action_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::TagSlot => {
                            if tag_slot__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tagSlot"));
                            }
                            tag_slot__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(RoutingRecord {
                    tag: tag__,
                    height: height__.unwrap_or_default(),
                    transaction_id: transaction_id__,
                    action_index: action_index__.unwrap_or_default(),
                    tag_slot: tag_slot__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.RoutingRecord", FIELDS, GeneratedVisitor)
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
                state_payload::StatePayload::VolumeAccumulator(v) => {
                    struct_ser.serialize_field("volumeAccumulator", v)?;
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
            "volume_accumulator",
            "volumeAccumulator",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Source,
            RolledUp,
            Note,
            VolumeAccumulator,
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
                            "volumeAccumulator" | "volume_accumulator" => Ok(GeneratedField::VolumeAccumulator),
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
                        GeneratedField::VolumeAccumulator => {
                            if state_payload__.is_some() {
                                return Err(serde::de::Error::duplicate_field("volumeAccumulator"));
                            }
                            state_payload__ = map_.next_value::<::std::option::Option<_>>()?.map(state_payload::StatePayload::VolumeAccumulator)
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
impl serde::Serialize for state_payload::VolumeAccumulator {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.payload.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.StatePayload.VolumeAccumulator", len)?;
        if let Some(v) = self.payload.as_ref() {
            struct_ser.serialize_field("payload", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for state_payload::VolumeAccumulator {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "payload",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Payload,
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
                            "payload" => Ok(GeneratedField::Payload),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = state_payload::VolumeAccumulator;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.StatePayload.VolumeAccumulator")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<state_payload::VolumeAccumulator, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut payload__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Payload => {
                            if payload__.is_some() {
                                return Err(serde::de::Error::duplicate_field("payload"));
                            }
                            payload__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(state_payload::VolumeAccumulator {
                    payload: payload__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.StatePayload.VolumeAccumulator", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StoredCompactBlock {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.metadata.is_some() {
            len += 1;
        }
        if !self.sections.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.StoredCompactBlock", len)?;
        if let Some(v) = self.metadata.as_ref() {
            struct_ser.serialize_field("metadata", v)?;
        }
        if !self.sections.is_empty() {
            struct_ser.serialize_field("sections", &self.sections)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StoredCompactBlock {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "metadata",
            "sections",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Metadata,
            Sections,
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
                            "metadata" => Ok(GeneratedField::Metadata),
                            "sections" => Ok(GeneratedField::Sections),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StoredCompactBlock;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.StoredCompactBlock")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<StoredCompactBlock, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut metadata__ = None;
                let mut sections__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Metadata => {
                            if metadata__.is_some() {
                                return Err(serde::de::Error::duplicate_field("metadata"));
                            }
                            metadata__ = map_.next_value()?;
                        }
                        GeneratedField::Sections => {
                            if sections__.is_some() {
                                return Err(serde::de::Error::duplicate_field("sections"));
                            }
                            sections__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(StoredCompactBlock {
                    metadata: metadata__,
                    sections: sections__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.StoredCompactBlock", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StoredSection {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.kind != 0 {
            len += 1;
        }
        if self.count != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.StoredSection", len)?;
        if self.kind != 0 {
            let v = CompactRecordKind::try_from(self.kind)
                .map_err(|_| serde::ser::Error::custom(format!("Invalid variant {}", self.kind)))?;
            struct_ser.serialize_field("kind", &v)?;
        }
        if self.count != 0 {
            struct_ser.serialize_field("count", &self.count)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StoredSection {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "kind",
            "count",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Kind,
            Count,
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
                            "kind" => Ok(GeneratedField::Kind),
                            "count" => Ok(GeneratedField::Count),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StoredSection;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.StoredSection")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<StoredSection, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut kind__ = None;
                let mut count__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Kind => {
                            if kind__.is_some() {
                                return Err(serde::de::Error::duplicate_field("kind"));
                            }
                            kind__ = Some(map_.next_value::<CompactRecordKind>()? as i32);
                        }
                        GeneratedField::Count => {
                            if count__.is_some() {
                                return Err(serde::de::Error::duplicate_field("count"));
                            }
                            count__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(StoredSection {
                    kind: kind__.unwrap_or_default(),
                    count: count__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.StoredSection", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for UnroutedPayload {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.position != 0 {
            len += 1;
        }
        if self.transaction_id.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.core.component.compact_block.v1.UnroutedPayload", len)?;
        if self.position != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("position", ToString::to_string(&self.position).as_str())?;
        }
        if let Some(v) = self.transaction_id.as_ref() {
            struct_ser.serialize_field("transactionId", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for UnroutedPayload {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "position",
            "transaction_id",
            "transactionId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Position,
            TransactionId,
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
                            "position" => Ok(GeneratedField::Position),
                            "transactionId" | "transaction_id" => Ok(GeneratedField::TransactionId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = UnroutedPayload;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.core.component.compact_block.v1.UnroutedPayload")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<UnroutedPayload, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut position__ = None;
                let mut transaction_id__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Position => {
                            if position__.is_some() {
                                return Err(serde::de::Error::duplicate_field("position"));
                            }
                            position__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::TransactionId => {
                            if transaction_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("transactionId"));
                            }
                            transaction_id__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(UnroutedPayload {
                    position: position__.unwrap_or_default(),
                    transaction_id: transaction_id__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.core.component.compact_block.v1.UnroutedPayload", FIELDS, GeneratedVisitor)
    }
}
