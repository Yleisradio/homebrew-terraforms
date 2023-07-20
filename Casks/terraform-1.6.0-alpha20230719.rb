cask "terraform-1.6.0-alpha20230719" do
  version "1.6.0-alpha20230719"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-alpha20230719/terraform_1.6.0-alpha20230719_darwin_amd64.zip"
    sha256 "16dc5e01e61f75500e67a33ebfe42734857c58d4edbd5c88c2b378bbc2faabf3"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-alpha20230719/terraform_1.6.0-alpha20230719_darwin_arm64.zip"
    sha256 "a167b313daaa04f68af97690113d051452eb3559550c1342b5a53a4726837a7e"
  end

  depends_on arch: [:x86_64, :arm64]
end
