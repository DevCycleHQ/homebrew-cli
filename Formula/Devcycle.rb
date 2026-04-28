require "language/node"
class Devcycle < Formula
  desc "Your package description"
  homepage "https://github.com/DevCycleHQ/cli"
  url "https://registry.npmjs.org/@devcycle/cli/-/cli-6.3.2.tgz"
  sha256 "a847242e3fec7890c9481ddd41ba708bda49f37ba2aa03da0bdf87b0d59b3207"

  depends_on "node"

  def install
    cd buildpath do
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end
end