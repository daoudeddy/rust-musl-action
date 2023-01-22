FROM messense/rust-musl-cross:x86_64-musl

LABEL name="rust-musl-stable"
LABEL version="1.0.0"

LABEL com.github.actions.name="Rust MUSL Builder Slim"
LABEL com.github.actions.description="Provides a Rust MUSL environment"
LABEL com.github.actions.icon="settings"
LABEL com.github.actions.color="orange"

RUN rustup target add x86_64-unknown-linux-musl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
