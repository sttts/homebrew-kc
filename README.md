# Homebrew kc Tap

This repository hosts the Homebrew tap for [`kc`](https://github.com/sttts/kc). Use it to install kc binaries published in upstream releases without cloning the entire source repository.

## Usage

```bash
brew tap sttts/homebrew-kc
brew install --cask sttts/homebrew-kc/kc
```

## Updating the formula

This tap is updated automatically by the [`sttts/kc`](https://github.com/sttts/kc) Goreleaser workflow whenever a `v*` tag is pushed. Manual updates are rarely needed, but if you must tweak the formula by hand:

1. Publish release tarballs for each target (e.g., `kc_<version>_darwin_arm64.tar.gz`) that contain a `kc` binary in the root or `bin/` directory.
2. Update [`Formula/kc.rb`](Formula/kc.rb) with the new version, URLs, and SHA256 checksums.
3. Commit the change with a message like `kc <version>` and push to `main`.
4. (Optional) Tag the tap repository with the same version for easier tracking.
