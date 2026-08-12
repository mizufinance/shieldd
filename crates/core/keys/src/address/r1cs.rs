use crate::Address;
use ark_ff::ToConstraintField;
use ark_r1cs_std::prelude::*;
use ark_relations::r1cs::SynthesisError;
use decaf377::{r1cs::ElementVar, Element, Fq};

fn enforce_diversified_generator_nonidentity(
    cs: ark_relations::r1cs::ConstraintSystemRef<Fq>,
    diversified_generator: &ElementVar,
) -> Result<(), SynthesisError> {
    let identity = ElementVar::new_constant(cs, decaf377::Element::default())?;
    identity.enforce_not_equal(diversified_generator)
}

fn enforce_transmission_key_nonidentity(
    cs: ark_relations::r1cs::ConstraintSystemRef<Fq>,
    transmission_key: &ElementVar,
) -> Result<(), SynthesisError> {
    let identity = ElementVar::new_constant(cs, decaf377::Element::default())?;
    identity.enforce_not_equal(transmission_key)
}

#[derive(Clone)]
pub struct AddressVar {
    pub diversified_generator: ElementVar,
    pub transmission_key: ElementVar,
}

impl AddressVar {
    pub fn diversified_generator(&self) -> ElementVar {
        self.diversified_generator.clone()
    }

    pub fn transmission_key(&self) -> ElementVar {
        self.transmission_key.clone()
    }
}

impl AllocVar<Address, Fq> for AddressVar {
    fn new_variable<T: std::borrow::Borrow<Address>>(
        cs: impl Into<ark_relations::r1cs::Namespace<Fq>>,
        f: impl FnOnce() -> Result<T, SynthesisError>,
        mode: ark_r1cs_std::prelude::AllocationMode,
    ) -> Result<Self, SynthesisError> {
        let ns = cs.into();
        let cs = ns.cs();
        let address: Address = f()?.borrow().to_owned();

        let diversified_generator: ElementVar = AllocVar::<Element, Fq>::new_variable(
            cs.clone(),
            || Ok(address.diversified_generator()),
            mode,
        )?;
        enforce_diversified_generator_nonidentity(cs.clone(), &diversified_generator)?;

        let element_transmission_key = decaf377::Encoding(address.transmission_key().0)
            .vartime_decompress()
            .map_err(|_| SynthesisError::AssignmentMissing)?;
        let transmission_key: ElementVar = AllocVar::<Element, Fq>::new_variable(
            cs.clone(),
            || Ok(element_transmission_key),
            mode,
        )?;
        enforce_transmission_key_nonidentity(cs.clone(), &transmission_key)?;
        Ok(Self {
            diversified_generator,
            transmission_key,
        })
    }
}

#[cfg(test)]
mod tests {
    use std::sync::OnceLock;

    use ark_relations::r1cs::ConstraintSystem;

    use super::*;

    #[test]
    fn address_var_enforces_diversified_generator_nonidentity() {
        let valid = crate::test_keys::ADDRESS_0.clone();
        let identity_cache = OnceLock::new();
        assert!(identity_cache.set(Element::default()).is_ok());
        let mut identity = valid;
        identity.g_d = identity_cache;

        let cs = ConstraintSystem::<Fq>::new_ref();
        AddressVar::new_witness(cs.clone(), || Ok(identity))
            .expect("an identity-generator address witness must allocate");
        assert!(
            !cs.is_satisfied()
                .expect("address constraint satisfaction is defined"),
            "AddressVar must reject the Decaf identity diversified generator"
        );
    }

    #[test]
    fn address_var_enforces_transmission_key_nonidentity() {
        let mut identity = crate::test_keys::ADDRESS_0.clone();
        identity.pk_d = crate::ka::Public(Element::default().vartime_compress().0);
        identity.transmission_key_s = Fq::from(0u64);

        let cs = ConstraintSystem::<Fq>::new_ref();
        AddressVar::new_witness(cs.clone(), || Ok(identity))
            .expect("an identity-transmission address witness must allocate");
        assert!(
            !cs.is_satisfied()
                .expect("address constraint satisfaction is defined"),
            "AddressVar must reject the Decaf identity transmission key"
        );
    }
}

// We do not implement the R1CSVar trait for AddressVar since we do not have the
// diversifier in-circuit in order to construct an Address.

impl ToConstraintField<Fq> for Address {
    fn to_field_elements(&self) -> Option<Vec<Fq>> {
        let mut elements = Vec::new();
        elements.extend(self.diversified_generator().to_field_elements()?);
        let transmission_key_fq = decaf377::Encoding(self.transmission_key().0)
            .vartime_decompress()
            .expect("transmission key is valid decaf377 Element");
        elements.extend([transmission_key_fq.vartime_compress_to_field()]);
        Some(elements)
    }
}
