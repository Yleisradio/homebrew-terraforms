cask "terraform-0.13.0" do
  version "0.13.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_darwin_amd64.zip"
    sha256 "1ffcd96037faffad5c8692fd989d5f261fdddc8b0fede3996aa09b7bfe6b1b01"
  end

  depends_on arch: [:x86_64]
end
