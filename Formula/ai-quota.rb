class AiQuota < Formula
  desc "Show Claude, Codex, and Grok quotas in the terminal"
  homepage "https://github.com/jax-yu/ai-quota"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/jax-yu/ai-quota/releases/download/v0.1.2/ai-quota-darwin-arm64"
      sha256 "0c30b451599f635de4a0d59399bb2a00a4c9e35ef52ea257f11c5ec32626947a"
    end
    on_intel do
      url "https://github.com/jax-yu/ai-quota/releases/download/v0.1.2/ai-quota-darwin-x64"
      sha256 "e477ea034e6c9485cada5192501f636a002137a7cf035ecf09ef94cb34fa74e2"
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
