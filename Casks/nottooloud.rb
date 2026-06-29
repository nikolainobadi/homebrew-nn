cask "nottooloud" do
    version "0.10.0"
    sha256 "354482646595876ee287002821eeb168200e86650acd997f56cce415df2b003a"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/nottooloud-0.10.0/NotTooLoud.dmg"
    name "NotTooLoud"
    desc "Automatically keeps your Mac's volume in check based on ambient sound"
    homepage "https://github.com/nikolainobadi/NotTooLoud"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "NotTooLoud.app"
end