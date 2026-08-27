# Spending Keys

A [BIP39] 12- or 24-word seed phrase derives spend authorities through [BIP44].

The BIP44 path for Shieldd consists of:

```
m / purpose' / coin_type' / wallet_id'
```

`m` represents the master node and is derived from the spend seed as described in
[BIP32] in section "Master key generation".

The purpose field is a constant set to `44'` to denote that BIP44 is being used.

Shieldd's registered `coin_type` is defined in [SLIP-0044]:

* Coin type: `6532`
* Path component `coin_type' = 0x80001984`

The default wallet ID is set to 0. A typical use case for Shieldd will involve
generating the single default wallet, and then using multiple Shieldd accounts
within that wallet which share a single viewing key.

The BIP44 path is used with the seed phrase to derive the spend `seed` for use
in Shieldd following the child key derivation specified in [BIP32].

The root key material for a particular spend authority is the 32-byte
`spend_key_bytes` derived as above from the seed phrase. The `spend_key_bytes` value is used to derive

* $\mathsf{ask} \in \mathbb F_r$, the *spend authorization key*, and
* $\mathsf{nk} \in \mathbb F_q$, the *nullifier key*,

as follows.  Define `prf_expand(label, key, input)` as BLAKE2b-512 with
personalization `label`, key `key`, and input `input`.  Define
`from_le_bytes(bytes)` as the function that interprets its input bytes as an
integer in little-endian order.  Then
```
ask = from_le_bytes(prf_expand("Shieldd_ExpndSd", spend_key_bytes, 0)) mod r
nk  = from_le_bytes(prf_expand("Shieldd_ExpndSd", spend_key_bytes, 1)) mod q
```

The *spending key* consists of `spend_key_bytes` and `ask`.  (Since `ask` is
derived from `spend_key_bytes`, only the `spend_key_bytes` need to be stored,
but the `ask` is considered part of the spending key). When using a hardware
wallet or similar custody mechanism, the spending key remains on the device.

The spend authorization key $\mathsf{ask}$ is used as a `decaf377-rdsa` signing
key.[^1] The corresponding verification key is the *spend verification key*
$\mathsf{ak} = [\mathsf{ask}]B$.  The spend verification key $\mathsf{ak}$ and
the nullifier key $\mathsf{nk}$ are used to create the *full viewing key*
described in the next section.

[^1]: Note that it is technically possible for the derived $ask$ or $nsk$ to be
$0$, but this happens with probability approximately $2^{-252}$, so we ignore
this case, as, borrowing phrasing from [Adam Langley][agl_elligator], it happens
significantly less often than malfunctions in the CPU instructions we'd use to
check it.

[agl_elligator]: https://www.imperialviolet.org/2013/12/25/elligator.html
[BIP32]: https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki
[BIP39]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki
[BIP44]: https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki
[SLIP-0044]: https://github.com/satoshilabs/slips/blob/master/slip-0044.md
