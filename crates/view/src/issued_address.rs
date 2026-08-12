use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::{keys::AddressIndex, Address};

/// Local metadata describing why an address was issued.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum AddressPurpose {
    General,
    Regulated { asset_id: asset::Id },
}

/// Durable record written before an issued address leaves the view service.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct IssuedAddress {
    pub address_index: AddressIndex,
    pub address: Address,
    pub purpose: AddressPurpose,
    pub birth_height: u64,
    pub retired_height: Option<u64>,
}
