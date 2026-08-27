class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.2/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "b8b7be1e71395842cd805d5471cf2921f853033fa36e943e4ed89ec5950f1664"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.2/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "f9ef42ab727c7f89fed1b305f0ece537d150bf649203685ca0bd223d8534194f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.2/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b72587f816968ce9c1fd87f56695242a49300af81ff412d3be4a4ace0ca1245"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.2/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13a2561b51c3461d398c120fcf9ca0c3a451213c108d09e58b412700f7165036"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
