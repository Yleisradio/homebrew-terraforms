cask "terraform-1.2.0-rc1" do
  version "1.2.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc1/terraform_1.2.0-rc1_darwin_amd64.zip"
    sha256 "028f8c331ea53946b987556c6e7544efc2bd8c23d6fa86ee851102b84b888c61"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc1/terraform_1.2.0-rc1_darwin_arm64.zip"
    sha256 "14fa938ef5306b07e9b164998e763fd5ead9d3ff012d1f0f2e162cacfaeabfde"
  end

  depends_on arch: [:x86_64, :arm64]
end
