class Hintly < Formula
  desc "AI command assistant for terminal"
  homepage "https://github.com/BIBIYES/Hintly"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-arm64.tar.gz"
      sha256 "b1dbc129f6d45eb0d644e2a1271d0c4f2a98508d4280c069bd14196a1af6f475"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-amd64.tar.gz"
      sha256 "a4e83012d33ef0290b41f03b37f530fc59d2da5eb2bdbd823df430c8742b2f96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-arm64.tar.gz"
      sha256 "c2248d2d6af12d4e14230943871e20d4a1e509a04520f3f623c71e9e02554bf9"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-amd64.tar.gz"
      sha256 "2e7a44ea1b0b3d5e9c4de07bcad4e8785bdad16f8371ff8d182f8d2c6607d688"
    end
  end

  def install
    bin.install "hint"
  end

  test do
    assert_predicate bin/"hint", :exist?
  end
end
