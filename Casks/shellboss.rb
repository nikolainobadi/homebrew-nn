cask "shellboss" do
    version "0.7.5"
    sha256 "a9d829b453ad15b3878bdb1b8c9524ee0afc5553323265ac179b3c07a9ca598a"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.7.5/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end