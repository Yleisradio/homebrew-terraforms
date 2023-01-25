cask "terraform-1.1.8" do
  version "1.1.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_amd64.zip"
    sha256 "a8fb67020be31b32728ecb08ddb9e2873cda6a587574761ab3d90cf447700e85"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_arm64.zip"
    sha256 "e5eb657f9e38be1c3934428a7021cf89fa51aba0e86321b4ccc6e76b971bd3b4"
  end

  depends_on arch: [:x86_64, :arm64]
end
