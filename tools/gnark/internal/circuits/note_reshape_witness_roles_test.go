package circuits

import (
	"encoding/json"
	"os"
	"path/filepath"
	"reflect"
	"regexp"
	"sort"
	"strings"
	"testing"

	"github.com/consensys/gnark/frontend"
)

type witnessRoleEntry struct {
	Path     string   `json:"path"`
	Role     string   `json:"role"`
	Supports []string `json:"supports"`
}

type witnessRoleManifest struct {
	Schema         string             `json:"schema"`
	CircuitWitness string             `json:"circuit_witness"`
	Roles          []witnessRoleEntry `json:"roles"`
	ForbiddenPaths []string           `json:"forbidden_paths"`
}

func TestNoteReshapeWitnessRolesAreCompleteAndConnected(t *testing.T) {
	path := filepath.Join("..", "..", "artifacts", "note-reshape-witness-roles.json")
	payload, err := os.ReadFile(path)
	if err != nil {
		t.Fatalf("read witness-role manifest: %v", err)
	}
	var manifest witnessRoleManifest
	if err := json.Unmarshal(payload, &manifest); err != nil {
		t.Fatalf("decode witness-role manifest: %v", err)
	}
	if manifest.Schema != "shieldd.note-reshape-witness-roles.v1" ||
		manifest.CircuitWitness != "NoteReshapeCircuit" {
		t.Fatalf("unexpected witness-role manifest identity: %#v", manifest)
	}

	want := collectWitnessLeafPaths(reflect.TypeOf(NoteReshapeCircuit{}), "")
	got := make([]string, 0, len(manifest.Roles))
	seen := make(map[string]struct{}, len(manifest.Roles))
	validRoles := map[string]bool{
		"public": true, "semantic-private": true, "conditional-real": true,
		"conditional-dummy": true, "derived-auxiliary": true,
	}
	validObligations := map[string]bool{
		"NR-SHAPE": true, "NR-SHARED-ADDRESS": true, "NR-INPUT-COMMITMENT": true,
		"NR-MEMBERSHIP": true, "NR-NULLIFIER": true, "NR-AUTHORIZATION": true,
		"NR-OUTPUT-COMMITMENT": true, "NR-CONSERVATION": true,
		"NR-STATEMENT": true, "NR-STATE": true,
	}
	for _, entry := range manifest.Roles {
		if _, ok := seen[entry.Path]; ok {
			t.Fatalf("duplicate witness-role path %q", entry.Path)
		}
		seen[entry.Path] = struct{}{}
		got = append(got, entry.Path)
		if !validRoles[entry.Role] {
			t.Fatalf("unrecognized role %q for %s", entry.Role, entry.Path)
		}
		if len(entry.Supports) == 0 {
			t.Fatalf("semantically disconnected witness field %s", entry.Path)
		}
		for _, obligation := range entry.Supports {
			if !validObligations[obligation] {
				t.Fatalf("field %s names unknown obligation %s", entry.Path, obligation)
			}
		}
		if entry.Role == "conditional-dummy" &&
			!strings.HasPrefix(entry.Path, "SyntheticSpends[]") {
			t.Fatalf("impossible conditional-dummy role on %s", entry.Path)
		}
	}
	sort.Strings(want)
	sort.Strings(got)
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("witness role classification drift:\n got %v\nwant %v", got, want)
	}
	for _, forbidden := range manifest.ForbiddenPaths {
		if _, ok := seen[forbidden]; ok {
			t.Fatalf("obsolete witness field %s is still classified", forbidden)
		}
	}

	assertCompiledWitnessRoles(t, manifest)
}

func assertCompiledWitnessRoles(t *testing.T, roles witnessRoleManifest) {
	t.Helper()
	families := []string{
		"note_reshape2x1",
		"note_reshape4x1",
		"note_reshape8x1",
		"note_reshape1x8",
	}
	used := make(map[string]int, len(roles.Roles))
	for _, family := range families {
		path := filepath.Join("..", "..", "artifacts", family, family+"-manifest.json")
		payload, err := os.ReadFile(path)
		if err != nil {
			t.Fatalf("read %s compiler manifest: %v", family, err)
		}
		var compiled ConstraintManifest
		if err := json.Unmarshal(payload, &compiled); err != nil {
			t.Fatalf("decode %s compiler manifest: %v", family, err)
		}
		if len(compiled.WitnessWires) != compiled.NbPublic-1+compiled.NbSecret {
			t.Fatalf(
				"%s compiler witness-role count %d != public+secret %d",
				family,
				len(compiled.WitnessWires),
				compiled.NbPublic-1+compiled.NbSecret,
			)
		}
		for _, wire := range compiled.WitnessWires {
			var matches []witnessRoleEntry
			for _, role := range roles.Roles {
				if rolePathMatchesCompilerPath(role.Path, wire.Path) {
					matches = append(matches, role)
				}
			}
			if len(matches) != 1 {
				t.Fatalf(
					"%s compiler wire %d %q matched %d witness roles: %#v",
					family,
					wire.WireID,
					wire.Path,
					len(matches),
					matches,
				)
			}
			if (matches[0].Role == "public") != (wire.Visibility == "public") {
				t.Fatalf(
					"%s compiler wire %d %q visibility %s conflicts with role %s",
					family,
					wire.WireID,
					wire.Path,
					wire.Visibility,
					matches[0].Role,
				)
			}
			used[matches[0].Path]++
		}
		for _, forbidden := range roles.ForbiddenPaths {
			if rolePathMatchesCompilerPath(forbidden, wirePathList(compiled.WitnessWires)...) {
				t.Fatalf("%s still compiles forbidden witness role %s", family, forbidden)
			}
		}
	}
	for _, role := range roles.Roles {
		if used[role.Path] == 0 {
			t.Fatalf("witness role %s matches no compiled family wire", role.Path)
		}
	}
}

func wirePathList(wires []ConstraintWitnessWire) []string {
	paths := make([]string, len(wires))
	for index, wire := range wires {
		paths[index] = wire.Path
	}
	return paths
}

func rolePathMatchesCompilerPath(rolePath string, compilerPaths ...string) bool {
	pattern := regexp.QuoteMeta(rolePath)
	pattern = strings.ReplaceAll(pattern, `\.\{X,Y\}`, `_(?:X|Y)`)
	pattern = strings.ReplaceAll(pattern, `\[\]`, `_[0-9]+`)
	pattern = strings.ReplaceAll(pattern, `\.`, `_`)
	if strings.HasSuffix(rolePath, ".Path") {
		pattern += `(?:_[0-9]+)+`
	}
	expression := regexp.MustCompile(`^` + pattern + `$`)
	for _, path := range compilerPaths {
		if expression.MatchString(path) {
			return true
		}
	}
	return false
}

func collectWitnessLeafPaths(typ reflect.Type, prefix string) []string {
	var paths []string
	for i := 0; i < typ.NumField(); i++ {
		field := typ.Field(i)
		if !field.IsExported() {
			continue
		}
		name := field.Name
		if prefix != "" {
			name = prefix + "." + name
		}
		fieldType := field.Type
		if field.Anonymous {
			paths = append(paths, collectWitnessLeafPaths(fieldType, prefix)...)
			continue
		}
		if fieldType.Kind() == reflect.Slice {
			name += "[]"
			fieldType = fieldType.Elem()
		}
		if fieldType.Kind() == reflect.Array {
			paths = append(paths, name)
			continue
		}
		if fieldType == reflect.TypeOf((*frontend.Variable)(nil)).Elem() {
			paths = append(paths, name)
			continue
		}
		if fieldType.Kind() == reflect.Struct {
			children := collectWitnessLeafPaths(fieldType, name)
			if len(children) == 2 &&
				children[0] == name+".X" && children[1] == name+".Y" {
				paths = append(paths, name+".{X,Y}")
			} else {
				paths = append(paths, children...)
			}
		}
	}
	return paths
}
