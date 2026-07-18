cask "shellboss" do
    version "0.7.4"
    sha256 "e6af51fea14396f452a56c3c64e84472f406ec3824de765bc17505cf336250d1"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.7.4/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end