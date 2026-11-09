cask "shellboss" do
  version "0.11.3"
  sha256 "6f475c5a23fa3d61deb919a5e793f473bc5012b5f57fb97917513f1da529e9c6"

  url "https://github.com/nikolainobadi/ShellBoss-releases/releases/download/0.11.3/ShellBoss-0.11.3.zip"
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
