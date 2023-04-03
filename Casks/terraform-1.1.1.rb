cask "terraform-1.1.1" do
  version "1.1.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_darwin_amd64.zip"
    sha256 "d125dd2e92b9245f2202199b52f234035f36bdcbcd9a06f08e647e14a9d9067a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_darwin_arm64.zip"
    sha256 "4cb6e5eb4f6036924caf934c509a1dfd61cd2c651bb3ee8fbfe2e2914dd9ed17"
  end

  depends_on arch: [:x86_64, :arm64]
end
