cask "terraform-1.2.5" do
  version "1.2.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_amd64.zip"
    sha256 "6e109f82f15e5879cf003da75021f94266e54943fdfed4182a309e1159bc0e5c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_arm64.zip"
    sha256 "0e322ffcd0d680a43788228a4e565379a7a6735a0d5fa4ae688cf89b415e020e"
  end

  depends_on arch: [:x86_64, :arm64]
end
