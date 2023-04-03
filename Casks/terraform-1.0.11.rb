cask "terraform-1.0.11" do
  version "1.0.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_amd64.zip"
    sha256 "551a16b612edaae1037925d0e2dba30d16504ff4bd66606955172c2ed8d76131"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_arm64.zip"
    sha256 "737e1765afbadb3d76e1929d4b4af8da55010839aa08e9e730d46791eb8ea5a6"
  end

  depends_on arch: [:x86_64, :arm64]
end
