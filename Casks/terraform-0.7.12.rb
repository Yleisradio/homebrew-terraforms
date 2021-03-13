cask "terraform-0.7.12" do
  version "0.7.12"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.12/terraform_0.7.12_darwin_amd64.zip"
    sha256 "bfd79badf239509b09c5f036bd5cb1d688297644f26ffaf39d89c1abf9a2936d"
  end

  depends_on arch: [:x86_64]
end
