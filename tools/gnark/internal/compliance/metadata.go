package compliance

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

func ComputeMetadataHash(api frontend.API, policyIDHash, resourceHash, permissionHash, tier, targetTimestamp, salt frontend.Variable) (frontend.Variable, error) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return nil, err
	}
	return primitives.Poseidon377Hash6(
		api,
		primitives.MustBigInt(vectors.Poseidon377.DLEQMetadataDomain),
		[6]frontend.Variable{policyIDHash, resourceHash, permissionHash, tier, targetTimestamp, salt},
	)
}

func transferMetadataDomain() *big.Int {
	sum := blake2b.Sum512([]byte("shieldd.compliance.transfer.dleq_metadata.v2"))
	return primitives.LittleEndianBytesToBigInt(sum[:])
}

func ComputeTransferMetadataHash(
	api frontend.API,
	policyIDHash, resourceHash, permissionHash, tier, targetTimestamp, authorizationID, salt frontend.Variable,
) (frontend.Variable, error) {
	return primitives.Poseidon377Hash7(
		api,
		transferMetadataDomain(),
		[7]frontend.Variable{
			policyIDHash,
			resourceHash,
			permissionHash,
			tier,
			targetTimestamp,
			authorizationID,
			salt,
		},
	)
}
