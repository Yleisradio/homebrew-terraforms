cask "terraform-0.15.0-beta2" do
  version "0.15.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-beta2/terraform_0.15.0-beta2_darwin_amd64.zip"
    sha256 "b669d9b4322f70f292761f62c43751d1a2ce583381336428c3adda3094874dbc"
  end

  depends_on arch: [:x86_64]
end
