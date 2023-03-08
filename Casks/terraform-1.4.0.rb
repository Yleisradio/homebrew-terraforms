cask "terraform-1.4.0" do
  version "1.4.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0/terraform_1.4.0_darwin_amd64.zip"
    sha256 "b063c2018ed6229a6d92defee0b2a115a0a18169ed02e93ecf3899ca3e2a87de"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0/terraform_1.4.0_darwin_arm64.zip"
    sha256 "ec02ccdcc368ce307d03c1e981f3a863d9c07b312635d4aca24159ada7657562"
  end

  depends_on arch: [:x86_64, :arm64]
end
