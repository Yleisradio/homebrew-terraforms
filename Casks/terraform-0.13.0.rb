cask "terraform-0.13.0" do
  version "0.13.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_darwin_amd64.zip"
    sha256 "d21665e66ded549916804449fb93bb743ddd60847b31f429c241cbbcb5a0f563"
  end

  depends_on arch: [:x86_64]
end
