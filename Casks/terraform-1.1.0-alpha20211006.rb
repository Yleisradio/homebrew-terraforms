cask "terraform-1.1.0-alpha20211006" do
  version "1.1.0-alpha20211006"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211006/terraform_1.1.0-alpha20211006_darwin_amd64.zip"
    sha256 "4f5ca3423ca5d3bd27f7006b07a6259132c2a9fc0d0809736b8509847b987a07"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211006/terraform_1.1.0-alpha20211006_darwin_arm64.zip"
    sha256 "b4225ec2ca33ca4086be9b90066f4b93df987dff924234ea20f612a756579099"
  end

  depends_on arch: [:x86_64, :arm64]
end
