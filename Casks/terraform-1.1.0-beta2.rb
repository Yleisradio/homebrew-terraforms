cask "terraform-1.1.0-beta2" do
  version "1.1.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta2/terraform_1.1.0-beta2_darwin_amd64.zip"
    sha256 "ccdcab84417c3643ab1f97fb97b6220ca9a27b8341746799130d8d4c55e65c6f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta2/terraform_1.1.0-beta2_darwin_arm64.zip"
    sha256 "8b9f02ba2e197ee439caa7150de13d293ce7b13156ad3ae296d1267b0ea422d7"
  end

  depends_on arch: [:x86_64, :arm64]
end
