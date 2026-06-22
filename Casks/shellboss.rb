cask "shellboss" do
    version "0.7.1"
    sha256 "9a7705e9add2c63c7c03a156fbcf5fe31ccc89a6ba911ad58b95db912fd018f1"

    url "https://github.com/nikolainobadi/homebrew-nn/releases/download/shellboss-0.7.1/ShellBoss.dmg"
    name "ShellBoss"
    desc "A macOS terminal app with tabs, todos, and MCP integration"
    homepage "https://github.com/nikolainobadi/ShellBoss"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ShellBoss.app"
end