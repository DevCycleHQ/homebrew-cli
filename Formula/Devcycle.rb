require "language/node"
class Devcycle < Formula
  desc "Your package description"
  homepage "https://github.com/DevCycleHQ/cli"
  url "https://registry.npmjs.org/@devcycle/cli/-/cli-6.0.0.tgz"
  sha256 "8b031d19be0c146ac1e10cbdef60f92ce5ca78dc4a6ba236559dbd9e4f01eb7b"

  depends_on "node"

  def install
    cd buildpath do
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end
end