class Aiusage < Formula
  desc "Show Claude, Codex, and Grok quotas in the terminal"
  homepage "https://github.com/aict666/aiusage"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/aict666/aiusage/releases/download/v0.2.1/aiusage-darwin-arm64"
      sha256 "a37100ea288c76478061645c81de5b3e57d492fc968b54171901323760aede90"
    end
    on_intel do
      url "https://github.com/aict666/aiusage/releases/download/v0.2.1/aiusage-darwin-x64"
      sha256 "4961e3adf6ab65ef9c40bde43fcbbea7bf524d366a11d580dd14445db811cc28"
    end
  end

  def install
    binary = Dir["aiusage-*"].first
    chmod 0755, binary
    bin.install binary => "aiusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiusage --version")
  end
end
