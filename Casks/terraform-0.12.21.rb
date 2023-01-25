cask "terraform-0.12.21" do
  version "0.12.21"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_darwin_amd64.zip"
    sha256 "2c9dd0e08cf808f532710e97392f67bcccc3bc8f9fe6cc040237c62940ee6b48"
  end

  depends_on arch: [:x86_64]
end
