class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.4.0/nnex-arm64.tar.gz"
      sha256 "3552ce43a75f6ebfb51f7e5e6217d2a83cd3562a564492c98512bc844dab3afd"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.4.0/nnex-x86_64.tar.gz"
      sha256 "2eeb27ef5b1c3e0709dee03d4de8eac2da84ef7dbfc4c853c19283c8af80156f"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
