cask "shellboss" do
    version "0.7.3"
    sha256 "df5af59b953917f5e67d248cc109d2fc2a064ef26a9b59afdb7013215d603211"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.7.3/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end