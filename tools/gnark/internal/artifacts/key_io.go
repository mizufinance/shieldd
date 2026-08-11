package artifacts

import (
	"bytes"
	"errors"
	"fmt"
	"io"
	"os"

	groth16bls "github.com/consensys/gnark/backend/groth16/bls12-377"
)

var errNonCanonicalKeyEncoding = errors.New("non-canonical key encoding")

// ReadProvingKeyStrict decodes exactly one canonically encoded proving key.
func ReadProvingKeyStrict(reader io.ReadSeeker) (*groth16bls.ProvingKey, error) {
	start, err := keyReaderStart(reader, "proving key")
	if err != nil {
		return nil, err
	}
	pk := new(groth16bls.ProvingKey)
	if _, err := pk.ReadFrom(reader); err != nil {
		return nil, fmt.Errorf("read proving key: %w", err)
	}
	if err := requireReaderEOF(reader, "proving key"); err != nil {
		return nil, err
	}
	if err := requireCanonicalKeyEncoding(reader, start, "proving key", pk.WriteTo); err != nil {
		return nil, err
	}
	return pk, nil
}

// ReadVerifyingKeyStrict decodes exactly one canonically encoded verifying key.
func ReadVerifyingKeyStrict(reader io.ReadSeeker) (*groth16bls.VerifyingKey, error) {
	start, err := keyReaderStart(reader, "verifying key")
	if err != nil {
		return nil, err
	}
	vk := new(groth16bls.VerifyingKey)
	if _, err := vk.ReadFrom(reader); err != nil {
		return nil, fmt.Errorf("read verifying key: %w", err)
	}
	if err := requireReaderEOF(reader, "verifying key"); err != nil {
		return nil, err
	}
	if err := requireCanonicalKeyEncoding(reader, start, "verifying key", vk.WriteTo); err != nil {
		return nil, err
	}
	return vk, nil
}

func LoadProvingKeyStrict(path string) (*groth16bls.ProvingKey, error) {
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("open proving key: %w", err)
	}
	defer file.Close()
	return ReadProvingKeyStrict(file)
}

func LoadVerifyingKeyStrict(path string) (*groth16bls.VerifyingKey, error) {
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("open verifying key: %w", err)
	}
	defer file.Close()
	return ReadVerifyingKeyStrict(file)
}

func keyReaderStart(reader io.Seeker, label string) (int64, error) {
	start, err := reader.Seek(0, io.SeekCurrent)
	if err != nil {
		return 0, fmt.Errorf("record %s start: %w", label, err)
	}
	return start, nil
}

func requireCanonicalKeyEncoding(
	reader io.ReadSeeker,
	start int64,
	label string,
	writeCanonical func(io.Writer) (int64, error),
) error {
	if _, err := reader.Seek(start, io.SeekStart); err != nil {
		return fmt.Errorf("rewind %s for canonicality validation: %w", label, err)
	}
	comparator := canonicalEncodingWriter{reader: reader}
	if _, err := writeCanonical(&comparator); err != nil {
		if errors.Is(err, errNonCanonicalKeyEncoding) {
			return fmt.Errorf("%s is not canonically encoded", label)
		}
		return fmt.Errorf("re-encode canonical %s: %w", label, err)
	}
	if err := requireReaderEOF(reader, label); err != nil {
		return fmt.Errorf("%s is not canonically encoded: %w", label, err)
	}
	return nil
}

type canonicalEncodingWriter struct {
	reader io.Reader
}

func (w *canonicalEncodingWriter) Write(canonical []byte) (int, error) {
	const compareChunkSize = 32 * 1024
	var actual [compareChunkSize]byte
	compared := 0
	for compared < len(canonical) {
		size := min(compareChunkSize, len(canonical)-compared)
		n, err := io.ReadFull(w.reader, actual[:size])
		if err != nil {
			return compared + n, fmt.Errorf("%w: encoded key length differs", errNonCanonicalKeyEncoding)
		}
		if !bytes.Equal(actual[:size], canonical[compared:compared+size]) {
			return compared, errNonCanonicalKeyEncoding
		}
		compared += size
	}
	return len(canonical), nil
}

func requireReaderEOF(reader io.Reader, label string) error {
	var probe [1]byte
	if _, err := io.ReadFull(reader, probe[:]); err == io.EOF {
		return nil
	} else if err != nil {
		return fmt.Errorf("check %s framing: %w", label, err)
	}
	return fmt.Errorf("%s contains trailing bytes", label)
}
