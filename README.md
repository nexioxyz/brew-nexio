# Homebrew Nexio

Private Homebrew tap for the Nexio CLI tool.

## Installation

```bash
# Add the tap
brew tap yourusername/nexio https://github.com/yourusername/homebrew-nexio

# Install nexio
brew install nexio
```

## Usage

```bash
nexio --version
```

## Files Structure

- `Formula/nexio.rb` - Homebrew formula
- `nexio-macos-arm64.tar.gz` - Release archive for ARM64 macOS
- Update URLs in the formula to match your GitHub repository

## Setup Instructions

1. Create a new GitHub repository named `homebrew-nexio`
2. Upload this folder's contents to the repository
3. Create a GitHub release with version `v7.5.0`
4. Upload `nexio-macos-arm64.tar.gz` to the release
5. Update the URLs in `Formula/nexio.rb` to match your repository