# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hcledit < Formula
  desc "A command line editor for HCL"
  homepage "https://github.com/minamijoyo/hcledit"
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.10/hcledit_0.2.10_darwin_arm64.tar.gz"
      sha256 "f53488fec4e8aaa50c271b9b5813954f287f8e97231018176001c7a50c45693b"

      def install
        bin.install "hcledit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.10/hcledit_0.2.10_darwin_amd64.tar.gz"
      sha256 "79b450c30bdc55e97ad711fa3e8c2bb1d40307340ddac73a913fec1450818bab"

      def install
        bin.install "hcledit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.10/hcledit_0.2.10_linux_amd64.tar.gz"
      sha256 "bca456d4e95eac684dd9440d2ebc1a8e043cba5a2f5c1aac069b681e2268f9f4"

      def install
        bin.install "hcledit"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/minamijoyo/hcledit/releases/download/v0.2.10/hcledit_0.2.10_linux_arm64.tar.gz"
      sha256 "b9f6da2e9bb8a8f08ee6d5e4a32c0281645f6d887424bd0ab4302acfece73704"

      def install
        bin.install "hcledit"
      end
    end
  end

  test do
    system "#{bin}/hcledit version"
  end
end
