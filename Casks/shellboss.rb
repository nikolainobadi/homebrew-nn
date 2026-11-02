cask "shellboss" do
  version "0.11.2"
  sha256 "5ad6b789c770bce756337e75bea3aaf7599a77482fb9afa6d0143e20f605f992"

  url "https://github.com/nikolainobadi/ShellBoss-releases/releases/download/0.11.2/ShellBoss-0.11.2.zip"
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
