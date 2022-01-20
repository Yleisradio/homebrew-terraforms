cask "terraform-1.1.4" do
  version "1.1.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_amd64.zip"
    sha256 "c2b2500835d2eb9d614f50f6f74c08781f0fee803699279b3eb0188b656427f2"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_arm64.zip"
    sha256 "a753e6cf402beddc4043a3968ff3e790cf50cc526827cda83a0f442a893f2235"
  end

  depends_on arch: [:x86_64, :arm64]
end
