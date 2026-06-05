module Penumbra_sdk_shielded_pool.Transfer.Generated
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

include Penumbra_sdk_shielded_pool.Bundle {v_PADDED_TRANSFER_INPUTS as v_PADDED_TRANSFER_INPUTS}

include Penumbra_sdk_shielded_pool.Bundle {v_PADDED_TRANSFER_OUTPUTS as v_PADDED_TRANSFER_OUTPUTS}

include Penumbra_sdk_shielded_pool.Bundle {v_TRANSFER_STATEMENT_FIELD_COUNT as v_TRANSFER_STATEMENT_FIELD_COUNT}

include Penumbra_sdk_shielded_pool.Bundle {v_TRANSFER_PROOF_LABEL as v_TRANSFER_PROOF_LABEL}

include Penumbra_sdk_shielded_pool.Bundle {transfer_input_count as transfer_input_count}

include Penumbra_sdk_shielded_pool.Bundle {transfer_output_count as transfer_output_count}
