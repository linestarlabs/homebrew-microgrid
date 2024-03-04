BUILD_VERSION = "0.0.2"
AMD_SHASUM_256 = "d7c60da04db6b3439046021bc3c866ae96e30ab03c9691e1cfa81e150c5e1b16"
ARM_SHASUM_256 = "89ef0c6b0d02d97695f38d330203c07c6ec3557ee25d26c55ac87065cd7149cc"

class Microgrid < Formula
  desc "Central Control For Microgrid Energy Systems"
  homepage "https://app.microgridstore.com"
  url "https://microgridstore.s3.amazonaws.com/microgrid-releases/#{BUILD_VERSION}/microgrid-#{BUILD_VERSION}-darwin-amd64.tar.gz"
  sha256 AMD_SHASUM_256

  # For ARM architecture
  on_arm do
    url "https://microgridstore.s3.amazonaws.com/microgrid-releases/#{BUILD_VERSION}/microgrid-#{BUILD_VERSION}-darwin-arm64.tar.gz"
    sha256 ARM_SHASUM_256
  end

  def install
    bin.install "microgrid" => "microgrid"
  end

  test do
    system "#{bin}/microgrid", "--version"
  end
end
