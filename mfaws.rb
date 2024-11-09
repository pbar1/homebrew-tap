# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mfaws < Formula
  desc "AWS multi-factor authentication manager"
  homepage "https://github.com/pbar1/mfaws"
  version "1.0.10-rc3"

  on_macos do
    on_intel do
      url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Darwin_x86_64.tar.gz"
      sha256 "761ee374b9065c3259f11081082db6e33ca6dad58db3c8cf49a22e6e6f800fc0"

      def install
        bin.install "mfaws"
      end
    end
    on_arm do
      url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Darwin_arm64.tar.gz"
      sha256 "4f0b1622bedd13cfd48f605536c82d73b3fe828a40e15a96bf4dded765ea28c2"

      def install
        bin.install "mfaws"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Linux_x86_64.tar.gz"
        sha256 "82c4490b1d5dbd1543e1a57323069849c87aada0ce748b15543695ca0d20dc7a"

        def install
          bin.install "mfaws"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Linux_arm64.tar.gz"
        sha256 "e5ffab0cc165801a606c41e78a7ffbe6bbe559b4bcfd10249d88c7377b43ccd7"

        def install
          bin.install "mfaws"
        end
      end
    end
  end

  test do
    system "#{bin}/mfaws version"
  end
end
