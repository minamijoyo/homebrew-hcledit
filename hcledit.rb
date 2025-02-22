# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hcledit < Formula
  desc "A command line editor for HCL"
  homepage "https://github.com/minamijoyo/hcledit"
  version "0.2.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.17/hcledit_0.2.17_darwin_amd64.tar.gz"
      sha256 "63e122b039af7a1641c41e47f6ad40afaa1a400330c6c54086d7fde9a090bd57"

      def install
        bin.install "hcledit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.17/hcledit_0.2.17_darwin_arm64.tar.gz"
      sha256 "dc7de4514c6b63e9e601c640a68cab73949b9061b3c181f1e38f3e105f6fcbfb"

      def install
        bin.install "hcledit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.17/hcledit_0.2.17_linux_amd64.tar.gz"
        sha256 "5e085bd319c84c74e87b915ab2c1f95afccb2d4326be481fbe19c1d7a0eb5fee"

        def install
          bin.install "hcledit"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.17/hcledit_0.2.17_linux_arm64.tar.gz"
        sha256 "a1d052a5bbfd4c97c82946bd40097f61b5e7dbf7e43d39d52950633487b7bec4"

        def install
          bin.install "hcledit"
        end
      end
    end
  end

  test do
    system "#{bin}/hcledit version"
  end
end
