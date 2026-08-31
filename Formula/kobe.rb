class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.41.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "e6b36f98e1caa98e4f4bebf71bbf2f1418ec32abfff505ac7cb43ede088c2e99"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.41.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "7a1e922a48a6f75cd867f4896c7e8916de84a2f162b3f37b968a4a623e8df63b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.41.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f58e41984d36c6ebb9e8f102b1951121242cbc7428f0c2e3dd9d2833dd0f95cc"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.41.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7add3d177bd484d6ff7edea1177502b184cc3a91383fc5c13d8fbcc69346ec8b"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
