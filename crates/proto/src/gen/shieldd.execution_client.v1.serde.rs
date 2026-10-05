impl serde::Serialize for ApplyComplianceActionRequest {
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
        if self.action.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ApplyComplianceActionRequest", len)?;
        if let Some(v) = self.source.as_ref() {
            struct_ser.serialize_field("source", v)?;
        }
        if let Some(v) = self.action.as_ref() {
            match v {
                apply_compliance_action_request::Action::Freeze(v) => {
                    struct_ser.serialize_field("freeze", v)?;
                }
                apply_compliance_action_request::Action::Unfreeze(v) => {
                    struct_ser.serialize_field("unfreeze", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ApplyComplianceActionRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "source",
            "freeze",
            "unfreeze",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Source,
            Freeze,
            Unfreeze,
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
                            "freeze" => Ok(GeneratedField::Freeze),
                            "unfreeze" => Ok(GeneratedField::Unfreeze),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ApplyComplianceActionRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ApplyComplianceActionRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ApplyComplianceActionRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut source__ = None;
                let mut action__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Source => {
                            if source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("source"));
                            }
                            source__ = map_.next_value()?;
                        }
                        GeneratedField::Freeze => {
                            if action__.is_some() {
                                return Err(serde::de::Error::duplicate_field("freeze"));
                            }
                            action__ = map_.next_value::<::std::option::Option<_>>()?.map(apply_compliance_action_request::Action::Freeze)
;
                        }
                        GeneratedField::Unfreeze => {
                            if action__.is_some() {
                                return Err(serde::de::Error::duplicate_field("unfreeze"));
                            }
                            action__ = map_.next_value::<::std::option::Option<_>>()?.map(apply_compliance_action_request::Action::Unfreeze)
;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(ApplyComplianceActionRequest {
                    source: source__,
                    action: action__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ApplyComplianceActionRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ApplyComplianceActionResponse {
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
        if self.previous_status != 0 {
            len += 1;
        }
        if self.current_status != 0 {
            len += 1;
        }
        if self.replayed {
            len += 1;
        }
        if self.freeze_generation != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ApplyComplianceActionResponse", len)?;
        if let Some(v) = self.source.as_ref() {
            struct_ser.serialize_field("source", v)?;
        }
        if self.previous_status != 0 {
            let v = super::super::core::component::compliance::v1::UserAssetStatus::try_from(self.previous_status)
                .map_err(|_| serde::ser::Error::custom(format!("Invalid variant {}", self.previous_status)))?;
            struct_ser.serialize_field("previousStatus", &v)?;
        }
        if self.current_status != 0 {
            let v = super::super::core::component::compliance::v1::UserAssetStatus::try_from(self.current_status)
                .map_err(|_| serde::ser::Error::custom(format!("Invalid variant {}", self.current_status)))?;
            struct_ser.serialize_field("currentStatus", &v)?;
        }
        if self.replayed {
            struct_ser.serialize_field("replayed", &self.replayed)?;
        }
        if self.freeze_generation != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("freezeGeneration", ToString::to_string(&self.freeze_generation).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ApplyComplianceActionResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "source",
            "previous_status",
            "previousStatus",
            "current_status",
            "currentStatus",
            "replayed",
            "freeze_generation",
            "freezeGeneration",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Source,
            PreviousStatus,
            CurrentStatus,
            Replayed,
            FreezeGeneration,
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
                            "previousStatus" | "previous_status" => Ok(GeneratedField::PreviousStatus),
                            "currentStatus" | "current_status" => Ok(GeneratedField::CurrentStatus),
                            "replayed" => Ok(GeneratedField::Replayed),
                            "freezeGeneration" | "freeze_generation" => Ok(GeneratedField::FreezeGeneration),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ApplyComplianceActionResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ApplyComplianceActionResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ApplyComplianceActionResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut source__ = None;
                let mut previous_status__ = None;
                let mut current_status__ = None;
                let mut replayed__ = None;
                let mut freeze_generation__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Source => {
                            if source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("source"));
                            }
                            source__ = map_.next_value()?;
                        }
                        GeneratedField::PreviousStatus => {
                            if previous_status__.is_some() {
                                return Err(serde::de::Error::duplicate_field("previousStatus"));
                            }
                            previous_status__ = Some(map_.next_value::<super::super::core::component::compliance::v1::UserAssetStatus>()? as i32);
                        }
                        GeneratedField::CurrentStatus => {
                            if current_status__.is_some() {
                                return Err(serde::de::Error::duplicate_field("currentStatus"));
                            }
                            current_status__ = Some(map_.next_value::<super::super::core::component::compliance::v1::UserAssetStatus>()? as i32);
                        }
                        GeneratedField::Replayed => {
                            if replayed__.is_some() {
                                return Err(serde::de::Error::duplicate_field("replayed"));
                            }
                            replayed__ = Some(map_.next_value()?);
                        }
                        GeneratedField::FreezeGeneration => {
                            if freeze_generation__.is_some() {
                                return Err(serde::de::Error::duplicate_field("freezeGeneration"));
                            }
                            freeze_generation__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(ApplyComplianceActionResponse {
                    source: source__,
                    previous_status: previous_status__.unwrap_or_default(),
                    current_status: current_status__.unwrap_or_default(),
                    replayed: replayed__.unwrap_or_default(),
                    freeze_generation: freeze_generation__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ApplyComplianceActionResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AwaitCheckpointRequest {
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
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.AwaitCheckpointRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AwaitCheckpointRequest {
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
            type Value = AwaitCheckpointRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.AwaitCheckpointRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<AwaitCheckpointRequest, V::Error>
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
                Ok(AwaitCheckpointRequest {
                    height: height__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.AwaitCheckpointRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AwaitCheckpointResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.AwaitCheckpointResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AwaitCheckpointResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = AwaitCheckpointResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.AwaitCheckpointResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<AwaitCheckpointResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(AwaitCheckpointResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.AwaitCheckpointResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BeginBlockRequest {
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
        if self.time.is_some() {
            len += 1;
        }
        if !self.block_id.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.BeginBlockRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if let Some(v) = self.time.as_ref() {
            struct_ser.serialize_field("time", v)?;
        }
        if !self.block_id.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("blockId", pbjson::private::base64::encode(&self.block_id).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BeginBlockRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "time",
            "block_id",
            "blockId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            Time,
            BlockId,
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
                            "time" => Ok(GeneratedField::Time),
                            "blockId" | "block_id" => Ok(GeneratedField::BlockId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = BeginBlockRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.BeginBlockRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<BeginBlockRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut time__ = None;
                let mut block_id__ = None;
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
                        GeneratedField::Time => {
                            if time__.is_some() {
                                return Err(serde::de::Error::duplicate_field("time"));
                            }
                            time__ = map_.next_value()?;
                        }
                        GeneratedField::BlockId => {
                            if block_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("blockId"));
                            }
                            block_id__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(BeginBlockRequest {
                    height: height__.unwrap_or_default(),
                    time: time__,
                    block_id: block_id__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.BeginBlockRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BeginBlockResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.events.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.BeginBlockResponse", len)?;
        if !self.events.is_empty() {
            struct_ser.serialize_field("events", &self.events)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BeginBlockResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "events",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Events,
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
                            "events" => Ok(GeneratedField::Events),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = BeginBlockResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.BeginBlockResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<BeginBlockResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut events__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Events => {
                            if events__.is_some() {
                                return Err(serde::de::Error::duplicate_field("events"));
                            }
                            events__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(BeginBlockResponse {
                    events: events__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.BeginBlockResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CheckTxRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.tx.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.CheckTxRequest", len)?;
        if !self.tx.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("tx", pbjson::private::base64::encode(&self.tx).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CheckTxRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tx,
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
                            "tx" => Ok(GeneratedField::Tx),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CheckTxRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.CheckTxRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CheckTxRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Tx => {
                            if tx__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tx"));
                            }
                            tx__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CheckTxRequest {
                    tx: tx__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.CheckTxRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for CheckTxResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.code != 0 {
            len += 1;
        }
        if !self.data.is_empty() {
            len += 1;
        }
        if !self.log.is_empty() {
            len += 1;
        }
        if !self.info.is_empty() {
            len += 1;
        }
        if self.gas_wanted != 0 {
            len += 1;
        }
        if self.gas_used != 0 {
            len += 1;
        }
        if !self.events.is_empty() {
            len += 1;
        }
        if !self.codespace.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.CheckTxResponse", len)?;
        if self.code != 0 {
            struct_ser.serialize_field("code", &self.code)?;
        }
        if !self.data.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("data", pbjson::private::base64::encode(&self.data).as_str())?;
        }
        if !self.log.is_empty() {
            struct_ser.serialize_field("log", &self.log)?;
        }
        if !self.info.is_empty() {
            struct_ser.serialize_field("info", &self.info)?;
        }
        if self.gas_wanted != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("gasWanted", ToString::to_string(&self.gas_wanted).as_str())?;
        }
        if self.gas_used != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("gasUsed", ToString::to_string(&self.gas_used).as_str())?;
        }
        if !self.events.is_empty() {
            struct_ser.serialize_field("events", &self.events)?;
        }
        if !self.codespace.is_empty() {
            struct_ser.serialize_field("codespace", &self.codespace)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for CheckTxResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "code",
            "data",
            "log",
            "info",
            "gas_wanted",
            "gasWanted",
            "gas_used",
            "gasUsed",
            "events",
            "codespace",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Code,
            Data,
            Log,
            Info,
            GasWanted,
            GasUsed,
            Events,
            Codespace,
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
                            "code" => Ok(GeneratedField::Code),
                            "data" => Ok(GeneratedField::Data),
                            "log" => Ok(GeneratedField::Log),
                            "info" => Ok(GeneratedField::Info),
                            "gasWanted" | "gas_wanted" => Ok(GeneratedField::GasWanted),
                            "gasUsed" | "gas_used" => Ok(GeneratedField::GasUsed),
                            "events" => Ok(GeneratedField::Events),
                            "codespace" => Ok(GeneratedField::Codespace),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = CheckTxResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.CheckTxResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<CheckTxResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut code__ = None;
                let mut data__ = None;
                let mut log__ = None;
                let mut info__ = None;
                let mut gas_wanted__ = None;
                let mut gas_used__ = None;
                let mut events__ = None;
                let mut codespace__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Code => {
                            if code__.is_some() {
                                return Err(serde::de::Error::duplicate_field("code"));
                            }
                            code__ =
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
                        GeneratedField::Log => {
                            if log__.is_some() {
                                return Err(serde::de::Error::duplicate_field("log"));
                            }
                            log__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Info => {
                            if info__.is_some() {
                                return Err(serde::de::Error::duplicate_field("info"));
                            }
                            info__ = Some(map_.next_value()?);
                        }
                        GeneratedField::GasWanted => {
                            if gas_wanted__.is_some() {
                                return Err(serde::de::Error::duplicate_field("gasWanted"));
                            }
                            gas_wanted__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::GasUsed => {
                            if gas_used__.is_some() {
                                return Err(serde::de::Error::duplicate_field("gasUsed"));
                            }
                            gas_used__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Events => {
                            if events__.is_some() {
                                return Err(serde::de::Error::duplicate_field("events"));
                            }
                            events__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Codespace => {
                            if codespace__.is_some() {
                                return Err(serde::de::Error::duplicate_field("codespace"));
                            }
                            codespace__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(CheckTxResponse {
                    code: code__.unwrap_or_default(),
                    data: data__.unwrap_or_default(),
                    log: log__.unwrap_or_default(),
                    info: info__.unwrap_or_default(),
                    gas_wanted: gas_wanted__.unwrap_or_default(),
                    gas_used: gas_used__.unwrap_or_default(),
                    events: events__.unwrap_or_default(),
                    codespace: codespace__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.CheckTxResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DeliverTxRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.tx.is_empty() {
            len += 1;
        }
        if self.position.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.DeliverTxRequest", len)?;
        if !self.tx.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("tx", pbjson::private::base64::encode(&self.tx).as_str())?;
        }
        if let Some(v) = self.position.as_ref() {
            struct_ser.serialize_field("position", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DeliverTxRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx",
            "position",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Tx,
            Position,
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
                            "tx" => Ok(GeneratedField::Tx),
                            "position" => Ok(GeneratedField::Position),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DeliverTxRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.DeliverTxRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DeliverTxRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx__ = None;
                let mut position__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Tx => {
                            if tx__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tx"));
                            }
                            tx__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Position => {
                            if position__.is_some() {
                                return Err(serde::de::Error::duplicate_field("position"));
                            }
                            position__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DeliverTxRequest {
                    tx: tx__.unwrap_or_default(),
                    position: position__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.DeliverTxRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DeliverTxResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.code != 0 {
            len += 1;
        }
        if !self.data.is_empty() {
            len += 1;
        }
        if !self.log.is_empty() {
            len += 1;
        }
        if !self.info.is_empty() {
            len += 1;
        }
        if self.gas_wanted != 0 {
            len += 1;
        }
        if self.gas_used != 0 {
            len += 1;
        }
        if !self.events.is_empty() {
            len += 1;
        }
        if !self.codespace.is_empty() {
            len += 1;
        }
        if !self.withdrawals.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.DeliverTxResponse", len)?;
        if self.code != 0 {
            struct_ser.serialize_field("code", &self.code)?;
        }
        if !self.data.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("data", pbjson::private::base64::encode(&self.data).as_str())?;
        }
        if !self.log.is_empty() {
            struct_ser.serialize_field("log", &self.log)?;
        }
        if !self.info.is_empty() {
            struct_ser.serialize_field("info", &self.info)?;
        }
        if self.gas_wanted != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("gasWanted", ToString::to_string(&self.gas_wanted).as_str())?;
        }
        if self.gas_used != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("gasUsed", ToString::to_string(&self.gas_used).as_str())?;
        }
        if !self.events.is_empty() {
            struct_ser.serialize_field("events", &self.events)?;
        }
        if !self.codespace.is_empty() {
            struct_ser.serialize_field("codespace", &self.codespace)?;
        }
        if !self.withdrawals.is_empty() {
            struct_ser.serialize_field("withdrawals", &self.withdrawals)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DeliverTxResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "code",
            "data",
            "log",
            "info",
            "gas_wanted",
            "gasWanted",
            "gas_used",
            "gasUsed",
            "events",
            "codespace",
            "withdrawals",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Code,
            Data,
            Log,
            Info,
            GasWanted,
            GasUsed,
            Events,
            Codespace,
            Withdrawals,
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
                            "code" => Ok(GeneratedField::Code),
                            "data" => Ok(GeneratedField::Data),
                            "log" => Ok(GeneratedField::Log),
                            "info" => Ok(GeneratedField::Info),
                            "gasWanted" | "gas_wanted" => Ok(GeneratedField::GasWanted),
                            "gasUsed" | "gas_used" => Ok(GeneratedField::GasUsed),
                            "events" => Ok(GeneratedField::Events),
                            "codespace" => Ok(GeneratedField::Codespace),
                            "withdrawals" => Ok(GeneratedField::Withdrawals),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DeliverTxResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.DeliverTxResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DeliverTxResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut code__ = None;
                let mut data__ = None;
                let mut log__ = None;
                let mut info__ = None;
                let mut gas_wanted__ = None;
                let mut gas_used__ = None;
                let mut events__ = None;
                let mut codespace__ = None;
                let mut withdrawals__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Code => {
                            if code__.is_some() {
                                return Err(serde::de::Error::duplicate_field("code"));
                            }
                            code__ =
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
                        GeneratedField::Log => {
                            if log__.is_some() {
                                return Err(serde::de::Error::duplicate_field("log"));
                            }
                            log__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Info => {
                            if info__.is_some() {
                                return Err(serde::de::Error::duplicate_field("info"));
                            }
                            info__ = Some(map_.next_value()?);
                        }
                        GeneratedField::GasWanted => {
                            if gas_wanted__.is_some() {
                                return Err(serde::de::Error::duplicate_field("gasWanted"));
                            }
                            gas_wanted__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::GasUsed => {
                            if gas_used__.is_some() {
                                return Err(serde::de::Error::duplicate_field("gasUsed"));
                            }
                            gas_used__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Events => {
                            if events__.is_some() {
                                return Err(serde::de::Error::duplicate_field("events"));
                            }
                            events__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Codespace => {
                            if codespace__.is_some() {
                                return Err(serde::de::Error::duplicate_field("codespace"));
                            }
                            codespace__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Withdrawals => {
                            if withdrawals__.is_some() {
                                return Err(serde::de::Error::duplicate_field("withdrawals"));
                            }
                            withdrawals__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DeliverTxResponse {
                    code: code__.unwrap_or_default(),
                    data: data__.unwrap_or_default(),
                    log: log__.unwrap_or_default(),
                    info: info__.unwrap_or_default(),
                    gas_wanted: gas_wanted__.unwrap_or_default(),
                    gas_used: gas_used__.unwrap_or_default(),
                    events: events__.unwrap_or_default(),
                    codespace: codespace__.unwrap_or_default(),
                    withdrawals: withdrawals__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.DeliverTxResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DepositRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.denom.is_empty() {
            len += 1;
        }
        if !self.amount.is_empty() {
            len += 1;
        }
        if !self.recipient.is_empty() {
            len += 1;
        }
        if self.source.is_some() {
            len += 1;
        }
        if self.queued {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.DepositRequest", len)?;
        if !self.denom.is_empty() {
            struct_ser.serialize_field("denom", &self.denom)?;
        }
        if !self.amount.is_empty() {
            struct_ser.serialize_field("amount", &self.amount)?;
        }
        if !self.recipient.is_empty() {
            struct_ser.serialize_field("recipient", &self.recipient)?;
        }
        if let Some(v) = self.source.as_ref() {
            struct_ser.serialize_field("source", v)?;
        }
        if self.queued {
            struct_ser.serialize_field("queued", &self.queued)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DepositRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "denom",
            "amount",
            "recipient",
            "source",
            "queued",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Denom,
            Amount,
            Recipient,
            Source,
            Queued,
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
                            "denom" => Ok(GeneratedField::Denom),
                            "amount" => Ok(GeneratedField::Amount),
                            "recipient" => Ok(GeneratedField::Recipient),
                            "source" => Ok(GeneratedField::Source),
                            "queued" => Ok(GeneratedField::Queued),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DepositRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.DepositRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DepositRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut denom__ = None;
                let mut amount__ = None;
                let mut recipient__ = None;
                let mut source__ = None;
                let mut queued__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Denom => {
                            if denom__.is_some() {
                                return Err(serde::de::Error::duplicate_field("denom"));
                            }
                            denom__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Amount => {
                            if amount__.is_some() {
                                return Err(serde::de::Error::duplicate_field("amount"));
                            }
                            amount__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Recipient => {
                            if recipient__.is_some() {
                                return Err(serde::de::Error::duplicate_field("recipient"));
                            }
                            recipient__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Source => {
                            if source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("source"));
                            }
                            source__ = map_.next_value()?;
                        }
                        GeneratedField::Queued => {
                            if queued__.is_some() {
                                return Err(serde::de::Error::duplicate_field("queued"));
                            }
                            queued__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DepositRequest {
                    denom: denom__.unwrap_or_default(),
                    amount: amount__.unwrap_or_default(),
                    recipient: recipient__.unwrap_or_default(),
                    source: source__,
                    queued: queued__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.DepositRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DepositResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.deposit_id.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.DepositResponse", len)?;
        if !self.deposit_id.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("depositId", pbjson::private::base64::encode(&self.deposit_id).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DepositResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "deposit_id",
            "depositId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            DepositId,
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
                            "depositId" | "deposit_id" => Ok(GeneratedField::DepositId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DepositResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.DepositResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DepositResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut deposit_id__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::DepositId => {
                            if deposit_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("depositId"));
                            }
                            deposit_id__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(DepositResponse {
                    deposit_id: deposit_id__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.DepositResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DiscardRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.DiscardRequest", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DiscardRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DiscardRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.DiscardRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DiscardRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(DiscardRequest {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.DiscardRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for DiscardResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.DiscardResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for DiscardResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = DiscardResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.DiscardResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<DiscardResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(DiscardResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.DiscardResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for EndBlockRequest {
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
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.EndBlockRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for EndBlockRequest {
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
            type Value = EndBlockRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.EndBlockRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<EndBlockRequest, V::Error>
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
                Ok(EndBlockRequest {
                    height: height__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.EndBlockRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for EndBlockResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.events.is_empty() {
            len += 1;
        }
        if self.prepared.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.EndBlockResponse", len)?;
        if !self.events.is_empty() {
            struct_ser.serialize_field("events", &self.events)?;
        }
        if let Some(v) = self.prepared.as_ref() {
            struct_ser.serialize_field("prepared", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for EndBlockResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "events",
            "prepared",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Events,
            Prepared,
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
                            "events" => Ok(GeneratedField::Events),
                            "prepared" => Ok(GeneratedField::Prepared),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = EndBlockResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.EndBlockResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<EndBlockResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut events__ = None;
                let mut prepared__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Events => {
                            if events__.is_some() {
                                return Err(serde::de::Error::duplicate_field("events"));
                            }
                            events__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Prepared => {
                            if prepared__.is_some() {
                                return Err(serde::de::Error::duplicate_field("prepared"));
                            }
                            prepared__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(EndBlockResponse {
                    events: events__.unwrap_or_default(),
                    prepared: prepared__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.EndBlockResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Event {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.r#type.is_empty() {
            len += 1;
        }
        if !self.attributes.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.Event", len)?;
        if !self.r#type.is_empty() {
            struct_ser.serialize_field("type", &self.r#type)?;
        }
        if !self.attributes.is_empty() {
            struct_ser.serialize_field("attributes", &self.attributes)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Event {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "type",
            "attributes",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Type,
            Attributes,
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
                            "type" => Ok(GeneratedField::Type),
                            "attributes" => Ok(GeneratedField::Attributes),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Event;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.Event")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<Event, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut r#type__ = None;
                let mut attributes__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Type => {
                            if r#type__.is_some() {
                                return Err(serde::de::Error::duplicate_field("type"));
                            }
                            r#type__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Attributes => {
                            if attributes__.is_some() {
                                return Err(serde::de::Error::duplicate_field("attributes"));
                            }
                            attributes__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(Event {
                    r#type: r#type__.unwrap_or_default(),
                    attributes: attributes__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.Event", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for EventAttribute {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.key.is_empty() {
            len += 1;
        }
        if !self.value.is_empty() {
            len += 1;
        }
        if self.index {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.EventAttribute", len)?;
        if !self.key.is_empty() {
            struct_ser.serialize_field("key", &self.key)?;
        }
        if !self.value.is_empty() {
            struct_ser.serialize_field("value", &self.value)?;
        }
        if self.index {
            struct_ser.serialize_field("index", &self.index)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for EventAttribute {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "key",
            "value",
            "index",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Key,
            Value,
            Index,
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
                            "key" => Ok(GeneratedField::Key),
                            "value" => Ok(GeneratedField::Value),
                            "index" => Ok(GeneratedField::Index),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = EventAttribute;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.EventAttribute")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<EventAttribute, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut key__ = None;
                let mut value__ = None;
                let mut index__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Key => {
                            if key__.is_some() {
                                return Err(serde::de::Error::duplicate_field("key"));
                            }
                            key__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Value => {
                            if value__.is_some() {
                                return Err(serde::de::Error::duplicate_field("value"));
                            }
                            value__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Index => {
                            if index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("index"));
                            }
                            index__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(EventAttribute {
                    key: key__.unwrap_or_default(),
                    value: value__.unwrap_or_default(),
                    index: index__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.EventAttribute", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ExportGenesisRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ExportGenesisRequest", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ExportGenesisRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ExportGenesisRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ExportGenesisRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ExportGenesisRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(ExportGenesisRequest {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ExportGenesisRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ExportGenesisResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.genesis.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ExportGenesisResponse", len)?;
        if let Some(v) = self.genesis.as_ref() {
            struct_ser.serialize_field("genesis", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ExportGenesisResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "genesis",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Genesis,
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
                            "genesis" => Ok(GeneratedField::Genesis),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ExportGenesisResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ExportGenesisResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ExportGenesisResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut genesis__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Genesis => {
                            if genesis__.is_some() {
                                return Err(serde::de::Error::duplicate_field("genesis"));
                            }
                            genesis__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(ExportGenesisResponse {
                    genesis: genesis__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ExportGenesisResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FreezeRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.FreezeRequest", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FreezeRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FreezeRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.FreezeRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<FreezeRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(FreezeRequest {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.FreezeRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FreezeResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.receipt.is_empty() {
            len += 1;
        }
        if !self.receipt_digest.is_empty() {
            len += 1;
        }
        if self.previous.is_some() {
            len += 1;
        }
        if self.next.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.FreezeResponse", len)?;
        if !self.receipt.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("receipt", pbjson::private::base64::encode(&self.receipt).as_str())?;
        }
        if !self.receipt_digest.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("receiptDigest", pbjson::private::base64::encode(&self.receipt_digest).as_str())?;
        }
        if let Some(v) = self.previous.as_ref() {
            struct_ser.serialize_field("previous", v)?;
        }
        if let Some(v) = self.next.as_ref() {
            struct_ser.serialize_field("next", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FreezeResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "receipt",
            "receipt_digest",
            "receiptDigest",
            "previous",
            "next",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Receipt,
            ReceiptDigest,
            Previous,
            Next,
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
                            "receipt" => Ok(GeneratedField::Receipt),
                            "receiptDigest" | "receipt_digest" => Ok(GeneratedField::ReceiptDigest),
                            "previous" => Ok(GeneratedField::Previous),
                            "next" => Ok(GeneratedField::Next),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FreezeResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.FreezeResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<FreezeResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut receipt__ = None;
                let mut receipt_digest__ = None;
                let mut previous__ = None;
                let mut next__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Receipt => {
                            if receipt__.is_some() {
                                return Err(serde::de::Error::duplicate_field("receipt"));
                            }
                            receipt__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::ReceiptDigest => {
                            if receipt_digest__.is_some() {
                                return Err(serde::de::Error::duplicate_field("receiptDigest"));
                            }
                            receipt_digest__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Previous => {
                            if previous__.is_some() {
                                return Err(serde::de::Error::duplicate_field("previous"));
                            }
                            previous__ = map_.next_value()?;
                        }
                        GeneratedField::Next => {
                            if next__.is_some() {
                                return Err(serde::de::Error::duplicate_field("next"));
                            }
                            next__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(FreezeResponse {
                    receipt: receipt__.unwrap_or_default(),
                    receipt_digest: receipt_digest__.unwrap_or_default(),
                    previous: previous__,
                    next: next__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.FreezeResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for FreezeUserAsset {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.address.is_some() {
            len += 1;
        }
        if self.asset_id.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.FreezeUserAsset", len)?;
        if let Some(v) = self.address.as_ref() {
            struct_ser.serialize_field("address", v)?;
        }
        if let Some(v) = self.asset_id.as_ref() {
            struct_ser.serialize_field("assetId", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for FreezeUserAsset {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "address",
            "asset_id",
            "assetId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Address,
            AssetId,
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
                            "address" => Ok(GeneratedField::Address),
                            "assetId" | "asset_id" => Ok(GeneratedField::AssetId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = FreezeUserAsset;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.FreezeUserAsset")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<FreezeUserAsset, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut address__ = None;
                let mut asset_id__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Address => {
                            if address__.is_some() {
                                return Err(serde::de::Error::duplicate_field("address"));
                            }
                            address__ = map_.next_value()?;
                        }
                        GeneratedField::AssetId => {
                            if asset_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("assetId"));
                            }
                            asset_id__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(FreezeUserAsset {
                    address: address__,
                    asset_id: asset_id__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.FreezeUserAsset", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetCommittedStateRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.GetCommittedStateRequest", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetCommittedStateRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetCommittedStateRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.GetCommittedStateRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<GetCommittedStateRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(GetCommittedStateRequest {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.GetCommittedStateRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GetCommittedStateResponse {
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
        if !self.root_hash.is_empty() {
            len += 1;
        }
        if !self.block_id.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.GetCommittedStateResponse", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.root_hash.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("rootHash", pbjson::private::base64::encode(&self.root_hash).as_str())?;
        }
        if !self.block_id.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("blockId", pbjson::private::base64::encode(&self.block_id).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GetCommittedStateResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "root_hash",
            "rootHash",
            "block_id",
            "blockId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            RootHash,
            BlockId,
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
                            "rootHash" | "root_hash" => Ok(GeneratedField::RootHash),
                            "blockId" | "block_id" => Ok(GeneratedField::BlockId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GetCommittedStateResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.GetCommittedStateResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<GetCommittedStateResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut root_hash__ = None;
                let mut block_id__ = None;
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
                        GeneratedField::RootHash => {
                            if root_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("rootHash"));
                            }
                            root_hash__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::BlockId => {
                            if block_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("blockId"));
                            }
                            block_id__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(GetCommittedStateResponse {
                    height: height__.unwrap_or_default(),
                    root_hash: root_hash__.unwrap_or_default(),
                    block_id: block_id__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.GetCommittedStateResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for HostSource {
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
        if !self.tx_hash.is_empty() {
            len += 1;
        }
        if self.msg_index != 0 {
            len += 1;
        }
        if self.tx_index != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.HostSource", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.tx_hash.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("txHash", pbjson::private::base64::encode(&self.tx_hash).as_str())?;
        }
        if self.msg_index != 0 {
            struct_ser.serialize_field("msgIndex", &self.msg_index)?;
        }
        if self.tx_index != 0 {
            struct_ser.serialize_field("txIndex", &self.tx_index)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for HostSource {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "tx_hash",
            "txHash",
            "msg_index",
            "msgIndex",
            "tx_index",
            "txIndex",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            TxHash,
            MsgIndex,
            TxIndex,
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
                            "txHash" | "tx_hash" => Ok(GeneratedField::TxHash),
                            "msgIndex" | "msg_index" => Ok(GeneratedField::MsgIndex),
                            "txIndex" | "tx_index" => Ok(GeneratedField::TxIndex),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = HostSource;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.HostSource")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<HostSource, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut tx_hash__ = None;
                let mut msg_index__ = None;
                let mut tx_index__ = None;
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
                        GeneratedField::TxHash => {
                            if tx_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("txHash"));
                            }
                            tx_hash__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MsgIndex => {
                            if msg_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("msgIndex"));
                            }
                            msg_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::TxIndex => {
                            if tx_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("txIndex"));
                            }
                            tx_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(HostSource {
                    height: height__.unwrap_or_default(),
                    tx_hash: tx_hash__.unwrap_or_default(),
                    msg_index: msg_index__.unwrap_or_default(),
                    tx_index: tx_index__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.HostSource", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for HostWithdrawal {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.coin.is_some() {
            len += 1;
        }
        if self.destination.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.HostWithdrawal", len)?;
        if let Some(v) = self.coin.as_ref() {
            struct_ser.serialize_field("coin", v)?;
        }
        if let Some(v) = self.destination.as_ref() {
            match v {
                host_withdrawal::Destination::Transfer(v) => {
                    struct_ser.serialize_field("transfer", v)?;
                }
                host_withdrawal::Destination::Execution(v) => {
                    struct_ser.serialize_field("execution", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for HostWithdrawal {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "coin",
            "transfer",
            "execution",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Coin,
            Transfer,
            Execution,
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
                            "coin" => Ok(GeneratedField::Coin),
                            "transfer" => Ok(GeneratedField::Transfer),
                            "execution" => Ok(GeneratedField::Execution),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = HostWithdrawal;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.HostWithdrawal")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<HostWithdrawal, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut coin__ = None;
                let mut destination__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Coin => {
                            if coin__.is_some() {
                                return Err(serde::de::Error::duplicate_field("coin"));
                            }
                            coin__ = map_.next_value()?;
                        }
                        GeneratedField::Transfer => {
                            if destination__.is_some() {
                                return Err(serde::de::Error::duplicate_field("transfer"));
                            }
                            destination__ = map_.next_value::<::std::option::Option<_>>()?.map(host_withdrawal::Destination::Transfer)
;
                        }
                        GeneratedField::Execution => {
                            if destination__.is_some() {
                                return Err(serde::de::Error::duplicate_field("execution"));
                            }
                            destination__ = map_.next_value::<::std::option::Option<_>>()?.map(host_withdrawal::Destination::Execution)
;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(HostWithdrawal {
                    coin: coin__,
                    destination: destination__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.HostWithdrawal", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for InitGenesisRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.genesis.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.InitGenesisRequest", len)?;
        if let Some(v) = self.genesis.as_ref() {
            struct_ser.serialize_field("genesis", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for InitGenesisRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "genesis",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Genesis,
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
                            "genesis" => Ok(GeneratedField::Genesis),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = InitGenesisRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.InitGenesisRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<InitGenesisRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut genesis__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Genesis => {
                            if genesis__.is_some() {
                                return Err(serde::de::Error::duplicate_field("genesis"));
                            }
                            genesis__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(InitGenesisRequest {
                    genesis: genesis__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.InitGenesisRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for InitGenesisResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.InitGenesisResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for InitGenesisResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = InitGenesisResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.InitGenesisResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<InitGenesisResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(InitGenesisResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.InitGenesisResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for MaterializeRequest {
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
        if !self.receipt_digest.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.MaterializeRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.receipt_digest.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("receiptDigest", pbjson::private::base64::encode(&self.receipt_digest).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for MaterializeRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "receipt_digest",
            "receiptDigest",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            ReceiptDigest,
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
                            "receiptDigest" | "receipt_digest" => Ok(GeneratedField::ReceiptDigest),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = MaterializeRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.MaterializeRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<MaterializeRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut receipt_digest__ = None;
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
                        GeneratedField::ReceiptDigest => {
                            if receipt_digest__.is_some() {
                                return Err(serde::de::Error::duplicate_field("receiptDigest"));
                            }
                            receipt_digest__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(MaterializeRequest {
                    height: height__.unwrap_or_default(),
                    receipt_digest: receipt_digest__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.MaterializeRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for MaterializeResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.decided.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.MaterializeResponse", len)?;
        if let Some(v) = self.decided.as_ref() {
            struct_ser.serialize_field("decided", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for MaterializeResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "decided",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Decided,
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
                            "decided" => Ok(GeneratedField::Decided),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = MaterializeResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.MaterializeResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<MaterializeResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut decided__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Decided => {
                            if decided__.is_some() {
                                return Err(serde::de::Error::duplicate_field("decided"));
                            }
                            decided__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(MaterializeResponse {
                    decided: decided__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.MaterializeResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for RecoverDecidedRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.decided.is_some() {
            len += 1;
        }
        if !self.receipt_digest.is_empty() {
            len += 1;
        }
        if !self.receipt.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.RecoverDecidedRequest", len)?;
        if let Some(v) = self.decided.as_ref() {
            struct_ser.serialize_field("decided", v)?;
        }
        if !self.receipt_digest.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("receiptDigest", pbjson::private::base64::encode(&self.receipt_digest).as_str())?;
        }
        if !self.receipt.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("receipt", pbjson::private::base64::encode(&self.receipt).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for RecoverDecidedRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "decided",
            "receipt_digest",
            "receiptDigest",
            "receipt",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Decided,
            ReceiptDigest,
            Receipt,
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
                            "decided" => Ok(GeneratedField::Decided),
                            "receiptDigest" | "receipt_digest" => Ok(GeneratedField::ReceiptDigest),
                            "receipt" => Ok(GeneratedField::Receipt),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = RecoverDecidedRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.RecoverDecidedRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<RecoverDecidedRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut decided__ = None;
                let mut receipt_digest__ = None;
                let mut receipt__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Decided => {
                            if decided__.is_some() {
                                return Err(serde::de::Error::duplicate_field("decided"));
                            }
                            decided__ = map_.next_value()?;
                        }
                        GeneratedField::ReceiptDigest => {
                            if receipt_digest__.is_some() {
                                return Err(serde::de::Error::duplicate_field("receiptDigest"));
                            }
                            receipt_digest__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Receipt => {
                            if receipt__.is_some() {
                                return Err(serde::de::Error::duplicate_field("receipt"));
                            }
                            receipt__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(RecoverDecidedRequest {
                    decided: decided__,
                    receipt_digest: receipt_digest__.unwrap_or_default(),
                    receipt: receipt__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.RecoverDecidedRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for RecoverDecidedResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.materialized.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.RecoverDecidedResponse", len)?;
        if let Some(v) = self.materialized.as_ref() {
            struct_ser.serialize_field("materialized", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for RecoverDecidedResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "materialized",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Materialized,
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
                            "materialized" => Ok(GeneratedField::Materialized),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = RecoverDecidedResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.RecoverDecidedResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<RecoverDecidedResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut materialized__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Materialized => {
                            if materialized__.is_some() {
                                return Err(serde::de::Error::duplicate_field("materialized"));
                            }
                            materialized__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(RecoverDecidedResponse {
                    materialized: materialized__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.RecoverDecidedResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ReleaseCheckpointRequest {
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
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ReleaseCheckpointRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ReleaseCheckpointRequest {
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
            type Value = ReleaseCheckpointRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ReleaseCheckpointRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ReleaseCheckpointRequest, V::Error>
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
                Ok(ReleaseCheckpointRequest {
                    height: height__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ReleaseCheckpointRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ReleaseCheckpointResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ReleaseCheckpointResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ReleaseCheckpointResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ReleaseCheckpointResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ReleaseCheckpointResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ReleaseCheckpointResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(ReleaseCheckpointResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ReleaseCheckpointResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ReserveQueuedDepositRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.deposit.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ReserveQueuedDepositRequest", len)?;
        if let Some(v) = self.deposit.as_ref() {
            struct_ser.serialize_field("deposit", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ReserveQueuedDepositRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "deposit",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Deposit,
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
                            "deposit" => Ok(GeneratedField::Deposit),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ReserveQueuedDepositRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ReserveQueuedDepositRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ReserveQueuedDepositRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut deposit__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Deposit => {
                            if deposit__.is_some() {
                                return Err(serde::de::Error::duplicate_field("deposit"));
                            }
                            deposit__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(ReserveQueuedDepositRequest {
                    deposit: deposit__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ReserveQueuedDepositRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ReserveQueuedDepositResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ReserveQueuedDepositResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ReserveQueuedDepositResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ReserveQueuedDepositResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ReserveQueuedDepositResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ReserveQueuedDepositResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(ReserveQueuedDepositResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ReserveQueuedDepositResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for RestoreCheckpointRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.boundary.is_some() {
            len += 1;
        }
        if !self.path.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.RestoreCheckpointRequest", len)?;
        if let Some(v) = self.boundary.as_ref() {
            struct_ser.serialize_field("boundary", v)?;
        }
        if !self.path.is_empty() {
            struct_ser.serialize_field("path", &self.path)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for RestoreCheckpointRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "boundary",
            "path",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Boundary,
            Path,
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
                            "boundary" => Ok(GeneratedField::Boundary),
                            "path" => Ok(GeneratedField::Path),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = RestoreCheckpointRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.RestoreCheckpointRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<RestoreCheckpointRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut boundary__ = None;
                let mut path__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Boundary => {
                            if boundary__.is_some() {
                                return Err(serde::de::Error::duplicate_field("boundary"));
                            }
                            boundary__ = map_.next_value()?;
                        }
                        GeneratedField::Path => {
                            if path__.is_some() {
                                return Err(serde::de::Error::duplicate_field("path"));
                            }
                            path__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(RestoreCheckpointRequest {
                    boundary: boundary__,
                    path: path__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.RestoreCheckpointRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for RestoreCheckpointResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.RestoreCheckpointResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for RestoreCheckpointResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = RestoreCheckpointResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.RestoreCheckpointResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<RestoreCheckpointResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(RestoreCheckpointResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.RestoreCheckpointResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ScheduleCheckpointRequest {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.boundary.is_some() {
            len += 1;
        }
        if !self.path.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ScheduleCheckpointRequest", len)?;
        if let Some(v) = self.boundary.as_ref() {
            struct_ser.serialize_field("boundary", v)?;
        }
        if !self.path.is_empty() {
            struct_ser.serialize_field("path", &self.path)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ScheduleCheckpointRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "boundary",
            "path",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Boundary,
            Path,
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
                            "boundary" => Ok(GeneratedField::Boundary),
                            "path" => Ok(GeneratedField::Path),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ScheduleCheckpointRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ScheduleCheckpointRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ScheduleCheckpointRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut boundary__ = None;
                let mut path__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Boundary => {
                            if boundary__.is_some() {
                                return Err(serde::de::Error::duplicate_field("boundary"));
                            }
                            boundary__ = map_.next_value()?;
                        }
                        GeneratedField::Path => {
                            if path__.is_some() {
                                return Err(serde::de::Error::duplicate_field("path"));
                            }
                            path__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(ScheduleCheckpointRequest {
                    boundary: boundary__,
                    path: path__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ScheduleCheckpointRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ScheduleCheckpointResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.ScheduleCheckpointResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ScheduleCheckpointResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ScheduleCheckpointResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.ScheduleCheckpointResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<ScheduleCheckpointResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(ScheduleCheckpointResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.ScheduleCheckpointResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for SeizeNotesRequest {
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
        if self.seizure.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.SeizeNotesRequest", len)?;
        if let Some(v) = self.source.as_ref() {
            struct_ser.serialize_field("source", v)?;
        }
        if let Some(v) = self.seizure.as_ref() {
            struct_ser.serialize_field("seizure", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for SeizeNotesRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "source",
            "seizure",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Source,
            Seizure,
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
                            "seizure" => Ok(GeneratedField::Seizure),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = SeizeNotesRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.SeizeNotesRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<SeizeNotesRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut source__ = None;
                let mut seizure__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Source => {
                            if source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("source"));
                            }
                            source__ = map_.next_value()?;
                        }
                        GeneratedField::Seizure => {
                            if seizure__.is_some() {
                                return Err(serde::de::Error::duplicate_field("seizure"));
                            }
                            seizure__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(SeizeNotesRequest {
                    source: source__,
                    seizure: seizure__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.SeizeNotesRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for SeizeNotesResponse {
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
        if self.replayed {
            len += 1;
        }
        if self.withdrawal.is_some() {
            len += 1;
        }
        if self.current_status != 0 {
            len += 1;
        }
        if self.freeze_generation != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.SeizeNotesResponse", len)?;
        if let Some(v) = self.source.as_ref() {
            struct_ser.serialize_field("source", v)?;
        }
        if self.replayed {
            struct_ser.serialize_field("replayed", &self.replayed)?;
        }
        if let Some(v) = self.withdrawal.as_ref() {
            struct_ser.serialize_field("withdrawal", v)?;
        }
        if self.current_status != 0 {
            let v = super::super::core::component::compliance::v1::UserAssetStatus::try_from(self.current_status)
                .map_err(|_| serde::ser::Error::custom(format!("Invalid variant {}", self.current_status)))?;
            struct_ser.serialize_field("currentStatus", &v)?;
        }
        if self.freeze_generation != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("freezeGeneration", ToString::to_string(&self.freeze_generation).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for SeizeNotesResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "source",
            "replayed",
            "withdrawal",
            "current_status",
            "currentStatus",
            "freeze_generation",
            "freezeGeneration",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Source,
            Replayed,
            Withdrawal,
            CurrentStatus,
            FreezeGeneration,
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
                            "replayed" => Ok(GeneratedField::Replayed),
                            "withdrawal" => Ok(GeneratedField::Withdrawal),
                            "currentStatus" | "current_status" => Ok(GeneratedField::CurrentStatus),
                            "freezeGeneration" | "freeze_generation" => Ok(GeneratedField::FreezeGeneration),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = SeizeNotesResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.SeizeNotesResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<SeizeNotesResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut source__ = None;
                let mut replayed__ = None;
                let mut withdrawal__ = None;
                let mut current_status__ = None;
                let mut freeze_generation__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Source => {
                            if source__.is_some() {
                                return Err(serde::de::Error::duplicate_field("source"));
                            }
                            source__ = map_.next_value()?;
                        }
                        GeneratedField::Replayed => {
                            if replayed__.is_some() {
                                return Err(serde::de::Error::duplicate_field("replayed"));
                            }
                            replayed__ = Some(map_.next_value()?);
                        }
                        GeneratedField::Withdrawal => {
                            if withdrawal__.is_some() {
                                return Err(serde::de::Error::duplicate_field("withdrawal"));
                            }
                            withdrawal__ = map_.next_value()?;
                        }
                        GeneratedField::CurrentStatus => {
                            if current_status__.is_some() {
                                return Err(serde::de::Error::duplicate_field("currentStatus"));
                            }
                            current_status__ = Some(map_.next_value::<super::super::core::component::compliance::v1::UserAssetStatus>()? as i32);
                        }
                        GeneratedField::FreezeGeneration => {
                            if freeze_generation__.is_some() {
                                return Err(serde::de::Error::duplicate_field("freezeGeneration"));
                            }
                            freeze_generation__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(SeizeNotesResponse {
                    source: source__,
                    replayed: replayed__.unwrap_or_default(),
                    withdrawal: withdrawal__,
                    current_status: current_status__.unwrap_or_default(),
                    freeze_generation: freeze_generation__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.SeizeNotesResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StartVerificationRequest {
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
        if !self.candidates.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.StartVerificationRequest", len)?;
        if self.height != 0 {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("height", ToString::to_string(&self.height).as_str())?;
        }
        if !self.candidates.is_empty() {
            struct_ser.serialize_field("candidates", &self.candidates)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StartVerificationRequest {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "height",
            "candidates",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Height,
            Candidates,
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
                            "candidates" => Ok(GeneratedField::Candidates),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StartVerificationRequest;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.StartVerificationRequest")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<StartVerificationRequest, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut height__ = None;
                let mut candidates__ = None;
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
                        GeneratedField::Candidates => {
                            if candidates__.is_some() {
                                return Err(serde::de::Error::duplicate_field("candidates"));
                            }
                            candidates__ = Some(map_.next_value()?);
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(StartVerificationRequest {
                    height: height__.unwrap_or_default(),
                    candidates: candidates__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.StartVerificationRequest", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StartVerificationResponse {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.StartVerificationResponse", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StartVerificationResponse {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
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
                            Ok(GeneratedField::__SkipField__)
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StartVerificationResponse;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.StartVerificationResponse")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<StartVerificationResponse, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map_.next_key::<GeneratedField>()?.is_some() {
                    let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(StartVerificationResponse {
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.StartVerificationResponse", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for UnfreezeUserAsset {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.address.is_some() {
            len += 1;
        }
        if self.asset_id.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.UnfreezeUserAsset", len)?;
        if let Some(v) = self.address.as_ref() {
            struct_ser.serialize_field("address", v)?;
        }
        if let Some(v) = self.asset_id.as_ref() {
            struct_ser.serialize_field("assetId", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for UnfreezeUserAsset {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "address",
            "asset_id",
            "assetId",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Address,
            AssetId,
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
                            "address" => Ok(GeneratedField::Address),
                            "assetId" | "asset_id" => Ok(GeneratedField::AssetId),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = UnfreezeUserAsset;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.UnfreezeUserAsset")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<UnfreezeUserAsset, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut address__ = None;
                let mut asset_id__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Address => {
                            if address__.is_some() {
                                return Err(serde::de::Error::duplicate_field("address"));
                            }
                            address__ = map_.next_value()?;
                        }
                        GeneratedField::AssetId => {
                            if asset_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("assetId"));
                            }
                            asset_id__ = map_.next_value()?;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(UnfreezeUserAsset {
                    address: address__,
                    asset_id: asset_id__,
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.UnfreezeUserAsset", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for VerificationCandidate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.position.is_some() {
            len += 1;
        }
        if !self.tx.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.VerificationCandidate", len)?;
        if let Some(v) = self.position.as_ref() {
            struct_ser.serialize_field("position", v)?;
        }
        if !self.tx.is_empty() {
            #[allow(clippy::needless_borrow)]
            #[allow(clippy::needless_borrows_for_generic_args)]
            struct_ser.serialize_field("tx", pbjson::private::base64::encode(&self.tx).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for VerificationCandidate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "position",
            "tx",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Position,
            Tx,
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
                            "tx" => Ok(GeneratedField::Tx),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = VerificationCandidate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.VerificationCandidate")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<VerificationCandidate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut position__ = None;
                let mut tx__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::Position => {
                            if position__.is_some() {
                                return Err(serde::de::Error::duplicate_field("position"));
                            }
                            position__ = map_.next_value()?;
                        }
                        GeneratedField::Tx => {
                            if tx__.is_some() {
                                return Err(serde::de::Error::duplicate_field("tx"));
                            }
                            tx__ =
                                Some(map_.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(VerificationCandidate {
                    position: position__,
                    tx: tx__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.VerificationCandidate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for VerificationPosition {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.tx_index != 0 {
            len += 1;
        }
        if !self.message_path.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("shieldd.execution_client.v1.VerificationPosition", len)?;
        if self.tx_index != 0 {
            struct_ser.serialize_field("txIndex", &self.tx_index)?;
        }
        if !self.message_path.is_empty() {
            struct_ser.serialize_field("messagePath", &self.message_path)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for VerificationPosition {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx_index",
            "txIndex",
            "message_path",
            "messagePath",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            TxIndex,
            MessagePath,
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
                            "txIndex" | "tx_index" => Ok(GeneratedField::TxIndex),
                            "messagePath" | "message_path" => Ok(GeneratedField::MessagePath),
                            _ => Ok(GeneratedField::__SkipField__),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = VerificationPosition;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct shieldd.execution_client.v1.VerificationPosition")
            }

            fn visit_map<V>(self, mut map_: V) -> std::result::Result<VerificationPosition, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx_index__ = None;
                let mut message_path__ = None;
                while let Some(k) = map_.next_key()? {
                    match k {
                        GeneratedField::TxIndex => {
                            if tx_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("txIndex"));
                            }
                            tx_index__ =
                                Some(map_.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::MessagePath => {
                            if message_path__.is_some() {
                                return Err(serde::de::Error::duplicate_field("messagePath"));
                            }
                            message_path__ =
                                Some(map_.next_value::<Vec<::pbjson::private::NumberDeserialize<_>>>()?
                                    .into_iter().map(|x| x.0).collect())
                            ;
                        }
                        GeneratedField::__SkipField__ => {
                            let _ = map_.next_value::<serde::de::IgnoredAny>()?;
                        }
                    }
                }
                Ok(VerificationPosition {
                    tx_index: tx_index__.unwrap_or_default(),
                    message_path: message_path__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("shieldd.execution_client.v1.VerificationPosition", FIELDS, GeneratedVisitor)
    }
}
