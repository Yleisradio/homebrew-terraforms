cask "terraform-1.0.11" do
  version "1.0.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_amd64.zip"
    sha256 "92f2e7eebb9699e23800f8accd519775a02bd25fe79e1fe4530eca123f178202"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_arm64.zip"
    sha256 "0f38af81641b00a2cbb8d25015d917887a7b62792c74c28d59e40e56ce6f265c"
  end

  depends_on arch: [:x86_64, :arm64]
end
