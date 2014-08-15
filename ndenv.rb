require 'formula'

class Nbenv < Formula
  homepage 'https://github.com/5t111111/ndenv'
  url 'https://github.com/5t111111/ndenv/archive/v0.0.0.1.tar.gz'
  sha1 '9f9404a2acc22541742ada01904a735e7bd01fcb'

  head 'https://github.com/sstephenson/rbenv.git'
  head 'https://github.com/5t111111/ndenv.git'

  def install
    inreplace 'libexec/nbenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To enable shims add to your profile:
      if which ndenv > /dev/null; then eval "$(ndenv init -)"; fi
    EOS
  end
end
