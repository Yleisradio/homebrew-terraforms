cask "terraform-1.3.4" do
  version "1.3.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_darwin_amd64.zip"
    sha256 "2a75c69ec5ed8506658b266a40075256b62a7d245ff6297df7e48fa72af23879"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_darwin_arm64.zip"
    sha256 "a1f740f92afac6db84421a3ec07d9061c34a32f88b4b0b47d243de16c961169f"
  end

  depends_on arch: [:x86_64, :arm64]
end
