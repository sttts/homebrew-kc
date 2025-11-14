class Kc < Formula
  desc "Two-panel Kubernetes TUI built entirely with AI"
  homepage "https://github.com/sttts/kc"
  version "0.0.0"

  on_macos do
    arch arm: "arm64", intel: "amd64"
    url "https://github.com/sttts/kc/releases/download/v0.0.0/kc_0.0.0_darwin_#{arch}.tar.gz"
    sha256 arm: "REPLACE_WITH_DARWIN_ARM64_SHA",
           intel: "REPLACE_WITH_DARWIN_AMD64_SHA"

    def install
      bin.install "kc"
    end
  end

  on_linux do
    arch arm: "arm64", intel: "amd64"
    url "https://github.com/sttts/kc/releases/download/v0.0.0/kc_0.0.0_linux_#{arch}.tar.gz"
    sha256 arm: "REPLACE_WITH_LINUX_ARM64_SHA",
           intel: "REPLACE_WITH_LINUX_AMD64_SHA"

    def install
      bin.install "kc"
    end
  end

  test do
    assert_match "kc", shell_output("#{bin}/kc --help", 2)
  end
end
