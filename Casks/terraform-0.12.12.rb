cask "terraform-0.12.12" do
  version "0.12.12"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_darwin_amd64.zip"
    sha256 "abc3a0b5184259be2b9f744baae0d3709fae0e38112e36d35ff9debb43375e97"
  end

  depends_on arch: [:x86_64]
end
