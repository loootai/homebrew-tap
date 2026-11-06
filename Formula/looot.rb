class Looot < Formula
  desc "CLI for one API and token across 300+ data providers"
  homepage "https://looot.ai"
  url "https://registry.npmjs.org/looot/-/looot-1.4.0.tgz"
  sha256 "fea3c5e5fec111d8ecc8c8b921c0f6a253de3fd6e4b81cb533eb92a149aa3456"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/looot --version")
  end
end
