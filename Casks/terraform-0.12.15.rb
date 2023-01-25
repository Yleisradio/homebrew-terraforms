cask "terraform-0.12.15" do
  version "0.12.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.15/terraform_0.12.15_darwin_amd64.zip"
    sha256 "b3aa81bd0dd2b5a3c89a82afa7b32291bc6b09e2cdbc4909bb7da14ff9da4d24"
  end

  depends_on arch: [:x86_64]
end
