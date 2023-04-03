cask "terraform-1.1.6" do
  version "1.1.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_darwin_amd64.zip"
    sha256 "7a499c1f08d89548ae4c0e829eea43845fa1bd7b464e7df46102b35e6081fe44"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_darwin_arm64.zip"
    sha256 "f06a14fdb610ec5a7f18bdbb2f67187230eb418329756732d970b6ca3dae12c3"
  end

  depends_on arch: [:x86_64, :arm64]
end
