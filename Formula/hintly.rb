class Hintly < Formula
  desc "AI command assistant for terminal"
  homepage "https://github.com/BIBIYES/Hintly"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-arm64.tar.gz"
      sha256 "06b671cc9f067774d052ef8fcd27ba125e4457e93de94af6cf77b348e12f79c6"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-amd64.tar.gz"
      sha256 "5e261c8fb7229b65277482cb8092b0ad19815e92a97edb21f94ee67225563f90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-arm64.tar.gz"
      sha256 "6fbe78c1c200f094c28120fc5d93a142079fa1161634bdb32c20493d9ecb9605"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-amd64.tar.gz"
      sha256 "7f22d625e56184c6368c3553b7c894ebd03a9cdfd1ee0400e6a44f5e83a10eaa"
    end
  end

  def install
    bin.install "hint"
  end

  test do
    assert_predicate bin/"hint", :exist?
  end
end
