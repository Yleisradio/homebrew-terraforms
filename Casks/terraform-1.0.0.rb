cask "terraform-1.0.0" do
  version "1.0.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_darwin_amd64.zip"
    sha256 "b67f5e25a73866b83880fd6fbc5e57add3ed893a31eda26b748aea4afc7255c4"
  end

  depends_on arch: [:x86_64]
end
