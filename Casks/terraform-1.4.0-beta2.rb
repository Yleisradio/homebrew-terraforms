cask "terraform-1.4.0-beta2" do
  version "1.4.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta2/terraform_1.4.0-beta2_darwin_amd64.zip"
    sha256 "da70cbc74236b1fb02a42ca6b459e12a54ed28a93bf006da1bf90d6a457b8977"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta2/terraform_1.4.0-beta2_darwin_arm64.zip"
    sha256 "5bce62ba8a9723c75171e010f1336438a16656ab06d8f6f0d1ba3b3d40b70b98"
  end

  depends_on arch: [:x86_64, :arm64]
end
