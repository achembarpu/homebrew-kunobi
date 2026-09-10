class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "602e5d702ded9e32db6a934631a77c4edab854121dac0a6231f17b6d9959d2c5"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "336208be91a31d8e2c43ca149fda0fa8dc885373bae80073b5eacd9e16ec2650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "241e65413079b0b488dfb8918e7f6d5079c378ba0ae4eacd3033ad6024ed0383"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.44.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "193b35879e1683188e34d20192f83b5d2c3f441853c0ad7238ff51ae43284b0b"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
