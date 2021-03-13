cask "terraform-0.7.6" do
  version "0.7.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.6/terraform_0.7.6_darwin_amd64.zip"
    sha256 "5c315498c58700d5e0eeba205c1e07e5299d04dd0f7fb7e87e4c38a8c9903774"
  end

  depends_on arch: [:x86_64]
end
