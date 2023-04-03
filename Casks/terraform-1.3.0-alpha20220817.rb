cask "terraform-1.3.0-alpha20220817" do
  version "1.3.0-alpha20220817"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220817/terraform_1.3.0-alpha20220817_darwin_amd64.zip"
    sha256 "78514bf223734e6d0c10697df509c63eb8327651b8746eeb1607a6b13cb6ec95"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220817/terraform_1.3.0-alpha20220817_darwin_arm64.zip"
    sha256 "c463904ab2e53dfe9487dd3aa429de32ec300ea7a643b600759ed432d77f1713"
  end

  depends_on arch: [:x86_64, :arm64]
end
