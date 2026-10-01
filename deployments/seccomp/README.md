# Linux nullifier storage

NOMT requires Linux 6.0+ and `io_uring_setup`/`io_uring_enter`. Shieldd probes both
before opening nullifier state, including offline maintenance. Host policy must
also permit io_uring; a container profile cannot override a host prohibition.

Use `--security-opt seccomp=/absolute/path/nomt.json` for containers opening
Shieldd storage. Bankd's Compose files select this profile for validator and
initialization services. Other services retain their normal container policy.

[`nomt.json`](nomt.json) is the [Moby default profile](https://github.com/moby/profiles/blob/2ceae35d351c156cb5a8efc0fdc4a08cf94569d8/seccomp/default.json)
with one unconditional allow rule for those two syscalls. Its original
[license](LICENSE) applies. No additional capabilities are needed;
`io_uring_register` remains denied. Review the profile when updating Moby or NOMT.

This grants asynchronous kernel I/O to the validator process. Seccomp does not
filter individual io_uring operations as ordinary syscalls, so the allowance
expands the kernel attack surface. Keep the host kernel patched, isolate validator
containers, and do not apply this profile to unrelated services. The Linux CI
gate checks refused startup without partial nullifier state under denied setup
and denied submission, then checks writes, authenticated reads and reopen under
the allowed profile.
