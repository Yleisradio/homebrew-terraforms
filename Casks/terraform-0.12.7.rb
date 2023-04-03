cask "terraform-0.12.7" do
  version "0.12.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_darwin_amd64.zip"
    sha256 "17471e64e85e91c9309e9e17df7b8740664b2b58b6f1d6088dfc400a995b0413"
  end

  depends_on arch: [:x86_64]
end
