require "language/node"
class Devcycle < Formula
  desc "Your package description"
  homepage "https://github.com/DevCycleHQ/cli"
  url "https://registry.npmjs.org/@devcycle/cli/-/cli-5.3.1.tgz"
  sha256 "7820c98f2d54f1adfa731c99bc7dc23376665a821559715ec48319451d96540c"

  depends_on "node"

  def install
    cd buildpath do
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end
end