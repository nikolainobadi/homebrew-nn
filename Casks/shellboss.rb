cask "shellboss" do
  version "0.11.0"
  sha256 "a1fc6814c7ef716e43751739335e6afe932c20ef359cf70bb0c5603f4e958fb0"

  url "https://github.com/nikolainobadi/ShellBoss-releases/releases/download/0.11.0/ShellBoss-0.11.0.zip"
  name "ShellBoss"
  desc "Tabbed terminal with per-tab todos, saved files and Claude Code integration"
  homepage "https://github.com/nikolainobadi/ShellBoss-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "ShellBoss.app"
end
