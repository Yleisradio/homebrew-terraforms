cask "terraform-1.5.3" do
  version "1.5.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_darwin_amd64.zip"
    sha256 "a5ecd11c8ed9b6c5182a84bce9c3c9c092f86916cf117bca855991853502af94"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_darwin_arm64.zip"
    sha256 "444e5565806041d9899a9ba50549840eaa2a2cb7d5b59bb08c5874f92bc4963d"
  end

  depends_on arch: [:x86_64, :arm64]
end
