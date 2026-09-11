class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.2/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "c1f25cd20a250e897fe33459a9853b75e59412a8f09e2faceb1b3aee0dbf871e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.2/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "ac12f074a02aa436ccb950c00b1208aaaa2acab7e4d51ff8af9474d10a8def5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.2/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68f459f0053146051d965468527654834e57500d82a8cf2d9607ea303dbe93ba"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.2/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62d8e8338bd2bdc3e9688ac34bd55b2be6474a78bf4f6a03da5340aaed869829"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
