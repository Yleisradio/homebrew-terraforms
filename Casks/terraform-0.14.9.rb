cask "terraform-0.14.9" do
  version "0.14.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.9/terraform_0.14.9_darwin_amd64.zip"
    sha256 "96d0b1c807415ba295a70e8afed04e233778673103587f321164ebb96be123d8"
  end

  depends_on arch: [:x86_64]
end
