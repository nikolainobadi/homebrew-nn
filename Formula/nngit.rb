class Nngit < Formula
  desc "Simpler Git commands with safety checks, AI commit messages, and repo activity"
  homepage "https://github.com/nikolainobadi/nngit-releases"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nngit-releases/releases/download/0.2.0/nngit-arm64.tar.gz"
      sha256 "179f6efc2102bd099a57a3fc4793645826a7de9eebd9db4dc8a3cf4cc9b9a64f"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nngit-releases/releases/download/0.2.0/nngit-x86_64.tar.gz"
      sha256 "ebd12bab3fa73d4c2e43f6af3ddb612f52b89ebaca40a37e5f68a3f358e56fe8"
    end
  end

  def install
    bin.install "nngit"
  end

  test do
    system "#{bin}/nngit", "--version"
  end
end
