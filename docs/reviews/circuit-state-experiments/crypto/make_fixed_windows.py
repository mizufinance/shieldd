from pathlib import Path
import sys
p=Path('/Users/antoinecyr/Documents/Source/shieldd/crates/crypto/circuits/src/group.rs')
s=p.read_text()
old='''fn affine_fixed<'a>(base: &Point<Scalar>, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {
    let d = coefficient_d();
    let mut base = base.clone();
    let mut result = Point::identity();
    let lift = |p: &Point<Scalar>| Point {
        x: V::native(p.x.clone()),
        y: V::native(p.y.clone()),
    };
    for pair in bits.chunks(2) {
        let twice = base.add(&base, &d);
        let triple = twice.add(&base, &d);
        result = add(
            &result,
            &select(&lift(&base), &lift(&twice), &lift(&triple), pair),
        );
        base = twice.add(&twice, &d);
    }
    result
}'''
assert old in s
for width in (3,4):
    new=f'''fn affine_fixed<'a>(base: &Point<Scalar>, bits: &[BoolVar<'a, Scalar>]) -> Point<V<'a>> {{
    use commonware_cryptography::zk::circuit::Selector;
    let d = coefficient_d();
    let mut weighted = base.clone();
    let mut result = Point::identity();
    for chunk in bits.chunks({width}) {{
        let mut table = Vec::with_capacity(1 << {width});
        table.push(Point::identity());
        for i in 1..(1 << {width}) {{
            table.push(table[i - 1].add(&weighted, &d));
        }}
        let mut padded = chunk.to_vec();
        padded.resize_with({width}, || BoolVar::constant(false));
        let selector = Selector::new(&padded);
        let chosen = Point {{
            x: selector.select_constant(&table.iter().map(|p| p.x.clone()).collect::<Vec<_>>()),
            y: selector.select_constant(&table.iter().map(|p| p.y.clone()).collect::<Vec<_>>()),
        }};
        result = add(&result, &chosen);
        weighted = table[(1 << {width}) - 1].add(&weighted, &d);
    }}
    result
}}'''
    out=Path(f'/tmp/shieldd-experiments/crypto/group_fixed_w{width}.rs')
    out.write_text(s.replace(old,new))
    print(out)
