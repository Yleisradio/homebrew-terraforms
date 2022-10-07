cask "terraform-1.3.2" do
  version "1.3.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_darwin_amd64.zip"
    sha256 "edaed5a7c4057f1f2a3826922f3e594c45e24c1e22605b94de9c097b683c38bd"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_darwin_arm64.zip"
    sha256 "ff92cd79b01d39a890314c2df91355c0b6d6815fbc069ccaee9da5d8b9ff8580"
  end

  depends_on arch: [:x86_64, :arm64]
end
