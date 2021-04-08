cask "terraform-0.14.10" do
  version "0.14.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_darwin_amd64.zip"
    sha256 "4b2acb55c6350cba92769c852d4502dff3e185726fc5293e3ab0bb64393846c4"
  end

  depends_on arch: [:x86_64]
end
