require "language/node"
class Devcycle < Formula
  desc "Your package description"
  homepage "https://github.com/DevCycleHQ/cli"
  url "https://registry.npmjs.org/@devcycle/cli/-/cli-5.12.0.tgz"
  sha256 "6b6e533fe64535940d5d9b026a5deff2e1a9436ecb45903d20b5d42779b39023"

  depends_on "node"

  def install
    cd buildpath do
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end
end