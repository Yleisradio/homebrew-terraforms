cask "terraform-1.2.0-beta1" do
  version "1.2.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-beta1/terraform_1.2.0-beta1_darwin_amd64.zip"
    sha256 "d3bb52ecd91f19f5bd40a8049648cf836808155c47adc4a2140193a1874153be"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-beta1/terraform_1.2.0-beta1_darwin_arm64.zip"
    sha256 "1b726e9d6318a03c67f6b2437d7024954f40a13d254d032498e182860094ecae"
  end

  depends_on arch: [:x86_64, :arm64]
end
