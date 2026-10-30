class AiQuota < Formula
  desc "Show Claude, Codex, and Grok quotas in the terminal"
  homepage "https://github.com/jax-yu/ai-quota"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jax-yu/ai-quota/releases/download/v0.1.0/ai-quota-darwin-arm64"
      sha256 "f75e1d54066e23eb8376f9635f233465e9b267991536234212c12794194df938"
    end
    on_intel do
      url "https://github.com/jax-yu/ai-quota/releases/download/v0.1.0/ai-quota-darwin-x64"
      sha256 "b51207f5ef2febf4806f4e2fcb2b1e3ccf172db3ed73a67c8a9670dca56f391e"
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
