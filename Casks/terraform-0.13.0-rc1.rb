cask "terraform-0.13.0-rc1" do
  version "0.13.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-rc1/terraform_0.13.0-rc1_darwin_amd64.zip"
    sha256 "6920d32c38c8942e853b29041932cdf1174dca177fc9f0bf7b2f0e9869b139b5"
  end

  depends_on arch: [:x86_64]
end
