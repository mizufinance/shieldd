from pathlib import Path
root=Path('/Users/antoinecyr/Documents/Source/shieldd/crates/crypto/circuits/src');out=Path(__file__).parent
g=(root/'group.rs').read_text();e=(root/'encryption.rs').read_text()
old='''fn affine_variable<'a>(base: &Point<V<'a>>, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
    let twice = double(base);
    let triple = add(&twice, base);
    let mut result = Point::identity();
    for pair in bits.chunks(2).rev() {
        result = double(&double(&result));
        result = add(&result, &select(base, &twice, &triple, pair));
    }
    result
}'''
new='''pub struct PreparedVariable<'a> {
    base: Point<V<'a>>,
    twice: Point<V<'a>>,
    triple: Point<V<'a>>,
}
impl<'a> PreparedVariable<'a> {
    pub fn new(base: &Point<V<'a>>) -> Self {
        let twice = double(base);
        let triple = add(&twice, base);
        Self { base: base.clone(), twice, triple }
    }
    pub fn multiply_bits(&self, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
        let mut result = Point::identity();
        for pair in bits.chunks(2).rev() {
            result = double(&double(&result));
            result = add(&result, &select(&self.base, &self.twice, &self.triple, pair));
        }
        result
    }
}
fn affine_variable<'a>(base: &Point<V<'a>>, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
    PreparedVariable::new(base).multiply_bits(bits)
}'''
assert old in g;g=g.replace(old,new)
old='''    let mut detection_secret = None;
    let mut selected_secrets = Vec::with_capacity(4);
    for i in 0..4 {'''
new='''    let selected = Point {
        x: shared.flagged.select(&shared.detection_key.x, &shared.audit.payload.x),
        y: shared.flagged.select(&shared.detection_key.y, &shared.audit.payload.y),
    };
    let prepared_selected = group::PreparedVariable::new(&selected);
    let mut detection_secret = None;
    let mut selected_secrets = Vec::with_capacity(4);
    for i in 0..4 {'''
assert old in e;e=e.replace(old,new)
old='''        let audit_key = &shared.audit.payload;
        let selected = Point {
            x: shared.flagged.select(&shared.detection_key.x, &audit_key.x),
            y: shared.flagged.select(&shared.detection_key.y, &audit_key.y),
        };
        selected_secrets.push(selected.multiply_bits(&bits));'''
new='''        selected_secrets.push(prepared_selected.multiply_bits(&bits));'''
assert old in e;e=e.replace(old,new)
(out/'group_prepared.rs').write_text(g);(out/'encryption_prepared.rs').write_text(e)
print(out/'group_prepared.rs',out/'encryption_prepared.rs')
