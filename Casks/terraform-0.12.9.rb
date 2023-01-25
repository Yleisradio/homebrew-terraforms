cask "terraform-0.12.9" do
  version "0.12.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_darwin_amd64.zip"
    sha256 "5751e34b5d1641c9661420ea69b4e60d96f5cafdb5a7bcfe7804f036c5f0c0c6"
  end

  depends_on arch: [:x86_64]
end
