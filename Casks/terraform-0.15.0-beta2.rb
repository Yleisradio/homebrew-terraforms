cask "terraform-0.15.0-beta2" do
  version "0.15.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-beta2/terraform_0.15.0-beta2_darwin_amd64.zip"
    sha256 "f66f7fa95ad276198bea21cd960d377be3f9dbe16e91ee628c2f29684bafacee"
  end

  depends_on arch: [:x86_64]
end
