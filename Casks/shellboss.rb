cask "shellboss" do
    version "0.8.0"
    sha256 "4ef250e893ddaf46fc8ae4ace8aae9cb34d6c84fae475c24526574987539d949"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.8.0/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end