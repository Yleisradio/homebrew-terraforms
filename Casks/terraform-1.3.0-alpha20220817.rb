cask "terraform-1.3.0-alpha20220817" do
  version "1.3.0-alpha20220817"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220817/terraform_1.3.0-alpha20220817_darwin_amd64.zip"
    sha256 "254ceea0ceda640289038b8d2e79e8609b72faee990859ffbc1700c385dd1e56"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220817/terraform_1.3.0-alpha20220817_darwin_arm64.zip"
    sha256 "b6186f4b1a3a057af66f793c9623282c227b2dd4ca890a7a5007ae0c71fd108a"
  end

  depends_on arch: [:x86_64, :arm64]
end
