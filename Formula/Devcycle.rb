require "language/node"
class Devcycle < Formula
  desc "Your package description"
  homepage "https://github.com/DevCycleHQ/cli"
  url "https://registry.npmjs.org/@devcycle/cli/-/cli-5.9.1.tgz"
  sha256 "2521b674ddc91aad5a5bcc46704461b7354b9865c880b9513fc4c8f39505ab23"

  depends_on "node"

  def install
    cd buildpath do
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end
end