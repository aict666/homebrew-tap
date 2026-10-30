class Aiusage < Formula
  desc "Show Claude, Codex, and Grok quotas in the terminal"
  homepage "https://github.com/aict666/aiusage"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/aict666/aiusage/releases/download/v0.2.0/aiusage-darwin-arm64"
      sha256 "6998e0c11cc34305cc0b3d4ac592f82d2f771bc9237aa4e2e94945f56ba74f0b"
    end
    on_intel do
      url "https://github.com/aict666/aiusage/releases/download/v0.2.0/aiusage-darwin-x64"
      sha256 "66ea3d9f8c622c4d685f2d35a8275e2ad9c3f683c1575e812ee9dd7fd11b777e"
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
