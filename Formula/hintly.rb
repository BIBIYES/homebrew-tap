class Hintly < Formula
  desc "AI command assistant for terminal"
  homepage "https://github.com/BIBIYES/Hintly"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-arm64.tar.gz"
      sha256 "DARWIN_ARM64_SHA256"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-amd64.tar.gz"
      sha256 "DARWIN_AMD64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-arm64.tar.gz"
      sha256 "LINUX_ARM64_SHA256"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-amd64.tar.gz"
      sha256 "LINUX_AMD64_SHA256"
    end
  end

  def install
    bin.install "hint"
  end

  test do
    output = shell_output("#{bin}/hint 2>&1", 1)
    assert_match "请先执行: hint -init", output
  end
end
