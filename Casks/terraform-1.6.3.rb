cask "terraform-1.6.3" do
  version "1.6.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.3/terraform_1.6.3_darwin_amd64.zip"
    sha256 "6fbd1ba3d64daad05d9384568f7300ee9f15e18a5f3a19a33fe48b8d1b44385a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.3/terraform_1.6.3_darwin_arm64.zip"
    sha256 "8cad19d5f34c6ab2af21219fc3968ba30084f5e39bf219230706d360869ed8e9"
  end

  depends_on arch: [:x86_64, :arm64]
end
