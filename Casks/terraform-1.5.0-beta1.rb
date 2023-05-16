cask "terraform-1.5.0-beta1" do
  version "1.5.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0-beta1/terraform_1.5.0-beta1_darwin_amd64.zip"
    sha256 "e4485902a7086afb80b35626326274a041cc38b2e57fdd1f995d5747e1e50f99"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0-beta1/terraform_1.5.0-beta1_darwin_arm64.zip"
    sha256 "7d5364ccccd2faac8f9bbcfea056515028c5b3d7cc1430f465e3cc786db92182"
  end

  depends_on arch: [:x86_64, :arm64]
end
