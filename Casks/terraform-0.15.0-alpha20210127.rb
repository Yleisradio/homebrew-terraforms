cask "terraform-0.15.0-alpha20210127" do
  version "0.15.0-alpha20210127"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210127/terraform_0.15.0-alpha20210127_darwin_amd64.zip"
    sha256 "02b3d4dcbd9959f31b7cfac5b1abf3bcf6298d73c2fc07e7df1a611cc5c71f55"
  end

  depends_on arch: [:x86_64]
end
