# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mfaws < Formula
  desc "AWS multi-factor authentication manager"
  homepage "https://github.com/pbar1/mfaws"
  version "1.0.10-rc4"

  on_macos do
    on_intel do
      url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc4/mfaws_Darwin_x86_64.tar.gz"
      sha256 "4460a81b34e9548786bd0b302585e918ec275ccd3c19ab0b4343fb8d049d7307"

      def install
        bin.install "mfaws"
      end
    end
    on_arm do
      url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc4/mfaws_Darwin_arm64.tar.gz"
      sha256 "7d78498768583b086430769d2670c3719bd33c76a1812d2c1a9eb7100400aa20"

      def install
        bin.install "mfaws"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc4/mfaws_Linux_x86_64.tar.gz"
        sha256 "ed6c34a646f8c92d166f403817de5103c84278ddbf3cfbc157a3928622ec970f"

        def install
          bin.install "mfaws"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc4/mfaws_Linux_arm64.tar.gz"
        sha256 "0e91acf721896ba6552415230035326e8b2472e0e60e3f8e546ea1fd2838bbbc"

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
