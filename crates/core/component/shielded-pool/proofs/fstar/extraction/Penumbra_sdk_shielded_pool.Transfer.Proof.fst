module Penumbra_sdk_shielded_pool.Transfer.Proof
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

include Penumbra_sdk_shielded_pool.Bundle {t_TransferSpendPublic as t_TransferSpendPublic}

include Penumbra_sdk_shielded_pool.Bundle {t_TransferOutputPublic as t_TransferOutputPublic}

include Penumbra_sdk_shielded_pool.Bundle {t_TransferComplianceCiphertextPublic as t_TransferComplianceCiphertextPublic}

include Penumbra_sdk_shielded_pool.Bundle {t_TransferComplianceProofPublic as t_TransferComplianceProofPublic}

include Penumbra_sdk_shielded_pool.Bundle {t_TransferCompliancePublic as t_TransferCompliancePublic}

include Penumbra_sdk_shielded_pool.Bundle {t_TransferProofPublic as t_TransferProofPublic}

include Penumbra_sdk_shielded_pool.Bundle {impl_1__validate_shape as impl_TransferProofPublic__validate_shape}
