# Use a Rust base image for building
FROM rust:latest AS builder

# Set the working directory
WORKDIR /Documents/VS_Workspace/Rust/sample_project

# Copy the Rust code into the container
COPY . .

# Build the Rust code
RUN cargo build --release

# Expose the port the web server listens on
EXPOSE 8083

# Command to run the binary when the container starts
CMD ["cargo", "run", "--release"]
