cask "terraform-1.3.3" do
  version "1.3.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.3/terraform_1.3.3_darwin_amd64.zip"
    sha256 "e544aefb984fd9b19de250ac063a7aa28cbfdce2eda428dd2429a521912f6a93"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.3/terraform_1.3.3_darwin_arm64.zip"
    sha256 "1850df7904025b20b26ac101274f30673b132adc84686178d3d0cb802be4597e"
  end

  depends_on arch: [:x86_64, :arm64]
end
