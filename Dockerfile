FROM rust:latest

WORKDIR /app/

COPY . .

RUN rustup default

RUN cargo install diesel_cli --no-default-features --features postgres

CMD ["cargo", "watch", "--why", "--", "echo"]