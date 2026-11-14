set shell := ["bash", "-euo", "pipefail", "-c"]

default:
    @just --list

# Install the git hooks
setup:
    pre-commit install --install-hooks

# Format Nix files
fmt:
    nix fmt flake.nix

# Run the pre-commit suite
lint:
    pre-commit run --all-files
