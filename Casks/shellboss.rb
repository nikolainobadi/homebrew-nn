cask "shellboss" do
    version "0.7.2"
    sha256 "6c31d011368f3ab4872b267c19cc5c1fdfda1bd9fbcb1ee831af4b56a9224561"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.7.2/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end