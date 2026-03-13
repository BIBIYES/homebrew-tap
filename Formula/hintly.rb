class Hintly < Formula
  desc "AI command assistant for terminal"
  homepage "https://github.com/BIBIYES/Hintly"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-arm64.tar.gz"
      sha256 "4f21478a5e2efb2133cf26dc0e8d62932577f6f7964ac901e2cd9bd4a6051f05"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-amd64.tar.gz"
      sha256 "3869588c729a2beb5e87cf40f23f8090a33f554a34cdf84e98a02a9528b22987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-arm64.tar.gz"
      sha256 "6ddaa97d5751c8f27b4a1769af8924a968c07e0c43753e47a546672531b71474"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-amd64.tar.gz"
      sha256 "f42a444b2b8a6f79cc1f3417a935997ee00d5b6da2eed8f03ce3f7c152d1123a"
    end
  end

  def install
    bin.install "hint"
  end

  test do
    assert_predicate bin/"hint", :exist?
  end
end
