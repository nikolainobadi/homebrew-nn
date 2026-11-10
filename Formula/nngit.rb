class Nngit < Formula
  desc "Simpler Git commands with safety checks, AI commit messages, and repo activity"
  homepage "https://github.com/nikolainobadi/nngit-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nngit-releases/releases/download/0.1.0/nngit-arm64.tar.gz"
      sha256 "cb2572772040f52fbe2376cf481172b9d155b3592f1f8f1f6d2863dab9310e51"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nngit-releases/releases/download/0.1.0/nngit-x86_64.tar.gz"
      sha256 "9cc8ad595f3493b1d54fd148523fd07dc320ea4296c291b9c32c10971656fb8b"
    end
  end

  def install
    bin.install "nngit"
  end

  test do
    system "#{bin}/nngit", "--version"
  end
end
