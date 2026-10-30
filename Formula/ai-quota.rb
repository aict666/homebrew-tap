class AiQuota < Formula
  desc "Show Claude, Codex, and Grok quotas in the terminal"
  homepage "https://github.com/jax-yu/ai-quota"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/jax-yu/ai-quota/releases/download/v0.1.1/ai-quota-darwin-arm64"
      sha256 "d73003bb60df996c524bb742a161c2bf21afe6cacf7de243cbeb319343241c5e"
    end
    on_intel do
      url "https://github.com/jax-yu/ai-quota/releases/download/v0.1.1/ai-quota-darwin-x64"
      sha256 "02c295f87cfd615ef95270d61cb18e9f77e533aad10c6eae07fded6c1ccedfb7"
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
