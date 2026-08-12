# We use the latest stable version of the official Rust container,
# delegating to the `rust-toolchain.toml` file to pick a specific Rust toolchain.
FROM docker.io/rust:1-slim-bookworm AS build-env
ARG TARGETARCH

# Install build dependencies. These packages should match what's recommended on
# the pcli install guide.
# Repository assets are copied in from the build host.
# In order to build pcli with ledger support, add `libdbus-1-dev` & `libusb-1.0-0-dev`.
RUN apt-get update && apt-get install -y \
        build-essential \
        ca-certificates \
        curl \
        pkg-config \
        libssl-dev \
        clang \
        lld \
        protobuf-compiler

ARG GO_VERSION=1.25.4
ARG GO_AMD64_SHA256=9fa5ffeda4170de60f67f3aa0f824e426421ba724c21e133c1e35d6159ca1bec
ARG GO_ARM64_SHA256=a68e86d4b72c2c2fecf7dfed667680b6c2a071221bbdb6913cf83ce3f80d9ff0
RUN case "${TARGETARCH}" in \
      amd64) go_sha256="${GO_AMD64_SHA256}" ;; \
      arm64) go_sha256="${GO_ARM64_SHA256}" ;; \
      *) echo "unsupported TARGETARCH: ${TARGETARCH}" >&2; exit 1 ;; \
    esac \
    && curl -fsSL "https://go.dev/dl/go${GO_VERSION}.linux-${TARGETARCH}.tar.gz" -o /tmp/go.tgz \
    && echo "${go_sha256}  /tmp/go.tgz" | sha256sum -c - \
    && tar -C /usr/local -xzf /tmp/go.tgz \
    && rm /tmp/go.tgz
ENV PATH="/usr/local/go/bin:${PATH}"

WORKDIR /usr/src/shieldd
# Add rust dependency lockfiles first, to cache downloads.
COPY Cargo.lock Cargo.toml rust-toolchain.toml .

# If any rust code changed, the cache will break on copying `crates/`.
# Ideally we'd copy in all Cargo.toml files first, fetch, then copy crates.
COPY crates ./crates
# Copy static assets.
COPY assets ./assets
# Copy in summonerd contribution orchestrator.
COPY tools ./tools
# Download all workspace dependencies specified in Cargo.toml
RUN rustup install && cargo fetch
# Build Shieldd binaries
COPY . .
# Use `--bins` flag to force dependency resolution per-binary, rather than once for the workspace.
# Doing so ensures the minimal feature set is used, leaving ledger support for pcli as off by default.
RUN cargo build --release --bins
RUN cd tools/gnark && go build -o /usr/src/shieldd/target/release/proverdaemon ./cmd/proverdaemon

# Runtime image.
FROM docker.io/debian:bookworm-slim
ARG USERNAME=shieldd
ARG UID=1000
ARG GID=1000
# We add curl & jq so we can munge JSON during init steps for deployment.
RUN apt-get update && apt-get install -y \
        bash \
        curl \
        jq \
        libssl-dev

# Add normal user account
RUN groupadd --gid ${GID} ${USERNAME} \
        && useradd -m -d /home/${USERNAME} -g ${GID} -u ${UID} ${USERNAME}

# Install chain binaries
COPY --from=build-env \
            /usr/src/shieldd/target/release/orbis-audit \
            /usr/src/shieldd/target/release/orbis-integration \
            /usr/src/shieldd/target/release/pcli \
            /usr/src/shieldd/target/release/pclientd \
            /usr/src/shieldd/target/release/pd \
            /usr/src/shieldd/target/release/pindexer \
            /usr/src/shieldd/target/release/proverdaemon \
            /usr/src/shieldd/target/release/tct-live-edit \
            /usr/bin/

# pcli loads gnark proof libraries from the compile-time OUT_DIR path.
COPY --from=build-env \
            /usr/src/shieldd/target/release/build \
            /usr/src/shieldd/target/release/build

# Runtime deployments keep only proving material. Constraint systems and setup
# evidence are build/formal inputs and would otherwise add about 510 MB here.
COPY --from=build-env /usr/src/shieldd/tools/gnark/artifacts/note_reshape1x8/proving_key.bin /usr/share/shieldd/gnark/artifacts/note_reshape1x8/proving_key.bin
COPY --from=build-env /usr/src/shieldd/tools/gnark/artifacts/note_reshape8x1/proving_key.bin /usr/share/shieldd/gnark/artifacts/note_reshape8x1/proving_key.bin
COPY --from=build-env /usr/src/shieldd/tools/gnark/artifacts/shielded_ics20_withdrawal/proving_key.bin /usr/share/shieldd/gnark/artifacts/shielded_ics20_withdrawal/proving_key.bin
COPY --from=build-env /usr/src/shieldd/tools/gnark/artifacts/transfer/proving_key.bin /usr/share/shieldd/gnark/artifacts/transfer/proving_key.bin

WORKDIR /home/${USERNAME}
USER ${USERNAME}
CMD [ "/usr/bin/pd" ]
