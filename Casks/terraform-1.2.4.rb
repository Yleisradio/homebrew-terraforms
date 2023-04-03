cask "terraform-1.2.4" do
  version "1.2.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_darwin_amd64.zip"
    sha256 "e7d2c66264a3da94854ae6ff692bbb9a1bc11c36bb5658e3ef19841388a07430"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_darwin_arm64.zip"
    sha256 "c31754ff5553707ef9fd2f913b833c779ab05ce192eb14913f51816a077c6798"
  end

  depends_on arch: [:x86_64, :arm64]
end
