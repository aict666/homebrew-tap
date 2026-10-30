class AiQuota < Formula
  desc "Show Claude, Codex, and Grok quotas in the terminal"
  homepage "https://github.com/aict666/aiusage"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/aict666/aiusage/releases/download/v0.1.3/ai-quota-darwin-arm64"
      sha256 "9ba6e0008933e44f597c2790073c0a2d29188b51155061addb86bfcf696dcff6"
    end
    on_intel do
      url "https://github.com/aict666/aiusage/releases/download/v0.1.3/ai-quota-darwin-x64"
      sha256 "465db0f5a53d2127a790bdd79273d759df9d6afcf15cc94882c41c6ed87ab782"
    end
  end

  def install
    binary = Dir["ai-quota-*"].first
    chmod 0755, binary
    bin.install binary => "ai-quota"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-quota --version")
  end
end
