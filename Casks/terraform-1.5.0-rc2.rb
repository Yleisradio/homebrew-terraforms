cask "terraform-1.5.0-rc2" do
  version "1.5.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0-rc2/terraform_1.5.0-rc2_darwin_amd64.zip"
    sha256 "9893f178ecb84d019ff4c3ceb2d6570f019e8aa811ed9d5b1526f58efed07d93"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0-rc2/terraform_1.5.0-rc2_darwin_arm64.zip"
    sha256 "35310803e55d604885d5a33a7f5cc914a3ae2ad183479bebcf1a699180538db5"
  end

  depends_on arch: [:x86_64, :arm64]
end
