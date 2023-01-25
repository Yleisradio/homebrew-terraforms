cask "terraform-1.0.9" do
  version "1.0.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_darwin_amd64.zip"
    sha256 "09d11c9867fce95f567c2ee285ad6883206b75220f39eef834c8592e7a5a2c39"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_darwin_arm64.zip"
    sha256 "f963b2e1ae5338a24e6f53e85f46b66e44e9227665cd56bafe659be2a517c39d"
  end

  depends_on arch: [:x86_64, :arm64]
end
