cask "terraform-1.1.0-rc1" do
  version "1.1.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-rc1/terraform_1.1.0-rc1_darwin_amd64.zip"
    sha256 "cd140f8bc90aeb9c349d06655c4bd7fa6bb761a0fac774eaf81412dd4b4d6015"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-rc1/terraform_1.1.0-rc1_darwin_arm64.zip"
    sha256 "1482dd6a92332bed861a8751da35b79e5e1ba28e399720cec668920b5bf0b280"
  end

  depends_on arch: [:x86_64, :arm64]
end
