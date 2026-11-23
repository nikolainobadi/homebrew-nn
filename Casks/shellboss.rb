cask "shellboss" do
  version "0.12.0"
  sha256 "0afebd8b402c9a489834d3eea94e2e97e8616a716dde2bd8666eefefeb034b9f"

  url "https://github.com/nikolainobadi/ShellBoss-releases/releases/download/0.12.0/ShellBoss-0.12.0.zip"
  name "ShellBoss"
  desc "Tabbed terminal with per-tab todos, saved files and Claude Code integration"
  homepage "https://github.com/nikolainobadi/ShellBoss-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "ShellBoss.app"
end
