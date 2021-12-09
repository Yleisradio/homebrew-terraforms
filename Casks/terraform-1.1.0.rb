cask "terraform-1.1.0" do
  version "1.1.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_darwin_amd64.zip"
    sha256 "6fb2af160879d807291980642efa93cc9a97ddf662b17cc3753065c974a5296d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_darwin_arm64.zip"
    sha256 "f69e0613f09c21d44ce2131b20e8b97909f3fc7aa90c443639475f5e474a22ec"
  end

  depends_on arch: [:x86_64, :arm64]
end
