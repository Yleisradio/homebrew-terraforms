cask "terraform-1.0.7" do
  version "1.0.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_darwin_amd64.zip"
    sha256 "80ae021d6143c7f7cbf4571f65595d154561a2a25fd934b7a8ccc1ebf3014b9b"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_darwin_arm64.zip"
    sha256 "cbab9aca5bc4e604565697355eed185bb699733811374761b92000cc188a7725"
  end

  depends_on arch: [:x86_64, :arm64]
end
