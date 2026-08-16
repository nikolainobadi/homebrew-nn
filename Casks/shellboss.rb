cask "shellboss" do
    version "0.9.0"
    sha256 "88f57c0e878ef14c78cb6605d91ca773d6f5c0affca1edf88bfcf735800cf225"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.9.0/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end