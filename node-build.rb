require "formula"

class NodeBuild < Formula
  head "https://github.com/5t111111/node-build.git"
  homepage "https://github.com/5t111111/node-build"
  url "https://github.com/5t111111/node-build/archive/v20140815.tar.gz"
  sha1 "cb4a19d2ed610c6457fe052e5e173a0a777c2b5e"

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/node-build", "--version"
  end
end
