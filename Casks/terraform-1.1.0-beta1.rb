cask "terraform-1.1.0-beta1" do
  version "1.1.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta1/terraform_1.1.0-beta1_darwin_amd64.zip"
    sha256 "42ae96bc9a9035b4a579ea2ba540a3d98e0e2c9f09427cebeb261d7cfe3423e7"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta1/terraform_1.1.0-beta1_darwin_arm64.zip"
    sha256 "1fd3b6943291dcd65d994e1f5ece54483cc21a7c021bebc6a58e1d02947b2dd7"
  end

  depends_on arch: [:x86_64, :arm64]
end
