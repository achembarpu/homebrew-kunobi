class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d7449401a75772af4bb88feef5c6ac94ec521175c5ca7fe747bff6439e0fd93b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "b0ee7fcb496e3bcaaa17c2eb7fff0a802cc9c90a8f4a03aede1c5dfc0d239350"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3add31d4fc5fe2390ab08d4ae575ad31dad72ff5d1849b09a94669b470bf7637"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f93465573e0ad3856e4a1f232a6d1423294c75337d1fb873a7bc6f762369419"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
