cask "terraform-1.6.4" do
  version "1.6.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.4/terraform_1.6.4_darwin_amd64.zip"
    sha256 "0a93865c56fac0cec9faa739fa81bf69fe58614e9e8d74c088b6c414055b5453"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.4/terraform_1.6.4_darwin_arm64.zip"
    sha256 "c3c6196b71946c7825d1e9a1d7d03be1c68b07fd4528a7bbf918f718c4164ffa"
  end

  depends_on arch: [:x86_64, :arm64]
end
