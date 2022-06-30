cask "terraform-1.2.4" do
  version "1.2.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_darwin_amd64.zip"
    sha256 "3e04343620fb01b8be01c8689dcb018b8823d8d7b070346086d7df22cc4cd5e6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_darwin_arm64.zip"
    sha256 "e596dcdfe55b2070a55fcb271873e86d1af7f6b624ffad4837ccef119fdac97a"
  end

  depends_on arch: [:x86_64, :arm64]
end
