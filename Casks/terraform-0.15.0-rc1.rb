cask "terraform-0.15.0-rc1" do
  version "0.15.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-rc1/terraform_0.15.0-rc1_darwin_amd64.zip"
    sha256 "8fe6b38c033a32082679282e64186a5000d1c91031ad26d4b99250ee0c33c693"
  end

  depends_on arch: [:x86_64]
end
