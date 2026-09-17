cask "shellboss" do
    version "0.10.0"
    sha256 "8f193d22e4cd94b03040a2e24600e1b0242d0fc7f77ada0b08fa10462ac7cbb4"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.10.0/ShellBoss-0.10.0.dmg"
    name "ShellBoss"
    desc "macOS terminal to help with AI context switching"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        regex(/^shellboss-(\d+(?:\.\d+)+)$/i)
        strategy :github_releases
    end

    depends_on macos: :tahoe

    app "ShellBoss.app"

    zap trash: [
        "~/Library/Preferences/com.nobadi.ShellBoss.plist",
        "~/Library/Caches/com.nobadi.ShellBoss",
        "~/Library/Application Support/ShellBoss",
        "~/Library/Saved Application State/com.nobadi.ShellBoss.savedState",
        "~/Library/Containers/com.nobadi.ShellBoss",
    ]
end
