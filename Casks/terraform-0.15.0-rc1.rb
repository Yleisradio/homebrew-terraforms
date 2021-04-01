cask "terraform-0.15.0-rc1" do
  version "0.15.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-rc1/terraform_0.15.0-rc1_darwin_amd64.zip"
    sha256 "54aaf48e4e2daa5407b8d96da4c4e84305e77579b9af118d0c8df4a2512e2bd7"
  end

  depends_on arch: [:x86_64]
end
