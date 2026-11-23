class Nnapp < Formula
  desc "Organize Swift projects into category folders and open them in Xcode or VS Code"
  homepage "https://github.com/nikolainobadi/nnapp-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnapp-releases/releases/download/0.1.0/nnapp-arm64.tar.gz"
      sha256 "51a92f7bc18880e2bd9d189972795f36170b9a92455253eade3a71513f773d1b"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnapp-releases/releases/download/0.1.0/nnapp-x86_64.tar.gz"
      sha256 "44e864abbb2de781810e8589766945dbb50b6242830c7801f49d5d836524166e"
    end
  end

  def install
    bin.install "nnapp"
  end

  test do
    system "#{bin}/nnapp", "--version"
  end
end
