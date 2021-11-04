cask "terraform-1.1.0-beta1" do
  version "1.1.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta1/terraform_1.1.0-beta1_darwin_amd64.zip"
    sha256 "302aebb4e308d95bb6dc7307d109b7f4805d953ec0b331f7c2a643a59f2046bd"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta1/terraform_1.1.0-beta1_darwin_arm64.zip"
    sha256 "4b94db55087bb167e8b50ba949fceb1bbe9933f1d743768eadf8e55dc86d7061"
  end

  depends_on arch: [:x86_64, :arm64]
end
