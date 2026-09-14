// Development-only facts and proving boundaries for the isolated experiment.
package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"

	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

type RegistryFacts struct {
	Value       string `json:"value"`
	NextIndex   uint64 `json:"next_index"`
	NextValue   string `json:"next_value"`
	DailyLimit  string `json:"daily_limit"`
	RoutePolicy string `json:"route_policy"`
	RingID      string `json:"ring_id"`
	PolicyID    string `json:"policy_id"`
	Permission  string `json:"permission"`
	Resource    string `json:"resource"`
	Position    uint64 `json:"position"`
}
type VolumeFacts struct {
	UseReal      bool   `json:"use_real"`
	StartsNewDay bool   `json:"starts_new_day"`
	DayStart     string `json:"day_start"`
	Context      string `json:"context"`
	Prior        string `json:"prior"`
	Successor    string `json:"successor"`
	Position     uint64 `json:"position"`
}
type Facts struct {
	Scenario             string        `json:"scenario"`
	WitnessSHA256        string        `json:"witness_sha256"`
	ClaimedStatement     string        `json:"claimed_statement"`
	Asset                string        `json:"asset"`
	Regulated            bool          `json:"regulated"`
	Inputs               [2]string     `json:"inputs"`
	Outputs              [2]string     `json:"outputs"`
	OptionalDummy        bool          `json:"optional_dummy"`
	SameAffineAddress    bool          `json:"same_affine_address"`
	SpendPositions       [2]uint64     `json:"spend_positions"`
	History              [2]bool       `json:"history"`
	Timestamp            string        `json:"timestamp"`
	RecentFloor          string        `json:"recent_floor"`
	SenderStatus         string        `json:"sender_status"`
	ReceiverStatus       string        `json:"receiver_status"`
	SenderPosition       uint64        `json:"sender_position"`
	ReceiverPosition     uint64        `json:"receiver_position"`
	RegulatedPrecision   uint8         `json:"regulated_precision"`
	UnregulatedPrecision uint8         `json:"unregulated_precision"`
	RoutingHeight        uint64        `json:"routing_height"`
	Registry             RegistryFacts `json:"registry"`
	Volume               VolumeFacts   `json:"volume"`
}
type Export struct {
	Schema        string  `json:"schema"`
	FieldEncoding string  `json:"field_encoding"`
	Facts         []Facts `json:"facts"`
}

func decimal(v []byte) string { return primitives.LittleEndianBytesToBigInt(v).String() }
func field(v [32]byte) string {
	return fmt.Sprintf("%064x", primitives.LittleEndianBytesToBigInt(v[:]))
}

func facts(name string, payload []byte) (Facts, error) {
	if _, _, err := abi.NewTransferCircuitAssignmentFromWitness(payload); err != nil {
		return Facts{}, err
	}
	w, _, err := abi.DecodeTransferWitness(payload)
	if err != nil {
		return Facts{}, err
	}
	digest := sha256.Sum256(payload)
	r, v := &w.AssetIndexedLeaf, &w.VolumeAccumulator
	return Facts{
		Scenario: name, WitnessSHA256: hex.EncodeToString(digest[:]), ClaimedStatement: field(w.ClaimedStatementHash),
		Asset: field(w.RequiredSpend.SpentNoteAssetID), Regulated: w.IsRegulated,
		Inputs:            [2]string{decimal(w.RequiredSpend.SpentNoteAmount[:]), decimal(w.OptionalSpend.SpentNoteAmount[:])},
		Outputs:           [2]string{decimal(w.ReceiverOutput.CreatedNoteAmount[:]), decimal(w.ChangeOutput.CreatedNoteAmount[:])},
		OptionalDummy:     w.OptionalSpend.IsDummy,
		SameAffineAddress: w.SenderDiversifiedGenerator == w.ReceiverOutput.RecipientDiversifiedGenerator && w.SenderTransmissionKey == w.ReceiverOutput.RecipientTransmissionKey,
		SpendPositions:    [2]uint64{w.RequiredSpend.StateCommitmentPosition, w.OptionalSpend.StateCommitmentPosition},
		History:           [2]bool{w.RequiredSpend.HistoryRequired, w.OptionalSpend.HistoryRequired},
		Timestamp:         decimal(w.TargetTimestamp[:]), RecentFloor: decimal(w.RecentPositionFloor[:]),
		SenderStatus: field(w.SenderStatus), ReceiverStatus: field(w.ReceiverOutput.RecipientStatus),
		SenderPosition: w.SenderCompliancePosition, ReceiverPosition: w.ReceiverOutput.RecipientCompliancePosition,
		RegulatedPrecision: w.RegulatedPrecision, UnregulatedPrecision: w.UnregulatedPrecision, RoutingHeight: w.RoutingAsOfHeight,
		Registry: RegistryFacts{Value: field(r.Value), NextIndex: r.NextIndex, NextValue: field(r.NextValue), DailyLimit: decimal(r.DailyVolumeLimit[:]),
			RoutePolicy: field(r.RoutePolicyHash), RingID: field(r.RingIDHash), PolicyID: field(r.PolicyIDHash), Permission: field(r.PermissionHash), Resource: field(r.ResourceHash), Position: w.AssetPosition},
		Volume: VolumeFacts{UseReal: v.UseReal, StartsNewDay: v.StartsNewDay, DayStart: decimal(v.DayStart[:]), Context: decimal(v.ProofContext[:]),
			Prior: decimal(v.PriorVolume[:]), Successor: decimal(v.SuccessorVolume[:]), Position: v.PriorPosition},
	}, nil
}
func run() error {
	if len(os.Args) == 4 && os.Args[1] == "serve" {
		return serve(os.Args[2], os.Args[3])
	}
	if len(os.Args) != 4 || os.Args[1] != "facts" {
		return fmt.Errorf("usage: provingexperiment facts OUTPUT_JSON DISCLOSURE_WITNESS | serve A|B ARTIFACT_DIRECTORY")
	}
	out := Export{Schema: "shieldd.proving_experiment.logical_facts.v1", FieldEncoding: "field strings are canonical 32-byte big-endian hex; amounts, limits, timestamps and volume integers are decimal"}
	for _, name := range []string{"transfer", "transfer_unregulated", "transfer_flagged", "transfer_accumulating", "transfer_over_limit_disclosure", "transfer_accumulator_continuation"} {
		var data []byte
		if name == "transfer_over_limit_disclosure" {
			var err error
			data, err = os.ReadFile(os.Args[3])
			if err != nil {
				return err
			}
		} else {
			data = testfixtures.LoadTransferWitness(name)
		}
		row, err := facts(name, data)
		if err != nil {
			return fmt.Errorf("%s: %w", name, err)
		}
		out.Facts = append(out.Facts, row)
	}
	f, err := os.OpenFile(os.Args[2], os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
	if err != nil {
		return err
	}
	defer f.Close()
	encoder := json.NewEncoder(f)
	encoder.SetIndent("", "  ")
	return encoder.Encode(out)
}
func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
