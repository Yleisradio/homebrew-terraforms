cask "terraform-1.1.2" do
  version "1.1.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_darwin_amd64.zip"
    sha256 "214da2e97f95389ba7557b8fcb11fe05a23d877e0fd67cd97fcbc160560078f1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_darwin_arm64.zip"
    sha256 "39e28f49a753c99b5e2cb30ac8146fb6b48da319c9db9d152b1e8a05ec9d4a13"
  end

  depends_on arch: [:x86_64, :arm64]
end
