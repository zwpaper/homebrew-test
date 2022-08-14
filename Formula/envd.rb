# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envd < Formula
  desc "Development environment for data science and AI/ML teams"
  homepage "https://envd.tensorchord.ai/"
  version "0.2.0-alpha.14"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/zwpaper/homebrew-test/releases/download/envd-0.2.0-alpha.14"
    sha256 cellar: :any_skip_relocation, monterey:     "93ec9818e44e7c14bcb7e7809c3cd2413faac9b100e959305e801a90b84414b3"
    sha256 cellar: :any_skip_relocation, big_sur:      "93ec9818e44e7c14bcb7e7809c3cd2413faac9b100e959305e801a90b84414b3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6630f1fdb9863f18c8c8ff17d6fa4f2f97a897305d8321e1c6fa5252d06a964f"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tensorchord/envd/releases/download/v0.2.0-alpha.14/envd_0.2.0-alpha.14_Darwin_arm64"
      sha256 "26d723277ce71c91da0f14d7d2273f3097cb86eba19947e1ae2b3e9dfef54ad9"

      def install
        bin.install "envd_0.2.0-alpha.14_Darwin_arm64" => "envd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tensorchord/envd/releases/download/v0.2.0-alpha.14/envd_0.2.0-alpha.14_Darwin_x86_64"
      sha256 "7d75a5d2c82e5cc023d269ee4a42bc852be2514b9f656e555e844bcf32f0cbf6"

      def install
        bin.install "envd_0.2.0-alpha.14_Darwin_x86_64" => "envd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tensorchord/envd/releases/download/v0.2.0-alpha.14/envd_0.2.0-alpha.14_Linux_x86_64"
      sha256 "571dcb74349562c94228578fba3e4ce7d8449b21e50c2929637ddc99067176c2"

      def install
        bin.install "envd_0.2.0-alpha.14_Linux_x86_64" => "envd"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tensorchord/envd/releases/download/v0.2.0-alpha.14/envd_0.2.0-alpha.14_Linux_arm64"
      sha256 "870305bfd0867f17f18d90ad2d98c76ad7f5cd439b8fc07746ed0b926f987631"

      def install
        bin.install "envd_0.2.0-alpha.14_Linux_arm64" => "envd"
      end
    end
  end

  def caveats
    <<~EOS
      Please run `envd bootstrap` first to bootstrap
    EOS
  end

  test do
    system "#{bin}/envd" # "version"
  end
end
