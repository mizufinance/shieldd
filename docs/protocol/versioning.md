# Versioning

Shieldd-owned pre-launch formats use one current representation. Circuit witnesses,
proof statements, artifact metadata, local databases, and cryptographic domains do
not carry revision counters. Their identity comes from semantic domain names and,
where stale data must be rejected, exact content or schema fingerprints.

Versions remain only where the value is part of an external or consensus boundary:
protobuf package namespaces, CometBFT application upgrades, the C FFI ABI, and
explicitly validated consensus proof protocols. Replacing a current internal format
means deleting the old path and regenerating its fixtures and artifacts.
