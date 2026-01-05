class Codive < Formula
  desc "AI coding agent CLI built in Rust"
  homepage "https://github.com/touseefliaqat/agent-rust"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-aarch64-apple-darwin.tar.gz"
      sha256 "cfb7e380f18da7ef185071f4d1d55714c02a9422aca343cac3f3a5b3ef920423_ARM64_MACOS"
    else
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-x86_64-apple-darwin.tar.gz"
      sha256 "cfb7e380f18da7ef185071f4d1d55714c02a9422aca343cac3f3a5b3ef920423_X64_MACOS"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfb7e380f18da7ef185071f4d1d55714c02a9422aca343cac3f3a5b3ef920423_ARM64_LINUX"
    else
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfb7e380f18da7ef185071f4d1d55714c02a9422aca343cac3f3a5b3ef920423_X64_LINUX"
    end
  end

  def install
    bin.install "codive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codive --version")
  end
end
