cask "terraform-1.1.0-alpha20210922" do
  version "1.1.0-alpha20210922"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210922/terraform_1.1.0-alpha20210922_darwin_amd64.zip"
    sha256 "11a1cfc4d9618cb6d06ad1468c4409df1673c1fb1a35e07d557c43d86f856dd6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210922/terraform_1.1.0-alpha20210922_darwin_arm64.zip"
    sha256 "fd9e3b693e61fe7bc796735ad2792fbff600e615c972446a0cda871a356190d8"
  end

  depends_on arch: [:x86_64, :arm64]
end
