cask "terraform-1.7.5" do
  version "1.7.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_darwin_amd64.zip"
    sha256 "0eaf64e28f82e2defd06f7a6f3187d8cea03d5d9fcd2af54f549a6c32d6833f7"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_darwin_arm64.zip"
    sha256 "99c4d4feafb0183af2f7fbe07beeea6f83e5f5a29ae29fee3168b6810e37ff98"
  end

  depends_on arch: [:x86_64, :arm64]
end
