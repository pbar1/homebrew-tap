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
      sha256 "1aad60ecb5ccb571930fa52cdb7f7ad21bf7b767f7286c180c85b89a1d023327"

      def install
        bin.install "mfaws"
      end
    end
    on_arm do
      url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Darwin_arm64.tar.gz"
      sha256 "625906a7e3ca09b2c38c8baa0852321e1bfbda56e8f8ed26c9f5c82435c3d330"

      def install
        bin.install "mfaws"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Linux_x86_64.tar.gz"
        sha256 "d24fa6c5441c5c772339bb0666f4dd65b8c0013a3979d8237ae5a6c91b0436d4"

        def install
          bin.install "mfaws"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pbar1/mfaws/releases/download/1.0.10-rc3/mfaws_Linux_arm64.tar.gz"
        sha256 "034409216eee111d7269b7711bbe8cf0f56115f6fb2c5f0a69b4f4f87c7bc5b0"

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
