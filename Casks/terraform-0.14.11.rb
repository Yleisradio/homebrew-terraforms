cask "terraform-0.14.11" do
  version "0.14.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_darwin_amd64.zip"
    sha256 "143ee31a4ae61564762ca5fe40851a0ec661698b73026e3cc0061f9867c7b67f"
  end

  depends_on arch: [:x86_64]
end
