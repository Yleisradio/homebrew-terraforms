cask "terraform-1.2.0-rc2" do
  version "1.2.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc2/terraform_1.2.0-rc2_darwin_amd64.zip"
    sha256 "7563d6c8cd17ef0e6116c29c56f86e06adcb204e7208b06f1961ea55268a92ff"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc2/terraform_1.2.0-rc2_darwin_arm64.zip"
    sha256 "eb624f4cd5adcdd2cf75261bb686649b4cca916e1b4546b518448d68f8c36f9a"
  end

  depends_on arch: [:x86_64, :arm64]
end
