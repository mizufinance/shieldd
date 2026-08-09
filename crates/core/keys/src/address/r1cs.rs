use crate::Address;
use ark_ff::ToConstraintField;
use ark_r1cs_std::prelude::*;
use ark_relations::r1cs::SynthesisError;
use decaf377::{
    r1cs::{ElementVar, FqVar},
    Element, Fq,
};

// Native census predicate: DEC-DIVERSIFIED-GENERATOR-NONIDENTITY.
fn enforce_diversified_generator_nonidentity(
    cs: ark_relations::r1cs::ConstraintSystemRef<Fq>,
    diversified_generator: &ElementVar,
) -> Result<(), SynthesisError> {
    let identity = ElementVar::new_constant(cs, decaf377::Element::default())?;
    identity.enforce_not_equal(diversified_generator)
}

// Native census predicate: DEC-TRANSMISSION-KEY-NONIDENTITY.
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
    pub clue_key: FqVar,
}

impl AddressVar {
    pub fn diversified_generator(&self) -> ElementVar {
        self.diversified_generator.clone()
    }

    pub fn transmission_key(&self) -> ElementVar {
        self.transmission_key.clone()
    }

    pub fn clue_key(&self) -> FqVar {
        self.clue_key.clone()
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
        let clue_key = FqVar::new_variable(
            cs,
            || {
                Fq::from_bytes_checked(&address.clue_key().0)
                    .map_err(|_| SynthesisError::AssignmentMissing)
            },
            mode,
        )?;

        Ok(Self {
            diversified_generator,
            transmission_key,
            clue_key,
        })
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
        elements.extend(Fq::from_bytes_checked(&self.clue_key().0));
        Some(elements)
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
        let valid_cs = ConstraintSystem::<Fq>::new_ref();
        AddressVar::new_witness(valid_cs.clone(), || Ok(valid.clone()))
            .expect("a valid address witness must allocate");
        assert!(
            valid_cs
                .is_satisfied()
                .expect("valid address constraint satisfaction is defined"),
            "a native valid address must satisfy AddressVar"
        );

        let identity_cache = OnceLock::new();
        assert!(identity_cache.set(Element::default()).is_ok());
        let mut identity = valid;
        identity.g_d = identity_cache;

        let primitive_cs = ConstraintSystem::<Fq>::new_ref();
        let identity_var = ElementVar::new_witness(primitive_cs.clone(), || Ok(Element::default()))
            .expect("an identity point witness must allocate");
        enforce_diversified_generator_nonidentity(primitive_cs.clone(), &identity_var)
            .expect("the nonidentity predicate must synthesize for an identity witness");
        assert!(
            !primitive_cs
                .is_satisfied()
                .expect("primitive nonidentity constraint satisfaction is defined"),
            "the algebraic predicate must reject the Decaf identity"
        );

        let address_cs = ConstraintSystem::<Fq>::new_ref();
        AddressVar::new_witness(address_cs.clone(), || Ok(identity))
            .expect("an identity-generator address witness must allocate");
        assert!(
            !address_cs
                .is_satisfied()
                .expect("address constraint satisfaction is defined"),
            "AddressVar must reject the Decaf identity diversified generator"
        );
    }

    #[test]
    fn address_var_enforces_transmission_key_nonidentity() {
        let valid_cs = ConstraintSystem::<Fq>::new_ref();
        AddressVar::new_witness(valid_cs.clone(), || Ok(crate::test_keys::ADDRESS_0.clone()))
            .expect("a valid address witness must allocate");
        assert!(
            valid_cs
                .is_satisfied()
                .expect("valid address constraint satisfaction is defined"),
            "a native valid address must satisfy AddressVar"
        );

        let mut identity = crate::test_keys::ADDRESS_0.clone();
        identity.pk_d = crate::ka::Public(Element::default().vartime_compress().0);
        identity.transmission_key_s = Fq::from(0u64);

        let primitive_cs = ConstraintSystem::<Fq>::new_ref();
        let identity_var = ElementVar::new_witness(primitive_cs.clone(), || Ok(Element::default()))
            .expect("an identity point witness must allocate");
        enforce_transmission_key_nonidentity(primitive_cs.clone(), &identity_var)
            .expect("the nonidentity predicate must synthesize for an identity witness");
        assert!(
            !primitive_cs
                .is_satisfied()
                .expect("primitive nonidentity constraint satisfaction is defined"),
            "the algebraic predicate must reject the Decaf identity"
        );

        let address_cs = ConstraintSystem::<Fq>::new_ref();
        AddressVar::new_witness(address_cs.clone(), || Ok(identity))
            .expect("an identity-transmission address witness must allocate");
        assert!(
            !address_cs
                .is_satisfied()
                .expect("address constraint satisfaction is defined"),
            "AddressVar must reject the Decaf identity transmission key"
        );
    }
}
