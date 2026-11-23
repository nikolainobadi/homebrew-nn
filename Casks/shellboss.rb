cask "shellboss" do
  version "0.13.0"
  sha256 "51adc28c8e3ea2fbbc5ddf148dc40efc788ca12efb5bc68088ca042b35bd1eaa"

  url "https://github.com/nikolainobadi/ShellBoss-releases/releases/download/0.13.0/ShellBoss-0.13.0.zip"
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
