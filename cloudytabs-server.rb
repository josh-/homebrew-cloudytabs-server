class CloudytabsServer < Formula
  desc "Local API that exposes a user's iCloud tabs through a JSON API"
  homepage "https://github.com/josh-/cloudytabs-server"

  head "https://github.com/josh-/CloudyTabs-Server.git", :branch => "master"

  depends_on :xcode => ["9.2", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"cloudytabs-server"
  end
end
