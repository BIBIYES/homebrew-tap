class Hintly < Formula
  desc "AI command assistant for terminal"
  homepage "https://github.com/BIBIYES/Hintly"
  version "2.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-arm64.tar.gz"
      sha256 "ab3509db07f7b78665df172a4de5834674bef1350602bc7469e307a9a0436b22"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_darwin-amd64.tar.gz"
      sha256 "09d6749a5d717e1523a9ba67fdcfa1d344af1ec1736666f3d8678cda177d44e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-arm64.tar.gz"
      sha256 "38314d64b1ef73766651b70ec5ae61b783b619dcd19ba39fb2d0f21f26a9ac2f"
    else
      url "https://github.com/BIBIYES/Hintly/releases/download/v#{version}/hint_v#{version}_linux-amd64.tar.gz"
      sha256 "255cdd813bbe1ab464f07124a4f90f5e1a149ad824997c2b103274cbda7a7b79"
    end
  end

  def install
    bin.install "hint"
  end

  test do
    assert_predicate bin/"hint", :exist?
  end
end
