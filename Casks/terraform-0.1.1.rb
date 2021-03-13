cask "terraform-0.1.1" do
  version "0.1.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.1.1/terraform_0.1.1_darwin_amd64.zip"
    sha256 "1387eca09fcad8571f02d2f34b79d7cff5f420da8cc52e9b0841696461c99b38"
  end

  depends_on arch: [:x86_64]
end
