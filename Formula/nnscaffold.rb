class Nnscaffold < Formula
    desc "Scaffold Swift CLI tools, iOS and macOS apps, and packages from templates"
    homepage "https://github.com/nikolainobadi/CodeScaffold"
    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/nnscaffold-0.1.0/nnscaffold-arm64.tar.gz"
    sha256 "d276c91be86927f2cac212d60c535c49de0467eb8974dc78c50b6f850423fcec"
    version "0.1.0"
    license "MIT"

    def install
        bin.install "nnscaffold"
    end
end