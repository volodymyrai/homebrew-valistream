class Valistream < Formula
  desc "Validates and monitors HLS playlists (live & vod) against RFC 8216 and Apple HLS authoring rules."
  homepage "https://github.com/volodymyrai/valistream"
  url "https://github.com/volodymyrai/valistream/releases/download/v0.6.0/valistream.zip"
  sha256 "3ab508873bade50ad854a770eb0391ca2d3d4da5e99c69af1bc3428eef56fd0b"
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
