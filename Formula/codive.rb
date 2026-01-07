class Codive < Formula
  desc "AI coding agent CLI built in Rust"
  homepage "https://github.com/touseefliaqat/agent-rust"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/touseefliaqat/agent-rust/releases/download/v#{version}/codive-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "codive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codive --version")
  end
end
