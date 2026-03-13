class Hintly < Formula
  desc "AI command assistant for terminal"
  homepage "https://github.com/BIBIYES/Hintly"
  version "2.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-arm64.tar.gz"
      sha256 "6964b9da92a5f03a25577713d18992dba86178846ecb9b00776324e94fd30809"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-amd64.tar.gz"
      sha256 "05ac7cf8c0f17c6d313f64c5575d66b195b945d954d941afb8e351445401b91e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-arm64.tar.gz"
      sha256 "4d3fad36aff4e67550483cd1d4e3477e269e396dbec602d5117ee9335138f1d1"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-amd64.tar.gz"
      sha256 "a2d7f4f974e6cd7c78815c4409019e6648706012935ff67e33f280586c66d362"
    end
  end

  def install
    bin.install "hint"
  end

  test do
    assert_predicate bin/"hint", :exist?
  end
end
