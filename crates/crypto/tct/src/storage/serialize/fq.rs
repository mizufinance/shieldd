use super::*;

pub fn serialize<S>(fq: &Fq, serializer: S) -> Result<S::Ok, S::Error>
where
    S: serde::Serializer,
{
    serializer.serialize_bytes(&fq.to_bytes())
}

pub fn deserialize<'de, D>(deserializer: D) -> Result<Fq, D::Error>
where
    D: serde::Deserializer<'de>,
{
    deserializer.deserialize_bytes(FqVisitor)
}

struct FqVisitor;

impl<'de> Visitor<'de> for FqVisitor {
    type Value = Fq;

    fn expecting(&self, formatter: &mut std::fmt::Formatter) -> std::fmt::Result {
        formatter.write_str("a 32-byte array representing a field element")
    }

    fn visit_seq<A>(self, mut seq: A) -> Result<Self::Value, A::Error>
    where
        A: serde::de::SeqAccess<'de>,
    {
        let mut bytes = [0u8; 32];
        for (index, byte) in bytes.iter_mut().enumerate() {
            *byte = seq
                .next_element()?
                .ok_or_else(|| serde::de::Error::invalid_length(index, &self))?;
        }
        if seq.next_element::<u8>()?.is_some() {
            return Err(serde::de::Error::invalid_length(33, &self));
        }
        self.visit_bytes(&bytes)
    }

    fn visit_bytes<E>(self, bytes: &[u8]) -> Result<Self::Value, E>
    where
        E: serde::de::Error,
    {
        let bytes: [u8; 32] = bytes
            .try_into()
            .map_err(|_| serde::de::Error::invalid_length(bytes.len(), &"exactly 32 bytes"))?;
        let fq =
            shieldd_sdk_crypto::encoding::field(&bytes).map_err(|e| serde::de::Error::custom(e))?;
        Ok(fq)
    }
}
