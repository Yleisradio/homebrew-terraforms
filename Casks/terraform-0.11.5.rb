cask "terraform-0.11.5" do
  version "0.11.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_darwin_amd64.zip"
    sha256 "0af78baf9b1a249544cc0b17d6b7abb32cc513a554d1f7dcc85c873e2af93586"
  end

  depends_on arch: [:x86_64]
end
