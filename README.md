# bash-skeleton

This skeleton provides a strong yet simple foundation, making it easy to start building robust Bash scripts with a
well-structured architecture.

## Features

- **Dependency Management**: Uses [bashdep](https://github.com/Chemaclass/bashdep) for managing dependencies.
    - Install with: `install-dependencies.sh`

- **Testing**: Integrates [bashunit](https://github.com/TypedDevs/bashunit/) for testing.
    - Tests in: `tests/`

- **Source Structure**: Organize functions in different files.
    - Source in: `src/`

- **Entry Point**: Ready to handle arguments and options.
    - Script: `./entry-point`

- **Build System**: Bundle your project into a single executable.
    - Use: `./build.sh`

- **CI**: Automates linting, static analysis, and tests on commits/PRs.
    - Workflows in: `.github/workflows/`

- **Pre-commit Hook**: Optional hook for running tests, linter, and analysis.
    - Script: `bin/pre-commit`

- **Makefile**: Simplifies project management with basic commands.
    - Available in: `Makefile`

## Getting Started

1. Install dependencies:
   ```bash
   ./install-dependencies.sh
   ```
2. Run the test suite:
   ```bash
   make test
   ```
3. Optionally install the pre-commit hook so checks run automatically:
   ```bash
   make pre_commit/install
   ```

Run `make help` to list all available commands.

The entry point now supports `--help` and `--version` flags to display usage
information and the current version respectively.

## Inspired by

This skeleton is the result of building other projects like:

- bashunit: https://github.com/TypedDevs/bashunit
- create-pr: https://github.com/Chemaclass/create-pr
- bashdep: https://github.com/Chemaclass/bashdep
- release: https://github.com/Purpose-Green/release

## Contribute

Suggestions, ideas and PRs are more than welcome here!
Please, Check out our [CONTRIBUTING.md](.github/CONTRIBUTING.md) guidelines.
