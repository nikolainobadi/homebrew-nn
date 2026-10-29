cask "shellboss" do
  version "0.11.1"
  sha256 "c626036c2939156f4fb9036b1847bbf0da2647675ce302d0a983fadd5f67d50d"

  url "https://github.com/nikolainobadi/ShellBoss-releases/releases/download/0.11.1/ShellBoss-0.11.1.zip"
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
