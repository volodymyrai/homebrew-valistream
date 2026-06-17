class Valistream < Formula
  desc "Validates and monitors HLS playlists (live & vod) against RFC 8216 and Apple HLS authoring rules."
  homepage "https://github.com/volodymyrai/valistream"
  url "https://github.com/volodymyrai/valistream/releases/download/v0.5.0/valistream.zip"
  sha256 "38b121430f1ed974f391e8006057876c5247011e98f91e8bc9fdc932666a2ad9"
  license "MIT"

  # For pre-compiled native binaries
  def install
    bin.install "valistream" => "valistream"
  end

  test do
    # Simple test ensuring the binary executes and doesn't return an error
    system "#{bin}/valistream", "--version"
  end
end
